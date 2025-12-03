@interface ManagedInternalAccount
- (_TtC10FinanceKit22ManagedInternalAccount)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedInternalAccount

- (_TtC10FinanceKit22ManagedInternalAccount)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedInternalAccount *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end