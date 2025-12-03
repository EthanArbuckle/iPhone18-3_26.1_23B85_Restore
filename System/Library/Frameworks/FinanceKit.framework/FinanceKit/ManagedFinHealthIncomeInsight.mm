@interface ManagedFinHealthIncomeInsight
- (_TtC10FinanceKit29ManagedFinHealthIncomeInsight)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedFinHealthIncomeInsight

- (void)willSave
{
  selfCopy = self;
  ManagedFinHealthIncomeInsight.willSave()();
}

- (_TtC10FinanceKit29ManagedFinHealthIncomeInsight)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedFinHealthIncomeInsight *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end