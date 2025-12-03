@interface NoiseSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation NoiseSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000077C0(sceneCopy, sessionCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_window) = window;
  windowCopy = window;
}

@end