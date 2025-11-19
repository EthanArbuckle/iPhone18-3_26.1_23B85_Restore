@interface MFIntentMailboxResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)a3;
+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)a3;
+ (id)successWithResolvedMFIntentMailbox:(id)a3;
@end

@implementation MFIntentMailboxResolutionResult

+ (id)successWithResolvedMFIntentMailbox:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end