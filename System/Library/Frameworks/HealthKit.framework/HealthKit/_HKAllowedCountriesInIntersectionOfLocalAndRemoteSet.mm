@interface _HKAllowedCountriesInIntersectionOfLocalAndRemoteSet
- (BOOL)someRegionIsSupported;
- (_HKAllowedCountriesInIntersectionOfLocalAndRemoteSet)initWithLocalCountrySet:(id)set remoteCountrySet:(id)countrySet;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code;
@end

@implementation _HKAllowedCountriesInIntersectionOfLocalAndRemoteSet

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    localCountrySet = [(HKAllowedCountries *)self localCountrySet];
    v6 = [localCountrySet containsCountryCode:codeCopy];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    remoteCountrySet = [(HKAllowedCountries *)self remoteCountrySet];
    v9 = [remoteCountrySet containsCountryCode:codeCopy];

    if ((v9 & 1) == 0)
    {
      v7 |= 0x20uLL;
    }
  }

  else
  {
    v7 = 40;
  }

  return v7;
}

- (BOOL)someRegionIsSupported
{
  localCountrySet = [(HKAllowedCountries *)self localCountrySet];
  isEmpty = [localCountrySet isEmpty];

  if (isEmpty)
  {
    remoteCountrySet = [(HKAllowedCountries *)self remoteCountrySet];
    v6 = [remoteCountrySet isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (_HKAllowedCountriesInIntersectionOfLocalAndRemoteSet)initWithLocalCountrySet:(id)set remoteCountrySet:(id)countrySet
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = MEMORY[0x1E696AD98];
  countrySetCopy = countrySet;
  setCopy = set;
  v10 = [v7 numberWithInteger:{objc_msgSend(setCopy, "contentVersion")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(countrySetCopy, "contentVersion")}];
  v12 = [v6 stringWithFormat:@"%@_%@_%@", @"intersectionOfLocalAndRemoteSet", v10, v11];
  v13 = [(HKAllowedCountries *)self _initWithCategory:v12 version:setCopy localCountrySet:5 remoteState:countrySetCopy remoteCountrySet:?];

  return v13;
}

@end