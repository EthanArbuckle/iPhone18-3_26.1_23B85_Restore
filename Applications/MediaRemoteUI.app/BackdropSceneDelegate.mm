@interface BackdropSceneDelegate
- (_TtC13MediaRemoteUI21BackdropSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
@end

@implementation BackdropSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10003DF20(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10003E1E0();
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10003E35C();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10003E488();
}

- (_TtC13MediaRemoteUI21BackdropSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BackdropSceneDelegate();
  return [(BackdropSceneDelegate *)&v3 init];
}

@end