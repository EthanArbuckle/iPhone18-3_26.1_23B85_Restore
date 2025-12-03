@interface HMMutableWeekDayScheduleRule
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableWeekDayScheduleRule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMWeekDayScheduleRule allocWithZone:zone];
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  endTime = [(HMWeekDayScheduleRule *)self endTime];
  v7 = [(HMWeekDayScheduleRule *)v4 initWithStartTime:startTime endTime:endTime daysOfTheWeek:[(HMWeekDayScheduleRule *)self daysOfTheWeek]];

  return v7;
}

@end