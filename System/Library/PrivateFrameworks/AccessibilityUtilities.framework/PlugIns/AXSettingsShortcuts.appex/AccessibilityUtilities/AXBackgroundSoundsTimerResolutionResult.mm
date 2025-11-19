@interface AXBackgroundSoundsTimerResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundsTimerToConfirm:(int64_t)a3;
+ (id)successWithResolvedBackgroundSoundsTimer:(int64_t)a3;
@end

@implementation AXBackgroundSoundsTimerResolutionResult

+ (id)successWithResolvedBackgroundSoundsTimer:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsTimerResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", a3);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundsTimerToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundsTimerResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", a3);

  return v3;
}

@end