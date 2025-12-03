@interface ManagedConsent
- (_TtC10FinanceKit14ManagedConsent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedConsent

- (_TtC10FinanceKit14ManagedConsent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedConsent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end