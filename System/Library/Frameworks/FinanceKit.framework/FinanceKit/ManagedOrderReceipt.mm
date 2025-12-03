@interface ManagedOrderReceipt
- (_TtC10FinanceKit19ManagedOrderReceipt)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedOrderReceipt

- (_TtC10FinanceKit19ManagedOrderReceipt)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderReceipt *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end