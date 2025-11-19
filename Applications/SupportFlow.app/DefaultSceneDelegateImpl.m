@interface DefaultSceneDelegateImpl
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didUpdateUserActivity:(id)a4;
- (void)scene:(id)a3 restoreInteractionStateWithUserActivity:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation DefaultSceneDelegateImpl

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100026E6C();
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100027CE8();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100027E8C();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002754C();
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002774C();
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100027FF8();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000279DC();
}

- (void)scene:(id)a3 didUpdateUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100028164();
}

- (void)scene:(id)a3 restoreInteractionStateWithUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100028308();
}

@end