@interface CameraSceneDelegate
- (_TtC9CarCamera19CameraSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation CameraSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000089C0(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100008640(disconnectCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  session = [foregroundCopy session];
  role = [session role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC9CarCamera19CameraSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_consoleWindowManager) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_clusterWindowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CameraSceneDelegate();
  return [(CameraSceneDelegate *)&v3 init];
}

@end