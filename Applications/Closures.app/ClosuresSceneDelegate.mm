@interface ClosuresSceneDelegate
- (_TtC8Closures21ClosuresSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation ClosuresSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100001E10(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100001B64(disconnectCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  session = [foregroundCopy session];
  role = [session role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC8Closures21ClosuresSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClosuresSceneDelegate();
  return [(ClosuresSceneDelegate *)&v3 init];
}

@end