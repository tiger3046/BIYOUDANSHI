git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"'>> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv install 3.7.9
git clone https://github.com/pyenv/pyenv-virtualenv.git	~/.pyenv/plugins/pyenv-virtualenv
echo 'eval"$(pyenv virtualenv-init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv virtualenv 3.7.9 BIYOUDANSHI
pyenv global BIYOUDANSHI

pip install -r requirements.txt

cd ~/
wget https://www.sqlite.org/2020/sqlite-autoconf-3330000.tar.gz
tar zxvf sqlite-autoconf-3330000.tar.gz
cd ~/sqlite-autoconf-3330000
./configure
make
sudo make install
sudo mv /usr/bin/sqlite3 /usr/bin/sqlite3_old
sudo ln -s /usr/local/bin/sqlite3 /usr/bin/sqlite3
echo 'export LD_LIBRARY_PATH="/usr/local/lib"' >> ~/.bash_profile
source ~/.bash_profile
cd ~/environment
exec $SHELL -l
