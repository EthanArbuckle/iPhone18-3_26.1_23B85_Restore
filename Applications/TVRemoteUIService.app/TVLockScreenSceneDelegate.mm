@interface TVLockScreenSceneDelegate
- (TVLockScreenRemoteDelegate)lockScreenRemoteDelegate;
- (id)_mainViewController;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation TVLockScreenSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [sceneCopy description];
    v26 = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = sessionCopy;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[TVLockScreenSceneDelegate] -scene:willConnectToSession:withOptions: %@, %@, %@", &v26, 0x20u);
  }

  v13 = sceneCopy;
  v14 = +[UIApplication sharedApplication];
  delegate = [v14 delegate];
  objc_storeWeak(&self->_lockScreenRemoteDelegate, delegate);

  v16 = [[TVRemoteWindow alloc] initWithWindowScene:v13];
  window = self->_window;
  self->_window = &v16->super;

  _mainViewController = [(TVLockScreenSceneDelegate *)self _mainViewController];
  mainViewController = self->_mainViewController;
  self->_mainViewController = _mainViewController;

  v20 = self->_mainViewController;
  if (!v20)
  {
    v21 = objc_alloc_init(TVRemoteViewController);
    v22 = self->_mainViewController;
    self->_mainViewController = v21;

    v20 = self->_mainViewController;
  }

  [(TVRemoteViewController *)v20 willEnterLockScreenScene];
  mainViewController = [(TVLockScreenSceneDelegate *)self mainViewController];
  window = [(TVLockScreenSceneDelegate *)self window];
  [window setRootViewController:mainViewController];

  window2 = [(TVLockScreenSceneDelegate *)self window];
  [window2 makeKeyAndVisible];
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[TVLockScreenSceneDelegate sceneDidBecomeActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  mainViewController = [(TVLockScreenSceneDelegate *)self mainViewController];
  isConfigured = [mainViewController isConfigured];

  if ((isConfigured & 1) == 0)
  {
    v7 = [[TVRViewServiceConfigContext alloc] _initWithLaunchContext:14];
    mainViewController2 = [(TVLockScreenSceneDelegate *)self mainViewController];
    [mainViewController2 configureWithContext:v7];
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TVLockScreenSceneDelegate sceneWillEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  mainViewController = [(TVLockScreenSceneDelegate *)self mainViewController];
  [mainViewController willEnterLockScreenScene];
}

- (void)sceneWillResignActive:(id)active
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TVLockScreenSceneDelegate sceneWillResignActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  mainViewController = [(TVLockScreenSceneDelegate *)self mainViewController];
  [mainViewController willExitLockScreenScene];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[TVLockScreenSceneDelegate sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
  }

  window = [(TVLockScreenSceneDelegate *)self window];
  [window setRootViewController:0];

  window = self->_window;
  self->_window = 0;

  mainViewController = [(TVLockScreenSceneDelegate *)self mainViewController];
  [mainViewController willExitLockScreenScene];

  mainViewController2 = [(TVLockScreenSceneDelegate *)self mainViewController];
  [mainViewController2 dismiss];

  mainViewController = self->_mainViewController;
  self->_mainViewController = 0;

  lockScreenRemoteDelegate = [(TVLockScreenSceneDelegate *)self lockScreenRemoteDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    lockScreenRemoteDelegate2 = [(TVLockScreenSceneDelegate *)self lockScreenRemoteDelegate];
    [lockScreenRemoteDelegate2 lockScreenSceneDelegateSceneDidDisconnect:self];
  }
}

- (id)_mainViewController
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];

  return mainViewController;
}

- (TVLockScreenRemoteDelegate)lockScreenRemoteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lockScreenRemoteDelegate);

  return WeakRetained;
}

@end