@interface HKFeatureAvailabilityStore
- (BOOL)hk_isRescindedDisabled;
@end

@implementation HKFeatureAvailabilityStore

- (BOOL)hk_isRescindedDisabled
{
  v8 = 0;
  v3 = [(HKFeatureAvailabilityStore *)self onboardedCountryCodeSupportedStateWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 intValue] == 4;
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_4D50(v6, self, v4);
    }

    v5 = 0;
  }

  return v5;
}

@end