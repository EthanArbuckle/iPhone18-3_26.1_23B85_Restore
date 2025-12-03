@interface CTCarrierSpaceAuthAppDelegate
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (void)application:(id)application didFinishLaunchingSuspendedWithOptions:(id)options;
@end

@implementation CTCarrierSpaceAuthAppDelegate

- (void)application:(id)application didFinishLaunchingSuspendedWithOptions:(id)options
{
  if (options)
  {
    v5 = [options valueForKey:@"kCTCarrierSpaceAuthContext"];
    launchContext = self->_launchContext;
    self->_launchContext = v5;
  }

  v7 = [SBSRemoteAlertDefinition alloc];
  v8 = +[NSBundle mainBundle];
  bundleIdentifier = [v8 bundleIdentifier];
  v13 = [v7 initWithServiceName:bundleIdentifier viewControllerClassName:@"AuthRemoteAlertViewController"];

  v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v13 configurationContext:0];
  alertHandle = self->_alertHandle;
  self->_alertHandle = v10;

  [(SBSRemoteAlertHandle *)self->_alertHandle addObserver:self];
  v12 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v12 setReason:@"CTCarrierSpaceAuth Flow"];
  [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:v12];
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v9 = sub_100002CBC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = lCopy;
    v13 = 2112;
    v14 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received request to open URL %@, options %@", &v11, 0x16u);
  }

  [(AuthRemoteAlertViewController *)self->_alertViewController handleAppURL:lCopy];
  return 1;
}

@end