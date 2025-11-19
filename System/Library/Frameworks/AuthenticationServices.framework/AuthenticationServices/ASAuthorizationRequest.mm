@interface ASAuthorizationRequest
- (ASAuthorizationRequest)init;
- (ASAuthorizationRequest)initWithProvider:(id)a3;
@end

@implementation ASAuthorizationRequest

- (ASAuthorizationRequest)init
{
  [(ASAuthorizationRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationRequest)initWithProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASAuthorizationRequest;
  v6 = [(ASAuthorizationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, a3);
  }

  return v7;
}

@end