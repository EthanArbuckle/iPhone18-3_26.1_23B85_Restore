@interface ManagedTransaction
- (_TtC10FinanceKit18ManagedTransaction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedTransaction

- (_TtC10FinanceKit18ManagedTransaction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedTransaction *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end