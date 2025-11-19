@interface ManagedTransactionInsights
- (_TtC10FinanceKit26ManagedTransactionInsights)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedTransactionInsights

- (_TtC10FinanceKit26ManagedTransactionInsights)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedTransactionInsights *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void)willSave
{
  v2 = self;
  ManagedTransactionInsights.willSave()();
}

@end