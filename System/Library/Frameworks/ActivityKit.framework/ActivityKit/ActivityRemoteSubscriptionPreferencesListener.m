@interface ActivityRemoteSubscriptionPreferencesListener
- (_TtC11ActivityKit45ActivityRemoteSubscriptionPreferencesListener)init;
@end

@implementation ActivityRemoteSubscriptionPreferencesListener

- (_TtC11ActivityKit45ActivityRemoteSubscriptionPreferencesListener)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11ActivityKit45ActivityRemoteSubscriptionPreferencesListener_client) = [objc_allocWithZone(type metadata accessor for SubscriptionPreferencesObservationClient()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivityRemoteSubscriptionPreferencesListener();
  return [(ActivityRemoteSubscriptionPreferencesListener *)&v4 init];
}

@end