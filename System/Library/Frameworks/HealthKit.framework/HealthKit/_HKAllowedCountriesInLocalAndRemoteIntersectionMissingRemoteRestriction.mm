@interface _HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction
- (BOOL)someRegionIsSupported;
- (_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction)initWithLocalCountrySet:(id)a3 remoteState:(int64_t)a4;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3;
@end

@implementation _HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction

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

  v8 = [(HKAllowedCountries *)self remoteState];
  v9 = v7 | 4;
  v10 = v7 | 2;
  if (v8 != 2)
  {
    v10 = v7;
  }

  if (v8 != 3)
  {
    v9 = v10;
  }

  if (v8 == 4)
  {
    v11 = v7 | 0x10;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (BOOL)someRegionIsSupported
{
  v2 = [(HKAllowedCountries *)self localCountrySet];
  v3 = [v2 isEmpty];

  return v3 ^ 1;
}

- (_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction)initWithLocalCountrySet:(id)a3 remoteState:(int64_t)a4
{
  v7 = a3;
  if (a4 == 5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HKAllowedCountries.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"remoteState != HKRemoteAllowedCountriesStateReady"}];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "contentVersion")}];
  v10 = v9;
  if ((a4 - 1) > 4)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E737DC90 + a4 - 1);
  }

  v12 = [v8 stringWithFormat:@"%@_%@_%@", @"intersectionOfLocalAndRemoteSet", v9, v11];
  v13 = [(HKAllowedCountries *)self _initWithCategory:v12 version:v7 localCountrySet:a4 remoteState:0 remoteCountrySet:?];

  return v13;
}

@end