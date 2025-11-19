@interface SceneDelegate
- (UIWindow)window;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v2 = sub_10000ED08();

  return v2;
}

- (void)setWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000ED94(a3);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000EDA8(v8, v11, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
  sub_100011B14(&qword_100021F60, &qword_100021F58, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10000F108(v8, v6);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000F4B4(v8, v7);
}

@end