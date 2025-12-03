@interface HKFeatureAvailabilityRequirementOnboardingNotAcknowledged
- (HKFeatureAvailabilityRequirementOnboardingNotAcknowledged)initWithFeatureIdentifier:(id)identifier settingsKey:(id)key;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementOnboardingNotAcknowledged

- (HKFeatureAvailabilityRequirementOnboardingNotAcknowledged)initWithFeatureIdentifier:(id)identifier settingsKey:(id)key
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementOnboardingNotAcknowledged;
  return [(HKFeatureAvailabilityOnboardingAcknowledgementRequirement *)&v5 initWithFeatureIdentifier:identifier onboardingAcknowledgedKey:key isAcknowledged:0];
}

- (id)requirementDescription
{
  v3 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  onboardingAcknowledgedKey = [(HKFeatureAvailabilityOnboardingAcknowledgementRequirement *)self onboardingAcknowledgedKey];
  v6 = [v3 stringWithFormat:@"%@ must have the value NO for the %@ feature setting.", featureIdentifier, onboardingAcknowledgedKey];

  return v6;
}

- (id)requiredEntitlements
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