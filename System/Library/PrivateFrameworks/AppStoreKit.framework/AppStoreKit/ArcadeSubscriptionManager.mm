@interface ArcadeSubscriptionManager
- (_TtC11AppStoreKit25ArcadeSubscriptionManager)init;
- (void)entitlementsDidChange;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4;
@end

@implementation ArcadeSubscriptionManager

- (void)entitlementsDidChange
{
  v2 = self;
  sub_1E15F3D88();
}

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1E15F881C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC11AppStoreKit25ArcadeSubscriptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4
{
  sub_1E13006E4(0, &unk_1ECEB6AE8);
  v6 = sub_1E1AF621C();
  v7 = a3;
  v8 = self;
  v9.super.isa = v7;
  v9._internal = v6;
  ArcadeSubscriptionManager.paymentQueue(_:updatedTransactions:)(v9, v10);
}

@end