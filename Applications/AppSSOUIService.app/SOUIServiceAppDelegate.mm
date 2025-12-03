@interface SOUIServiceAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation SOUIServiceAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = sub_100001CBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOUIServiceAppDelegate application:didFinishLaunchingWithOptions:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  return 1;
}

- (void)applicationWillResignActive:(id)active
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationWillResignActive:]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationDidEnterBackground:]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationWillEnterForeground:]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOUIServiceAppDelegate applicationDidBecomeActive:]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = sub_100001CBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOUIServiceAppDelegate applicationWillTerminate:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  v5 = +[SOExtensionManager sharedInstance];
  [v5 unloadExtensions];
}

@end