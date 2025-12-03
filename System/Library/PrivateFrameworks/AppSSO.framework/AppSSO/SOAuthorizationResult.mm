@interface SOAuthorizationResult
- (SOAuthorizationResult)init;
- (SOAuthorizationResult)initWithHTTPAuthorizationHeaders:(id)headers;
- (SOAuthorizationResult)initWithHTTPResponse:(id)response httpBody:(id)body;
@end

@implementation SOAuthorizationResult

- (SOAuthorizationResult)init
{
  v6.receiver = self;
  v6.super_class = SOAuthorizationResult;
  v2 = [(SOAuthorizationResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(getSOAuthorizationResultCoreClass());
    authorizationResultCore = v2->_authorizationResultCore;
    v2->_authorizationResultCore = v3;
  }

  return v2;
}

- (SOAuthorizationResult)initWithHTTPAuthorizationHeaders:(id)headers
{
  headersCopy = headers;
  v9.receiver = self;
  v9.super_class = SOAuthorizationResult;
  v5 = [(SOAuthorizationResult *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(getSOAuthorizationResultCoreClass()) initWithHTTPAuthorizationHeaders:headersCopy];
    authorizationResultCore = v5->_authorizationResultCore;
    v5->_authorizationResultCore = v6;
  }

  return v5;
}

- (SOAuthorizationResult)initWithHTTPResponse:(id)response httpBody:(id)body
{
  responseCopy = response;
  bodyCopy = body;
  v12.receiver = self;
  v12.super_class = SOAuthorizationResult;
  v8 = [(SOAuthorizationResult *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(getSOAuthorizationResultCoreClass()) initWithHTTPResponse:responseCopy httpBody:bodyCopy];
    authorizationResultCore = v8->_authorizationResultCore;
    v8->_authorizationResultCore = v9;
  }

  return v8;
}

@end