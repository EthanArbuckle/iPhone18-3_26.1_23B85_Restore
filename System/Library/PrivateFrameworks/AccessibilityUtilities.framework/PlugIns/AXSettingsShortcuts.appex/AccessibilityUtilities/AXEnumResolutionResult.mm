@interface AXEnumResolutionResult
+ (id)confirmationRequiredWithEnumToConfirm:(int64_t)confirm;
+ (id)successWithResolvedEnum:(int64_t)enum;
@end

@implementation AXEnumResolutionResult

+ (id)successWithResolvedEnum:(int64_t)enum
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXEnumResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", enum);

  return v3;
}

+ (id)confirmationRequiredWithEnumToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXEnumResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end