@interface ManagedAccountBalance
- (_TtC10FinanceKit21ManagedAccountBalance)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedAccountBalance

- (_TtC10FinanceKit21ManagedAccountBalance)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedAccountBalance *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end