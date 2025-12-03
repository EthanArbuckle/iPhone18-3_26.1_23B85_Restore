@interface AppLaunchNavTraceAlert
- (BOOL)_shouldDisplayAlert;
- (void)_alertDidFinishProcessing;
- (void)_displayAlert;
- (void)cancelAlertIfNecessary;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler;
@end

@implementation AppLaunchNavTraceAlert

- (void)_alertDidFinishProcessing
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchNavTraceAlert: alert dismissed", v7, 2u);
  }

  self->_isDisplayingAlert = 0;
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    v5 = objc_retainBlock(completionBlock);
    v6 = self->_completionBlock;
    self->_completionBlock = 0;

    v5[2](v5);
  }
}

- (void)_displayAlert
{
  v10[0] = @"kMapsInterruptionTitle";
  v10[1] = @"kMapsInterruptionMessage";
  v11[0] = @"Automatically send your navigation trace logs to Apple?";
  v11[1] = @"These detailed logs will include timestamps and your device's approximate location as it travels along a requested route start and end points, including personalized routes. You can disable the sending of these logs from Settings > Internal Settings > Maps.";
  v10[2] = @"kMapsInterruptionActions";
  v3 = [MapsInterruptionAction actionWithTitle:@"Accept" cancels:0 handler:0];
  v9[0] = v3;
  v4 = [MapsInterruptionAction actionWithTitle:@"Decline" cancels:1 handler:0];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v11[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  v7 = +[UIApplication sharedMapsDelegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100AB5C24;
  v8[3] = &unk_10165F3A0;
  v8[4] = self;
  [v7 interruptApplicationWithKind:16 userInfo:v6 completionHandler:v8];
}

- (BOOL)_shouldDisplayAlert
{
  if ([UIApp launchedToTest])
  {
    return 0;
  }

  v2 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v2 isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  if (GEOConfigGetUInteger() == 2)
  {
    return GEOConfigGetInteger() == 2;
  }

  return 1;
}

- (void)cancelAlertIfNecessary
{
  if (self->_isDisplayingAlert && GEOConfigGetInteger() != 2)
  {
    v3 = +[UIApplication sharedMapsDelegate];
    [v3 dismissCurrentInterruptionOfKind:16];

    [(AppLaunchNavTraceAlert *)self _alertDidFinishProcessing];
  }
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  _shouldDisplayAlert = [(AppLaunchNavTraceAlert *)self _shouldDisplayAlert];
  v7 = sub_100005610();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (_shouldDisplayAlert)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchNavTraceAlert: presenting alert", buf, 2u);
    }

    self->_isDisplayingAlert = 1;
    [(AppLaunchNavTraceAlert *)self _displayAlert];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchNavTraceAlert: no need to be displayed", v9, 2u);
    }

    [(AppLaunchNavTraceAlert *)self _alertDidFinishProcessing];
  }
}

@end