@interface RemoteAlertSceneDelegate
- (RemoteAlertSceneDelegate)init;
- (UIWindow)window;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)setWindow:(id)a3;
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

- (void)setWindow:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR___RemoteAlertSceneDelegate_window) = a3;
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

  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_100005720(v9, v10, v11);
}

- (void)sceneDidBecomeActive:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_100005E1C(v5);
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