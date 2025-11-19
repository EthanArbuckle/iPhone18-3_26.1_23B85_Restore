@interface HMMutableRestrictedGuestSchedule
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableRestrictedGuestSchedule

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMRestrictedGuestHomeAccessSchedule allocWithZone:a3];
  v5 = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  v6 = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  v7 = [(HMRestrictedGuestHomeAccessSchedule *)v4 initWithWeekDayRules:v5 yearDayRules:v6];

  return v7;
}

@end