@interface PurchaseHistoryAppStateDataSource
- (_TtC11AppStoreKit33PurchaseHistoryAppStateDataSource)init;
- (void)accountsDidChange;
- (void)dealloc;
- (void)hostBundleIdDidChange:(id)a3;
- (void)purchaseHistoryUpdated:(id)a3;
@end

@implementation PurchaseHistoryAppStateDataSource

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for PurchaseHistoryAppStateDataSource();
  [(PurchaseHistoryAppStateDataSource *)&v6 dealloc];
}

- (void)purchaseHistoryUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E1A5E094(sub_1E1A5E394, &block_descriptor_67_1);
}

- (void)accountsDidChange
{
  v2 = self;
  sub_1E1A5A318();
}

- (void)hostBundleIdDidChange:(id)a3
{
  v4 = sub_1E1AEF55C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();
  v8 = self;
  sub_1E1A5A6AC();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11AppStoreKit33PurchaseHistoryAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end