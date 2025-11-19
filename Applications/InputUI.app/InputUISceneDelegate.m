@interface InputUISceneDelegate
- (id)sessionCoordinator;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation InputUISceneDelegate

- (id)sessionCoordinator
{
  v2 = +[InputUIApp sharedApplication];
  v3 = [v2 sessionCoordinator];

  return v3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100001928();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "InputUI scene:%@ willConnectToSession:%@", &v18, 0x16u);
  }

  objc_storeWeak(&self->_windowScene, v7);
  v10 = [InputUIWindow alloc];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v12 = [(InputUIWindow *)v10 initWithWindowScene:WeakRetained];

  objc_storeStrong(&self->_keyboardWindow, v12);
  if ((+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") & 1) != 0 || !+[UIKeyboard supportsAutoFillPanel])
  {
    v13 = [(InputUISceneDelegate *)self sessionCoordinator];
    v14 = objc_alloc_init(IUIInputSourceViewController);
    [(IUIInputSourceViewController *)v14 setSessionCoordinator:v13];
    [v13 setInputSourceViewController:v14];
    [(InputUISceneDelegate *)self setKeyboardContainerVC:v14];
    [(UIWindow *)self->_keyboardWindow setRootViewController:v14];
  }

  else
  {
    v13 = objc_alloc_init(UIViewController);
    [(UIWindow *)self->_keyboardWindow setRootViewController:v13];
  }

  [(UIWindow *)self->_keyboardWindow makeKeyAndVisible];
  keyboardWindow = self->_keyboardWindow;
  y = CGPointZero.y;
  v17 = +[UIScreen mainScreen];
  [v17 bounds];
  [(UIWindow *)keyboardWindow setFrame:CGPointZero.x, y];
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = a3;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneDidDisconnect:%@", &v5, 0xCu);
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneDidBecomeActive:%@", &v5, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneWillResignActive:%@", &v5, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = a3;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneWillEnterForeground:%@", &v6, 0xCu);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 resumeTextInputService];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = a3;
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI sceneDidEnterBackground:%@", &v6, 0xCu);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 pauseTextInputService];
}

@end