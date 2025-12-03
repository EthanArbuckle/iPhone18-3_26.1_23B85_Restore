@interface EventStoreManager
- (_TtC8AppStore17EventStoreManager)init;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
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

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];
  if (presentingViewController)
  {
    v5 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

@end