@interface ManagedNetworkRequestEvent
- (_TtC10FinanceKit26ManagedNetworkRequestEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedNetworkRequestEvent

- (_TtC10FinanceKit26ManagedNetworkRequestEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedNetworkRequestEvent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end