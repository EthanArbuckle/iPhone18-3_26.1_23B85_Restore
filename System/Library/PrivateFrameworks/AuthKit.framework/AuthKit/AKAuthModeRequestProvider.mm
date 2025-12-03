@interface AKAuthModeRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
@end

@implementation AKAuthModeRequestProvider

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v18.receiver = selfCopy;
  v18.super_class = AKAuthModeRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v18 signRequest:location[0] error:error])
  {
    v10 = location[0];
    concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    username = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext username];
    [v10 ak_addAppleIDHeaderWithValue:?];
    _objc_release(username);
    _objc_release(concreteAuthenticationContext);
    v13 = location[0];
    v14 = +[AKDevice currentDevice];
    [v13 ak_addAppleIDUserModeHeaderWithValue:{(objc_msgSend(v14, "isMultiUserMode") & 1) != 0}];
    _objc_release(v14);
    concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    appProvidedContext = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext2 appProvidedContext];
    _objc_release(appProvidedContext);
    _objc_release(concreteAuthenticationContext2);
    if (appProvidedContext)
    {
      v7 = location[0];
      concreteAuthenticationContext3 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
      appProvidedContext2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext3 appProvidedContext];
      [v7 ak_addAppProvidedContext:?];
      _objc_release(appProvidedContext2);
      _objc_release(concreteAuthenticationContext3);
    }

    concreteAuthenticationContext4 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    isContextRequestingReauthForExistingService = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext4 isContextRequestingReauthForExistingService];
    _objc_release(concreteAuthenticationContext4);
    if (isContextRequestingReauthForExistingService)
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