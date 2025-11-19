@interface ManagedNetworkRequestEvent
- (_TtC10FinanceKit26ManagedNetworkRequestEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedNetworkRequestEvent

- (_TtC10FinanceKit26ManagedNetworkRequestEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedNetworkRequestEvent *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end