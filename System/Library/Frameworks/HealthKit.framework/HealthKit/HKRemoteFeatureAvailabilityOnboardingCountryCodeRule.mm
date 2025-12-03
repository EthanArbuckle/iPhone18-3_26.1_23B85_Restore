@interface HKRemoteFeatureAvailabilityOnboardingCountryCodeRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityOnboardingCountryCodeRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"OnboardingCountryCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self setOnboardingCountryCode:v4];
  }
}

- (BOOL)evaluate
{
  onboardingCountryCode = [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self onboardingCountryCode];

  if (!onboardingCountryCode)
  {
    return 0;
  }

  onboardingCountryCode2 = [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self onboardingCountryCode];
  if ([onboardingCountryCode2 isEqualToString:@"NIL_COUNTRYCODE"])
  {
    dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
    onboardingCountryCode3 = [dataSource onboardingCountryCode];

    if (!onboardingCountryCode3)
    {
      return 1;
    }
  }

  else
  {
  }

  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  onboardingCountryCode4 = [dataSource2 onboardingCountryCode];
  onboardingCountryCode5 = [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self onboardingCountryCode];
  v11 = [onboardingCountryCode4 isEqualToString:onboardingCountryCode5];

  return v11;
}

@end