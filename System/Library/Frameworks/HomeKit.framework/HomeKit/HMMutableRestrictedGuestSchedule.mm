@interface HMMutableRestrictedGuestSchedule
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableRestrictedGuestSchedule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMRestrictedGuestHomeAccessSchedule allocWithZone:zone];
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  v7 = [(HMRestrictedGuestHomeAccessSchedule *)v4 initWithWeekDayRules:weekDayRules yearDayRules:yearDayRules];

  return v7;
}

@end