@interface AppDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)applicationDidFinishLaunching:(id)a3;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = SUSUILog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v15, "[AppDelegate application:configurationForConnectingSceneSession:options:]");
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", v15, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  v6 = [UISceneConfiguration alloc];
  v7 = [v13 role];
  v8 = [v6 initWithName:@"Default Configuration" sessionRole:?];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
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