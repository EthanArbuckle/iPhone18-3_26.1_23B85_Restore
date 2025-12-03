@interface AMSPurchaseSIWAResult
- (AMSPurchaseSIWAResult)initWithCoder:(id)coder;
- (AMSPurchaseSIWAResult)initWithPurchaseResult:(id)result authorizationResult:(id)authorizationResult;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPurchaseSIWAResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPurchaseSIWAResult

- (AMSPurchaseSIWAResult)initWithPurchaseResult:(id)result authorizationResult:(id)authorizationResult
{
  resultCopy = result;
  authorizationResultCopy = authorizationResult;
  v12.receiver = self;
  v12.super_class = AMSPurchaseSIWAResult;
  v9 = [(AMSPurchaseSIWAResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorizationResult, authorizationResult);
    objc_storeStrong(&v10->_purchaseResult, result);
  }

  return v10;
}

- (unint64_t)hash
{
  purchaseResult = [(AMSPurchaseSIWAResult *)self purchaseResult];
  v4 = [purchaseResult hash];
  authorizationResult = [(AMSPurchaseSIWAResult *)self authorizationResult];
  v6 = [authorizationResult hash];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSPurchaseSIWAResult *)self isEqualToPurchaseSIWAResult:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPurchaseSIWAResult:(id)result
{
  resultCopy = result;
  authorizationResult = [(AMSPurchaseSIWAResult *)self authorizationResult];
  if (!authorizationResult)
  {
    authorizationResult2 = [resultCopy authorizationResult];
    if (!authorizationResult2)
    {
      v9 = 0;
LABEL_7:
      purchaseResult = [(AMSPurchaseSIWAResult *)self purchaseResult];
      purchaseResult2 = [resultCopy purchaseResult];
      v10 = [purchaseResult isEqualToPurchaseResult:purchaseResult2];

      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  authorizationResult3 = [(AMSPurchaseSIWAResult *)self authorizationResult];
  authorizationResult4 = [resultCopy authorizationResult];
  if ([authorizationResult3 isEqual:authorizationResult4])
  {
    v9 = 1;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

LABEL_9:
  if (!authorizationResult)
  {
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AMSPurchaseSIWAResult);
  authorizationResult = [(AMSPurchaseSIWAResult *)self authorizationResult];
  v6 = [authorizationResult copy];
  authorizationResult = v4->_authorizationResult;
  v4->_authorizationResult = v6;

  purchaseResult = [(AMSPurchaseSIWAResult *)self purchaseResult];
  v9 = [purchaseResult copy];
  purchaseResult = v4->_purchaseResult;
  v4->_purchaseResult = v9;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authorizationResult = [(AMSPurchaseSIWAResult *)self authorizationResult];
  [coderCopy encodeObject:authorizationResult forKey:@"authorizationResult"];

  purchaseResult = [(AMSPurchaseSIWAResult *)self purchaseResult];
  [coderCopy encodeObject:purchaseResult forKey:@"purchaseResult"];
}

- (AMSPurchaseSIWAResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSPurchaseSIWAResult;
  v5 = [(AMSPurchaseSIWAResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationResult"];
    authorizationResult = v5->_authorizationResult;
    v5->_authorizationResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseResult"];
    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v8;
  }

  return v5;
}

@end