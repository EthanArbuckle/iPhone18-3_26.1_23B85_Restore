@interface RemoteAlertSceneDelegate
- (UIWindow)window;
- (void)remoteAlertScene:(id)a3 didTransitionToAttachedToWindowedAccessory:(BOOL)a4 windowedAccessoryCutoutFrameInScreen:(CGRect)a5;
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  v2 = sub_1000298F8();

  return v2;
}

- (void)setWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100029984(a3);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100029998(v8);
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002A7EC(v4);
}

- (void)remoteAlertScene:(id)a3 didTransitionToAttachedToWindowedAccessory:(BOOL)a4 windowedAccessoryCutoutFrameInScreen:(CGRect)a5
{
  v7 = a3;
  v8 = self;
  sub_10002AA68(v7, a4);
}

@end