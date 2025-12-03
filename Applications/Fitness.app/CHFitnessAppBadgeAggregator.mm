@interface CHFitnessAppBadgeAggregator
- (CHFitnessAppBadgeAggregator)init;
- (CHFitnessAppBadgeAggregator)initWithFitnessAppContext:(id)context activitySharingClient:(id)client;
- (CHFitnessAppBadgeAggregatorDelegate)delegate;
- (void)onAvailabilityChange:(id)change;
@end

@implementation CHFitnessAppBadgeAggregator

- (CHFitnessAppBadgeAggregatorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHFitnessAppBadgeAggregator)initWithFitnessAppContext:(id)context activitySharingClient:(id)client
{
  contextCopy = context;
  clientCopy = client;
  return sub_1001CA078(contextCopy, client);
}

- (void)onAvailabilityChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10004548C(0, 0);

  (*(v5 + 8))(v7, v4);
}

- (CHFitnessAppBadgeAggregator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end