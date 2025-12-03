@interface AMSDelegatePurchaseResult
- (AMSDelegatePurchaseResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDelegatePurchaseResult

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AMSDelegatePurchaseResult;
  coderCopy = coder;
  [(AMSDelegateAuthenticateResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_request forKey:{@"rp", v5.receiver, v5.super_class}];
}

- (AMSDelegatePurchaseResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AMSDelegatePurchaseResult;
  v5 = [(AMSDelegateAuthenticateResult *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rp"];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

@end