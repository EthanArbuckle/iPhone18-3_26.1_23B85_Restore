@interface ContinuitySingShieldUIDefaultSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation ContinuitySingShieldUIDefaultSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = ContinuitySingShieldUIDefaultSceneDelegate;
  [(ContinuitySingShieldUIBaseSceneDelegate *)&v10 scene:v8 willConnectToSession:a4 options:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[ContinuityCaptureShieldUIPauseSceneComponent alloc] initWithScene:v8];
    [v8 _registerSceneComponent:v9 forKey:@"com.apple.ContinuitySingShieldUI.PauseComponent"];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4.receiver = self;
  v4.super_class = ContinuitySingShieldUIDefaultSceneDelegate;
  v3 = a3;
  [(ContinuitySingShieldUIBaseSceneDelegate *)&v4 sceneDidDisconnect:v3];
  [v3 _unregisterSceneComponentForKey:{@"com.apple.ContinuitySingShieldUI.PauseComponent", v4.receiver, v4.super_class}];
}

@end