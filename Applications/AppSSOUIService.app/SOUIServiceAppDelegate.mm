@interface SOUIServiceAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
@end

@implementation SOUIServiceAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = sub_100001CBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOUIServiceAppDelegate application:didFinishLaunchingWithOptions:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  return 1;
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationWillResignActive:]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationDidEnterBackground:]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationWillEnterForeground:]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationDidBecomeActive:]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOUIServiceAppDelegate applicationWillTerminate:]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  v5 = +[SOExtensionManager sharedInstance];
  [v5 unloadExtensions];
}

@end