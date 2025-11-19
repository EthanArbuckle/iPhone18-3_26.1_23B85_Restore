@interface GKRemoteAlertViewController
- (BOOL)contextCanBypassAuthentication:(id)a3;
- (id)deserializeGameFromData:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)showGreenBuddyWithCompletionHandler:(id)a3;
@end

@implementation GKRemoteAlertViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(GKRemoteAlertViewController *)self gameCenterViewController];
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RemoteAlert: configureWithContext: %@\ngameCenterViewController=%@", buf, 0x16u);
  }

  v12 = [(GKRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v12 setDesiredHardwareButtonEvents:16];
  [v12 setAllowsAlertStacking:1];
  [v12 setSwipeDismissalStyle:1];
  [v12 setDismissalAnimationStyle:1];
  v13 = [GKLocalPlayerAuthenticator authenticatorForPlayerWithUsername:0 password:0 withPresentingViewController:self];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100000ED8;
  v15[3] = &unk_100008200;
  v15[4] = self;
  v16 = v7;
  v14 = v7;
  [v13 authenticateWithCompletionHandler:v15];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v6 userInfo];
    v12 = +[GKLocalPlayer local];
    v13 = +[GKLocalPlayer local];
    v14 = [v13 isAuthenticated];
    [(GKRemoteAlertViewController *)self gameCenterViewController];
    v16 = v15 = v7;
    *buf = 138413058;
    v47 = v11;
    v48 = 2112;
    v49 = v12;
    v50 = 1024;
    v51 = v14;
    v52 = 2112;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RemoteAlert: prepareForActivationWithContext: userInfo=%@\nlocalPlayer=%@\nisAuthenticated=%d\ngameCenterViewController=%@", buf, 0x26u);

    v7 = v15;
  }

  if (MKBGetDeviceLockState() - 1 > 1)
  {
    v20 = [v6 userInfo];
    v21 = [(GKRemoteAlertViewController *)self contextCanBypassAuthentication:v20];

    if (!v21)
    {
      v22 = +[GKLocalPlayer local];
      if (!v22 || (v23 = v22, +[GKLocalPlayer local](GKLocalPlayer, "local"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 isAuthenticated], v24, v23, (v25 & 1) == 0))
      {
        if (!os_log_GKGeneral)
        {
          v37 = GKOSLoggers();
        }

        v38 = os_log_GKError;
        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_1000020B8(v38);
          if (!v7)
          {
            goto LABEL_25;
          }
        }

        else if (!v7)
        {
          goto LABEL_25;
        }

        v7[2](v7);
        goto LABEL_25;
      }
    }

    v26 = [v6 userInfo];
    v27 = [v26 objectForKeyedSubscript:GKRemoteAlertUserInfoSerializedGameKey];

    v28 = [v6 userInfo];
    v29 = [v28 objectForKeyedSubscript:GKRemoteAlertUserInfoDeeplinkKey];

    v30 = [v6 userInfo];
    v31 = [v30 objectForKeyedSubscript:GKRemoteAlertUserInfoDashboardLaunchContextKey];

    v32 = v27;
    v33 = [(GKRemoteAlertViewController *)self deserializeGameFromData:v27];
    v34 = [v6 userInfo];
    v35 = [v34 objectForKeyedSubscript:GKRemoteAlertUserInfoHostPIDKey];
    v36 = [v35 integerValue];

    if ([(GKRemoteAlertViewController *)self needToShowGreenBuddy])
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100001550;
      v40[3] = &unk_100008228;
      v40[4] = self;
      v44 = v36;
      v41 = v33;
      v45 = v21;
      v42 = v29;
      v43 = v31;
      [(GKRemoteAlertViewController *)self showGreenBuddyWithCompletionHandler:v40];
      [(GKRemoteAlertViewController *)self setNeedToShowGreenBuddy:0];
    }

    else
    {
      [(GKRemoteAlertViewController *)self dismissExistingAndInvokeDashboardWithHostPID:v36 game:v33 byPassPreAuthentication:v21 deepLink:v29 launchContext:v31];
    }

    v7 = v39;
    if (v39)
    {
      v39[2](v39);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "RemoteAlert: Not going to show the remote alert because the device is locked.", buf, 2u);
    }

    v19 = [(GKRemoteAlertViewController *)self _remoteViewControllerProxy];
    [v19 invalidate];
  }

LABEL_25:
}

- (BOOL)contextCanBypassAuthentication:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:GKRemoteAlertUserInfoBypassPreAuthenticationKey];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)deserializeGameFromData:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];

  v5 = v10;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1000020FC(v5, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[GKGame alloc] initWithInternalRepresentation:v4];
  }

  return v8;
}

- (void)showGreenBuddyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[GKLocalPlayer local];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000017F0;
  v7[3] = &unk_1000082A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [GKAccountRemoteUIController accountRemoteUIControllerForPlayer:v5 mode:1 url:0 postBody:0 completionHandler:v7];
}

- (void)dismiss
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "RemoteAlert: Dismissing the remote alert dashboard", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001F88;
  v7[3] = &unk_100008330;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = [(GKRemoteAlertViewController *)self presentedViewController];
  if (v6)
  {
    [(GKRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    (v5[2])(v5);
  }
}

@end