@interface HKFeatureAvailabilityRequirementFeatureIsOff
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementFeatureIsOff

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"%@ must be off", featureIdentifier];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end