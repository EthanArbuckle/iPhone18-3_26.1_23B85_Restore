@interface HKFeatureAvailabilityRequirementBloodOxygenRecordingsAreEnabled
- (HKFeatureAvailabilityRequirementBloodOxygenRecordingsAreEnabled)init;
- (id)requiredEntitlements;
@end

@implementation HKFeatureAvailabilityRequirementBloodOxygenRecordingsAreEnabled

- (HKFeatureAvailabilityRequirementBloodOxygenRecordingsAreEnabled)init
{
  v3.receiver = self;
  v3.super_class = HKFeatureAvailabilityRequirementBloodOxygenRecordingsAreEnabled;
  return [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v3 initWithUserDefaultsKey:@"BackgroundMeasurementsEnabled"];
}

- (id)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsRespiratoryDomainAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end