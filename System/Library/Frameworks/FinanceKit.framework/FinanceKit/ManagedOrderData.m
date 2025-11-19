@interface ManagedOrderData
- (_TtC10FinanceKit16ManagedOrderData)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedOrderData

- (_TtC10FinanceKit16ManagedOrderData)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderData *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end