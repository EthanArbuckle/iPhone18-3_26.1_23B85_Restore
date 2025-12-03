@interface ManagedTransactionInsights
- (_TtC10FinanceKit26ManagedTransactionInsights)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedTransactionInsights

- (_TtC10FinanceKit26ManagedTransactionInsights)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedTransactionInsights *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void)willSave
{
  selfCopy = self;
  ManagedTransactionInsights.willSave()();
}

@end