@interface ManagedInternalAccountBalance
- (_TtC10FinanceKit29ManagedInternalAccountBalance)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedInternalAccountBalance

- (_TtC10FinanceKit29ManagedInternalAccountBalance)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedInternalAccountBalance *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end