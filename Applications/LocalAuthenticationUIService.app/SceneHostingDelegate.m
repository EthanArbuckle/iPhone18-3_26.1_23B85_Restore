@interface SceneHostingDelegate
- (UIWindow)window;
- (_TtC28LocalAuthenticationUIService20SceneHostingDelegate)init;
- (void)handleAction:(id)a3 completion:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation SceneHostingDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  SceneHostingDelegate.scene(_:willConnectTo:options:)(v8, v9, v10);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  SceneHostingDelegate.sceneDidDisconnect(_:)(v4);
}

- (_TtC28LocalAuthenticationUIService20SceneHostingDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window) = 0;
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SceneHostingDelegate();
  return [(SceneHostingDelegate *)&v4 init];
}

- (void)handleAction:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized SceneHostingDelegate.handle(_:completion:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end