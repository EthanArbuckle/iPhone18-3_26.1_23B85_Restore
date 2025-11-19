@interface TVLockScreenSceneDelegate
- (TVLockScreenRemoteDelegate)lockScreenRemoteDelegate;
- (id)_mainViewController;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation TVLockScreenSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 description];
    v26 = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[TVLockScreenSceneDelegate] -scene:willConnectToSession:withOptions: %@, %@, %@", &v26, 0x20u);
  }

  v13 = v8;
  v14 = +[UIApplication sharedApplication];
  v15 = [v14 delegate];
  objc_storeWeak(&self->_lockScreenRemoteDelegate, v15);

  v16 = [[TVRemoteWindow alloc] initWithWindowScene:v13];
  window = self->_window;
  self->_window = &v16->super;

  v18 = [(TVLockScreenSceneDelegate *)self _mainViewController];
  mainViewController = self->_mainViewController;
  self->_mainViewController = v18;

  v20 = self->_mainViewController;
  if (!v20)
  {
    v21 = objc_alloc_init(TVRemoteViewController);
    v22 = self->_mainViewController;
    self->_mainViewController = v21;

    v20 = self->_mainViewController;
  }

  [(TVRemoteViewController *)v20 willEnterLockScreenScene];
  v23 = [(TVLockScreenSceneDelegate *)self mainViewController];
  v24 = [(TVLockScreenSceneDelegate *)self window];
  [v24 setRootViewController:v23];

  v25 = [(TVLockScreenSceneDelegate *)self window];
  [v25 makeKeyAndVisible];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[TVLockScreenSceneDelegate sceneDidBecomeActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v5 = [(TVLockScreenSceneDelegate *)self mainViewController];
  v6 = [v5 isConfigured];

  if ((v6 & 1) == 0)
  {
    v7 = [[TVRViewServiceConfigContext alloc] _initWithLaunchContext:14];
    v8 = [(TVLockScreenSceneDelegate *)self mainViewController];
    [v8 configureWithContext:v7];
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TVLockScreenSceneDelegate sceneWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v5 = [(TVLockScreenSceneDelegate *)self mainViewController];
  [v5 willEnterLockScreenScene];
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TVLockScreenSceneDelegate sceneWillResignActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v5 = [(TVLockScreenSceneDelegate *)self mainViewController];
  [v5 willExitLockScreenScene];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[TVLockScreenSceneDelegate sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
  }

  v5 = [(TVLockScreenSceneDelegate *)self window];
  [v5 setRootViewController:0];

  window = self->_window;
  self->_window = 0;

  v7 = [(TVLockScreenSceneDelegate *)self mainViewController];
  [v7 willExitLockScreenScene];

  v8 = [(TVLockScreenSceneDelegate *)self mainViewController];
  [v8 dismiss];

  mainViewController = self->_mainViewController;
  self->_mainViewController = 0;

  v10 = [(TVLockScreenSceneDelegate *)self lockScreenRemoteDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TVLockScreenSceneDelegate *)self lockScreenRemoteDelegate];
    [v12 lockScreenSceneDelegateSceneDidDisconnect:self];
  }
}

- (id)_mainViewController
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 defaultSceneDelegate];
  v5 = [v4 mainViewController];

  return v5;
}

- (TVLockScreenRemoteDelegate)lockScreenRemoteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lockScreenRemoteDelegate);

  return WeakRetained;
}

@end