@interface SceneDelegate
- (_TtC24AuthenticationServicesUI13SceneDelegate)init;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000056D0(v8, v10);
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_100006420(0, &qword_100011600, BSAction_ptr);
  sub_100005680(&qword_100011608, &qword_100011600, BSAction_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_100005964(v10, v12);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100006420(0, &qword_1000115E8, UIOpenURLContext_ptr);
  sub_100005680(&qword_1000115F0, &qword_1000115E8, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_1000050F0(v5);
}

- (_TtC24AuthenticationServicesUI13SceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_windows) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_rootViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end