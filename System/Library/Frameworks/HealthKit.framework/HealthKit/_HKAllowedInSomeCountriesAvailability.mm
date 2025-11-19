@interface _HKAllowedInSomeCountriesAvailability
- (_HKAllowedInSomeCountriesAvailability)initWithAllowedCountries:(id)a3;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3;
@end

@implementation _HKAllowedInSomeCountriesAvailability

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3
{
  v5 = a3;
  v6 = [(HKRegionAvailability *)self allowedCountries];

  if (!v6)
  {
    [(_HKAllowedInSomeCountriesAvailability *)a2 ineligibilityReasonsForOnboardingCountryCode:?];
  }

  v7 = [(HKRegionAvailability *)self allowedCountries];
  v8 = [v7 ineligibilityReasonsForOnboardingCountryCode:v5];

  return v8 | (v5 == 0);
}

- (_HKAllowedInSomeCountriesAvailability)initWithAllowedCountries:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v5 version];
  v7 = [v4 stringWithFormat:@"allowedInSomeCountries_%@", v6];
  v8 = [(HKRegionAvailability *)self _initWithCategory:v7 version:v5 allowedCountries:?];

  return v8;
}

- (void)ineligibilityReasonsForOnboardingCountryCode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKRegionAvailability.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"self.allowedCountries"}];
}

@end