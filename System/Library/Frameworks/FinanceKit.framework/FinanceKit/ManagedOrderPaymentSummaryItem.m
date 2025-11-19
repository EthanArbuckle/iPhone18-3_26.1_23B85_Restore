@interface ManagedOrderPaymentSummaryItem
- (_TtC10FinanceKit30ManagedOrderPaymentSummaryItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedOrderPaymentSummaryItem

- (_TtC10FinanceKit30ManagedOrderPaymentSummaryItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderPaymentSummaryItem *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end