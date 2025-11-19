@interface ManagedApplication
- (_TtC10FinanceKit18ManagedApplication)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedApplication

- (_TtC10FinanceKit18ManagedApplication)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedApplication *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end