@interface HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing
- (HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing)init;
@end

@implementation HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing

- (HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing)init
{
  v3 = off_1E7375000;
  v4 = +[_HKBehavior sharedBehavior];
  isCompanionCapable = [v4 isCompanionCapable];
  if (isCompanionCapable)
  {
    isAppleWatch = 1;
  }

  else
  {
    v3 = +[_HKBehavior sharedBehavior];
    isAppleWatch = [v3 isAppleWatch];
  }

  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing;
  v7 = [(HKFeatureAvailabilityMustBeTrueRequirement *)&v9 initWithWhatMustBeTrue:isAppleWatch];
  if ((isCompanionCapable & 1) == 0)
  {
  }

  return v7;
}

@end