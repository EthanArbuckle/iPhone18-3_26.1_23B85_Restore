@interface SceneDelegate
- (UIWindow)window;
- (_TtC19Text_Message_Filter13SceneDelegate)init;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (_TtC19Text_Message_Filter13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end