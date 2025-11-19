@interface CTCarrierSpaceAuthAppDelegate
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (void)application:(id)a3 didFinishLaunchingSuspendedWithOptions:(id)a4;
@end

@implementation CTCarrierSpaceAuthAppDelegate

- (void)application:(id)a3 didFinishLaunchingSuspendedWithOptions:(id)a4
{
  if (a4)
  {
    v5 = [a4 valueForKey:@"kCTCarrierSpaceAuthContext"];
    launchContext = self->_launchContext;
    self->_launchContext = v5;
  }

  v7 = [SBSRemoteAlertDefinition alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 bundleIdentifier];
  v13 = [v7 initWithServiceName:v9 viewControllerClassName:@"AuthRemoteAlertViewController"];

  v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v13 configurationContext:0];
  alertHandle = self->_alertHandle;
  self->_alertHandle = v10;

  [(SBSRemoteAlertHandle *)self->_alertHandle addObserver:self];
  v12 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v12 setReason:@"CTCarrierSpaceAuth Flow"];
  [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:v12];
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002CBC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received request to open URL %@, options %@", &v11, 0x16u);
  }

  [(AuthRemoteAlertViewController *)self->_alertViewController handleAppURL:v7];
  return 1;
}

@end