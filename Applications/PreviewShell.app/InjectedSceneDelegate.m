@interface InjectedSceneDelegate
- (void)setWindow:(id)a3;
@end

@implementation InjectedSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window) = a3;
  v3 = a3;
}

@end