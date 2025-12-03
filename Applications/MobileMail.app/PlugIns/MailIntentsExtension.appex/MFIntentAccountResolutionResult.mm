@interface MFIntentAccountResolutionResult
+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)confirm;
+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMFIntentAccount:(id)account;
@end

@implementation MFIntentAccountResolutionResult

+ (id)successWithResolvedMFIntentAccount:(id)account
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", account);

  return v3;
}

+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end