@interface CARSettingsWindowSceneDelegate
- (void)connectToWindowScene:(id)a3;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation CARSettingsWindowSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v11 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 role];
    v9 = [v8 isEqualToString:_UIWindowSceneSessionRoleCarPlay];

    if (v9)
    {
      v10 = [[CARSessionStatus alloc] initWithOptions:5];
      [(CARSettingsWindowSceneDelegate *)self setSessionStatus:v10];

      [(CARSettingsWindowSceneDelegate *)self connectToWindowScene:v11];
    }
  }
}

- (void)connectToWindowScene:(id)a3
{
  v4 = a3;
  v5 = [[UIWindow alloc] initWithWindowScene:v4];
  [(CARSettingsWindowSceneDelegate *)self setSettingsWindow:v5];

  v6 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [v6 setAutoresizesSubviews:1];

  v7 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [v7 setAutoresizingMask:18];

  v8 = [CARSettingsViewController alloc];
  v9 = [(CARSettingsWindowSceneDelegate *)self sessionStatus];
  v10 = [(CARSettingsViewController *)v8 initWithSessionStatus:v9 windowScene:v4];

  [(CARSettingsWindowSceneDelegate *)self setViewController:v10];
  v11 = [(CARSettingsWindowSceneDelegate *)self viewController];
  v12 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [v12 setRootViewController:v11];

  v13 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [v13 makeKeyAndVisible];

  v14 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [v14 setHidden:0];
}

- (void)sceneDidDisconnect:(id)a3
{
  [(CARSettingsViewController *)self->_viewController invalidate];
  settingsWindow = self->_settingsWindow;
  self->_settingsWindow = 0;
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = +[CARSettingsAppDelegate sharedDelegate];
  v3 = [v4 signpostManager];
  [v3 emitRenderedIfNeeded];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v15 = a4;
  v5 = [(CARSettingsWindowSceneDelegate *)self sessionStatus];
  v6 = [v5 currentSession];
  v7 = [v6 configuration];
  v8 = [v7 supportsVehicleData];

  v9 = v15;
  if (v8)
  {
    v10 = [v15 allObjects];
    v11 = [v10 firstObject];
    v12 = [v11 URL];

    if (v12)
    {
      v13 = +[CARSettingsAppDelegate sharedDelegate];
      v14 = [v13 carManager];
      [v14 openSettingsURL:v12];
    }

    v9 = v15;
  }
}

@end