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
- (void)setAuditTokenData:(id)data;
- (void)setHttpBody:(id)body;
- (void)setHttpHeaders:(id)headers;
- (void)setOperation:(id)operation;
- (void)setResponseCode:(int64_t)code;
- (void)setUrl:(id)url;
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
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  identifier = [authorizationParametersCore identifier];

  return identifier;
}

- (NSString)operation
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  operation = [authorizationParametersCore operation];

  return operation;
}

- (void)setOperation:(id)operation
{
  operationCopy = operation;
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [authorizationParametersCore setOperation:operationCopy];
}

- (NSURL)url
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  v3 = [authorizationParametersCore url];

  return v3;
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [authorizationParametersCore setUrl:urlCopy];
}

- (NSDictionary)httpHeaders
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  httpHeaders = [authorizationParametersCore httpHeaders];

  return httpHeaders;
}

- (void)setHttpHeaders:(id)headers
{
  headersCopy = headers;
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [authorizationParametersCore setHttpHeaders:headersCopy];
}

- (NSData)httpBody
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  httpBody = [authorizationParametersCore httpBody];

  return httpBody;
}

- (void)setHttpBody:(id)body
{
  bodyCopy = body;
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [authorizationParametersCore setHttpBody:bodyCopy];
}

- (NSData)auditTokenData
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  auditTokenData = [authorizationParametersCore auditTokenData];

  return auditTokenData;
}

- (void)setAuditTokenData:(id)data
{
  dataCopy = data;
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [authorizationParametersCore setAuditTokenData:dataCopy];
}

- (BOOL)useInternalExtensions
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  useInternalExtensions = [authorizationParametersCore useInternalExtensions];

  return useInternalExtensions;
}

- (int64_t)responseCode
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  responseCode = [authorizationParametersCore responseCode];

  return responseCode;
}

- (void)setResponseCode:(int64_t)code
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  [authorizationParametersCore setResponseCode:code];
}

- (BOOL)isCFNetworkInterception
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  isCFNetworkInterception = [authorizationParametersCore isCFNetworkInterception];

  return isCFNetworkInterception;
}

- (BOOL)canShowOnCoverScreen
{
  authorizationParametersCore = [(SOAuthorizationParameters *)self authorizationParametersCore];
  canShowOnCoverScreen = [authorizationParametersCore canShowOnCoverScreen];

  return canShowOnCoverScreen;
}

@end