@interface HMMutableRestrictedGuestHomeAccessSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableRestrictedGuestHomeAccessSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMRestrictedGuestHomeAccessSettings allocWithZone:?]];
  v5 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
  [(HMRestrictedGuestHomeAccessSettings *)v4 setAccessAllowedToAccessories:v5];

  v6 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
  [(HMRestrictedGuestHomeAccessSettings *)v4 setGuestAccessSchedule:v6];

  return v4;
}

@end