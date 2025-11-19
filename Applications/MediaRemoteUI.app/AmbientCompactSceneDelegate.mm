@interface AmbientCompactSceneDelegate
- (_TtC13MediaRemoteUI27AmbientCompactSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation AmbientCompactSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000AE30(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
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