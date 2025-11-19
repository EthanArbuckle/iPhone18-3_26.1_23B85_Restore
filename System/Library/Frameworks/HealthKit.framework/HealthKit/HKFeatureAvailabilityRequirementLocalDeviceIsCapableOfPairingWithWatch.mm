@interface HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfPairingWithWatch
- (HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfPairingWithWatch)init;
@end

@implementation HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfPairingWithWatch

- (HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfPairingWithWatch)init
{
  v3 = +[_HKBehavior sharedBehavior];
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfPairingWithWatch;
  v4 = -[HKFeatureAvailabilityMustBeTrueRequirement initWithWhatMustBeTrue:](&v6, sel_initWithWhatMustBeTrue_, [v3 isCompanionCapable]);

  return v4;
}

@end