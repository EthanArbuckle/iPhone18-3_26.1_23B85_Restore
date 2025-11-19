@interface ContinuityCaptureShieldUIBaseSceneDelegate
- (id)createWindowForScene:(id)a3;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation ContinuityCaptureShieldUIBaseSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100006DC0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 description];
    *buf = 136315906;
    v26 = "[ContinuityCaptureShieldUIBaseSceneDelegate scene:willConnectToSession:options:]";
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %@, %@, %@", buf, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
    v23 = [(ContinuityCaptureShieldUIBaseSceneDelegate *)self createWindowForScene:v13];
    [v13 _setBackgroundStyle:4];
    [(ContinuityCaptureShieldUIBaseSceneDelegate *)self setWindow:v23];
    v14 = [ContinuityCaptureShieldUIViewController alloc];
    v15 = [(ContinuityCaptureShieldUIBaseSceneDelegate *)self window];
    v16 = [v15 windowScene];
    v17 = [v16 session];
    [v17 role];
    v18 = v24 = v9;
    v19 = [(ContinuityCaptureShieldUIBaseViewController *)v14 initWithSceneSessionRole:v18];
    [(ContinuityCaptureShieldUIBaseSceneDelegate *)self window];
    v21 = v20 = v10;
    [v21 setRootViewController:v19];

    v10 = v20;
    v22 = [v20 URLContexts];
    [(ContinuityCaptureShieldUIBaseSceneDelegate *)self scene:v13 openURLContexts:v22];

    v9 = v24;
    [v23 makeKeyAndVisible];
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = [a4 allObjects];
  v6 = [v5 firstObject];

  v7 = [v6 URL];
  if (v7)
  {
    v8 = [v6 options];
    v9 = [v8 annotation];
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 objectForKey:@"kContinuityCaptureLaunchUIConfigurationKey"];

    if (v14)
    {
      v27 = 0;
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v27];
      v16 = v27;
      v17 = sub_100006DC0();
      v18 = v17;
      if (!v15 || v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315906;
          v20 = "[ContinuityCaptureShieldUIBaseSceneDelegate scene:openURLContexts:]";
          v21 = 2048;
          v22 = self;
          v23 = 2112;
          v24 = v6;
          v25 = 2112;
          v26 = v16;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: <%p> Launching ShieldUI via URL without a valid URL payload for the launchUIConfiguration: %@ error: %@", &v19, 0x2Au);
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315650;
          v20 = "[ContinuityCaptureShieldUIBaseSceneDelegate scene:openURLContexts:]";
          v21 = 2048;
          v22 = self;
          v23 = 2112;
          v24 = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: <%p> Launching ShieldUI with launchUIConfiguration: %@", &v19, 0x20u);
        }

        v18 = +[CMContinuityCaptureUIStateTracker sharedInstance];
        [v18 setUIConfiguration:v15];
      }
    }

    else
    {
      v16 = sub_100006DC0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000A9A4(self, v6, v16);
      }
    }
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[ContinuityCaptureShieldUIBaseSceneDelegate sceneDidDisconnect:]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called %@", &v7, 0x20u);
  }

  [(UIWindow *)self->_window setRootViewController:0];
  window = self->_window;
  self->_window = 0;
}

- (id)createWindowForScene:(id)a3
{
  v3 = a3;
  v4 = [[UIWindow alloc] initWithWindowScene:v3];

  return v4;
}

@end