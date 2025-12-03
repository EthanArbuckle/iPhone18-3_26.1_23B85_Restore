@interface TVDefaultSceneDelegate
- (void)resetRootViewController;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation TVDefaultSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v23 = [sceneCopy description];
    v24 = 136315906;
    v25 = "[TVDefaultSceneDelegate scene:willConnectToSession:options:]";
    v26 = 2112;
    v27 = v23;
    v28 = 2112;
    v29 = sessionCopy;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: %@, %@, %@", &v24, 0x2Au);
  }

  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    window2 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(window2, OS_LOG_TYPE_ERROR))
    {
      [TVDefaultSceneDelegate scene:window2 willConnectToSession:? options:?];
    }
  }

  else
  {
    v15 = sceneCopy;
    v16 = [[TVRemoteWindow alloc] initWithWindowScene:v15];
    window = self->_window;
    self->_window = &v16->super;

    v18 = objc_alloc_init(TVRemoteViewController);
    mainViewController = self->_mainViewController;
    self->_mainViewController = v18;

    mainViewController = [(TVDefaultSceneDelegate *)self mainViewController];
    window = [(TVDefaultSceneDelegate *)self window];
    [window setRootViewController:mainViewController];

    uRLContexts = [optionsCopy URLContexts];
    [(TVDefaultSceneDelegate *)self scene:v15 openURLContexts:uRLContexts];

    window2 = [(TVDefaultSceneDelegate *)self window];
    [window2 makeKeyAndVisible];
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TVDefaultSceneDelegate sceneDidBecomeActive:v4];
  }

  mainViewController = [(TVDefaultSceneDelegate *)self mainViewController];
  isConfigured = [mainViewController isConfigured];

  if ((isConfigured & 1) == 0)
  {
    v7 = [[TVRViewServiceConfigContext alloc] _initWithLaunchContext:1];
    mainViewController2 = [(TVDefaultSceneDelegate *)self mainViewController];
    [mainViewController2 configureWithContext:v7];
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[TVDefaultSceneDelegate sceneWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  window = [(TVDefaultSceneDelegate *)self window];
  rootViewController = [window rootViewController];

  if (!rootViewController)
  {
    mainViewController = [(TVDefaultSceneDelegate *)self mainViewController];
    window2 = [(TVDefaultSceneDelegate *)self window];
    [window2 setRootViewController:mainViewController];
  }

  mainViewController2 = [(TVDefaultSceneDelegate *)self mainViewController];
  [mainViewController2 willExitLockScreenScene];
}

- (void)sceneWillResignActive:(id)active
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[TVDefaultSceneDelegate sceneWillResignActive:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (SBSGetScreenLockStatus())
  {
    v4 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen is locked", buf, 2u);
    }
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TVDefaultSceneDelegate sceneDidEnterBackground:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  allObjects = [contexts allObjects];
  firstObject = [allObjects firstObject];

  v6 = [firstObject URL];
  if (v6)
  {
    options = [firstObject options];
    annotation = [options annotation];
    v9 = objc_opt_class();
    v10 = annotation;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [[TVRViewServiceConfigContext alloc] _initWithUserInfo:v12];
    mainViewController = [(TVDefaultSceneDelegate *)self mainViewController];
    [mainViewController configureWithContext:v13];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TVDefaultSceneDelegate sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  mainViewController = [(TVDefaultSceneDelegate *)self mainViewController];
  [mainViewController dismiss];

  window = [(TVDefaultSceneDelegate *)self window];
  [window setRootViewController:0];
}

- (void)resetRootViewController
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVDefaultSceneDelegate resetRootViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  window = [(TVDefaultSceneDelegate *)self window];
  [window setRootViewController:0];
}

- (void)sceneDidBecomeActive:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TVDefaultSceneDelegate sceneDidBecomeActive:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

@end