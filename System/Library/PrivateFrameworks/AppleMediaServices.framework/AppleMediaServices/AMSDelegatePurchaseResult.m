@interface AMSDelegatePurchaseResult
- (AMSDelegatePurchaseResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDelegatePurchaseResult

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AMSDelegatePurchaseResult;
  v4 = a3;
  [(AMSDelegateAuthenticateResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_request forKey:{@"rp", v5.receiver, v5.super_class}];
}

- (AMSDelegatePurchaseResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSDelegatePurchaseResult;
  v5 = [(AMSDelegateAuthenticateResult *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rp"];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

@end