@interface SOAuthorizationResult
- (SOAuthorizationResult)init;
- (SOAuthorizationResult)initWithHTTPAuthorizationHeaders:(id)a3;
- (SOAuthorizationResult)initWithHTTPResponse:(id)a3 httpBody:(id)a4;
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

- (SOAuthorizationResult)initWithHTTPAuthorizationHeaders:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SOAuthorizationResult;
  v5 = [(SOAuthorizationResult *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(getSOAuthorizationResultCoreClass()) initWithHTTPAuthorizationHeaders:v4];
    authorizationResultCore = v5->_authorizationResultCore;
    v5->_authorizationResultCore = v6;
  }

  return v5;
}

- (SOAuthorizationResult)initWithHTTPResponse:(id)a3 httpBody:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SOAuthorizationResult;
  v8 = [(SOAuthorizationResult *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(getSOAuthorizationResultCoreClass()) initWithHTTPResponse:v6 httpBody:v7];
    authorizationResultCore = v8->_authorizationResultCore;
    v8->_authorizationResultCore = v9;
  }

  return v8;
}

@end