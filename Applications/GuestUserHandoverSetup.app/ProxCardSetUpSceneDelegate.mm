@interface ProxCardSetUpSceneDelegate
- (_TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate)init;
- (void)remoteAlertSceneDidUpdateActivationContext:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation ProxCardSetUpSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10001CC9C(v8);
}

- (_TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProxCardSetUpSceneDelegate();
  return [(ProxCardSetUpSceneDelegate *)&v3 init];
}

- (void)remoteAlertSceneDidUpdateActivationContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001BC34(v4);
}

@end