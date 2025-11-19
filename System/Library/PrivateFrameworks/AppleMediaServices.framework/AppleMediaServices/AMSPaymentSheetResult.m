@interface AMSPaymentSheetResult
- (AMSPaymentSheetResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentSheetResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSPaymentSheetResult *)self delegateAuthenticateToken];
  [v4 encodeObject:v5 forKey:@"kDelegateAuthenticateToken"];

  v6 = [(AMSPaymentSheetResult *)self passwordEquivalentToken];
  [v4 encodeObject:v6 forKey:@"kPasswordEquivalentToken"];

  v7 = [(AMSPaymentSheetResult *)self paymentMethodType];
  [v4 encodeObject:v7 forKey:@"kPaymentMethodType"];

  v8 = [(AMSPaymentSheetResult *)self paymentToken];
  [v4 encodeObject:v8 forKey:@"kPaymentToken"];

  v9 = [(AMSPaymentSheetResult *)self signatureResult];
  [v4 encodeObject:v9 forKey:@"kSignatureResult"];
}

- (AMSPaymentSheetResult)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AMSPaymentSheetResult;
  v5 = [(AMSPaymentSheetResult *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDelegateAuthenticateToken"];
    delegateAuthenticateToken = v5->_delegateAuthenticateToken;
    v5->_delegateAuthenticateToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPasswordEquivalentToken"];
    passwordEquivalentToken = v5->_passwordEquivalentToken;
    v5->_passwordEquivalentToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentMethodType"];
    paymentMethodType = v5->_paymentMethodType;
    v5->_paymentMethodType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentToken"];
    paymentToken = v5->_paymentToken;
    v5->_paymentToken = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSignatureResult"];
    signatureResult = v5->_signatureResult;
    v5->_signatureResult = v14;
  }

  return v5;
}

@end