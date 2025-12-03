@interface HKActivityGoalSchedule
+ (id)scheduleFrom:(id)from goalType:(int64_t)type;
- (id)goalQuantityForToday;
@end

@implementation HKActivityGoalSchedule

+ (id)scheduleFrom:(id)from goalType:(int64_t)type
{
  type metadata accessor for GoalDay();
  v5 = sub_22080();
  sub_163A4(v5, type);
  v7 = v6;

  return v7;
}

- (id)goalQuantityForToday
{
  selfCopy = self;
  v3 = sub_1606C();

  return v3;
}

@end