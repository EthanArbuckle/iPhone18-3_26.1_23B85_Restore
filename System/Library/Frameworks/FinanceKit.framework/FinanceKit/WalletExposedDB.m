@interface WalletExposedDB
+ (id)makeClassAndReturnError:(id *)a3;
- (BOOL)deleteAppleAccountWith:(id)a3 error:(id *)a4;
- (BOOL)deleteTransactionsWithIdentifiers:(id)a3 forAppleAccountIdentifier:(id)a4 error:(id *)a5;
- (BOOL)insertOrUpdateTransactions:(id)a3 forAppleAccountWithID:(id)a4 error:(id *)a5;
- (BOOL)insertOrUpdateWithAppleAccount:(id)a3 error:(id *)a4;
- (_TtC10FinanceKit15WalletExposedDB)init;
- (id)fetchAppleAccountsAndReturnError:(id *)a3;
@end

@implementation WalletExposedDB

- (id)fetchAppleAccountsAndReturnError:(id *)a3
{
  v3 = (*(&self->super.isa + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store))[2];
  v4 = self;
  v7 = [v3 newBackgroundContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC40);
  sub_1B7801468();

  sub_1B7205540(0, &unk_1EDAF6430);
  v5 = sub_1B7800C18();

  return v5;
}

- (BOOL)insertOrUpdateWithAppleAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  WalletExposedDB.insertOrUpdate(appleAccount:)(v6);

  if (v8)
  {
    if (a4)
    {
      v9 = sub_1B77FF308();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (BOOL)deleteAppleAccountWith:(id)a3 error:(id *)a4
{
  v6 = sub_1B7800868();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  WalletExposedDB.deleteAppleAccount(with:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_1B77FF308();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (BOOL)insertOrUpdateTransactions:(id)a3 forAppleAccountWithID:(id)a4 error:(id *)a5
{
  sub_1B7205540(0, &qword_1EB99AA20);
  v7 = sub_1B7800C38();
  v8 = sub_1B7800868();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  WalletExposedDB.insertOrUpdateTransactions(_:forAppleAccountWithID:)(v7, v12);

  if (v13)
  {
    if (a5)
    {
      v14 = sub_1B77FF308();

      v15 = v14;
      *a5 = v14;
    }

    else
    {
    }
  }

  return v13 == 0;
}

- (BOOL)deleteTransactionsWithIdentifiers:(id)a3 forAppleAccountIdentifier:(id)a4 error:(id *)a5
{
  v6 = sub_1B7800FA8();
  v7 = sub_1B7800868();
  v9 = v8;
  v10 = self;
  WalletExposedDB.deleteTransactions(with:for:)(v6, v7, v9);

  return 1;
}

+ (id)makeClassAndReturnError:(id *)a3
{
  v3 = sub_1B77BBE68();

  return v3;
}

- (_TtC10FinanceKit15WalletExposedDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end