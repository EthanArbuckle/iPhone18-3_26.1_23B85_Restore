@interface ManagedExtractedOrderTransaction
- (_TtC10FinanceKit32ManagedExtractedOrderTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedExtractedOrderTransaction

- (_TtC10FinanceKit32ManagedExtractedOrderTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedExtractedOrderTransaction *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end