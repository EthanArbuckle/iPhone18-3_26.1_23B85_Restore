@interface HKActivityGoalSchedule
+ (id)scheduleFrom:(id)a3 goalType:(int64_t)a4;
- (id)goalQuantityForToday;
@end

@implementation HKActivityGoalSchedule

+ (id)scheduleFrom:(id)a3 goalType:(int64_t)a4
{
  type metadata accessor for GoalDay();
  v5 = sub_22080();
  sub_163A4(v5, a4);
  v7 = v6;

  return v7;
}

- (id)goalQuantityForToday
{
  v2 = self;
  v3 = sub_1606C();

  return v3;
}

@end