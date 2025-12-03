@interface SimulatorMainSceneDelegate
- (void)setWindow:(id)window;
@end

@implementation SimulatorMainSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window) = window;
  windowCopy = window;
}

@end