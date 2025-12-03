@interface _BKRoutingWindowSceneDelegate
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene didUpdateUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation _BKRoutingWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  sceneCopy = scene;
  v10 = +[BKAppDelegate sceneManager];
  [v10 routeScene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController sceneDidDisconnect:disconnectCopy];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController sceneDidBecomeActive:activeCopy];
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController sceneWillResignActive:activeCopy];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController sceneWillEnterForeground:foregroundCopy];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController sceneDidEnterBackground:backgroundCopy];
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  collectionCopy = collection;
  spaceCopy = space;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController windowScene:sceneCopy didUpdateCoordinateSpace:spaceCopy interfaceOrientation:orientation traitCollection:collectionCopy];
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController scene:sceneCopy willContinueUserActivityWithType:typeCopy];
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController scene:sceneCopy continueUserActivity:activityCopy];
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  errorCopy = error;
  typeCopy = type;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController scene:sceneCopy didFailToContinueUserActivityWithType:typeCopy error:errorCopy];
}

- (void)scene:(id)scene didUpdateUserActivity:(id)activity
{
  activityCopy = activity;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController scene:sceneCopy didUpdateUserActivity:activityCopy];
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  v6 = [sceneController stateRestorationActivityForScene:sceneCopy];

  return v6;
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController scene:sceneCopy openURLContexts:contextsCopy];
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  sceneCopy = scene;
  sceneController = [(_BKRoutingWindowSceneDelegate *)self sceneController];
  [sceneController windowScene:sceneCopy performActionForShortcutItem:itemCopy completionHandler:handlerCopy];
}

@end