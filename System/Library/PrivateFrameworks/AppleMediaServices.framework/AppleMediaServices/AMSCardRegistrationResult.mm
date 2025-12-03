@interface AMSCardRegistrationResult
- (AMSCardRegistrationResult)initWithCardRegistrationResponse:(id)response;
@end

@implementation AMSCardRegistrationResult

- (AMSCardRegistrationResult)initWithCardRegistrationResponse:(id)response
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = AMSCardRegistrationResult;
  v5 = [(AMSCardRegistrationResult *)&v13 init];
  if (v5)
  {
    cardData = [responseCopy cardData];
    cardData = v5->_cardData;
    v5->_cardData = cardData;

    brokerURL = [responseCopy brokerURL];
    brokerURL = v5->_brokerURL;
    v5->_brokerURL = brokerURL;

    paymentServicesURL = [responseCopy paymentServicesURL];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = paymentServicesURL;
  }

  return v5;
}

@end