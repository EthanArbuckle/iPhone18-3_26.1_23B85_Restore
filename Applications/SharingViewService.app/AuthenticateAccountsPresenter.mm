@interface AuthenticateAccountsPresenter
- (_TtC18SharingViewService29AuthenticateAccountsPresenter)init;
- (void)dealloc;
- (void)handleDeviceSetupWithNotification:(id)notification;
- (void)proxCardFlowDidDismiss;
@end

@implementation AuthenticateAccountsPresenter

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [defaultCenter removeObserver:selfCopy name:v6 object:0];

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for AuthenticateAccountsPresenter();
  [(AuthenticateAccountsPresenter *)&v7 dealloc];
}

- (_TtC18SharingViewService29AuthenticateAccountsPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleDeviceSetupWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10007BC78(notificationCopy);
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_1000ACF08();
  *(&selfCopy->super.isa + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState) = 9;
}

@end