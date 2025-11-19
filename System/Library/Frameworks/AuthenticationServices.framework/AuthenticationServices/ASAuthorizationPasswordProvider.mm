@interface ASAuthorizationPasswordProvider
- (ASAuthorizationPasswordRequest)createRequest;
@end

@implementation ASAuthorizationPasswordProvider

- (ASAuthorizationPasswordRequest)createRequest
{
  v2 = objc_alloc_init(ASAuthorizationPasswordProvider);
  v3 = [(ASAuthorizationRequest *)[ASAuthorizationPasswordRequest alloc] initWithProvider:v2];

  return v3;
}

@end