@interface SKPaymentInternal
- (SKPaymentInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKPaymentInternal

- (SKPaymentInternal)init
{
  v3.receiver = self;
  v3.super_class = SKPaymentInternal;
  result = [(SKPaymentInternal *)&v3 init];
  if (result)
  {
    result->_quantity = 1;
    result->_simulatesAskToBuyInSandbox = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(SKPaymentInternal);
  v6 = [(NSString *)self->_applicationUsername copyWithZone:zone];
  applicationUsername = v5->_applicationUsername;
  v5->_applicationUsername = v6;

  v8 = [(NSString *)self->_partnerIdentifier copyWithZone:zone];
  partnerIdentifier = v5->_partnerIdentifier;
  v5->_partnerIdentifier = v8;

  v10 = [(NSString *)self->_partnerTransactionIdentifier copyWithZone:zone];
  partnerTransactionIdentifier = v5->_partnerTransactionIdentifier;
  v5->_partnerTransactionIdentifier = v10;

  v12 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v12;

  v14 = [(NSString *)self->_productKind copyWithZone:zone];
  productKind = v5->_productKind;
  v5->_productKind = v14;

  v5->_quantity = self->_quantity;
  v16 = [(NSData *)self->_requestData copyWithZone:zone];
  requestData = v5->_requestData;
  v5->_requestData = v16;

  v18 = [(NSDictionary *)self->_requestParameters copyWithZone:zone];
  requestParameters = v5->_requestParameters;
  v5->_requestParameters = v18;

  v5->_simulatesAskToBuyInSandbox = self->_simulatesAskToBuyInSandbox;
  objc_storeStrong(&v5->_subscriptionPeriod, self->_subscriptionPeriod);
  v5->_isStoreOriginated = self->_isStoreOriginated;
  objc_storeStrong(&v5->_paymentDiscount, self->_paymentDiscount);
  v20 = [(SKPaymentAppleIDAuthorizationRequest *)self->_appleIDAuthorizationClientInfo copyWithZone:zone];
  appleIDAuthorizationClientInfo = v5->_appleIDAuthorizationClientInfo;
  v5->_appleIDAuthorizationClientInfo = v20;

  v22 = [(NSDictionary *)self->_metricsOverlay copyWithZone:zone];
  metricsOverlay = v5->_metricsOverlay;
  v5->_metricsOverlay = v22;

  return v5;
}

@end