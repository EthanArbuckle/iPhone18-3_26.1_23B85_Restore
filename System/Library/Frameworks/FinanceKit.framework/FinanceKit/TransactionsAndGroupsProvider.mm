@interface TransactionsAndGroupsProvider
+ (id)makeProviderWithPrimaryAccountIdentifier:(id)a3;
+ (id)makeProviderWithPrimaryAccountIdentifier:(id)a3 fixedNumberOfLatestTransactions:(int64_t)a4;
- (FKBankConnectTransactionsAndGroupsProviderDelegate)delegate;
- (_TtC10FinanceKit29TransactionsAndGroupsProvider)init;
- (void)performFetchAndStartObservingNotifications;
@end

@implementation TransactionsAndGroupsProvider

- (FKBankConnectTransactionsAndGroupsProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (id)makeProviderWithPrimaryAccountIdentifier:(id)a3
{
  v3 = sub_1B7800868();
  v5 = sub_1B7667094(v3, v4, 10);

  return v5;
}

+ (id)makeProviderWithPrimaryAccountIdentifier:(id)a3 fixedNumberOfLatestTransactions:(int64_t)a4
{
  v5 = sub_1B7800868();
  v7 = sub_1B7667094(v5, v6, a4);

  return v7;
}

- (void)performFetchAndStartObservingNotifications
{
  v2 = self;
  sub_1B7664030();
}

- (_TtC10FinanceKit29TransactionsAndGroupsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end