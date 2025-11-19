@interface HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing
- (HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing)init;
@end

@implementation HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing

- (HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing)init
{
  v3 = off_1E7375000;
  v4 = +[_HKBehavior sharedBehavior];
  v5 = [v4 isCompanionCapable];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v3 = +[_HKBehavior sharedBehavior];
    v6 = [v3 isAppleWatch];
  }

  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing;
  v7 = [(HKFeatureAvailabilityMustBeTrueRequirement *)&v9 initWithWhatMustBeTrue:v6];
  if ((v5 & 1) == 0)
  {
  }

  return v7;
}

@end