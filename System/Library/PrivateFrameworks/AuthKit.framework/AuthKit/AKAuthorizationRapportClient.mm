@interface AKAuthorizationRapportClient
- (AKAuthorizationRapportClient)init;
- (AKAuthorizationRapportClient)initWithClient:(id)client;
- (void)performAuthorization:(id)authorization completion:(id)completion;
@end

@implementation AKAuthorizationRapportClient

- (AKAuthorizationRapportClient)init
{
  selfCopy = self;
  [(AKAuthorizationRapportClient *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationRapportClient)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationRapportClient;
  selfCopy = [(AKAuthorizationRapportClient *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)performAuthorization:(id)authorization completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v5 = v7;
  v6 = [NSError ak_errorWithCode:-7014];
  v5[2](v5, 0);
  _objc_release(v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

@end