@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "didFinishLaunching", v6, 2u);
  }

  return 1;
}

- (void)applicationWillResignActive:(id)active
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willResignActive", v4, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "didEnterBackground", v4, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willEnterForground", v4, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "didBecomeActive", v4, 2u);
  }
}

- (void)applicationWillTerminate:(id)terminate
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willTerminate", v4, 2u);
  }
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = LALogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[AppDelegate application:configurationForConnectingSceneSession:options:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  configuration = [sessionCopy configuration];
  name = [configuration name];
  v9 = [name isEqualToString:@"RemoteAlert"];

  v10 = [UISceneConfiguration alloc];
  role = [sessionCopy role];
  if (v9)
  {
    v12 = @"RemoteAlert";
  }

  else
  {
    v12 = @"Default Configuration";
  }

  v13 = [v10 initWithName:v12 sessionRole:role];

  return v13;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sessionsCopy = sessions;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AppDelegate application:didDiscardSceneSessions:]";
    v8 = 2112;
    v9 = sessionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }
}

@end