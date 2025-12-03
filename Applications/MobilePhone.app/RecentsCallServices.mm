@interface RecentsCallServices
- (_TtC11MobilePhone19RecentsCallServices)init;
- (_TtC11MobilePhone19RecentsCallServices)initWithGroupConversationsEnabled:(BOOL)enabled recentsCallServicesDialer:(id)dialer;
- (void)placeCallWithRecentCall:(id)call;
@end

@implementation RecentsCallServices

- (_TtC11MobilePhone19RecentsCallServices)initWithGroupConversationsEnabled:(BOOL)enabled recentsCallServicesDialer:(id)dialer
{
  swift_getObjectType();
  swift_unknownObjectRetain();

  return specialized RecentsCallServices.init(groupConversationsEnabled:recentsCallServicesDialer:)(enabled, dialer, self);
}

- (void)placeCallWithRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  RecentsCallServices.placeCall(with:)(callCopy);
}

- (_TtC11MobilePhone19RecentsCallServices)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end