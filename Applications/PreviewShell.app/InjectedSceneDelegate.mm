@interface InjectedSceneDelegate
- (void)setWindow:(id)window;
@end

@implementation InjectedSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window) = window;
  windowCopy = window;
}

@end