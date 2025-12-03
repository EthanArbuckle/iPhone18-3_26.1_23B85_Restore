@interface GKRemoteAlertViewController
- (BOOL)contextCanBypassAuthentication:(id)authentication;
- (id)deserializeGameFromData:(id)data;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)showGreenBuddyWithCompletionHandler:(id)handler;
@end

@implementation GKRemoteAlertViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    gameCenterViewController = [(GKRemoteAlertViewController *)self gameCenterViewController];
    *buf = 138412546;
    v18 = contextCopy;
    v19 = 2112;
    v20 = gameCenterViewController;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RemoteAlert: configureWithContext: %@\ngameCenterViewController=%@", buf, 0x16u);
  }

  _remoteViewControllerProxy = [(GKRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
  v13 = [GKLocalPlayerAuthenticator authenticatorForPlayerWithUsername:0 password:0 withPresentingViewController:self];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100000ED8;
  v15[3] = &unk_100008200;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [v13 authenticateWithCompletionHandler:v15];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    userInfo = [contextCopy userInfo];
    v12 = +[GKLocalPlayer local];
    v13 = +[GKLocalPlayer local];
    isAuthenticated = [v13 isAuthenticated];
    [(GKRemoteAlertViewController *)self gameCenterViewController];
    v16 = v15 = completionCopy;
    *buf = 138413058;
    v47 = userInfo;
    v48 = 2112;
    v49 = v12;
    v50 = 1024;
    v51 = isAuthenticated;
    v52 = 2112;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RemoteAlert: prepareForActivationWithContext: userInfo=%@\nlocalPlayer=%@\nisAuthenticated=%d\ngameCenterViewController=%@", buf, 0x26u);

    completionCopy = v15;
  }

  if (MKBGetDeviceLockState() - 1 > 1)
  {
    userInfo2 = [contextCopy userInfo];
    v21 = [(GKRemoteAlertViewController *)self contextCanBypassAuthentication:userInfo2];

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
          if (!completionCopy)
          {
            goto LABEL_25;
          }
        }

        else if (!completionCopy)
        {
          goto LABEL_25;
        }

        completionCopy[2](completionCopy);
        goto LABEL_25;
      }
    }

    userInfo3 = [contextCopy userInfo];
    v27 = [userInfo3 objectForKeyedSubscript:GKRemoteAlertUserInfoSerializedGameKey];

    userInfo4 = [contextCopy userInfo];
    v29 = [userInfo4 objectForKeyedSubscript:GKRemoteAlertUserInfoDeeplinkKey];

    userInfo5 = [contextCopy userInfo];
    v31 = [userInfo5 objectForKeyedSubscript:GKRemoteAlertUserInfoDashboardLaunchContextKey];

    v32 = v27;
    v33 = [(GKRemoteAlertViewController *)self deserializeGameFromData:v27];
    userInfo6 = [contextCopy userInfo];
    v35 = [userInfo6 objectForKeyedSubscript:GKRemoteAlertUserInfoHostPIDKey];
    integerValue = [v35 integerValue];

    if ([(GKRemoteAlertViewController *)self needToShowGreenBuddy])
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100001550;
      v40[3] = &unk_100008228;
      v40[4] = self;
      v44 = integerValue;
      v41 = v33;
      v45 = v21;
      v42 = v29;
      v43 = v31;
      [(GKRemoteAlertViewController *)self showGreenBuddyWithCompletionHandler:v40];
      [(GKRemoteAlertViewController *)self setNeedToShowGreenBuddy:0];
    }

    else
    {
      [(GKRemoteAlertViewController *)self dismissExistingAndInvokeDashboardWithHostPID:integerValue game:v33 byPassPreAuthentication:v21 deepLink:v29 launchContext:v31];
    }

    completionCopy = v39;
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

    _remoteViewControllerProxy = [(GKRemoteAlertViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy invalidate];
  }

LABEL_25:
}

- (BOOL)contextCanBypassAuthentication:(id)authentication
{
  v3 = [authentication objectForKeyedSubscript:GKRemoteAlertUserInfoBypassPreAuthenticationKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)deserializeGameFromData:(id)data
{
  dataCopy = data;
  v10 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v10];

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

- (void)showGreenBuddyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[GKLocalPlayer local];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000017F0;
  v7[3] = &unk_1000082A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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
  presentedViewController = [(GKRemoteAlertViewController *)self presentedViewController];
  if (presentedViewController)
  {
    [(GKRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    (v5[2])(v5);
  }
}

@end