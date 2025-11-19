@interface AppLaunchLocationAlert
- (BOOL)_shouldDisplayAlert;
- (void)_alertDidFinishProcessing;
- (void)_presentAlertUI;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)a3;
@end

@implementation AppLaunchLocationAlert

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
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 resetAfterResumeIfNecessary];

  v4 = +[UIApplication sharedMapsDelegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006B0E08;
  v5[3] = &unk_101661738;
  v5[4] = self;
  [v4 promptLocationServicesAuthorizationWithHandler:v5];
}

- (BOOL)_shouldDisplayAlert
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[MKLocationManager sharedLocationManager];
    v4 = [v3 locationProvider];
    v5 = +[MKLocationManager sharedLocationManager];
    v6 = [v5 locationProvider];
    v11 = 138412546;
    v12 = v4;
    v13 = 1024;
    v14 = [v6 authorizationStatus];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AppLaunchLocationAlert: location provider %@ status %d", &v11, 0x12u);
  }

  if (+[UIApplication _maps_isAnyCarPlayApplicationSceneForeground])
  {
    v7 = +[MKLocationManager sharedLocationManager];
    [v7 stopWaitingForAuthCallback];
  }

  v8 = +[MKLocationManager sharedLocationManager];
  v9 = [v8 isLocationServicesAuthorizationNeeded];

  return v9;
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  v6 = [(AppLaunchLocationAlert *)self _shouldDisplayAlert];
  v7 = sub_100005610();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchLocationAlert: presenting alert", buf, 2u);
    }

    [(AppLaunchLocationAlert *)self _presentAlertUI];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchLocationAlert: no need to be displayed", v9, 2u);
    }

    [(AppLaunchLocationAlert *)self _alertDidFinishProcessing];
  }
}

@end