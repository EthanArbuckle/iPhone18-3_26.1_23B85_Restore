@interface AMSDKeychainService
+ (BOOL)isConnectionEntitled:(id)a3;
- (void)getPublicKeyHeaderWithAccount:(id)a3 options:(id)a4 signatureResult:(id)a5 completion:(id)a6;
- (void)testKeychainWithCompletion:(id)a3;
@end

@implementation AMSDKeychainService

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)getPublicKeyHeaderWithAccount:(id)a3 options:(id)a4 signatureResult:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = a4;
  if (([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:v8]& 1) != 0)
  {
    v11 = [v10 purpose];

    v12 = [AMSCertificateManager publicKeyForAccount:v8 forSignaturePurpose:v11];
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
  v14 = [AMSKeychain copyPublicKeyForAccount:v8 options:v10 error:&v23];

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
  if (v9)
  {
    v21 = [v17 ams_sanitizedForSecureCoding];
    v9[2](v9, v20, v21);
  }
}

- (void)testKeychainWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, &off_1002C6708, 0);
  }
}

@end