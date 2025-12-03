@interface ManagedOrderLineItem
- (_TtC10FinanceKit20ManagedOrderLineItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedOrderLineItem

- (_TtC10FinanceKit20ManagedOrderLineItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderLineItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end