@interface ASAuthorizationProviderExtensionAuthorizationRequest
- (ASAuthorizationProviderExtensionAuthorizationRequest)initWithAuthorizationRequest:(id)request;
- (void)completeWithAuthorizationResult:(ASAuthorizationProviderExtensionAuthorizationResult *)authorizationResult;
@end

@implementation ASAuthorizationProviderExtensionAuthorizationRequest

- (ASAuthorizationProviderExtensionAuthorizationRequest)initWithAuthorizationRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = ASAuthorizationProviderExtensionAuthorizationRequest;
  v6 = [(ASAuthorizationProviderExtensionAuthorizationRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizationRequest, request);
    v8 = v7;
  }

  return v7;
}

- (void)completeWithAuthorizationResult:(ASAuthorizationProviderExtensionAuthorizationResult *)authorizationResult
{
  authorizationRequest = self->_authorizationRequest;
  authorizationResult = [(ASAuthorizationProviderExtensionAuthorizationResult *)authorizationResult authorizationResult];
  [(SOAuthorizationRequest *)authorizationRequest completeWithAuthorizationResult:authorizationResult];
}

@end