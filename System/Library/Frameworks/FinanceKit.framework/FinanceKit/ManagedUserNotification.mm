@interface ManagedUserNotification
- (_TtC10FinanceKit23ManagedUserNotification)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedUserNotification

- (_TtC10FinanceKit23ManagedUserNotification)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedUserNotification *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end