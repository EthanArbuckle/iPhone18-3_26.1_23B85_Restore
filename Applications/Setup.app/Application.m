@interface Application
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)applicationWillTerminate:(id)a3;
@end

@implementation Application

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)applicationWillTerminate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[BuddyApplicationAndSceneSharedStorage setupController];
  [(SetupController *)v3 willTerminate];

  objc_storeStrong(location, 0);
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = +[UIDevice currentDevice];
  v6 = [(UIDevice *)v5 userInterfaceIdiom];

  if (v6 == 1)
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