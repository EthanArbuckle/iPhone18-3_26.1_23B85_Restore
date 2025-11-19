@interface ManagedTransaction
- (_TtC10FinanceKit18ManagedTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedTransaction

- (_TtC10FinanceKit18ManagedTransaction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedTransaction *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end