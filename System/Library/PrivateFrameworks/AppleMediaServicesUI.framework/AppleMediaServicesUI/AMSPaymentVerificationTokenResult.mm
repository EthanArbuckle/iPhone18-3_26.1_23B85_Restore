@interface AMSPaymentVerificationTokenResult
- (AMSPaymentVerificationTokenResult)initWithCoder:(id)coder;
- (AMSPaymentVerificationTokenResult)initWithTokenData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPaymentVerificationTokenResult

- (AMSPaymentVerificationTokenResult)initWithTokenData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = AMSPaymentVerificationTokenResult;
  v6 = [(AMSPaymentVerificationTokenResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenData, data);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tokenData = [(AMSPaymentVerificationTokenResult *)self tokenData];

  if (tokenData)
  {
    tokenData2 = [(AMSPaymentVerificationTokenResult *)self tokenData];
    [coderCopy encodeObject:tokenData2 forKey:@"kCodingKeyTokenData"];
  }
}

- (AMSPaymentVerificationTokenResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AMSPaymentVerificationTokenResult;
  v5 = [(AMSPaymentVerificationTokenResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTokenData"];
    tokenData = v5->_tokenData;
    v5->_tokenData = v6;
  }

  return v5;
}

@end