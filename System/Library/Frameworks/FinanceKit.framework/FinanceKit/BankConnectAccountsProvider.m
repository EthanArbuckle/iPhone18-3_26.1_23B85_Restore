@interface BankConnectAccountsProvider
+ (id)makeProviderWithPrimaryAccountIdentifier:(id)a3;
- (FKBankConnectAccountsProviderDelegate)delegate;
- (_TtC10FinanceKit27BankConnectAccountsProvider)init;
- (void)accountAndReconsentStatusWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation BankConnectAccountsProvider

- (FKBankConnectAccountsProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask))
  {
    v3 = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    sub_1B7800E68();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectAccountsProvider();
  [(BankConnectAccountsProvider *)&v5 dealloc];
}

+ (id)makeProviderWithPrimaryAccountIdentifier:(id)a3
{
  v3 = sub_1B7800868();
  v5 = sub_1B7522B98(v3, v4);

  return v5;
}

- (void)accountAndReconsentStatusWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B7800DF8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B7839360;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B780BB50;
  v12[5] = v11;
  v13 = self;
  sub_1B77E494C(0, 0, v7, &unk_1B780D8F0, v12);
}

- (_TtC10FinanceKit27BankConnectAccountsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end