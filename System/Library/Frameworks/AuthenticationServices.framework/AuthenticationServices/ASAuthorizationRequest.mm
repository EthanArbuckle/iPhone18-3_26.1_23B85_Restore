@interface ASAuthorizationRequest
- (ASAuthorizationRequest)init;
- (ASAuthorizationRequest)initWithProvider:(id)provider;
@end

@implementation ASAuthorizationRequest

- (ASAuthorizationRequest)init
{
  [(ASAuthorizationRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationRequest)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = ASAuthorizationRequest;
  v6 = [(ASAuthorizationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, provider);
  }

  return v7;
}

@end