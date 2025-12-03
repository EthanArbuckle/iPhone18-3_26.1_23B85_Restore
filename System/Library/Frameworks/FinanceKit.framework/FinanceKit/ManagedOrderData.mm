@interface ManagedOrderData
- (_TtC10FinanceKit16ManagedOrderData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedOrderData

- (_TtC10FinanceKit16ManagedOrderData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderData *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end