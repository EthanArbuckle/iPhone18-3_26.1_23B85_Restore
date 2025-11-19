@interface TVDefaultSceneDelegate
- (void)resetRootViewController;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation TVDefaultSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v8 description];
    v24 = 136315906;
    v25 = "[TVDefaultSceneDelegate scene:willConnectToSession:options:]";
    v26 = 2112;
    v27 = v23;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: %@, %@, %@", &v24, 0x2Au);
  }

  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    v14 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [TVDefaultSceneDelegate scene:v14 willConnectToSession:? options:?];
    }
  }

  else
  {
    v15 = v8;
    v16 = [[TVRemoteWindow alloc] initWithWindowScene:v15];
    window = self->_window;
    self->_window = &v16->super;

    v18 = objc_alloc_init(TVRemoteViewController);
    mainViewController = self->_mainViewController;
    self->_mainViewController = v18;

    v20 = [(TVDefaultSceneDelegate *)self mainViewController];
    v21 = [(TVDefaultSceneDelegate *)self window];
    [v21 setRootViewController:v20];

    v22 = [v10 URLContexts];
    [(TVDefaultSceneDelegate *)self scene:v15 openURLContexts:v22];

    v14 = [(TVDefaultSceneDelegate *)self window];
    [v14 makeKeyAndVisible];
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TVDefaultSceneDelegate sceneDidBecomeActive:v4];
  }

  v5 = [(TVDefaultSceneDelegate *)self mainViewController];
  v6 = [v5 isConfigured];

  if ((v6 & 1) == 0)
  {
    v7 = [[TVRViewServiceConfigContext alloc] _initWithLaunchContext:1];
    v8 = [(TVDefaultSceneDelegate *)self mainViewController];
    [v8 configureWithContext:v7];
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[TVDefaultSceneDelegate sceneWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v5 = [(TVDefaultSceneDelegate *)self window];
  v6 = [v5 rootViewController];

  if (!v6)
  {
    v7 = [(TVDefaultSceneDelegate *)self mainViewController];
    v8 = [(TVDefaultSceneDelegate *)self window];
    [v8 setRootViewController:v7];
  }

  v9 = [(TVDefaultSceneDelegate *)self mainViewController];
  [v9 willExitLockScreenScene];
}

- (void)sceneWillResignActive:(id)a3
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

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TVDefaultSceneDelegate sceneDidEnterBackground:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = [a4 allObjects];
  v15 = [v5 firstObject];

  v6 = [v15 URL];
  if (v6)
  {
    v7 = [v15 options];
    v8 = [v7 annotation];
    v9 = objc_opt_class();
    v10 = v8;
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
    v14 = [(TVDefaultSceneDelegate *)self mainViewController];
    [v14 configureWithContext:v13];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TVDefaultSceneDelegate sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v5 = [(TVDefaultSceneDelegate *)self mainViewController];
  [v5 dismiss];

  v6 = [(TVDefaultSceneDelegate *)self window];
  [v6 setRootViewController:0];
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

  v4 = [(TVDefaultSceneDelegate *)self window];
  [v4 setRootViewController:0];
}

- (void)sceneDidBecomeActive:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TVDefaultSceneDelegate sceneDidBecomeActive:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

@end