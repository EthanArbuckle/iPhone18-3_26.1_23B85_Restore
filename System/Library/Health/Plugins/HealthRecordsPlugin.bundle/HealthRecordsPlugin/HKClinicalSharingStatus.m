@interface HKClinicalSharingStatus
- (HKClinicalSharingStatus)clinicalSharingStatusWithFeatureStatus:(int64_t)a3;
@end

@implementation HKClinicalSharingStatus

- (HKClinicalSharingStatus)clinicalSharingStatusWithFeatureStatus:(int64_t)a3
{
  v5 = [HKClinicalSharingStatus alloc];
  v6 = [(HKClinicalSharingStatus *)self firstSharedDate];
  v7 = [(HKClinicalSharingStatus *)self lastSharedDate];
  v8 = [(HKClinicalSharingStatus *)self userStatus];
  v9 = [(HKClinicalSharingStatus *)self multiDeviceStatus];
  v10 = [(HKClinicalSharingStatus *)self primaryDeviceName];
  v11 = [v5 initWithFirstSharedDate:v6 lastSharedDate:v7 featureStatus:a3 userStatus:v8 multiDeviceStatus:v9 primaryDeviceName:v10];

  return v11;
}

@end