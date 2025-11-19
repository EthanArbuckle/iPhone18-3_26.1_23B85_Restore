@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "didFinishLaunching", v6, 2u);
  }

  return 1;
}

- (void)applicationWillResignActive:(id)a3
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willResignActive", v4, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "didEnterBackground", v4, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willEnterForground", v4, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "didBecomeActive", v4, 2u);
  }
}

- (void)applicationWillTerminate:(id)a3
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willTerminate", v4, 2u);
  }
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = LALogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[AppDelegate application:configurationForConnectingSceneSession:options:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  v7 = [v5 configuration];
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"RemoteAlert"];

  v10 = [UISceneConfiguration alloc];
  v11 = [v5 role];
  if (v9)
  {
    v12 = @"RemoteAlert";
  }

  else
  {
    v12 = @"Default Configuration";
  }

  v13 = [v10 initWithName:v12 sessionRole:v11];

  return v13;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v4 = a4;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AppDelegate application:didDiscardSceneSessions:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }
}

@end