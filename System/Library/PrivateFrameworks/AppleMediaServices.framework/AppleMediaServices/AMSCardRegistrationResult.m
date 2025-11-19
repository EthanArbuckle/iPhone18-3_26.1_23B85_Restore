@interface AMSCardRegistrationResult
- (AMSCardRegistrationResult)initWithCardRegistrationResponse:(id)a3;
@end

@implementation AMSCardRegistrationResult

- (AMSCardRegistrationResult)initWithCardRegistrationResponse:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSCardRegistrationResult;
  v5 = [(AMSCardRegistrationResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 cardData];
    cardData = v5->_cardData;
    v5->_cardData = v6;

    v8 = [v4 brokerURL];
    brokerURL = v5->_brokerURL;
    v5->_brokerURL = v8;

    v10 = [v4 paymentServicesURL];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = v10;
  }

  return v5;
}

@end