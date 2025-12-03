@interface ManagedInternalTransaction
- (NSString)foreignCurrency;
- (NSUUID)id;
- (_TtC10FinanceKit26ManagedInternalTransaction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedInternalTransaction

- (_TtC10FinanceKit26ManagedInternalTransaction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedInternalTransaction *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (NSUUID)id
{
  v3 = sub_1B77FFA18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  publicTransactionObject = [(ManagedInternalTransaction *)selfCopy publicTransactionObject];
  v9 = [publicTransactionObject id];

  sub_1B77FF9E8();
  v10 = sub_1B77FF9B8();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (NSString)foreignCurrency
{
  selfCopy = self;
  publicTransactionObject = [(ManagedInternalTransaction *)selfCopy publicTransactionObject];
  foreignCurrency = [publicTransactionObject foreignCurrency];

  if (foreignCurrency)
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