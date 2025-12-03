@interface FKPendingApplePayOrderDetails
- (FKPendingApplePayOrderDetails)initWithTransactionIdentifier:(id)identifier orderTypeIdentifier:(id)typeIdentifier orderIdentifier:(id)orderIdentifier webServiceBaseURL:(id)l authenticationToken:(id)token;
@end

@implementation FKPendingApplePayOrderDetails

- (FKPendingApplePayOrderDetails)initWithTransactionIdentifier:(id)identifier orderTypeIdentifier:(id)typeIdentifier orderIdentifier:(id)orderIdentifier webServiceBaseURL:(id)l authenticationToken:(id)token
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  orderIdentifierCopy = orderIdentifier;
  lCopy = l;
  tokenCopy = token;
  v29.receiver = self;
  v29.super_class = FKPendingApplePayOrderDetails;
  v17 = [(FKPendingApplePayOrderDetails *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    transactionIdentifier = v17->_transactionIdentifier;
    v17->_transactionIdentifier = v18;

    v20 = [typeIdentifierCopy copy];
    orderTypeIdentifier = v17->_orderTypeIdentifier;
    v17->_orderTypeIdentifier = v20;

    v22 = [orderIdentifierCopy copy];
    orderIdentifier = v17->_orderIdentifier;
    v17->_orderIdentifier = v22;

    v24 = [lCopy copy];
    webServiceBaseURL = v17->_webServiceBaseURL;
    v17->_webServiceBaseURL = v24;

    v26 = [tokenCopy copy];
    authenticationToken = v17->_authenticationToken;
    v17->_authenticationToken = v26;
  }

  return v17;
}

@end