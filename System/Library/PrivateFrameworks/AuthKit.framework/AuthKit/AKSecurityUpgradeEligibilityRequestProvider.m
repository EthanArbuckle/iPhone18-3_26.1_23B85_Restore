@interface AKSecurityUpgradeEligibilityRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
@end

@implementation AKSecurityUpgradeEligibilityRequestProvider

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  [location[0] ak_addPRKRequestHeader];
  v6 = location[0];
  v8 = [(AKURLRequestProviderImpl *)v13 concreteAuthenticationContext];
  v7 = [(AKAppleIDAuthenticationContext *)v8 securityUpgradeContext];
  [v6 setValue:? forHTTPHeaderField:?];
  _objc_release(v7);
  _objc_release(v8);
  v10.receiver = v13;
  v10.super_class = AKSecurityUpgradeEligibilityRequestProvider;
  v9 = [(AKGrandSlamRequestProvider *)&v10 signRequest:location[0] error:a4];
  objc_storeStrong(location, 0);
  return v9;
}

@end