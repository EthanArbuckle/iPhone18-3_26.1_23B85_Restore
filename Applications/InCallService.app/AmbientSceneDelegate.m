@interface AmbientSceneDelegate
- (UIWindow)window;
- (id)sceneDidDisconnectBlock;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setSceneDidDisconnectBlock:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation AmbientSceneDelegate

- (UIWindow)window
{
  v2 = sub_1001D6020();

  return v2;
}

- (void)setWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001D60AC(a3);
}

- (id)sceneDidDisconnectBlock
{
  v2 = sub_1001D6168();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10002E570;
    v6[3] = &unk_10035EA20;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSceneDidDisconnectBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1001541E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1001D6250(v4, v5);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001D6270(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D697C();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D6B48(v5, 1);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D6B48(v5, 0);
}

@end