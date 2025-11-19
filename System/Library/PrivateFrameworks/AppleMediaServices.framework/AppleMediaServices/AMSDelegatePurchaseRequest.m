@interface AMSDelegatePurchaseRequest
- (AMSDelegatePurchaseRequest)initWithCacheKey:(id)a3 challenge:(id)a4;
- (AMSDelegatePurchaseRequest)initWithChallenge:(id)a3 userAgent:(id)a4;
- (AMSDelegatePurchaseRequest)initWithCoder:(id)a3;
- (AMSDelegatePurchaseRequest)initWithPurchaseResult:(id)a3 challenge:(id)a4 userAgent:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDelegatePurchaseRequest

- (AMSDelegatePurchaseRequest)initWithChallenge:(id)a3 userAgent:(id)a4
{
  v5.receiver = self;
  v5.super_class = AMSDelegatePurchaseRequest;
  result = [(AMSDelegateAuthenticateRequest *)&v5 initWithChallenge:a3 userAgent:a4];
  if (result)
  {
    result->_requiresDelegateToken = 1;
  }

  return result;
}

- (AMSDelegatePurchaseRequest)initWithPurchaseResult:(id)a3 challenge:(id)a4 userAgent:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AMSDelegatePurchaseRequest;
  v10 = [(AMSDelegateAuthenticateRequest *)&v13 initWithChallenge:a4 userAgent:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_purchaseResult, a3);
    v11->_requiresDelegateToken = 1;
  }

  return v11;
}

- (AMSDelegatePurchaseRequest)initWithCacheKey:(id)a3 challenge:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSDelegatePurchaseRequest;
  v8 = [(AMSDelegateAuthenticateRequest *)&v11 initWithChallenge:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cacheKey, a3);
    v9->_requiresDelegateToken = 1;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = AMSDelegatePurchaseRequest;
  v4 = a3;
  [(AMSDelegateAuthenticateRequest *)&v8 encodeWithCoder:v4];
  v5 = [(AMSDelegatePurchaseRequest *)self purchaseResult:v8.receiver];
  [v4 encodeObject:v5 forKey:@"pr"];

  v6 = [(AMSDelegatePurchaseRequest *)self deviceName];
  [v4 encodeObject:v6 forKey:@"deviceName"];

  [v4 encodeBool:-[AMSDelegatePurchaseRequest requiresDelegateToken](self forKey:{"requiresDelegateToken"), @"requiresDelegateToken"}];
  v7 = [(AMSDelegatePurchaseRequest *)self cacheKey];
  [v4 encodeObject:v7 forKey:@"cacheKey"];
}

- (AMSDelegatePurchaseRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSDelegatePurchaseRequest;
  v5 = [(AMSDelegateAuthenticateRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pr"];
    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    v5->_requiresDelegateToken = [v4 decodeBoolForKey:@"requiresDelegateToken"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheKey"];
    cacheKey = v5->_cacheKey;
    v5->_cacheKey = v10;
  }

  return v5;
}

@end