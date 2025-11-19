@interface RecentsCallServices
- (_TtC11MobilePhone19RecentsCallServices)init;
- (_TtC11MobilePhone19RecentsCallServices)initWithGroupConversationsEnabled:(BOOL)a3 recentsCallServicesDialer:(id)a4;
- (void)placeCallWithRecentCall:(id)a3;
@end

@implementation RecentsCallServices

- (_TtC11MobilePhone19RecentsCallServices)initWithGroupConversationsEnabled:(BOOL)a3 recentsCallServicesDialer:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();

  return specialized RecentsCallServices.init(groupConversationsEnabled:recentsCallServicesDialer:)(a3, a4, self);
}

- (void)placeCallWithRecentCall:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsCallServices.placeCall(with:)(v4);
}

- (_TtC11MobilePhone19RecentsCallServices)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end