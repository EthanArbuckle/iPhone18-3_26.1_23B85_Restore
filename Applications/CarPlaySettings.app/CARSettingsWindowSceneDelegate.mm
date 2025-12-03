@interface CARSettingsWindowSceneDelegate
- (void)connectToWindowScene:(id)scene;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation CARSettingsWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    role = [sessionCopy role];
    v9 = [role isEqualToString:_UIWindowSceneSessionRoleCarPlay];

    if (v9)
    {
      v10 = [[CARSessionStatus alloc] initWithOptions:5];
      [(CARSettingsWindowSceneDelegate *)self setSessionStatus:v10];

      [(CARSettingsWindowSceneDelegate *)self connectToWindowScene:sceneCopy];
    }
  }
}

- (void)connectToWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[UIWindow alloc] initWithWindowScene:sceneCopy];
  [(CARSettingsWindowSceneDelegate *)self setSettingsWindow:v5];

  settingsWindow = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [settingsWindow setAutoresizesSubviews:1];

  settingsWindow2 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [settingsWindow2 setAutoresizingMask:18];

  v8 = [CARSettingsViewController alloc];
  sessionStatus = [(CARSettingsWindowSceneDelegate *)self sessionStatus];
  v10 = [(CARSettingsViewController *)v8 initWithSessionStatus:sessionStatus windowScene:sceneCopy];

  [(CARSettingsWindowSceneDelegate *)self setViewController:v10];
  viewController = [(CARSettingsWindowSceneDelegate *)self viewController];
  settingsWindow3 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [settingsWindow3 setRootViewController:viewController];

  settingsWindow4 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [settingsWindow4 makeKeyAndVisible];

  settingsWindow5 = [(CARSettingsWindowSceneDelegate *)self settingsWindow];
  [settingsWindow5 setHidden:0];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  [(CARSettingsViewController *)self->_viewController invalidate];
  settingsWindow = self->_settingsWindow;
  self->_settingsWindow = 0;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = +[CARSettingsAppDelegate sharedDelegate];
  signpostManager = [v4 signpostManager];
  [signpostManager emitRenderedIfNeeded];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  sessionStatus = [(CARSettingsWindowSceneDelegate *)self sessionStatus];
  currentSession = [sessionStatus currentSession];
  configuration = [currentSession configuration];
  supportsVehicleData = [configuration supportsVehicleData];

  v9 = contextsCopy;
  if (supportsVehicleData)
  {
    allObjects = [contextsCopy allObjects];
    firstObject = [allObjects firstObject];
    v12 = [firstObject URL];

    if (v12)
    {
      v13 = +[CARSettingsAppDelegate sharedDelegate];
      carManager = [v13 carManager];
      [carManager openSettingsURL:v12];
    }

    v9 = contextsCopy;
  }
}

@end