@interface MFIntentAccountResolutionResult
+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)a3;
+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)a3;
+ (id)successWithResolvedMFIntentAccount:(id)a3;
@end

@implementation MFIntentAccountResolutionResult

+ (id)successWithResolvedMFIntentAccount:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end