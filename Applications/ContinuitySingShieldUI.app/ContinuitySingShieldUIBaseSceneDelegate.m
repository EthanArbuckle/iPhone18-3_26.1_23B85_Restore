@interface ContinuitySingShieldUIBaseSceneDelegate
- (id)createWindowForScene:(id)a3;
- (void)_holdBacklightAssertion;
- (void)_releaseBacklightAssertion;
- (void)_startObservingMicrophoneState;
- (void)_stopObservingMicrophoneState;
- (void)_updateBacklightAssertion;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation ContinuitySingShieldUIBaseSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100005368();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 description];
    *buf = 136315906;
    v27 = "[ContinuitySingShieldUIBaseSceneDelegate scene:willConnectToSession:options:]";
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %@, %@, %@", buf, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
    v14 = [(ContinuitySingShieldUIBaseSceneDelegate *)self createWindowForScene:v13];
    [v13 _setBackgroundStyle:4];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self setWindow:v14];
    v15 = [ContinuitySingShieldUIViewController alloc];
    v16 = [(ContinuitySingShieldUIBaseSceneDelegate *)self window];
    v17 = [v16 windowScene];
    v18 = [v17 session];
    [v18 role];
    v19 = v25 = v9;
    v20 = [(ContinuityCaptureShieldUIBaseViewController *)v15 initWithSceneSessionRole:v19];
    viewController = self->_viewController;
    self->_viewController = v20;

    v22 = self->_viewController;
    v23 = [(ContinuitySingShieldUIBaseSceneDelegate *)self window];
    [v23 setRootViewController:v22];

    v24 = [v10 URLContexts];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self scene:v13 openURLContexts:v24];

    v9 = v25;
    [v14 makeKeyAndVisible];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self _startObservingMicrophoneState];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self _updateBacklightAssertion];
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = [a4 allObjects];
  v6 = [v5 firstObject];

  v7 = [v6 URL];
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = [v6 options];
  v11 = [v10 annotation];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 objectForKey:@"kContinuityCaptureLaunchUIConfigurationKey"];

  if (v9 == 1)
  {
    v17 = sub_100005368();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000BFE4();
    }

LABEL_46:

    v41 = sub_100005368();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10000C038(self, v41);
    }

    [(ContinuityCaptureShieldUIBaseViewController *)self->_viewController tearDownShield];
    goto LABEL_49;
  }

  if (v16)
  {
    v50 = 0;
    v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v50];
    v17 = v50;
    v19 = sub_100005368();
    v20 = v19;
    if (!v18 || v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v42 = 136315906;
        v43 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
        v44 = 2048;
        v45 = self;
        v46 = 2112;
        v47 = v6;
        v48 = 2112;
        v49 = v17;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: <%p> Launching ShieldUI via URL without a valid URL payload for the launchUIConfiguration: %@ error: %@", &v42, 0x2Au);
      }

      goto LABEL_46;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315650;
      v43 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
      v44 = 2048;
      v45 = self;
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: <%p> Launching ShieldUI with launchUIConfiguration: %@", &v42, 0x20u);
    }

    v21 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v21 setUIConfiguration:v18];

    v22 = +[CSShieldConnectionManager sharedManager];
    v23 = [v22 singURL];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v30 = [v18 remoteDisplayIdentifier];

      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = _os_feature_enabled_impl();
      v22 = +[CSShieldConnectionManager sharedManager];
      v24 = [v18 remoteDisplayIdentifier];
      if (v31)
      {
        [v22 bootstrapFromRemoteDisplayConnection:v24];
      }

      else
      {
        [v22 requestGroupSessionURL:v24];
      }
    }

LABEL_18:
    goto LABEL_49;
  }

  if (_os_feature_enabled_impl())
  {
    v25 = [v7 scheme];
    if ([v25 isEqualToString:SingQRCodeURLScheme])
    {
      v26 = [v7 lastPathComponent];
      v27 = [v26 isEqualToString:CSShieldOpenMusicPrivacyURLPath];

      if (v27)
      {
        v28 = sub_100005368();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 136315650;
          v43 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
          v44 = 2048;
          v45 = self;
          v46 = 2112;
          v47 = v7;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: <%p> Reloading privacy info %@", &v42, 0x20u);
        }

        v29 = +[CSShieldConnectionManager sharedManager];
        [v29 refreshPrivacyAcknowledgement];
        goto LABEL_43;
      }
    }

    else
    {
    }
  }

  if (_os_feature_enabled_impl())
  {
    v32 = [v7 scheme];
    v33 = [v32 isEqualToString:SingQRCodeURLScheme];

    if (v33)
    {
      v34 = sub_100005368();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 136315650;
        v43 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
        v44 = 2048;
        v45 = self;
        v46 = 2112;
        v47 = v7;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s: <%p> Launching ShieldUI with continuity sing url: %@", &v42, 0x20u);
      }

      v29 = +[CSShieldConnectionManager sharedManager];
      [v29 bootstrapFromSingQRCodeURL:v7];
      goto LABEL_43;
    }
  }

  if (!_os_feature_enabled_impl() || ([v7 scheme], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", CSShieldOpenPickerURLScheme), v35, !v36))
  {
    v17 = sub_100005368();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000BF80();
    }

    goto LABEL_46;
  }

  v37 = sub_100005368();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315650;
    v43 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
    v44 = 2048;
    v45 = self;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s: <%p> Opening picker url %@", &v42, 0x20u);
  }

  v38 = [(UIWindow *)self->_window windowScene];
  v39 = [v38 session];
  v40 = [v39 role];

  if (v40 == UIWindowSceneSessionRoleApplication)
  {
    v29 = [(ContinuitySingShieldUIViewController *)self->_viewController embeddedViewController];
    [v29 presentMusicPicker];
LABEL_43:
  }

LABEL_49:
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    viewController = self->_viewController;

    [(ContinuityCaptureShieldUIBaseViewController *)viewController tearDownShield];
  }

  else
  {
    v7 = +[CSShieldConnectionManager sharedManager];
    [v7 sceneDidBecomeActive];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100005368();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[ContinuitySingShieldUIBaseSceneDelegate sceneDidDisconnect:]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called %@", &v7, 0x20u);
  }

  [(UIWindow *)self->_window setRootViewController:0];
  window = self->_window;
  self->_window = 0;

  [(ContinuitySingShieldUIBaseSceneDelegate *)self _stopObservingMicrophoneState];
  [(ContinuitySingShieldUIBaseSceneDelegate *)self _updateBacklightAssertion];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey])
  {
    [(ContinuitySingShieldUIBaseSceneDelegate *)self _updateBacklightAssertion];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ContinuitySingShieldUIBaseSceneDelegate;
    [(ContinuitySingShieldUIBaseSceneDelegate *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)createWindowForScene:(id)a3
{
  v3 = a3;
  v4 = [[UIWindow alloc] initWithWindowScene:v3];

  return v4;
}

- (void)_holdBacklightAssertion
{
  if (!self->_idleTimerAssertion)
  {
    v3 = +[ITIdleTimerState sharedInstance];
    v14 = 0;
    v4 = [v3 newAssertionToDisableIdleTimerForReason:@"ContinuitySingShieldUI - Keep screen on during Continuity Sing session" error:&v14];
    v5 = v14;
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = v4;

    v7 = sub_100005368();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[ContinuitySingShieldUIBaseSceneDelegate _holdBacklightAssertion]";
      v10 = 2048;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: <%p> Created backlight assertion to keep screen on with error: %@", &v8, 0x20u);
    }
  }
}

- (void)_releaseBacklightAssertion
{
  idleTimerAssertion = self->_idleTimerAssertion;
  if (idleTimerAssertion)
  {
    [(BSInvalidatable *)idleTimerAssertion invalidate];
    v4 = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;

    v5 = sub_100005368();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[ContinuitySingShieldUIBaseSceneDelegate _releaseBacklightAssertion]";
      v8 = 2048;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: <%p> Released backlight assertion for screen management", &v6, 0x16u);
    }
  }
}

- (void)_updateBacklightAssertion
{
  v3 = +[CSShieldManager sharedManager];
  if ([v3 isMicStreaming])
  {
    window = self->_window;

    if (window)
    {

      [(ContinuitySingShieldUIBaseSceneDelegate *)self _holdBacklightAssertion];
      return;
    }
  }

  else
  {
  }

  [(ContinuitySingShieldUIBaseSceneDelegate *)self _releaseBacklightAssertion];
}

- (void)_startObservingMicrophoneState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  [v3 addObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey options:3 context:0];
}

- (void)_stopObservingMicrophoneState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  [v3 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey context:0];
}

@end