@interface ContinuityCaptureShieldUIDefaultSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation ContinuityCaptureShieldUIDefaultSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = ContinuityCaptureShieldUIDefaultSceneDelegate;
  [(ContinuityCaptureShieldUIBaseSceneDelegate *)&v10 scene:sceneCopy willConnectToSession:session options:options];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[ContinuityCaptureShieldUIPauseSceneComponent alloc] initWithScene:sceneCopy];
    [sceneCopy _registerSceneComponent:v9 forKey:@"com.apple.ContinuityCaptureShieldUI.PauseComponent"];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4.receiver = self;
  v4.super_class = ContinuityCaptureShieldUIDefaultSceneDelegate;
  disconnectCopy = disconnect;
  [(ContinuityCaptureShieldUIBaseSceneDelegate *)&v4 sceneDidDisconnect:disconnectCopy];
  [disconnectCopy _unregisterSceneComponentForKey:{@"com.apple.ContinuityCaptureShieldUI.PauseComponent", v4.receiver, v4.super_class}];
}

@end