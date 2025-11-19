@interface AMSPaymentRequest
- (AMSPaymentRequest)init;
- (AMSPaymentRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentRequest

- (AMSPaymentRequest)init
{
  v3.receiver = self;
  v3.super_class = AMSPaymentRequest;
  result = [(AMSPaymentRequest *)&v3 init];
  if (result)
  {
    *&result->_drawBackground = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSPaymentRequest *)self paymentContentItems];
  [v4 encodeObject:v5 forKey:@"paymentContentItems"];

  v6 = [(AMSPaymentRequest *)self localizedNavigationTitle];
  [v4 encodeObject:v6 forKey:@"localizedNavigationTitle"];

  v7 = [(AMSPaymentRequest *)self salableInfo];
  [v4 encodeObject:v7 forKey:@"salableInfo"];

  v8 = [(AMSPaymentRequest *)self secondaryContentItems];
  [v4 encodeObject:v8 forKey:@"secondaryContentItems"];

  v9 = [(AMSPaymentRequest *)self secondarySalableInfo];
  [v4 encodeObject:v9 forKey:@"secondarySalableInfo"];

  [v4 encodeBool:-[AMSPaymentRequest drawBackground](self forKey:{"drawBackground"), @"drawBackground"}];
  [v4 encodeBool:-[AMSPaymentRequest drawBottomDivider](self forKey:{"drawBottomDivider"), @"drawBottomDivider"}];
  v10 = [(AMSPaymentRequest *)self languageTagBagValue];
  [v4 encodeObject:v10 forKey:@"languageTagBagValue"];
}

- (AMSPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AMSPaymentRequest;
  v5 = [(AMSPaymentRequest *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"paymentContentItems"];
    paymentContentItems = v5->_paymentContentItems;
    v5->_paymentContentItems = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedNavigationTitle"];
    localizedNavigationTitle = v5->_localizedNavigationTitle;
    v5->_localizedNavigationTitle = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"salableInfo"];
    salableInfo = v5->_salableInfo;
    v5->_salableInfo = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"secondaryContentItems"];
    secondaryContentItems = v5->_secondaryContentItems;
    v5->_secondaryContentItems = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondarySalableInfo"];
    secondarySalableInfo = v5->_secondarySalableInfo;
    v5->_secondarySalableInfo = v20;

    v5->_drawBackground = [v4 decodeBoolForKey:@"drawBackground"];
    v5->_drawBottomDivider = [v4 decodeBoolForKey:@"drawBottomDivider"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"languageTagBagValue"];
    languageTagBagValue = v5->_languageTagBagValue;
    v5->_languageTagBagValue = v22;
  }

  return v5;
}

@end