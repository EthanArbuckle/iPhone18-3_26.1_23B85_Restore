@interface LiveActivitySceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10001B654(v8);
}

@end