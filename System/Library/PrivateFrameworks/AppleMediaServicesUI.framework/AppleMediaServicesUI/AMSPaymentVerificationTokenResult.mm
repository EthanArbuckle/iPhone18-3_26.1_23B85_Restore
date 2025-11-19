@interface AMSPaymentVerificationTokenResult
- (AMSPaymentVerificationTokenResult)initWithCoder:(id)a3;
- (AMSPaymentVerificationTokenResult)initWithTokenData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentVerificationTokenResult

- (AMSPaymentVerificationTokenResult)initWithTokenData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSPaymentVerificationTokenResult;
  v6 = [(AMSPaymentVerificationTokenResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenData, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AMSPaymentVerificationTokenResult *)self tokenData];

  if (v4)
  {
    v5 = [(AMSPaymentVerificationTokenResult *)self tokenData];
    [v6 encodeObject:v5 forKey:@"kCodingKeyTokenData"];
  }
}

- (AMSPaymentVerificationTokenResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSPaymentVerificationTokenResult;
  v5 = [(AMSPaymentVerificationTokenResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTokenData"];
    tokenData = v5->_tokenData;
    v5->_tokenData = v6;
  }

  return v5;
}

@end