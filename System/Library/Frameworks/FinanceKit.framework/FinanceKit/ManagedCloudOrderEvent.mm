@interface ManagedCloudOrderEvent
- (_TtC10FinanceKit22ManagedCloudOrderEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedCloudOrderEvent

- (_TtC10FinanceKit22ManagedCloudOrderEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedCloudOrderEvent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end