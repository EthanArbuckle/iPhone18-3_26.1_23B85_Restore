@interface AppLaunchHikingAlert
- (BOOL)_shouldDisplayAlert;
- (void)_alertDidFinishProcessing;
- (void)_presentAlertUI;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)a3;
@end

@implementation AppLaunchHikingAlert

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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005E8E90;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v3 = [[_TtC4Maps27HikingWelcomeViewController alloc] initWithCompletionHandler:v7];
  hikingWelcomeViewController = self->_hikingWelcomeViewController;
  self->_hikingWelcomeViewController = v3;

  v5 = +[UIApplication sharedMapsDelegate];
  v6 = [v5 chromeViewController];
  [v6 _maps_topMostPresentViewController:self->_hikingWelcomeViewController animated:1 completion:0];
}

- (BOOL)_shouldDisplayAlert
{
  if (MapsFeature_IsEnabled_HikingiOS())
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 BOOLForKey:@"HikingWelcomeScreenDisplayed"];

    if (v3)
    {
      v4 = sub_100005610();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        v5 = "AppLaunchHikingAlert: Welcome screen has already been shown";
        v6 = &v12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay])
    {
      v4 = sub_100005610();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        v5 = "AppLaunchHikingAlert: Not displaying because connected to CarPlay";
        v6 = &v11;
        goto LABEL_11;
      }

LABEL_12:

      return 0;
    }

    v7 = +[GEOCountryConfiguration sharedConfiguration];
    v8 = [v7 currentCountrySupportsCustomRouteCreation];

    if ((v8 & 1) == 0)
    {
      v4 = sub_100005610();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v5 = "AppLaunchHikingAlert: Current country doesn't support custom route creation";
        v6 = &v10;
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  return 0;
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  v6 = [(AppLaunchHikingAlert *)self _shouldDisplayAlert];
  v7 = sub_100005610();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchHikingAlert: presenting alert", buf, 2u);
    }

    [(AppLaunchHikingAlert *)self _presentAlertUI];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchHikingAlert: no need to be displayed", v9, 2u);
    }

    [(AppLaunchHikingAlert *)self _alertDidFinishProcessing];
  }
}

@end