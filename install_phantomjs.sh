#!/bin/bash

ARCH=$(uname -m)

if ! [ $ARCH = "x86_64" ]; then
	$ARCH="i686"
fi

PHANTOM_VERSION="phantomjs-2.1.1"
PHANTOM_JS="$PHANTOM_VERSION-linux-$ARCH.tar.bz2"



apt-get update
apt-get install -y build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev
  
apt-get install -y libfreetype6 libfreetype6-dev
apt-get install -y libfontconfig1 libfontconfig1-dev


cd ~
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS
tar xvjf $PHANTOM_JS

mv $PHANTOM_JS /usr/local/share
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin