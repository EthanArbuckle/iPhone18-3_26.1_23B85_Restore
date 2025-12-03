@interface ManagedSpotlightUniqueIdentifier
- (_TtC10FinanceKit32ManagedSpotlightUniqueIdentifier)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedSpotlightUniqueIdentifier

- (void)willSave
{
  selfCopy = self;
  ManagedSpotlightUniqueIdentifier.willSave()();
}

- (_TtC10FinanceKit32ManagedSpotlightUniqueIdentifier)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedSpotlightUniqueIdentifier *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end