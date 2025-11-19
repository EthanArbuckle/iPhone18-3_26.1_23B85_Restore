@interface ManagedSpotlightUniqueIdentifier
- (_TtC10FinanceKit32ManagedSpotlightUniqueIdentifier)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedSpotlightUniqueIdentifier

- (void)willSave
{
  v2 = self;
  ManagedSpotlightUniqueIdentifier.willSave()();
}

- (_TtC10FinanceKit32ManagedSpotlightUniqueIdentifier)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedSpotlightUniqueIdentifier *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end