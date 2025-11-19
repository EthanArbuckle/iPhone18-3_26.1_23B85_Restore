@interface HKFeatureAvailabilityRequirementOnboardingNotAcknowledged
- (HKFeatureAvailabilityRequirementOnboardingNotAcknowledged)initWithFeatureIdentifier:(id)a3 settingsKey:(id)a4;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementOnboardingNotAcknowledged

- (HKFeatureAvailabilityRequirementOnboardingNotAcknowledged)initWithFeatureIdentifier:(id)a3 settingsKey:(id)a4
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementOnboardingNotAcknowledged;
  return [(HKFeatureAvailabilityOnboardingAcknowledgementRequirement *)&v5 initWithFeatureIdentifier:a3 onboardingAcknowledgedKey:a4 isAcknowledged:0];
}

- (id)requirementDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v5 = [(HKFeatureAvailabilityOnboardingAcknowledgementRequirement *)self onboardingAcknowledgedKey];
  v6 = [v3 stringWithFormat:@"%@ must have the value NO for the %@ feature setting.", v4, v5];

  return v6;
}

- (id)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end