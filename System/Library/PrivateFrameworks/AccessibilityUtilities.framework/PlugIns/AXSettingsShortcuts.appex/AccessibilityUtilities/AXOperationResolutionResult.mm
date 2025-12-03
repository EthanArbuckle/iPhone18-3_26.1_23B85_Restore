@interface AXOperationResolutionResult
+ (id)confirmationRequiredWithOperationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedOperation:(int64_t)operation;
@end

@implementation AXOperationResolutionResult

+ (id)successWithResolvedOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", operation);

  return v3;
}

+ (id)confirmationRequiredWithOperationToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end