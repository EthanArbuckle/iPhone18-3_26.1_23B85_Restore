@interface ManagedApplication
- (_TtC10FinanceKit18ManagedApplication)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedApplication

- (_TtC10FinanceKit18ManagedApplication)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedApplication *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end