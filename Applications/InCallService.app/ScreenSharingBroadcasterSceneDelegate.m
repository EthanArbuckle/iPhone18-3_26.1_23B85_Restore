@interface ScreenSharingBroadcasterSceneDelegate
- (UIWindow)window;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation ScreenSharingBroadcasterSceneDelegate

- (UIWindow)window
{
  v2 = sub_1001C79D8();

  return v2;
}

- (void)setWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001C7A64(a3);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001C7A78(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C8158();
}

@end