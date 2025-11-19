@interface HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresent
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5;
@end

@implementation HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresent

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"No onboarding record must be present for %@", v3];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v5 = MEMORY[0x1E696AD98];
  v6 = [a3 onboardingState] == 1;

  return [v5 numberWithInt:v6];
}

@end