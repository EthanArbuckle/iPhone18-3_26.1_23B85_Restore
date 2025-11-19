@interface AppDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
@end

@implementation AppDelegate

- (void)applicationDidEnterBackground:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family app in background", v4, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family app in foreground", v4, 2u);
  }
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];

  v8 = [v6 initWithName:@"Default Configuration" sessionRole:v7];

  return v8;
}

@end