@interface _HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction
- (BOOL)someRegionIsSupported;
- (_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction)initWithLocalCountrySet:(id)set remoteState:(int64_t)state;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code;
@end

@implementation _HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction

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

  remoteState = [(HKAllowedCountries *)self remoteState];
  v9 = v7 | 4;
  v10 = v7 | 2;
  if (remoteState != 2)
  {
    v10 = v7;
  }

  if (remoteState != 3)
  {
    v9 = v10;
  }

  if (remoteState == 4)
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
  localCountrySet = [(HKAllowedCountries *)self localCountrySet];
  isEmpty = [localCountrySet isEmpty];

  return isEmpty ^ 1;
}

- (_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction)initWithLocalCountrySet:(id)set remoteState:(int64_t)state
{
  setCopy = set;
  if (state == 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKAllowedCountries.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"remoteState != HKRemoteAllowedCountriesStateReady"}];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(setCopy, "contentVersion")}];
  v10 = v9;
  if ((state - 1) > 4)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E737DC90 + state - 1);
  }

  v12 = [v8 stringWithFormat:@"%@_%@_%@", @"intersectionOfLocalAndRemoteSet", v9, v11];
  v13 = [(HKAllowedCountries *)self _initWithCategory:v12 version:setCopy localCountrySet:state remoteState:0 remoteCountrySet:?];

  return v13;
}

@end