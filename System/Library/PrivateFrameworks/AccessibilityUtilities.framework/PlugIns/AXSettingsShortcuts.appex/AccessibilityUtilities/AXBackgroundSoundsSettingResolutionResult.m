@interface AXBackgroundSoundsSettingResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundsSettingToConfirm:(int64_t)a3;
+ (id)successWithResolvedBackgroundSoundsSetting:(int64_t)a3;
@end

@implementation AXBackgroundSoundsSettingResolutionResult

+ (id)successWithResolvedBackgroundSoundsSetting:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsSettingResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", a3);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundsSettingToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsSettingResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", a3);

  return v3;
}

@end