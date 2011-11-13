#!/bin/sh

gem install bundler brewdler gemcutter

brewdle
bundle install
for gem in gems/*; do
    echo "Installing `basename $gem`"
    gem install $gem
done

# install node's NPM
curl http://npmjs.org/install.sh | sh