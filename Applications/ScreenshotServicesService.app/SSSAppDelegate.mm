@interface SSSAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)_setUpDevelopmentUI;
- (void)application:(id)application didFinishLaunchingSuspendedWithOptions:(id)options;
@end

@implementation SSSAppDelegate

- (void)_setUpDevelopmentUI
{
  +[SSSDittoDebugViewController prepareForDebugging];
  v5 = objc_alloc_init(UIWindow);
  [(SSSAppDelegate *)self setWindow:v5];
  v3 = objc_alloc_init(SSSDittoDebugViewController);
  debugViewController = self->_debugViewController;
  self->_debugViewController = v3;

  [v5 setRootViewController:self->_debugViewController];
  [v5 makeKeyAndVisible];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if ([(SSSAppDelegate *)self _shouldSetUpDevelopmentUI:application])
  {
    [(SSSAppDelegate *)self _setUpDevelopmentUI];
  }

  return 1;
}

- (void)application:(id)application didFinishLaunchingSuspendedWithOptions:(id)options
{
  v5 = _SSSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceLaunch", "", buf, 2u);
  }

  v6 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "END ServiceLaunch", v9, 2u);
  }

  v7 = objc_alloc_init(SSSViewControllerManager);
  viewControllerManager = self->_viewControllerManager;
  self->_viewControllerManager = v7;

  self->_didLaunchSuspended = 1;
}

@end