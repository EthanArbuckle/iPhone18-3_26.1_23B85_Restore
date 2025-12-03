@interface AmbientSceneDelegate
- (_TtC13MediaRemoteUI20AmbientSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation AmbientSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100015318(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100015B20();
}

- (_TtC13MediaRemoteUI20AmbientSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_dependency;
  if (qword_10006FF68 != -1)
  {
    swift_once();
  }

  *(&self->super.isa + v3) = qword_100073720;
  v4 = OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_lockscreenCoordinator;
  v5 = qword_10006FFA0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_100073810;
  *(&self->super.isa + v4) = qword_100073810;
  v7 = self + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_isBackdropActiveCancellable;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AmbientSceneDelegate();
  v8 = v6;
  return [(AmbientSceneDelegate *)&v10 init];
}

@end