@interface MFIntentMailboxKindResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxKindToConfirm:(int64_t)confirm;
+ (id)successWithResolvedMFIntentMailboxKind:(int64_t)kind;
@end

@implementation MFIntentMailboxKindResolutionResult

+ (id)successWithResolvedMFIntentMailboxKind:(int64_t)kind
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxKindResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", kind);

  return v3;
}

+ (id)confirmationRequiredWithMFIntentMailboxKindToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxKindResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end