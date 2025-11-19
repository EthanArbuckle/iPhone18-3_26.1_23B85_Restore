@interface BankConnectSpotlightTransactionsProvider
+ (id)makeProvider;
- (_TtC10FinanceKit40BankConnectSpotlightTransactionsProvider)init;
- (void)transactionWithURL:(NSURL *)a3 completion:(id)a4;
- (void)transactionsWithURLs:(NSArray *)a3 completion:(id)a4;
@end

@implementation BankConnectSpotlightTransactionsProvider

+ (id)makeProvider
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EDAF9E38 + 2);
  v3 = type metadata accessor for BankConnectSpotlightTransactionsProvider();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC10FinanceKit40BankConnectSpotlightTransactionsProvider_store] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (void)transactionsWithURLs:(NSArray *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B783A8F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B783A8F8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1B77E494C(0, 0, v9, &unk_1B783A900, v14);
}

- (void)transactionWithURL:(NSURL *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B783A8E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B780BB50;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1B77E494C(0, 0, v9, &unk_1B780D8F0, v14);
}

- (_TtC10FinanceKit40BankConnectSpotlightTransactionsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end