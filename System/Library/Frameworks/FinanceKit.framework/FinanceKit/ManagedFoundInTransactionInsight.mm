@interface ManagedFoundInTransactionInsight
- (_TtC10FinanceKit32ManagedFoundInTransactionInsight)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedFoundInTransactionInsight

- (_TtC10FinanceKit32ManagedFoundInTransactionInsight)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedFoundInTransactionInsight *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void)willSave
{
  v2 = self;
  ManagedFoundInTransactionInsight.willSave()();
}

@end