@interface RemoteAlertSceneDelegate
- (_TtC20MediaRemoteUIService24RemoteAlertSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation RemoteAlertSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100004864(sceneCopy, sessionCopy, optionsCopy);
}

- (_TtC20MediaRemoteUIService24RemoteAlertSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RemoteAlertSceneDelegate_underlyingSceneDelegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v3 init];
}

@end