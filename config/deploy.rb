set :application, "Phrase symbole"
set :repository,  "git@gitorious.org:thomas-clavier/codin_gouter_phrase_symbole.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/var/www/montessori"

set :user, "deliverous"
set :use_sudo, false

role :web, "vm17.azae.net"                          # Your HTTP server, Apache/etc
role :app, "vm17.azae.net"                          # This may be the same as your `Web` server
#role :db,  "vm17.azae.net", :primary => true # This is where Rails migrations will run
#role :db,  "vm17.azae.net"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
