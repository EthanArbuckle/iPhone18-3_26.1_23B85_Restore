@interface AMSUIAgeVerificationCore
+ (id)_messageForResult:(id)a3 withBag:(id)a4 expiration:(id)a5 dateFormatter:(id)a6 bundle:(id)a7;
+ (id)_promiseResultForCancelWithVerificationResult:(id)a3;
+ (id)_timestampOfExpiryFrom:(id)a3;
+ (id)_titleForResult:(id)a3 withBag:(id)a4 bundle:(id)a5;
@end

@implementation AMSUIAgeVerificationCore

+ (id)_promiseResultForCancelWithVerificationResult:(id)a3
{
  v3 = MEMORY[0x1E698CAD8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 requiredType];

  if (v6 == 3)
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

+ (id)_messageForResult:(id)a3 withBag:(id)a4 expiration:(id)a5 dateFormatter:(id)a6 bundle:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a4;
  if ([a3 requiredType] == 3)
  {
    v15 = [v12 stringFromDate:v11];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v18 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_SOON_DIALOG_MESSAGE", v14, v13);

    v19 = [v16 stringWithFormat:v18, v15];
    v13 = v18;
    v14 = v15;
  }

  else
  {
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v19 = AMSUILocalizedStringFromBundle(@"AGE_VERIFICATION_DIALOG_MESSAGE", v14, v13);
  }

  return v19;
}

+ (id)_titleForResult:(id)a3 withBag:(id)a4 bundle:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 requiredType];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  if (v9 == 3)
  {
    v11 = @"AGE_VERIFICATION_SOON_DIALOG_TITLE";
  }

  else
  {
    v11 = @"AGE_VERIFICATION_DIALOG_TITLE";
  }

  v12 = AMSUILocalizedStringFromBundle(v11, v8, v7);

  return v12;
}

+ (id)_timestampOfExpiryFrom:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(v3, "longLongValue") / 1000)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end