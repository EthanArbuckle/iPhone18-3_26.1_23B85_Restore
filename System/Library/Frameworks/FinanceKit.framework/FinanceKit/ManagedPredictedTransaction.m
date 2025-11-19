@interface ManagedPredictedTransaction
- (_TtC10FinanceKit27ManagedPredictedTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedPredictedTransaction

- (_TtC10FinanceKit27ManagedPredictedTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedPredictedTransaction *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end