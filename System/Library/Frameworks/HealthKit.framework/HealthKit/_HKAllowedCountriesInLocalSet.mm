@interface _HKAllowedCountriesInLocalSet
- (BOOL)someRegionIsSupported;
- (_HKAllowedCountriesInLocalSet)initWithLocalCountrySet:(id)set;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code;
@end

@implementation _HKAllowedCountriesInLocalSet

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code
{
  codeCopy = code;
  if (codeCopy && (-[HKAllowedCountries localCountrySet](self, "localCountrySet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsCountryCode:codeCopy], v5, (v6 & 1) != 0))
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
  localCountrySet = [(HKAllowedCountries *)self localCountrySet];
  isEmpty = [localCountrySet isEmpty];

  return isEmpty ^ 1;
}

- (_HKAllowedCountriesInLocalSet)initWithLocalCountrySet:(id)set
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = MEMORY[0x1E696AD98];
  setCopy = set;
  v7 = [v5 numberWithInteger:{objc_msgSend(setCopy, "contentVersion")}];
  v8 = [v4 stringWithFormat:@"%@_%@", @"localSet", v7];
  v9 = [(HKAllowedCountries *)self _initWithCategory:v8 version:setCopy localCountrySet:1 remoteState:0 remoteCountrySet:?];

  return v9;
}

@end