@interface TransactionsListProvider
+ (id)makeProviderWithPrimaryAccountIdentifier:(id)identifier dateFromYear:(id)year groupType:(unint64_t)type;
- (FKBankConnectTransactionsListProviderDelegate)delegate;
- (_TtC10FinanceKit24TransactionsListProvider)init;
- (void)performFetchAndStartObservingNotifications;
@end

@implementation TransactionsListProvider

- (FKBankConnectTransactionsListProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (id)makeProviderWithPrimaryAccountIdentifier:(id)identifier dateFromYear:(id)year groupType:(unint64_t)type
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7800868();
  v12 = v11;
  sub_1B77FF928();
  v13 = sub_1B76FBAFC(v10, v12, v9, type);

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)performFetchAndStartObservingNotifications
{
  selfCopy = self;
  sub_1B76FA9B0();
}

- (_TtC10FinanceKit24TransactionsListProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end