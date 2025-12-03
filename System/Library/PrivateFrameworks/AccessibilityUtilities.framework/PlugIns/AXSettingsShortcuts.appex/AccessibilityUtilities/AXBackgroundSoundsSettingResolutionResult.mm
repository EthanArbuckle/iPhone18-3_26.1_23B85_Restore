@interface AXBackgroundSoundsSettingResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundsSettingToConfirm:(int64_t)confirm;
+ (id)successWithResolvedBackgroundSoundsSetting:(int64_t)setting;
@end

@implementation AXBackgroundSoundsSettingResolutionResult

+ (id)successWithResolvedBackgroundSoundsSetting:(int64_t)setting
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsSettingResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", setting);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundsSettingToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsSettingResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end