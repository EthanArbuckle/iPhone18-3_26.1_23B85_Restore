@interface ActivitySceneDelegate
- (_TtC21ScreenContinuityShell21ActivitySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation ActivitySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100008E10(sceneCopy, sessionCopy);
}

- (_TtC21ScreenContinuityShell21ActivitySceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySceneDelegate();
  return [(ActivitySceneDelegate *)&v3 init];
}

@end