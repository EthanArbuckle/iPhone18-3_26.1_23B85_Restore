@interface AKFollowUpRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
@end

@implementation AKFollowUpRequestProvider

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v11[1] = error;
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext set_shouldSendIdentityTokenForRemoteUI:0];
  _objc_release(concreteAuthenticationContext);
  v7 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v9 = [(AKDServerUIController *)v7 initWithClient:?];
  concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  v11[0] = [(AKDServerUIController *)v9 resourceLoadDelegateWithContext:?];
  _objc_release(concreteAuthenticationContext2);
  _objc_release(v9);
  _objc_release(client);
  [v11[0] setBagUrlKey:AKURLBagKeyFetchFollowUps];
  [location[0] setValue:? forHTTPHeaderField:?];
  [location[0] setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  [v11[0] signRequest:location[0]];
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end