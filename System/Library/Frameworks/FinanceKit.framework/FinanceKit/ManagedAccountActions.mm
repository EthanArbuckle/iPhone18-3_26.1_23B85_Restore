@interface ManagedAccountActions
- (_TtC10FinanceKit21ManagedAccountActions)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedAccountActions

- (_TtC10FinanceKit21ManagedAccountActions)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedAccountActions *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end