@interface SceneDelegate
- (UIWindow)window;
- (_TtC19Transfer_to_Android13SceneDelegate)init;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC19Transfer_to_Android13SceneDelegate_window);

  return v3;
}

- (void)setWindow:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC19Transfer_to_Android13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC19Transfer_to_Android13SceneDelegate_window) = a3;
  v5 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a5;
  v6 = [v9 userActivities];
  sub_100001BA8();
  sub_100001BF4();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000016E0(v7);

  if (v8)
  {
    static UniversalLinkHandler.continueUserActivity(userActivity:)();
  }

  else
  {
  }
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a4;
  static UniversalLinkHandler.continueUserActivity(userActivity:)();
}

- (_TtC19Transfer_to_Android13SceneDelegate)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.isa + OBJC_IVAR____TtC19Transfer_to_Android13SceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SceneDelegate();
  v3 = [(SceneDelegate *)&v5 init];

  return v3;
}

@end