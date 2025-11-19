@interface ActivitySceneDelegate
- (_TtC21ScreenContinuityShell21ActivitySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation ActivitySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100008E10(v8, v9);
}

- (_TtC21ScreenContinuityShell21ActivitySceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySceneDelegate();
  return [(ActivitySceneDelegate *)&v3 init];
}

@end