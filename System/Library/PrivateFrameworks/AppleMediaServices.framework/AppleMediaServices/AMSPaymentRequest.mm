@interface AMSPaymentRequest
- (AMSPaymentRequest)init;
- (AMSPaymentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  paymentContentItems = [(AMSPaymentRequest *)self paymentContentItems];
  [coderCopy encodeObject:paymentContentItems forKey:@"paymentContentItems"];

  localizedNavigationTitle = [(AMSPaymentRequest *)self localizedNavigationTitle];
  [coderCopy encodeObject:localizedNavigationTitle forKey:@"localizedNavigationTitle"];

  salableInfo = [(AMSPaymentRequest *)self salableInfo];
  [coderCopy encodeObject:salableInfo forKey:@"salableInfo"];

  secondaryContentItems = [(AMSPaymentRequest *)self secondaryContentItems];
  [coderCopy encodeObject:secondaryContentItems forKey:@"secondaryContentItems"];

  secondarySalableInfo = [(AMSPaymentRequest *)self secondarySalableInfo];
  [coderCopy encodeObject:secondarySalableInfo forKey:@"secondarySalableInfo"];

  [coderCopy encodeBool:-[AMSPaymentRequest drawBackground](self forKey:{"drawBackground"), @"drawBackground"}];
  [coderCopy encodeBool:-[AMSPaymentRequest drawBottomDivider](self forKey:{"drawBottomDivider"), @"drawBottomDivider"}];
  languageTagBagValue = [(AMSPaymentRequest *)self languageTagBagValue];
  [coderCopy encodeObject:languageTagBagValue forKey:@"languageTagBagValue"];
}

- (AMSPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = AMSPaymentRequest;
  v5 = [(AMSPaymentRequest *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"paymentContentItems"];
    paymentContentItems = v5->_paymentContentItems;
    v5->_paymentContentItems = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedNavigationTitle"];
    localizedNavigationTitle = v5->_localizedNavigationTitle;
    v5->_localizedNavigationTitle = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salableInfo"];
    salableInfo = v5->_salableInfo;
    v5->_salableInfo = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"secondaryContentItems"];
    secondaryContentItems = v5->_secondaryContentItems;
    v5->_secondaryContentItems = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondarySalableInfo"];
    secondarySalableInfo = v5->_secondarySalableInfo;
    v5->_secondarySalableInfo = v20;

    v5->_drawBackground = [coderCopy decodeBoolForKey:@"drawBackground"];
    v5->_drawBottomDivider = [coderCopy decodeBoolForKey:@"drawBottomDivider"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageTagBagValue"];
    languageTagBagValue = v5->_languageTagBagValue;
    v5->_languageTagBagValue = v22;
  }

  return v5;
}

@end