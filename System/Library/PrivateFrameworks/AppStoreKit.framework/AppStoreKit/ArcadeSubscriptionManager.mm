@interface ArcadeSubscriptionManager
- (_TtC11AppStoreKit25ArcadeSubscriptionManager)init;
- (void)entitlementsDidChange;
- (void)handleEngagementRequest:(id)request resultHandler:(id)handler;
- (void)paymentQueue:(id)queue updatedTransactions:(id)transactions;
@end

@implementation ArcadeSubscriptionManager

- (void)entitlementsDidChange
{
  selfCopy = self;
  sub_1E15F3D88();
}

- (void)handleEngagementRequest:(id)request resultHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_1E15F881C(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC11AppStoreKit25ArcadeSubscriptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentQueue:(id)queue updatedTransactions:(id)transactions
{
  sub_1E13006E4(0, &unk_1ECEB6AE8);
  v6 = sub_1E1AF621C();
  queueCopy = queue;
  selfCopy = self;
  v9.super.isa = queueCopy;
  v9._internal = v6;
  ArcadeSubscriptionManager.paymentQueue(_:updatedTransactions:)(v9, v10);
}

@end