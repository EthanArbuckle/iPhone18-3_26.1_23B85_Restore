@interface Application
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation Application

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v6 = 0;
  objc_storeStrong(&v6, options);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)applicationWillTerminate:(id)terminate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, terminate);
  v3 = +[BuddyApplicationAndSceneSharedStorage setupController];
  [(SetupController *)v3 willTerminate];

  objc_storeStrong(location, 0);
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v8 = 0;
  objc_storeStrong(&v8, window);
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v5 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v10 = 30;
  }

  else
  {
    v10 = 2;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

@end