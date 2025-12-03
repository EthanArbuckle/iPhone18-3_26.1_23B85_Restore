@interface RemoteAlertSceneDelegate
- (RemoteAlertSceneDelegate)init;
- (UIWindow)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_window);

  return v3;
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

  v6 = *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_window) = window;
  windowCopy = window;
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
  sub_100005720(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  activeCopy = active;
  selfCopy = self;
  sub_100005E1C(activeCopy);
}

- (RemoteAlertSceneDelegate)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___RemoteAlertSceneDelegate_rootViewController;
  type metadata accessor for RemoteAlertRootViewController();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_invokerContext) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  v4 = [(RemoteAlertSceneDelegate *)&v6 init];

  return v4;
}

@end