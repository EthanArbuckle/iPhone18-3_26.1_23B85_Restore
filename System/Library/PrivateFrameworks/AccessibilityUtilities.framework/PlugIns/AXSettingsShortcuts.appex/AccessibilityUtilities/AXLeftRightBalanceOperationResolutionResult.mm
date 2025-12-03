@interface AXLeftRightBalanceOperationResolutionResult
+ (id)confirmationRequiredWithLeftRightBalanceOperationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedLeftRightBalanceOperation:(int64_t)operation;
@end

@implementation AXLeftRightBalanceOperationResolutionResult

+ (id)successWithResolvedLeftRightBalanceOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXLeftRightBalanceOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", operation);

  return v3;
}

+ (id)confirmationRequiredWithLeftRightBalanceOperationToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXLeftRightBalanceOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end