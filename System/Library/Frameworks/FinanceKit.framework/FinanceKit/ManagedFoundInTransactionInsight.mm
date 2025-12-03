@interface ManagedFoundInTransactionInsight
- (_TtC10FinanceKit32ManagedFoundInTransactionInsight)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedFoundInTransactionInsight

- (_TtC10FinanceKit32ManagedFoundInTransactionInsight)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedFoundInTransactionInsight *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void)willSave
{
  selfCopy = self;
  ManagedFoundInTransactionInsight.willSave()();
}

@end