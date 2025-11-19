@interface WindowSceneDelegate
- (_TtC18ActivityProgressUI19WindowSceneDelegate)init;
- (void)eventResultReceivedForActivity:(id)a3 event:(id)a4 result:(id)a5;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation WindowSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100030204(v8);
}

- (_TtC18ActivityProgressUI19WindowSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_testAppView) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for WindowSceneDelegate();
  return [(WindowSceneDelegate *)&v3 init];
}

- (void)eventResultReceivedForActivity:(id)a3 event:(id)a4 result:(id)a5
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

@end