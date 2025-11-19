@interface FKPendingApplePayOrderDetails
- (FKPendingApplePayOrderDetails)initWithTransactionIdentifier:(id)a3 orderTypeIdentifier:(id)a4 orderIdentifier:(id)a5 webServiceBaseURL:(id)a6 authenticationToken:(id)a7;
@end

@implementation FKPendingApplePayOrderDetails

- (FKPendingApplePayOrderDetails)initWithTransactionIdentifier:(id)a3 orderTypeIdentifier:(id)a4 orderIdentifier:(id)a5 webServiceBaseURL:(id)a6 authenticationToken:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = FKPendingApplePayOrderDetails;
  v17 = [(FKPendingApplePayOrderDetails *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    transactionIdentifier = v17->_transactionIdentifier;
    v17->_transactionIdentifier = v18;

    v20 = [v13 copy];
    orderTypeIdentifier = v17->_orderTypeIdentifier;
    v17->_orderTypeIdentifier = v20;

    v22 = [v14 copy];
    orderIdentifier = v17->_orderIdentifier;
    v17->_orderIdentifier = v22;

    v24 = [v15 copy];
    webServiceBaseURL = v17->_webServiceBaseURL;
    v17->_webServiceBaseURL = v24;

    v26 = [v16 copy];
    authenticationToken = v17->_authenticationToken;
    v17->_authenticationToken = v26;
  }

  return v17;
}

@end