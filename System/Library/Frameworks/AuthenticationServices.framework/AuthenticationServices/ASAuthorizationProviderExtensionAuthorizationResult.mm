@interface ASAuthorizationProviderExtensionAuthorizationResult
- (ASAuthorizationProviderExtensionAuthorizationResult)init;
- (ASAuthorizationProviderExtensionAuthorizationResult)initWithHTTPAuthorizationHeaders:(NSDictionary *)httpAuthorizationHeaders;
- (ASAuthorizationProviderExtensionAuthorizationResult)initWithHTTPResponse:(NSHTTPURLResponse *)httpResponse httpBody:(NSData *)httpBody;
@end

@implementation ASAuthorizationProviderExtensionAuthorizationResult

- (ASAuthorizationProviderExtensionAuthorizationResult)init
{
  v8.receiver = self;
  v8.super_class = ASAuthorizationProviderExtensionAuthorizationResult;
  v2 = [(ASAuthorizationProviderExtensionAuthorizationResult *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698B138]);
    authorizationResult = v2->_authorizationResult;
    v2->_authorizationResult = v3;

    v5 = [MEMORY[0x1E695DEC8] array];
    [(ASAuthorizationProviderExtensionAuthorizationResult *)v2 setPrivateKeys:v5];

    v6 = v2;
  }

  return v2;
}

- (ASAuthorizationProviderExtensionAuthorizationResult)initWithHTTPAuthorizationHeaders:(NSDictionary *)httpAuthorizationHeaders
{
  v4 = httpAuthorizationHeaders;
  v11.receiver = self;
  v11.super_class = ASAuthorizationProviderExtensionAuthorizationResult;
  v5 = [(ASAuthorizationProviderExtensionAuthorizationResult *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E698B138]) initWithHTTPAuthorizationHeaders:v4];
    authorizationResult = v5->_authorizationResult;
    v5->_authorizationResult = v6;

    v8 = [MEMORY[0x1E695DEC8] array];
    [(ASAuthorizationProviderExtensionAuthorizationResult *)v5 setPrivateKeys:v8];

    v9 = v5;
  }

  return v5;
}

- (ASAuthorizationProviderExtensionAuthorizationResult)initWithHTTPResponse:(NSHTTPURLResponse *)httpResponse httpBody:(NSData *)httpBody
{
  v6 = httpResponse;
  v7 = httpBody;
  v14.receiver = self;
  v14.super_class = ASAuthorizationProviderExtensionAuthorizationResult;
  v8 = [(ASAuthorizationProviderExtensionAuthorizationResult *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E698B138]) initWithHTTPResponse:v6 httpBody:v7];
    authorizationResult = v8->_authorizationResult;
    v8->_authorizationResult = v9;

    v11 = [MEMORY[0x1E695DEC8] array];
    [(ASAuthorizationProviderExtensionAuthorizationResult *)v8 setPrivateKeys:v11];

    v12 = v8;
  }

  return v8;
}

@end