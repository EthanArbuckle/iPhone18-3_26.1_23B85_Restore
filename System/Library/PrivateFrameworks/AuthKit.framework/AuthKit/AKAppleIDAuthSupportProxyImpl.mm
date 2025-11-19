@interface AKAppleIDAuthSupportProxyImpl
- (__AppleIDAuthSupportTokenData)appleIDAuthSupportTokenCreateWithExternalizedVersion:(id)a3 error:(id *)a4;
- (id)appleIDAuthSupportCopyAppTokensWithMasterToken:(__AppleIDAuthSupportTokenData *)a3 authURL:(id)a4 serviceIds:(id)a5 authParams:(id)a6 error:(id *)a7;
@end

@implementation AKAppleIDAuthSupportProxyImpl

- (__AppleIDAuthSupportTokenData)appleIDAuthSupportTokenCreateWithExternalizedVersion:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v10 = 0;
  v9 = AppleIDAuthSupportTokenCreateWithExternalizedVersion();
  v8 = 0;
  if (a4)
  {
    v4 = v8;
    *v11 = v8;
  }

  v6 = v9;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)appleIDAuthSupportCopyAppTokensWithMasterToken:(__AppleIDAuthSupportTokenData *)a3 authURL:(id)a4 serviceIds:(id)a5 authParams:(id)a6 error:(id *)a7
{
  location[3] = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = a7;
  v14[1] = 0;
  v14[0] = AppleIDAuthSupportCopyAppTokensOptions();
  v13 = 0;
  if (a7)
  {
    v7 = v13;
    *v15 = v13;
  }

  v9 = _objc_retain(v14[0]);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v9;
}

@end