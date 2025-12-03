@interface _HKAllowedInSomeCountriesAvailability
- (_HKAllowedInSomeCountriesAvailability)initWithAllowedCountries:(id)countries;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code;
@end

@implementation _HKAllowedInSomeCountriesAvailability

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code
{
  codeCopy = code;
  allowedCountries = [(HKRegionAvailability *)self allowedCountries];

  if (!allowedCountries)
  {
    [(_HKAllowedInSomeCountriesAvailability *)a2 ineligibilityReasonsForOnboardingCountryCode:?];
  }

  allowedCountries2 = [(HKRegionAvailability *)self allowedCountries];
  v8 = [allowedCountries2 ineligibilityReasonsForOnboardingCountryCode:codeCopy];

  return v8 | (codeCopy == 0);
}

- (_HKAllowedInSomeCountriesAvailability)initWithAllowedCountries:(id)countries
{
  v4 = MEMORY[0x1E696AEC0];
  countriesCopy = countries;
  version = [countriesCopy version];
  v7 = [v4 stringWithFormat:@"allowedInSomeCountries_%@", version];
  v8 = [(HKRegionAvailability *)self _initWithCategory:v7 version:countriesCopy allowedCountries:?];

  return v8;
}

- (void)ineligibilityReasonsForOnboardingCountryCode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKRegionAvailability.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"self.allowedCountries"}];
}

@end