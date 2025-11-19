@interface _HKAllowedCountriesInIntersectionOfLocalAndRemoteSet
- (BOOL)someRegionIsSupported;
- (_HKAllowedCountriesInIntersectionOfLocalAndRemoteSet)initWithLocalCountrySet:(id)a3 remoteCountrySet:(id)a4;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3;
@end

@implementation _HKAllowedCountriesInIntersectionOfLocalAndRemoteSet

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HKAllowedCountries *)self localCountrySet];
    v6 = [v5 containsCountryCode:v4];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    v8 = [(HKAllowedCountries *)self remoteCountrySet];
    v9 = [v8 containsCountryCode:v4];

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
  v3 = [(HKAllowedCountries *)self localCountrySet];
  v4 = [v3 isEmpty];

  if (v4)
  {
    v5 = [(HKAllowedCountries *)self remoteCountrySet];
    v6 = [v5 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (_HKAllowedCountriesInIntersectionOfLocalAndRemoteSet)initWithLocalCountrySet:(id)a3 remoteCountrySet:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = a3;
  v10 = [v7 numberWithInteger:{objc_msgSend(v9, "contentVersion")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "contentVersion")}];
  v12 = [v6 stringWithFormat:@"%@_%@_%@", @"intersectionOfLocalAndRemoteSet", v10, v11];
  v13 = [(HKAllowedCountries *)self _initWithCategory:v12 version:v9 localCountrySet:5 remoteState:v8 remoteCountrySet:?];

  return v13;
}

@end