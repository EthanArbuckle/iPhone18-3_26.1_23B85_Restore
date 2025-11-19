@interface SceneDelegate
- (_TtC7AppleTV13SceneDelegate)init;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation SceneDelegate

- (_TtC7AppleTV13SceneDelegate)init
{
  Logger.init(subsystem:category:)();
  v3 = OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  *(&self->super.isa + v3) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v7 init];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100002554(v8, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100003F24(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100003FB4(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000D000(v4);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
  sub_100003054(&qword_1000232C8, &qword_1000232C0, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *((swift_isaMask & self->super.isa) + 0xA0);
  v7 = self;
  v6(v5);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000EA94(v7);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000D28C(v4);
}

@end