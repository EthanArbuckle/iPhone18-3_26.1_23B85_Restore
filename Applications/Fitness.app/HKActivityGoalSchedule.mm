@interface HKActivityGoalSchedule
+ (id)scheduleFrom:(id)from goalType:(int64_t)type;
- (id)goalQuantityForToday;
@end

@implementation HKActivityGoalSchedule

+ (id)scheduleFrom:(id)from goalType:(int64_t)type
{
  type metadata accessor for GoalDay();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1004F9F44(v5, type);
  v7 = v6;

  return v7;
}

- (id)goalQuantityForToday
{
  selfCopy = self;
  v3 = sub_1004F9C0C();

  return v3;
}

@end