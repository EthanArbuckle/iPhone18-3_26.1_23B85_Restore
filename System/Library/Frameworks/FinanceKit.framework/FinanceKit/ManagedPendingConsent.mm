@interface ManagedPendingConsent
- (_TtC10FinanceKit21ManagedPendingConsent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedPendingConsent

- (_TtC10FinanceKit21ManagedPendingConsent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedPendingConsent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end