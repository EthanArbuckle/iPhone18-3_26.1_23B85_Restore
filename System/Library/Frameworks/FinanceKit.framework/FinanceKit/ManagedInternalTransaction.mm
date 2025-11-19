@interface ManagedInternalTransaction
- (NSString)foreignCurrency;
- (NSUUID)id;
- (_TtC10FinanceKit26ManagedInternalTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedInternalTransaction

- (_TtC10FinanceKit26ManagedInternalTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedInternalTransaction *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (NSUUID)id
{
  v3 = sub_1B77FFA18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(ManagedInternalTransaction *)v7 publicTransactionObject];
  v9 = [v8 id];

  sub_1B77FF9E8();
  v10 = sub_1B77FF9B8();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (NSString)foreignCurrency
{
  v2 = self;
  v3 = [(ManagedInternalTransaction *)v2 publicTransactionObject];
  v4 = [v3 foreignCurrency];

  if (v4)
  {
    sub_1B7800868();

    v5 = sub_1B7800838();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end