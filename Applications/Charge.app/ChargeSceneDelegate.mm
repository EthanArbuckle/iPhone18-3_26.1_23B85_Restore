@interface ChargeSceneDelegate
- (_TtC6Charge19ChargeSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation ChargeSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100006E9C(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100006BC8(disconnectCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  session = [foregroundCopy session];
  role = [session role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC6Charge19ChargeSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_consoleWindowManager) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_clusterWindowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChargeSceneDelegate();
  return [(ChargeSceneDelegate *)&v3 init];
}

@end