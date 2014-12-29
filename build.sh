#!/bin/bash
set -ex
BOOTSTRAP=$HOME/dev/workspace/github/ui/bootstrap/
JQ=$HOME/dev/workspace/github/js/jquery/jquery/
YUECSS=$HOME/dev/workspace/github/uexim/yue.less/
DIR0=$PWD


# copy bootstrap
cd $BOOTSTRAP
cp -R dist/* $DIR0/assets/bootstrap

# build & copy jquery
cd $JQ
git pull origin master
#sudo npm install
grunt
cp -R dist/* $DIR0/assets/js

# yue.css
cd $YUECSS
git pull origin master
cp yue.min.css $DIR0/assets/css
