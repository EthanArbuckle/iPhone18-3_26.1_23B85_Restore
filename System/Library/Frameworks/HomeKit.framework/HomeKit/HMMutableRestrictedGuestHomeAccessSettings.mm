@interface HMMutableRestrictedGuestHomeAccessSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableRestrictedGuestHomeAccessSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMRestrictedGuestHomeAccessSettings allocWithZone:?]];
  accessAllowedToAccessories = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
  [(HMRestrictedGuestHomeAccessSettings *)v4 setAccessAllowedToAccessories:accessAllowedToAccessories];

  guestAccessSchedule = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
  [(HMRestrictedGuestHomeAccessSettings *)v4 setGuestAccessSchedule:guestAccessSchedule];

  return v4;
}

@end