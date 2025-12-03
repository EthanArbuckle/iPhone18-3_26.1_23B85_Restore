@interface ManagedAccountBalance
- (_TtC10FinanceKit21ManagedAccountBalance)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedAccountBalance

- (_TtC10FinanceKit21ManagedAccountBalance)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedAccountBalance *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end