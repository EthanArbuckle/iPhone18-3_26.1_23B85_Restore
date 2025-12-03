@interface WalletExposedDB
+ (id)makeClassAndReturnError:(id *)error;
- (BOOL)deleteAppleAccountWith:(id)with error:(id *)error;
- (BOOL)deleteTransactionsWithIdentifiers:(id)identifiers forAppleAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)insertOrUpdateTransactions:(id)transactions forAppleAccountWithID:(id)d error:(id *)error;
- (BOOL)insertOrUpdateWithAppleAccount:(id)account error:(id *)error;
- (_TtC10FinanceKit15WalletExposedDB)init;
- (id)fetchAppleAccountsAndReturnError:(id *)error;
@end

@implementation WalletExposedDB

- (id)fetchAppleAccountsAndReturnError:(id *)error
{
  v3 = (*(&self->super.isa + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store))[2];
  selfCopy = self;
  newBackgroundContext = [v3 newBackgroundContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC40);
  sub_1B7801468();

  sub_1B7205540(0, &unk_1EDAF6430);
  v5 = sub_1B7800C18();

  return v5;
}

- (BOOL)insertOrUpdateWithAppleAccount:(id)account error:(id *)error
{
  accountCopy = account;
  selfCopy = self;
  WalletExposedDB.insertOrUpdate(appleAccount:)(accountCopy);

  if (v8)
  {
    if (error)
    {
      v9 = sub_1B77FF308();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (BOOL)deleteAppleAccountWith:(id)with error:(id *)error
{
  v6 = sub_1B7800868();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  WalletExposedDB.deleteAppleAccount(with:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = sub_1B77FF308();

      v13 = v12;
      *error = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (BOOL)insertOrUpdateTransactions:(id)transactions forAppleAccountWithID:(id)d error:(id *)error
{
  sub_1B7205540(0, &qword_1EB99AA20);
  v7 = sub_1B7800C38();
  v8 = sub_1B7800868();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  WalletExposedDB.insertOrUpdateTransactions(_:forAppleAccountWithID:)(v7, v12);

  if (v13)
  {
    if (error)
    {
      v14 = sub_1B77FF308();

      v15 = v14;
      *error = v14;
    }

    else
    {
    }
  }

  return v13 == 0;
}

- (BOOL)deleteTransactionsWithIdentifiers:(id)identifiers forAppleAccountIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_1B7800FA8();
  v7 = sub_1B7800868();
  v9 = v8;
  selfCopy = self;
  WalletExposedDB.deleteTransactions(with:for:)(v6, v7, v9);

  return 1;
}

+ (id)makeClassAndReturnError:(id *)error
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