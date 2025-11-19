@interface AuthenticateAccountsPresenter
- (_TtC18SharingViewService29AuthenticateAccountsPresenter)init;
- (void)dealloc;
- (void)handleDeviceSetupWithNotification:(id)a3;
- (void)proxCardFlowDidDismiss;
@end

@implementation AuthenticateAccountsPresenter

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [v5 removeObserver:v4 name:v6 object:0];

  v7.receiver = v4;
  v7.super_class = type metadata accessor for AuthenticateAccountsPresenter();
  [(AuthenticateAccountsPresenter *)&v7 dealloc];
}

- (_TtC18SharingViewService29AuthenticateAccountsPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleDeviceSetupWithNotification:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_10007BC78(v5);
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_1000ACF08();
  *(&v2->super.isa + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState) = 9;
}

@end