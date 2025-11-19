@interface HKRemoteFeatureAvailabilityOnboardingCountryCodeRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityOnboardingCountryCodeRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"OnboardingCountryCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self setOnboardingCountryCode:v4];
  }
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self onboardingCountryCode];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self onboardingCountryCode];
  if ([v4 isEqualToString:@"NIL_COUNTRYCODE"])
  {
    v5 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
    v6 = [v5 onboardingCountryCode];

    if (!v6)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v9 = [v8 onboardingCountryCode];
  v10 = [(HKRemoteFeatureAvailabilityOnboardingCountryCodeRule *)self onboardingCountryCode];
  v11 = [v9 isEqualToString:v10];

  return v11;
}

@end