@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
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

- (void)applicationWillResignActive:(id)active
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  objc_storeStrong(location, 0);
}

- (void)applicationDidEnterBackground:(id)background
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, background);
  objc_storeStrong(location, 0);
}

- (void)applicationWillEnterForeground:(id)foreground
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, foreground);
  objc_storeStrong(location, 0);
}

- (void)applicationDidBecomeActive:(id)active
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  objc_storeStrong(location, 0);
}

- (void)applicationWillTerminate:(id)terminate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, terminate);
  objc_storeStrong(location, 0);
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v12 = 0;
  objc_storeStrong(&v12, session);
  v11 = 0;
  objc_storeStrong(&v11, options);
  v8 = [UISceneConfiguration alloc];
  role = [v12 role];
  v10 = [v8 initWithName:@"Default Configuration" sessionRole:?];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

@end