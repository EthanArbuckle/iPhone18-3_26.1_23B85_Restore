@interface AMSPurchaseSIWAAuthorizationResult
- (AKCredential)authorizationCredential;
- (AMSPurchaseSIWAAuthorizationResult)initWithAuthorization:(id)authorization error:(id)error;
- (AMSPurchaseSIWAAuthorizationResult)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPurchaseSIWAAuthorizationResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPurchaseSIWAAuthorizationResult

- (AMSPurchaseSIWAAuthorizationResult)initWithAuthorization:(id)authorization error:(id)error
{
  authorizationCopy = authorization;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = AMSPurchaseSIWAAuthorizationResult;
  v9 = [(AMSPurchaseSIWAAuthorizationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorization, authorization);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (unint64_t)hash
{
  authorization = [(AMSPurchaseSIWAAuthorizationResult *)self authorization];
  v4 = [authorization hash];
  error = [(AMSPurchaseSIWAAuthorizationResult *)self error];
  v6 = [error hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSPurchaseSIWAAuthorizationResult *)self isEqualToPurchaseSIWAAuthorizationResult:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPurchaseSIWAAuthorizationResult:(id)result
{
  resultCopy = result;
  authorization = [(AMSPurchaseSIWAAuthorizationResult *)self authorization];
  if (!authorization)
  {
    authorization2 = [resultCopy authorization];
    if (!authorization2)
    {
      authorization2 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  authorization3 = [(AMSPurchaseSIWAAuthorizationResult *)self authorization];
  authorization4 = [resultCopy authorization];
  if ([authorization3 isEqual:authorization4])
  {
    v9 = 1;
LABEL_7:
    error = [(AMSPurchaseSIWAAuthorizationResult *)self error];
    if (error || ([resultCopy error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      error2 = [(AMSPurchaseSIWAAuthorizationResult *)self error];
      error3 = [resultCopy error];
      v10 = [error2 isEqual:error3];

      if (error)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  if (!authorization)
  {
  }

  return v10;
}

- (AKCredential)authorizationCredential
{
  authorization = [(AMSPurchaseSIWAAuthorizationResult *)self authorization];
  credential = [authorization credential];

  return credential;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AMSPurchaseSIWAAuthorizationResult);
  error = [(AMSPurchaseSIWAAuthorizationResult *)self error];
  v6 = [error copy];
  error = v4->_error;
  v4->_error = v6;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authorization = [(AMSPurchaseSIWAAuthorizationResult *)self authorization];
  [coderCopy encodeObject:authorization forKey:@"authorizationCredential"];

  error = [(AMSPurchaseSIWAAuthorizationResult *)self error];
  [coderCopy encodeObject:error forKey:@"authorizationError"];
}

- (AMSPurchaseSIWAAuthorizationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSPurchaseSIWAAuthorizationResult;
  v5 = [(AMSPurchaseSIWAAuthorizationResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationCredential"];
    authorization = v5->_authorization;
    v5->_authorization = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationError"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

@end