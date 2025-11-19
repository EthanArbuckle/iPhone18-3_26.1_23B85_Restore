@interface HKActivityGoalSchedule
+ (id)scheduleFrom:(id)a3 goalType:(int64_t)a4;
- (id)goalQuantityForToday;
@end

@implementation HKActivityGoalSchedule

+ (id)scheduleFrom:(id)a3 goalType:(int64_t)a4
{
  type metadata accessor for GoalDay();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1004F9F44(v5, a4);
  v7 = v6;

  return v7;
}

- (id)goalQuantityForToday
{
  v2 = self;
  v3 = sub_1004F9C0C();

  return v3;
}

@end