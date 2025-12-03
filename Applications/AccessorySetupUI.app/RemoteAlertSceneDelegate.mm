@interface RemoteAlertSceneDelegate
- (_TtC16AccessorySetupUI24RemoteAlertSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
@end

@implementation RemoteAlertSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100033140(sceneCopy, sessionCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window);
  if (v3)
  {
    selfCopy = self;
    rootViewController = [v3 rootViewController];
    if (rootViewController)
    {
      v5 = rootViewController;
      type metadata accessor for ASUIRootViewController();
      if (swift_dynamicCastClass())
      {
        sub_10000230C();
        v6 = v5;
      }

      else
      {
        v6 = selfCopy;
        selfCopy = v5;
      }
    }
  }
}

- (_TtC16AccessorySetupUI24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v3 init];
}

@end