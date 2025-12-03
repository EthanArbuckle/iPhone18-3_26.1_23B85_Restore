@interface AMSUIAgeVerificationCore
+ (id)_messageForResult:(id)result withBag:(id)bag expiration:(id)expiration dateFormatter:(id)formatter bundle:(id)bundle;
+ (id)_promiseResultForCancelWithVerificationResult:(id)result;
+ (id)_timestampOfExpiryFrom:(id)from;
+ (id)_titleForResult:(id)result withBag:(id)bag bundle:(id)bundle;
@end

@implementation AMSUIAgeVerificationCore

+ (id)_promiseResultForCancelWithVerificationResult:(id)result
{
  v3 = MEMORY[0x1E698CAD8];
  resultCopy = result;
  v5 = objc_alloc_init(v3);
  requiredType = [resultCopy requiredType];

  if (requiredType == 3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E698C798]);
    [v7 setSuccessType:3];
    [v5 setResult:v7];
  }

  else
  {
    v7 = AMSError();
    [v5 setError:v7];
  }

  return v5;
}

+ (id)_messageForResult:(id)result withBag:(id)bag expiration:(id)expiration dateFormatter:(id)formatter bundle:(id)bundle
{
  expirationCopy = expiration;
  formatterCopy = formatter;
  bundleCopy = bundle;
  bagCopy = bag;
  if ([result requiredType] == 3)
  {
    v15 = [formatterCopy stringFromDate:expirationCopy];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v18 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_SOON_DIALOG_MESSAGE", bagCopy, bundleCopy);

    v19 = [v16 stringWithFormat:v18, v15];
    bundleCopy = v18;
    bagCopy = v15;
  }

  else
  {
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v19 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_DIALOG_MESSAGE", bagCopy, bundleCopy);
  }

  return v19;
}

+ (id)_titleForResult:(id)result withBag:(id)bag bundle:(id)bundle
{
  bundleCopy = bundle;
  bagCopy = bag;
  requiredType = [result requiredType];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  if (requiredType == 3)
  {
    v11 = @"AGE_VERIFICATION_SOON_DIALOG_TITLE";
  }

  else
  {
    v11 = @"AGE_VERIFICATION_DIALOG_TITLE";
  }

  v12 = AMSUILocalizedStringFromBundle(v11, bagCopy, bundleCopy);

  return v12;
}

+ (id)_timestampOfExpiryFrom:(id)from
{
  fromCopy = from;
  if (fromCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(fromCopy, "longLongValue") / 1000)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end