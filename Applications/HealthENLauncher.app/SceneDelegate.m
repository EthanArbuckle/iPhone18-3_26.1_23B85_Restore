@interface SceneDelegate
- (_TtC16HealthENLauncher13SceneDelegate)init;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16HealthENLauncher13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16HealthENLauncher13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100016968(v8, v10);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_10000C698(v5);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_1000177C4(0, &qword_100025AA8, UIOpenURLContext_ptr);
  sub_100017764(&qword_100025AB0, &qword_100025AA8, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100016CB4(v6);
}

- (_TtC16HealthENLauncher13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16HealthENLauncher13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end