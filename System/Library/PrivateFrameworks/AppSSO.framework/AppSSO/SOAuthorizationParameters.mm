@interface SOAuthorizationParameters
- (BOOL)canShowOnCoverScreen;
- (BOOL)isCFNetworkInterception;
- (BOOL)useInternalExtensions;
- (NSData)auditTokenData;
- (NSData)httpBody;
- (NSDictionary)httpHeaders;
- (NSString)identifier;
- (NSString)operation;
- (NSURL)url;
- (SOAuthorizationParameters)init;
- (int64_t)responseCode;
- (void)setAuditTokenData:(id)a3;
- (void)setHttpBody:(id)a3;
- (void)setHttpHeaders:(id)a3;
- (void)setOperation:(id)a3;
- (void)setResponseCode:(int64_t)a3;
- (void)setUrl:(id)a3;
@end

@implementation SOAuthorizationParameters

- (SOAuthorizationParameters)init
{
  v8.receiver = self;
  v8.super_class = SOAuthorizationParameters;
  v2 = [(SOAuthorizationParameters *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getSOAuthorizationParametersCoreClass_softClass;
    v13 = getSOAuthorizationParametersCoreClass_softClass;
    if (!getSOAuthorizationParametersCoreClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getSOAuthorizationParametersCoreClass_block_invoke;
      v9[3] = &unk_1E813E230;
      v9[4] = &v10;
      __getSOAuthorizationParametersCoreClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    authorizationParametersCore = v2->_authorizationParametersCore;
    v2->_authorizationParametersCore = v5;

    [(SOAuthorizationParameters *)v2 setUseInternalExtensions:1];
  }

  return v2;
}

- (NSString)identifier
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)operation
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 operation];

  return v3;
}

- (void)setOperation:(id)a3
{
  v4 = a3;
  v5 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [v5 setOperation:v4];
}

- (NSURL)url
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 url];

  return v3;
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  v5 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [v5 setUrl:v4];
}

- (NSDictionary)httpHeaders
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 httpHeaders];

  return v3;
}

- (void)setHttpHeaders:(id)a3
{
  v4 = a3;
  v5 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [v5 setHttpHeaders:v4];
}

- (NSData)httpBody
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 httpBody];

  return v3;
}

- (void)setHttpBody:(id)a3
{
  v4 = a3;
  v5 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [v5 setHttpBody:v4];
}

- (NSData)auditTokenData
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 auditTokenData];

  return v3;
}

- (void)setAuditTokenData:(id)a3
{
  v4 = a3;
  v5 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [v5 setAuditTokenData:v4];
}

- (BOOL)useInternalExtensions
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 useInternalExtensions];

  return v3;
}

- (int64_t)responseCode
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 responseCode];

  return v3;
}

- (void)setResponseCode:(int64_t)a3
{
  v4 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [v4 setResponseCode:a3];
}

- (BOOL)isCFNetworkInterception
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 isCFNetworkInterception];

  return v3;
}

- (BOOL)canShowOnCoverScreen
{
  v2 = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [v2 canShowOnCoverScreen];

  return v3;
}

@end