@interface _UIORegisteringSceneDelegate
- (_UIOverlayViewController)rootViewController;
- (id)_setupScene:(id)scene;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation _UIORegisteringSceneDelegate

- (id)_setupScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[_UIOverlayWindow alloc] initWithWindowScene:sceneCopy];

  window = self->_window;
  self->_window = &v5->super;

  rootViewController = [(_UIORegisteringSceneDelegate *)self rootViewController];
  [(UIWindow *)self->_window setRootViewController:rootViewController];

  [(UIWindow *)self->_window makeKeyAndVisible];

  return [(_UIORegisteringSceneDelegate *)self rootViewController];
}

- (_UIOverlayViewController)rootViewController
{
  rootViewController = self->_rootViewController;
  if (!rootViewController)
  {
    v4 = [[_UIOverlayViewController alloc] initWithNibName:0 bundle:0];
    v5 = self->_rootViewController;
    self->_rootViewController = v4;

    rootViewController = self->_rootViewController;
  }

  return rootViewController;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  v7 = UIOLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[_UIORegisteringSceneDelegate scene:willConnectToSession:options:]";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v11, 0xCu);
  }

  v8 = +[UIOServer sharedInstance];
  v9 = [(_UIORegisteringSceneDelegate *)self _setupScene:sceneCopy];
  v10 = [UIOServer displayDelegateIdentifierForScene:sceneCopy];

  [v8 registerDisplayDelegate:v9 forIdentifier:v10];
  [v8 activate];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = [UIOServer displayDelegateIdentifierForScene:disconnect];
  v3 = +[UIOServer sharedInstance];
  [v3 unregisterDisplayDelegateForIdentifier:v4];
}

@end