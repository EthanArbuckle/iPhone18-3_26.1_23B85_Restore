@interface AppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)applicationDidFinishLaunching:(id)launching;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(id)launching
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, launching);
  v7 = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_100001BA4(v5);
    _os_log_impl(&_mh_execute_header, log, type, "App did finish launching.", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v13 = 0;
  objc_storeStrong(&v13, session);
  v12 = 0;
  objc_storeStrong(&v12, options);
  v11 = SUSUILog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v15, "[AppDelegate application:configurationForConnectingSceneSession:options:]");
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", v15, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  v6 = [UISceneConfiguration alloc];
  role = [v13 role];
  v8 = [v6 initWithName:@"Default Configuration" sessionRole:?];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v6 = 0;
  objc_storeStrong(&v6, sessions);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v8, "[AppDelegate application:didDiscardSceneSessions:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end