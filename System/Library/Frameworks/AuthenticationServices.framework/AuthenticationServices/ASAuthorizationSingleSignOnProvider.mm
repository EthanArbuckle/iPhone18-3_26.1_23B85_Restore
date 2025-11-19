@interface ASAuthorizationSingleSignOnProvider
+ (ASAuthorizationSingleSignOnProvider)authorizationProviderWithIdentityProviderURL:(NSURL *)url;
- (ASAuthorizationSingleSignOnProvider)init;
- (ASAuthorizationSingleSignOnProvider)initWithURL:(id)a3;
- (ASAuthorizationSingleSignOnRequest)createRequest;
@end

@implementation ASAuthorizationSingleSignOnProvider

+ (ASAuthorizationSingleSignOnProvider)authorizationProviderWithIdentityProviderURL:(NSURL *)url
{
  v4 = url;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

- (ASAuthorizationSingleSignOnProvider)init
{
  [(ASAuthorizationSingleSignOnProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationSingleSignOnProvider)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASAuthorizationSingleSignOnProvider;
  v6 = [(ASAuthorizationSingleSignOnProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (ASAuthorizationSingleSignOnRequest)createRequest
{
  v2 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_url];
  v3 = [[ASAuthorizationSingleSignOnRequest alloc] initWithProvider:v2];

  return v3;
}

@end