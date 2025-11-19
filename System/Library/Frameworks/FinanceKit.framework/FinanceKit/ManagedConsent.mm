@interface ManagedConsent
- (_TtC10FinanceKit14ManagedConsent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedConsent

- (_TtC10FinanceKit14ManagedConsent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedConsent *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end