@interface SceneDelegate
- (_TtC28LocalAuthenticationUIService13SceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  SceneDelegate.scene(_:willConnectTo:options:)(v8, v9, v10);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  SceneDelegate.sceneDidDisconnect(_:)(v4);
}

- (_TtC28LocalAuthenticationUIService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter) = 0;
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v4 init];
}

@end