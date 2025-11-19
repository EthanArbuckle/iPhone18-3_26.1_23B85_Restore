@interface CHFitnessAppBadgeAggregator
- (CHFitnessAppBadgeAggregator)init;
- (CHFitnessAppBadgeAggregator)initWithFitnessAppContext:(id)a3 activitySharingClient:(id)a4;
- (CHFitnessAppBadgeAggregatorDelegate)delegate;
- (void)onAvailabilityChange:(id)a3;
@end

@implementation CHFitnessAppBadgeAggregator

- (CHFitnessAppBadgeAggregatorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHFitnessAppBadgeAggregator)initWithFitnessAppContext:(id)a3 activitySharingClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_1001CA078(v5, a4);
}

- (void)onAvailabilityChange:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
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