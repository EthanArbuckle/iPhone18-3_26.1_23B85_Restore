@interface NSUserActivity(_HKURLSupport)
+ (id)_hk_userActivityForAtrialFibrillationEventType;
+ (id)_hk_userActivityForElectrocardiogramType;
@end

@implementation NSUserActivity(_HKURLSupport)

+ (id)_hk_userActivityForElectrocardiogramType
{
  v0 = +[(HKObjectType *)HKElectrocardiogramType];
  v1 = _HKCreateActivityForSampleType(v0);

  return v1;
}

+ (id)_hk_userActivityForAtrialFibrillationEventType
{
  v0 = +[HKObjectType atrialFibrillationEventType];
  v1 = _HKCreateActivityForSampleType(v0);

  return v1;
}

@end