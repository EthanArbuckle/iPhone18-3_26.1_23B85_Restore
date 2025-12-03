@interface AXStateResolutionResult
+ (id)confirmationRequiredWithStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedState:(int64_t)state;
@end

@implementation AXStateResolutionResult

+ (id)successWithResolvedState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", state);

  return v3;
}

+ (id)confirmationRequiredWithStateToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end