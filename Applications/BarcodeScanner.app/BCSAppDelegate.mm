@interface BCSAppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)application:(id)application didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
@end

@implementation BCSAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
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

- (void)applicationWillResignActive:(id)active
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  [rootViewController suspendCapturing];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationWillResignActive:", v6, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  [rootViewController resumeCapturing];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationDidBecomeActive:", v6, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  [rootViewController applicationDidEnterBackground];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationDidEnterBackground:", v6, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  [rootViewController applicationWillEnterForeground];
  v5 = sub_100001D1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "applicationWillEnterForeground:", v6, 2u);
  }
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  activityCopy = activity;
  [(BCSRootViewController *)self->_rootViewController continueUserActivity:activityCopy];
  v7 = sub_100001D1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = activityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "continueUserActivity: %{public}@", &v9, 0xCu);
  }

  return 1;
}

- (void)application:(id)application didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = sub_100001D1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didFailToContinueUserActivityWithType: %{public}@", &v9, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004558(errorCopy);
  }
}

@end