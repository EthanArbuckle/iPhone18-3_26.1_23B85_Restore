@interface SKPaymentInternal
- (SKPaymentInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(SKPaymentInternal);
  v6 = [(NSString *)self->_applicationUsername copyWithZone:a3];
  applicationUsername = v5->_applicationUsername;
  v5->_applicationUsername = v6;

  v8 = [(NSString *)self->_partnerIdentifier copyWithZone:a3];
  partnerIdentifier = v5->_partnerIdentifier;
  v5->_partnerIdentifier = v8;

  v10 = [(NSString *)self->_partnerTransactionIdentifier copyWithZone:a3];
  partnerTransactionIdentifier = v5->_partnerTransactionIdentifier;
  v5->_partnerTransactionIdentifier = v10;

  v12 = [(NSString *)self->_productIdentifier copyWithZone:a3];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v12;

  v14 = [(NSString *)self->_productKind copyWithZone:a3];
  productKind = v5->_productKind;
  v5->_productKind = v14;

  v5->_quantity = self->_quantity;
  v16 = [(NSData *)self->_requestData copyWithZone:a3];
  requestData = v5->_requestData;
  v5->_requestData = v16;

  v18 = [(NSDictionary *)self->_requestParameters copyWithZone:a3];
  requestParameters = v5->_requestParameters;
  v5->_requestParameters = v18;

  v5->_simulatesAskToBuyInSandbox = self->_simulatesAskToBuyInSandbox;
  objc_storeStrong(&v5->_subscriptionPeriod, self->_subscriptionPeriod);
  v5->_isStoreOriginated = self->_isStoreOriginated;
  objc_storeStrong(&v5->_paymentDiscount, self->_paymentDiscount);
  v20 = [(SKPaymentAppleIDAuthorizationRequest *)self->_appleIDAuthorizationClientInfo copyWithZone:a3];
  appleIDAuthorizationClientInfo = v5->_appleIDAuthorizationClientInfo;
  v5->_appleIDAuthorizationClientInfo = v20;

  v22 = [(NSDictionary *)self->_metricsOverlay copyWithZone:a3];
  metricsOverlay = v5->_metricsOverlay;
  v5->_metricsOverlay = v22;

  return v5;
}

@end