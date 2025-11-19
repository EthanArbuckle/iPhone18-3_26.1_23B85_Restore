@interface HKHeartRhythmAvailability
- (BOOL)hprf_isElectrocardiogramSupportedOnWatch:(id)a3;
@end

@implementation HKHeartRhythmAvailability

- (BOOL)hprf_isElectrocardiogramSupportedOnWatch:(id)a3
{
  v4 = a3;
  v5 = [(HKHeartRhythmAvailability *)self electrocardiogramOnboardingCountryCode];
  if (![objc_opt_class() isElectrocardiogramSupportedOnWatch:v4] || objc_msgSend(objc_opt_class(), "isCompanionRegionCheckEnabledForActiveWatch") && v5 && !-[HKHeartRhythmAvailability isElectrocardiogramAvailableOnWatch:countryCode:](self, "isElectrocardiogramAvailableOnWatch:countryCode:", v4, v5))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v6 = +[_HKBehavior sharedBehavior];
    if ([v6 healthAppHidden])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = +[_HKBehavior sharedBehavior];
      v7 = [v8 tinkerModeEnabled] ^ 1;
    }
  }

  return v7;
}

@end