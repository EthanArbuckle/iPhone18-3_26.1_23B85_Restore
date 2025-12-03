@interface AXBackgroundSoundsVolumeResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundsVolumeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedBackgroundSoundsVolume:(int64_t)volume;
@end

@implementation AXBackgroundSoundsVolumeResolutionResult

+ (id)successWithResolvedBackgroundSoundsVolume:(int64_t)volume
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsVolumeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", volume);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundsVolumeToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsVolumeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end