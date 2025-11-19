@interface AKAuthModeRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
@end

@implementation AKAuthModeRequestProvider

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18.receiver = v21;
  v18.super_class = AKAuthModeRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v18 signRequest:location[0] error:a4])
  {
    v10 = location[0];
    v12 = [(AKURLRequestProviderImpl *)v21 concreteAuthenticationContext];
    v11 = [(AKAppleIDAuthenticationContext *)v12 username];
    [v10 ak_addAppleIDHeaderWithValue:?];
    _objc_release(v11);
    _objc_release(v12);
    v13 = location[0];
    v14 = +[AKDevice currentDevice];
    [v13 ak_addAppleIDUserModeHeaderWithValue:{(objc_msgSend(v14, "isMultiUserMode") & 1) != 0}];
    _objc_release(v14);
    v15 = [(AKURLRequestProviderImpl *)v21 concreteAuthenticationContext];
    v16 = [(AKAppleIDAuthenticationContext *)v15 appProvidedContext];
    _objc_release(v16);
    _objc_release(v15);
    if (v16)
    {
      v7 = location[0];
      v9 = [(AKURLRequestProviderImpl *)v21 concreteAuthenticationContext];
      v8 = [(AKAppleIDAuthenticationContext *)v9 appProvidedContext];
      [v7 ak_addAppProvidedContext:?];
      _objc_release(v8);
      _objc_release(v9);
    }

    v5 = [(AKURLRequestProviderImpl *)v21 concreteAuthenticationContext];
    v6 = [(AKAppleIDAuthenticationContext *)v5 isContextRequestingReauthForExistingService];
    _objc_release(v5);
    if (v6)
    {
      [location[0] ak_addReAuthenticationHeader];
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(location, 0);
  return v22 & 1;
}

@end