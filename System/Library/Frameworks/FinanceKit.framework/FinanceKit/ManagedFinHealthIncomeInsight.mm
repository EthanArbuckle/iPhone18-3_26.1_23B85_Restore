@interface ManagedFinHealthIncomeInsight
- (_TtC10FinanceKit29ManagedFinHealthIncomeInsight)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedFinHealthIncomeInsight

- (void)willSave
{
  v2 = self;
  ManagedFinHealthIncomeInsight.willSave()();
}

- (_TtC10FinanceKit29ManagedFinHealthIncomeInsight)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedFinHealthIncomeInsight *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end