@interface MFIntentMailboxResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)confirm;
+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMFIntentMailbox:(id)mailbox;
@end

@implementation MFIntentMailboxResolutionResult

+ (id)successWithResolvedMFIntentMailbox:(id)mailbox
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", mailbox);

  return v3;
}

+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end