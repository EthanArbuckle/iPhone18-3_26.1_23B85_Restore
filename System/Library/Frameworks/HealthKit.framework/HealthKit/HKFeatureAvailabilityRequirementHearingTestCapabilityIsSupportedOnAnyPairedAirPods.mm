@interface HKFeatureAvailabilityRequirementHearingTestCapabilityIsSupportedOnAnyPairedAirPods
- (id)requiredEntitlements;
@end

@implementation HKFeatureAvailabilityRequirementHearingTestCapabilityIsSupportedOnAnyPairedAirPods

- (id)requiredEntitlements
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement bluetoothSystemAccessEntitlement];
  v7[0] = v2;
  v3 = +[HKFeatureAvailabilityRequirementEntitlement machLookupGlobalNameForBluetoothXPCEntitlement];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end