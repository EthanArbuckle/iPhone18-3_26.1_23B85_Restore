@interface _HKAllowedCountriesInLocalSet
- (BOOL)someRegionIsSupported;
- (_HKAllowedCountriesInLocalSet)initWithLocalCountrySet:(id)a3;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3;
@end

@implementation _HKAllowedCountriesInLocalSet

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3
{
  v4 = a3;
  if (v4 && (-[HKAllowedCountries localCountrySet](self, "localCountrySet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsCountryCode:v4], v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = 8;
  }

  return v7;
}

- (BOOL)someRegionIsSupported
{
  v2 = [(HKAllowedCountries *)self localCountrySet];
  v3 = [v2 isEmpty];

  return v3 ^ 1;
}

- (_HKAllowedCountriesInLocalSet)initWithLocalCountrySet:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "contentVersion")}];
  v8 = [v4 stringWithFormat:@"%@_%@", @"localSet", v7];
  v9 = [(HKAllowedCountries *)self _initWithCategory:v8 version:v6 localCountrySet:1 remoteState:0 remoteCountrySet:?];

  return v9;
}

@end