@interface AMSPaymentSheetResult
- (AMSPaymentSheetResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPaymentSheetResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  delegateAuthenticateToken = [(AMSPaymentSheetResult *)self delegateAuthenticateToken];
  [coderCopy encodeObject:delegateAuthenticateToken forKey:@"kDelegateAuthenticateToken"];

  passwordEquivalentToken = [(AMSPaymentSheetResult *)self passwordEquivalentToken];
  [coderCopy encodeObject:passwordEquivalentToken forKey:@"kPasswordEquivalentToken"];

  paymentMethodType = [(AMSPaymentSheetResult *)self paymentMethodType];
  [coderCopy encodeObject:paymentMethodType forKey:@"kPaymentMethodType"];

  paymentToken = [(AMSPaymentSheetResult *)self paymentToken];
  [coderCopy encodeObject:paymentToken forKey:@"kPaymentToken"];

  signatureResult = [(AMSPaymentSheetResult *)self signatureResult];
  [coderCopy encodeObject:signatureResult forKey:@"kSignatureResult"];
}

- (AMSPaymentSheetResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AMSPaymentSheetResult;
  v5 = [(AMSPaymentSheetResult *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDelegateAuthenticateToken"];
    delegateAuthenticateToken = v5->_delegateAuthenticateToken;
    v5->_delegateAuthenticateToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPasswordEquivalentToken"];
    passwordEquivalentToken = v5->_passwordEquivalentToken;
    v5->_passwordEquivalentToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentMethodType"];
    paymentMethodType = v5->_paymentMethodType;
    v5->_paymentMethodType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentToken"];
    paymentToken = v5->_paymentToken;
    v5->_paymentToken = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSignatureResult"];
    signatureResult = v5->_signatureResult;
    v5->_signatureResult = v14;
  }

  return v5;
}

@end