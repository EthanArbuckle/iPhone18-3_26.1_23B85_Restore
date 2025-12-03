@interface ContinuityCaptureShieldUIBaseSceneDelegate
- (id)createWindowForScene:(id)scene;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation ContinuityCaptureShieldUIBaseSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_100006DC0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [sceneCopy description];
    *buf = 136315906;
    v26 = "[ContinuityCaptureShieldUIBaseSceneDelegate scene:willConnectToSession:options:]";
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = sessionCopy;
    v31 = 2112;
    v32 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %@, %@, %@", buf, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = sceneCopy;
    v23 = [(ContinuityCaptureShieldUIBaseSceneDelegate *)self createWindowForScene:v13];
    [v13 _setBackgroundStyle:4];
    [(ContinuityCaptureShieldUIBaseSceneDelegate *)self setWindow:v23];
    v14 = [ContinuityCaptureShieldUIViewController alloc];
    window = [(ContinuityCaptureShieldUIBaseSceneDelegate *)self window];
    windowScene = [window windowScene];
    session = [windowScene session];
    [session role];
    v18 = v24 = sessionCopy;
    v19 = [(ContinuityCaptureShieldUIBaseViewController *)v14 initWithSceneSessionRole:v18];
    [(ContinuityCaptureShieldUIBaseSceneDelegate *)self window];
    v21 = v20 = optionsCopy;
    [v21 setRootViewController:v19];

    optionsCopy = v20;
    uRLContexts = [v20 URLContexts];
    [(ContinuityCaptureShieldUIBaseSceneDelegate *)self scene:v13 openURLContexts:uRLContexts];

    sessionCopy = v24;
    [v23 makeKeyAndVisible];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  allObjects = [contexts allObjects];
  firstObject = [allObjects firstObject];

  v7 = [firstObject URL];
  if (v7)
  {
    options = [firstObject options];
    annotation = [options annotation];
    v10 = objc_opt_class();
    v11 = annotation;
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
          selfCopy2 = self;
          v23 = 2112;
          v24 = firstObject;
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
          selfCopy2 = self;
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
        sub_10000A9A4(self, firstObject, v16);
      }
    }
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[ContinuityCaptureShieldUIBaseSceneDelegate sceneDidDisconnect:]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called %@", &v7, 0x20u);
  }

  [(UIWindow *)self->_window setRootViewController:0];
  window = self->_window;
  self->_window = 0;
}

- (id)createWindowForScene:(id)scene
{
  sceneCopy = scene;
  v4 = [[UIWindow alloc] initWithWindowScene:sceneCopy];

  return v4;
}

@end