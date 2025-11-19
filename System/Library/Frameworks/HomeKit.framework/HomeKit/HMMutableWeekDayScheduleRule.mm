@interface HMMutableWeekDayScheduleRule
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableWeekDayScheduleRule

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMWeekDayScheduleRule allocWithZone:a3];
  v5 = [(HMWeekDayScheduleRule *)self startTime];
  v6 = [(HMWeekDayScheduleRule *)self endTime];
  v7 = [(HMWeekDayScheduleRule *)v4 initWithStartTime:v5 endTime:v6 daysOfTheWeek:[(HMWeekDayScheduleRule *)self daysOfTheWeek]];

  return v7;
}

@end