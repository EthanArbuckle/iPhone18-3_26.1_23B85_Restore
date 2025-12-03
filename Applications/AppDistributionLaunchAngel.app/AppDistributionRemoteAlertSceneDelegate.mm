@interface AppDistributionRemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation AppDistributionRemoteAlertSceneDelegate

- (UIWindow)window
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);

  return v4;
}

- (void)setWindow:(id)window
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = window;
  windowCopy = window;
}

- (_TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_100019450();

  return v2;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001DA54(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10001E188();
}

@end