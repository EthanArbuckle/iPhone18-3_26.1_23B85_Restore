@interface AmbientCompactSceneDelegate
- (_TtC13MediaRemoteUI27AmbientCompactSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation AmbientCompactSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000AE30(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10000B068();
}

- (_TtC13MediaRemoteUI27AmbientCompactSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_dependency;
  if (qword_10006FF68 != -1)
  {
    swift_once();
  }

  *(&self->super.isa + v3) = qword_100073720;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AmbientCompactSceneDelegate();

  return [(AmbientCompactSceneDelegate *)&v5 init];
}

@end