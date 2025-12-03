@interface AMSDKeychainService
+ (BOOL)isConnectionEntitled:(id)entitled;
- (void)getPublicKeyHeaderWithAccount:(id)account options:(id)options signatureResult:(id)result completion:(id)completion;
- (void)testKeychainWithCompletion:(id)completion;
@end

@implementation AMSDKeychainService

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)getPublicKeyHeaderWithAccount:(id)account options:(id)options signatureResult:(id)result completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  optionsCopy = options;
  if (([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:accountCopy]& 1) != 0)
  {
    purpose = [optionsCopy purpose];

    v12 = [AMSCertificateManager publicKeyForAccount:accountCopy forSignaturePurpose:purpose];
    v13 = 0;
    if (!v12)
    {
      v17 = 0;
      v20 = 0;
      goto LABEL_13;
    }

    v14 = v12;
    goto LABEL_5;
  }

  v23 = 0;
  v14 = [AMSKeychain copyPublicKeyForAccount:accountCopy options:optionsCopy error:&v23];

  v15 = v23;
  v13 = v15;
  if (v14)
  {
LABEL_5:
    error = 0;
    v16 = SecKeyCopyExternalRepresentation(v14, &error);
    CFRelease(v14);
    v17 = error;
    v18 = [(__CFData *)v16 base64EncodedStringWithOptions:0];
    v19 = v18;
    if (v18)
    {
      v24 = AMSHTTPHeaderTouchIDPublicKey;
      v25 = v18;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_13;
  }

  if (v15)
  {
    v13 = v15;
    v20 = 0;
    v17 = v13;
    goto LABEL_15;
  }

  v17 = 0;
  v20 = 0;
LABEL_13:
  if (!(v20 | v17))
  {
    v17 = AMSError();
    v20 = 0;
  }

LABEL_15:
  if (completionCopy)
  {
    ams_sanitizedForSecureCoding = [v17 ams_sanitizedForSecureCoding];
    completionCopy[2](completionCopy, v20, ams_sanitizedForSecureCoding);
  }
}

- (void)testKeychainWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, &off_1002C6708, 0);
  }
}

@end