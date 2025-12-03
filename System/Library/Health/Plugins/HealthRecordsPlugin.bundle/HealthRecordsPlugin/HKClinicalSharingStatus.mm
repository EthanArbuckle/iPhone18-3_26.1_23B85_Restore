@interface HKClinicalSharingStatus
- (HKClinicalSharingStatus)clinicalSharingStatusWithFeatureStatus:(int64_t)status;
@end

@implementation HKClinicalSharingStatus

- (HKClinicalSharingStatus)clinicalSharingStatusWithFeatureStatus:(int64_t)status
{
  v5 = [HKClinicalSharingStatus alloc];
  firstSharedDate = [(HKClinicalSharingStatus *)self firstSharedDate];
  lastSharedDate = [(HKClinicalSharingStatus *)self lastSharedDate];
  userStatus = [(HKClinicalSharingStatus *)self userStatus];
  multiDeviceStatus = [(HKClinicalSharingStatus *)self multiDeviceStatus];
  primaryDeviceName = [(HKClinicalSharingStatus *)self primaryDeviceName];
  v11 = [v5 initWithFirstSharedDate:firstSharedDate lastSharedDate:lastSharedDate featureStatus:status userStatus:userStatus multiDeviceStatus:multiDeviceStatus primaryDeviceName:primaryDeviceName];

  return v11;
}

@end