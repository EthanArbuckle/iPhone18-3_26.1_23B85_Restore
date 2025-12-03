@interface AKAppleIDAuthSupportProxyImpl
- (__AppleIDAuthSupportTokenData)appleIDAuthSupportTokenCreateWithExternalizedVersion:(id)version error:(id *)error;
- (id)appleIDAuthSupportCopyAppTokensWithMasterToken:(__AppleIDAuthSupportTokenData *)token authURL:(id)l serviceIds:(id)ids authParams:(id)params error:(id *)error;
@end

@implementation AKAppleIDAuthSupportProxyImpl

- (__AppleIDAuthSupportTokenData)appleIDAuthSupportTokenCreateWithExternalizedVersion:(id)version error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  errorCopy = error;
  v10 = 0;
  v9 = AppleIDAuthSupportTokenCreateWithExternalizedVersion();
  v8 = 0;
  if (error)
  {
    v4 = v8;
    *errorCopy = v8;
  }

  v6 = v9;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)appleIDAuthSupportCopyAppTokensWithMasterToken:(__AppleIDAuthSupportTokenData *)token authURL:(id)l serviceIds:(id)ids authParams:(id)params error:(id *)error
{
  location[3] = self;
  location[2] = a2;
  location[1] = token;
  location[0] = 0;
  objc_storeStrong(location, l);
  v17 = 0;
  objc_storeStrong(&v17, ids);
  v16 = 0;
  objc_storeStrong(&v16, params);
  errorCopy = error;
  v14[1] = 0;
  v14[0] = AppleIDAuthSupportCopyAppTokensOptions();
  v13 = 0;
  if (error)
  {
    v7 = v13;
    *errorCopy = v13;
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