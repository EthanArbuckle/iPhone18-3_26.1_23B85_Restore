@interface InputUISceneDelegate
- (id)sessionCoordinator;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation InputUISceneDelegate

- (id)sessionCoordinator
{
  v2 = +[InputUIApp sharedApplication];
  sessionCoordinator = [v2 sessionCoordinator];

  return sessionCoordinator;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  v9 = sub_100001928();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = sceneCopy;
    v20 = 2112;
    v21 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "InputUI scene:%@ willConnectToSession:%@", &v18, 0x16u);
  }

  objc_storeWeak(&self->_windowScene, sceneCopy);
  v10 = [InputUIWindow alloc];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v12 = [(InputUIWindow *)v10 initWithWindowScene:WeakRetained];

  objc_storeStrong(&self->_keyboardWindow, v12);
  if ((+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") & 1) != 0 || !+[UIKeyboard supportsAutoFillPanel])
  {
    sessionCoordinator = [(InputUISceneDelegate *)self sessionCoordinator];
    v14 = objc_alloc_init(IUIInputSourceViewController);
    [(IUIInputSourceViewController *)v14 setSessionCoordinator:sessionCoordinator];
    [sessionCoordinator setInputSourceViewController:v14];
    [(InputUISceneDelegate *)self setKeyboardContainerVC:v14];
    [(UIWindow *)self->_keyboardWindow setRootViewController:v14];
  }

  else
  {
    sessionCoordinator = objc_alloc_init(UIViewController);
    [(UIWindow *)self->_keyboardWindow setRootViewController:sessionCoordinator];
  }

  [(UIWindow *)self->_keyboardWindow makeKeyAndVisible];
  keyboardWindow = self->_keyboardWindow;
  y = CGPointZero.y;
  v17 = +[UIScreen mainScreen];
  [v17 bounds];
  [(UIWindow *)keyboardWindow setFrame:CGPointZero.x, y];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneDidDisconnect:%@", &v5, 0xCu);
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneDidBecomeActive:%@", &v5, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneWillResignActive:%@", &v5, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneWillEnterForeground:%@", &v6, 0xCu);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 resumeTextInputService];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneDidEnterBackground:%@", &v6, 0xCu);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 pauseTextInputService];
}

@end