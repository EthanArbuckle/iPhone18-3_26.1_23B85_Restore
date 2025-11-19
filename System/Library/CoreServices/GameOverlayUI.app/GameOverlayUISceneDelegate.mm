@interface GameOverlayUISceneDelegate
- (_TtC13GameOverlayUI26GameOverlayUISceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation GameOverlayUISceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI26GameOverlayUISceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI26GameOverlayUISceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000D9634(v9);
}

- (_TtC13GameOverlayUI26GameOverlayUISceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI26GameOverlayUISceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(GameOverlayUISceneDelegate *)&v5 init];
}

@end