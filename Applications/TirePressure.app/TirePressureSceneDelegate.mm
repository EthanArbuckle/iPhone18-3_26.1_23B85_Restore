@interface TirePressureSceneDelegate
- (_TtC12TirePressure25TirePressureSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation TirePressureSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100015974(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100014FE0(disconnectCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  session = [foregroundCopy session];
  role = [session role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC12TirePressure25TirePressureSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TirePressureSceneDelegate();
  return [(TirePressureSceneDelegate *)&v3 init];
}

@end