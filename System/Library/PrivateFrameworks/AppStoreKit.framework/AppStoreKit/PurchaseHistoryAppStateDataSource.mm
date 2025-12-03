@interface PurchaseHistoryAppStateDataSource
- (_TtC11AppStoreKit33PurchaseHistoryAppStateDataSource)init;
- (void)accountsDidChange;
- (void)dealloc;
- (void)hostBundleIdDidChange:(id)change;
- (void)purchaseHistoryUpdated:(id)updated;
@end

@implementation PurchaseHistoryAppStateDataSource

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for PurchaseHistoryAppStateDataSource();
  [(PurchaseHistoryAppStateDataSource *)&v6 dealloc];
}

- (void)purchaseHistoryUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_1E1A5E094(sub_1E1A5E394, &block_descriptor_67_1);
}

- (void)accountsDidChange
{
  selfCopy = self;
  sub_1E1A5A318();
}

- (void)hostBundleIdDidChange:(id)change
{
  v4 = sub_1E1AEF55C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();
  selfCopy = self;
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