@interface BackdropSceneDelegate
- (_TtC13MediaRemoteUI21BackdropSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation BackdropSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10003DF20(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003E1E0();
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003E35C();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
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