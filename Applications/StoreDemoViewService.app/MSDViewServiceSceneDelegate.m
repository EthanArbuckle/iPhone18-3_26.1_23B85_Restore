@interface MSDViewServiceSceneDelegate
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation MSDViewServiceSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a4;
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
    v10 = v7;
    [v10 setDisablesControlCenter:1];
    [v10 setDisablesSiri:1];
    [v10 setDesiredHardwareButtonEvents:63];
    v11 = [v10 configurationContext];
    v12 = [v11 userInfo];
    v13 = [v12 objectForKey:@"DisableIdleTimer"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 BOOLValue];
        v15 = sub_1000015E4();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_100005900(v14, v15);
        }

        [v10 setIdleTimerDisabled:v14 forReason:@"DisableIdleTimerCommonKey"];
      }
    }

    v16 = [[MSDViewServiceRootViewController alloc] initWithScene:v10];
    v17 = [[SecureUIWindow alloc] initWithWindowScene:v10];
    [(MSDViewServiceSceneDelegate *)self setWindow:v17];

    v18 = [(MSDViewServiceSceneDelegate *)self window];
    [v18 setRootViewController:v16];

    v19 = [(MSDViewServiceSceneDelegate *)self window];
    [v19 makeKeyAndVisible];
  }

  else
  {
    sub_10000585C(v8, v20);
    v16 = *v20;
  }
}

- (void)sceneDidDisconnect:(id)a3
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

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneDidBecomeActive:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneWillResignActive:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDViewServiceSceneDelegate sceneDidEnterBackground:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v4, 0xCu);
  }
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3
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