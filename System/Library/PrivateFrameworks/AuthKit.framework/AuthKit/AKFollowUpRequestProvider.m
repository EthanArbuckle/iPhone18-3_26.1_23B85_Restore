@interface AKFollowUpRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
@end

@implementation AKFollowUpRequestProvider

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11[1] = a4;
  v6 = [(AKURLRequestProviderImpl *)v13 concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)v6 set_shouldSendIdentityTokenForRemoteUI:0];
  _objc_release(v6);
  v7 = [AKDServerUIController alloc];
  v10 = [(AKURLRequestProviderImpl *)v13 client];
  v9 = [(AKDServerUIController *)v7 initWithClient:?];
  v8 = [(AKURLRequestProviderImpl *)v13 concreteAuthenticationContext];
  v11[0] = [(AKDServerUIController *)v9 resourceLoadDelegateWithContext:?];
  _objc_release(v8);
  _objc_release(v9);
  _objc_release(v10);
  [v11[0] setBagUrlKey:AKURLBagKeyFetchFollowUps];
  [location[0] setValue:? forHTTPHeaderField:?];
  [location[0] setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  [v11[0] signRequest:location[0]];
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end