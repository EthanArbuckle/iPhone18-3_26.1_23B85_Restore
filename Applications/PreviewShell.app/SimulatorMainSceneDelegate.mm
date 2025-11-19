@interface SimulatorMainSceneDelegate
- (void)setWindow:(id)a3;
@end

@implementation SimulatorMainSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window) = a3;
  v3 = a3;
}

@end