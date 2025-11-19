@interface BCSAppDelegate
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)application:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
@end

@implementation BCSAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [BCSSecureWindow alloc];
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v7 = [(BCSSecureWindow *)v5 initWithFrame:?];

  [(BCSAppDelegate *)self setWindow:v7];
  [(BCSSecureWindow *)v7 makeKeyAndVisible];
  v8 = objc_alloc_init(BCSRootViewController);
  rootViewController = self->_rootViewController;
  self->_rootViewController = v8;

  [(BCSSecureWindow *)v7 setRootViewController:self->_rootViewController];
  return 1;
}

- (void)applicationWillResignActive:(id)a3
{
  v3 = [(BCSAppDelegate *)self window];
  v4 = [v3 rootViewController];

  [v4 suspendCapturing];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationWillResignActive:", v6, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v3 = [(BCSAppDelegate *)self window];
  v4 = [v3 rootViewController];

  [v4 resumeCapturing];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationDidBecomeActive:", v6, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v3 = [(BCSAppDelegate *)self window];
  v4 = [v3 rootViewController];

  [v4 applicationDidEnterBackground];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationDidEnterBackground:", v6, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v3 = [(BCSAppDelegate *)self window];
  v4 = [v3 rootViewController];

  [v4 applicationWillEnterForeground];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationWillEnterForeground:", v6, 2u);
  }
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v6 = a4;
  [(BCSRootViewController *)self->_rootViewController continueUserActivity:v6];
  v7 = sub_100001D1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "continueUserActivity: %{public}@", &v9, 0xCu);
  }

  return 1;
}

- (void)application:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = sub_100001D1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didFailToContinueUserActivityWithType: %{public}@", &v9, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004558(v7);
  }
}

@end