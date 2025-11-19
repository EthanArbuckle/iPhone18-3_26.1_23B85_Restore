@interface SceneDelegate
- (UIWindow)window;
- (_TtC19Text_Message_Filter13SceneDelegate)init;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC19Text_Message_Filter13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end