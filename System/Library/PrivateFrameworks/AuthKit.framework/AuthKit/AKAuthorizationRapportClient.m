@interface AKAuthorizationRapportClient
- (AKAuthorizationRapportClient)init;
- (AKAuthorizationRapportClient)initWithClient:(id)a3;
- (void)performAuthorization:(id)a3 completion:(id)a4;
@end

@implementation AKAuthorizationRapportClient

- (AKAuthorizationRapportClient)init
{
  v3 = self;
  [(AKAuthorizationRapportClient *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&v3, 0);
  return 0;
}

- (AKAuthorizationRapportClient)initWithClient:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationRapportClient;
  v8 = [(AKAuthorizationRapportClient *)&v6 init];
  objc_storeStrong(&v8, v8);
  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)performAuthorization:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v7;
  v6 = [NSError ak_errorWithCode:-7014];
  v5[2](v5, 0);
  _objc_release(v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

@end