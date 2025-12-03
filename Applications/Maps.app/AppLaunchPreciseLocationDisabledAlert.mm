@interface AppLaunchPreciseLocationDisabledAlert
- (BOOL)_shouldDisplayAlert;
- (void)_alertDidFinishProcessing;
- (void)_presentAlertUI;
- (void)cancelAlertIfNecessary;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler;
@end

@implementation AppLaunchPreciseLocationDisabledAlert

- (void)_alertDidFinishProcessing
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    v5 = objc_retainBlock(completionBlock);
    v4 = self->_completionBlock;
    self->_completionBlock = 0;

    v5[2]();
  }
}

- (void)_presentAlertUI
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A0DF8;
  v4[3] = &unk_10165F3A0;
  v4[4] = self;
  [v3 interruptApplicationWithKind:15 userInfo:0 completionHandler:v4];
}

- (BOOL)_shouldDisplayAlert
{
  if (GEOConfigGetBOOL())
  {
    return 0;
  }

  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = +[MKLocationManager sharedLocationManager];
    locationProvider = [v4 locationProvider];
    v6 = +[MKLocationManager sharedLocationManager];
    v11 = 138412546;
    v12 = locationProvider;
    v13 = 2048;
    isAuthorizedForPreciseLocation = [v6 isAuthorizedForPreciseLocation];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchPreciseLocationDisabledAlert: location provider %@ is authorized for precise location: %lu", &v11, 0x16u);
  }

  v7 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v7 isLocationServicesApproved];

  v9 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation2 = [v9 isAuthorizedForPreciseLocation];

  return isLocationServicesApproved & (isAuthorizedForPreciseLocation2 ^ 1);
}

- (void)cancelAlertIfNecessary
{
  v2 = +[UIApplication sharedMapsDelegate];
  [v2 dismissCurrentInterruptionOfKind:15];
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  _shouldDisplayAlert = [(AppLaunchPreciseLocationDisabledAlert *)self _shouldDisplayAlert];
  v7 = sub_100005610();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (_shouldDisplayAlert)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchPreciseLocationDisabledAlert: presenting alert", buf, 2u);
    }

    [(AppLaunchPreciseLocationDisabledAlert *)self _presentAlertUI];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchPreciseLocationDisabledAlert: no need to be displayed", v9, 2u);
    }

    [(AppLaunchPreciseLocationDisabledAlert *)self _alertDidFinishProcessing];
  }
}

@end