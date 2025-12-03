@interface AXBackgroundSoundsResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundsToConfirm:(int64_t)confirm;
+ (id)successWithResolvedBackgroundSounds:(int64_t)sounds;
@end

@implementation AXBackgroundSoundsResolutionResult

+ (id)successWithResolvedBackgroundSounds:(int64_t)sounds
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", sounds);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundsToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end