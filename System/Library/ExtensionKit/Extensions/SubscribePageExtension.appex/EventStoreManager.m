@interface EventStoreManager
- (_TtC22SubscribePageExtension17EventStoreManager)init;
@end

@implementation EventStoreManager

- (_TtC22SubscribePageExtension17EventStoreManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension17EventStoreManager_eventStore;
  *(&self->super.isa + v4) = [objc_allocWithZone(EKEventStore) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(EventStoreManager *)&v6 init];
}

@end