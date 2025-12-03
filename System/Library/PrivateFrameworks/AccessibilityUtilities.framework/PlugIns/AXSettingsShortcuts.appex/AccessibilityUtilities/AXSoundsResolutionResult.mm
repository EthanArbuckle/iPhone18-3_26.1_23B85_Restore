@interface AXSoundsResolutionResult
+ (id)confirmationRequiredWithSoundsToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSounds:(int64_t)sounds;
@end

@implementation AXSoundsResolutionResult

+ (id)successWithResolvedSounds:(int64_t)sounds
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundsResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", sounds);

  return v3;
}

+ (id)confirmationRequiredWithSoundsToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundsResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end