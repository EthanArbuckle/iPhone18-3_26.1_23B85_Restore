@interface MSDViewServiceSceneDelegate
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation MSDViewServiceSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  v9 = sub_1000015E4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 136315138;
    *&v20[4] = "[MSDViewServiceSceneDelegate scene:willConnectToSession:options:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: entered", v20, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = sceneCopy;
    [v10 setDisablesControlCenter:1];
    [v10 setDisablesSiri:1];
    [v10 setDesiredHardwareButtonEvents:63];
    configurationContext = [v10 configurationContext];
    userInfo = [configurationContext userInfo];
    v13 = [userInfo objectForKey:@"DisableIdleTimer"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v13 BOOLValue];
        v15 = sub_1000015E4();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_100005900(bOOLValue, v15);
        }

        [v10 setIdleTimerDisabled:bOOLValue forReason:@"DisableIdleTimerCommonKey"];
      }
    }

    v16 = [[MSDViewServiceRootViewController alloc] initWithScene:v10];
    v17 = [[SecureUIWindow alloc] initWithWindowScene:v10];
    [(MSDViewServiceSceneDelegate *)self setWindow:v17];

    window = [(MSDViewServiceSceneDelegate *)self window];
    [window setRootViewController:v16];

    window2 = [(MSDViewServiceSceneDelegate *)self window];
    [window2 makeKeyAndVisible];
  }

  else
  {
    sub_10000585C(sessionCopy, v20);
    v16 = *v20;
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = sub_1000015E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDViewServiceSceneDelegate sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v5, 0xCu);
  }

  [(MSDViewServiceSceneDelegate *)self setWindow:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneDidBecomeActive:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)active
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneWillResignActive:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneDidEnterBackground:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - called.", &v4, 0xCu);
  }
}

@end