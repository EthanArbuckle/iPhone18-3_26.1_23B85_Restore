@interface ActivitySceneDelegate
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
  sub_1000063A4(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000507C(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005204(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005430(v4);
}

@end