@interface ASAuthorizationProviderExtensionAuthorizationRequest
- (ASAuthorizationProviderExtensionAuthorizationRequest)initWithAuthorizationRequest:(id)a3;
- (void)completeWithAuthorizationResult:(ASAuthorizationProviderExtensionAuthorizationResult *)authorizationResult;
@end

@implementation ASAuthorizationProviderExtensionAuthorizationRequest

- (ASAuthorizationProviderExtensionAuthorizationRequest)initWithAuthorizationRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASAuthorizationProviderExtensionAuthorizationRequest;
  v6 = [(ASAuthorizationProviderExtensionAuthorizationRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizationRequest, a3);
    v8 = v7;
  }

  return v7;
}

- (void)completeWithAuthorizationResult:(ASAuthorizationProviderExtensionAuthorizationResult *)authorizationResult
{
  authorizationRequest = self->_authorizationRequest;
  v4 = [(ASAuthorizationProviderExtensionAuthorizationResult *)authorizationResult authorizationResult];
  [(SOAuthorizationRequest *)authorizationRequest completeWithAuthorizationResult:v4];
}

@end