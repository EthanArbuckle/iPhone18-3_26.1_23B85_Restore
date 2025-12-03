@interface AXSoundDetectionOperationResolutionResult
+ (id)confirmationRequiredWithSoundDetectionOperationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSoundDetectionOperation:(int64_t)operation;
@end

@implementation AXSoundDetectionOperationResolutionResult

+ (id)successWithResolvedSoundDetectionOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundDetectionOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", operation);

  return v3;
}

+ (id)confirmationRequiredWithSoundDetectionOperationToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundDetectionOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end