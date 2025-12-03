@interface AKSecurityUpgradeEligibilityRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
@end

@implementation AKSecurityUpgradeEligibilityRequestProvider

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  [location[0] ak_addPRKRequestHeader];
  v6 = location[0];
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  securityUpgradeContext = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext securityUpgradeContext];
  [v6 setValue:? forHTTPHeaderField:?];
  _objc_release(securityUpgradeContext);
  _objc_release(concreteAuthenticationContext);
  v10.receiver = selfCopy;
  v10.super_class = AKSecurityUpgradeEligibilityRequestProvider;
  v9 = [(AKGrandSlamRequestProvider *)&v10 signRequest:location[0] error:error];
  objc_storeStrong(location, 0);
  return v9;
}

@end