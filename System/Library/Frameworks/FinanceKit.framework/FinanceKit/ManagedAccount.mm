@interface ManagedAccount
- (_TtC10FinanceKit14ManagedAccount)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedAccount

- (_TtC10FinanceKit14ManagedAccount)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedAccount *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end