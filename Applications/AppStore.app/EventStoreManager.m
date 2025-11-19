@interface EventStoreManager
- (_TtC8AppStore17EventStoreManager)init;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
@end

@implementation EventStoreManager

- (_TtC8AppStore17EventStoreManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStore17EventStoreManager_eventStore;
  *(&self->super.isa + v4) = [objc_allocWithZone(EKEventStore) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(EventStoreManager *)&v6 init];
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v6 = a3;
  v4 = [v6 presentingViewController];
  if (v4)
  {
    v5 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

@end