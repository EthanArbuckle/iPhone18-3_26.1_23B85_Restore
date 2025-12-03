@interface GameOverlayUISceneDelegate
- (_TtC13GameOverlayUI26GameOverlayUISceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation GameOverlayUISceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI26GameOverlayUISceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI26GameOverlayUISceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000D9634(sessionCopy);
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