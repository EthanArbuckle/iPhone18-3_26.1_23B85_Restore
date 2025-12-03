@interface AMSDelegatePurchaseRequest
- (AMSDelegatePurchaseRequest)initWithCacheKey:(id)key challenge:(id)challenge;
- (AMSDelegatePurchaseRequest)initWithChallenge:(id)challenge userAgent:(id)agent;
- (AMSDelegatePurchaseRequest)initWithCoder:(id)coder;
- (AMSDelegatePurchaseRequest)initWithPurchaseResult:(id)result challenge:(id)challenge userAgent:(id)agent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDelegatePurchaseRequest

- (AMSDelegatePurchaseRequest)initWithChallenge:(id)challenge userAgent:(id)agent
{
  v5.receiver = self;
  v5.super_class = AMSDelegatePurchaseRequest;
  result = [(AMSDelegateAuthenticateRequest *)&v5 initWithChallenge:challenge userAgent:agent];
  if (result)
  {
    result->_requiresDelegateToken = 1;
  }

  return result;
}

- (AMSDelegatePurchaseRequest)initWithPurchaseResult:(id)result challenge:(id)challenge userAgent:(id)agent
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = AMSDelegatePurchaseRequest;
  v10 = [(AMSDelegateAuthenticateRequest *)&v13 initWithChallenge:challenge userAgent:agent];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_purchaseResult, result);
    v11->_requiresDelegateToken = 1;
  }

  return v11;
}

- (AMSDelegatePurchaseRequest)initWithCacheKey:(id)key challenge:(id)challenge
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = AMSDelegatePurchaseRequest;
  v8 = [(AMSDelegateAuthenticateRequest *)&v11 initWithChallenge:challenge];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cacheKey, key);
    v9->_requiresDelegateToken = 1;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = AMSDelegatePurchaseRequest;
  coderCopy = coder;
  [(AMSDelegateAuthenticateRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(AMSDelegatePurchaseRequest *)self purchaseResult:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"pr"];

  deviceName = [(AMSDelegatePurchaseRequest *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  [coderCopy encodeBool:-[AMSDelegatePurchaseRequest requiresDelegateToken](self forKey:{"requiresDelegateToken"), @"requiresDelegateToken"}];
  cacheKey = [(AMSDelegatePurchaseRequest *)self cacheKey];
  [coderCopy encodeObject:cacheKey forKey:@"cacheKey"];
}

- (AMSDelegatePurchaseRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AMSDelegatePurchaseRequest;
  v5 = [(AMSDelegateAuthenticateRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pr"];
    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    v5->_requiresDelegateToken = [coderCopy decodeBoolForKey:@"requiresDelegateToken"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheKey"];
    cacheKey = v5->_cacheKey;
    v5->_cacheKey = v10;
  }

  return v5;
}

@end