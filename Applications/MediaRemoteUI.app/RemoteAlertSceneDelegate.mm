@interface RemoteAlertSceneDelegate
- (_TtC13MediaRemoteUI24RemoteAlertSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation RemoteAlertSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000174B4(sceneCopy, sessionCopy, optionsCopy);
}

- (_TtC13MediaRemoteUI24RemoteAlertSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI24RemoteAlertSceneDelegate_underlyingSceneDelegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v3 init];
}

@end