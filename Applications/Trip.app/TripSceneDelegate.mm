@interface TripSceneDelegate
- (_TtC4Trip17TripSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation TripSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10003C87C(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10003C4F8(disconnectCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  session = [foregroundCopy session];
  role = [session role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC4Trip17TripSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TripSceneDelegate();
  return [(TripSceneDelegate *)&v3 init];
}

@end