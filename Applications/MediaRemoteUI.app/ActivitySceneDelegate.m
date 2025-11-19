@interface ActivitySceneDelegate
- (void)lockscreenViewController:(id)a3 didUpdatePreferredContentSize:(CGSize)a4;
- (void)lockscreenViewController:(id)a3 didUpdateRestrictedRects:(id)a4;
- (void)lockscreenViewController:(id)a3 viewWillTransitionToSize:(CGSize)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation ActivitySceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10001B5BC(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100019220(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100019AEC(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001A32C(v4);
}

- (void)lockscreenViewController:(id)a3 didUpdatePreferredContentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  sub_10001AEEC(v7, width, height);
}

- (void)lockscreenViewController:(id)a3 didUpdateRestrictedRects:(id)a4
{
  sub_100006334(0, &qword_1000711C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10001B118(v7, v6);
}

- (void)lockscreenViewController:(id)a3 viewWillTransitionToSize:(CGSize)a4
{
  width = a4.width;
  v6 = a3;
  v7 = self;
  sub_10001B484(v6, width);
}

@end