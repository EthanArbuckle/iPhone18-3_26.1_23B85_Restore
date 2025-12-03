@interface HKHeartRhythmAvailability
- (BOOL)hprf_isElectrocardiogramSupportedOnWatch:(id)watch;
@end

@implementation HKHeartRhythmAvailability

- (BOOL)hprf_isElectrocardiogramSupportedOnWatch:(id)watch
{
  watchCopy = watch;
  electrocardiogramOnboardingCountryCode = [(HKHeartRhythmAvailability *)self electrocardiogramOnboardingCountryCode];
  if (![objc_opt_class() isElectrocardiogramSupportedOnWatch:watchCopy] || objc_msgSend(objc_opt_class(), "isCompanionRegionCheckEnabledForActiveWatch") && electrocardiogramOnboardingCountryCode && !-[HKHeartRhythmAvailability isElectrocardiogramAvailableOnWatch:countryCode:](self, "isElectrocardiogramAvailableOnWatch:countryCode:", watchCopy, electrocardiogramOnboardingCountryCode))
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