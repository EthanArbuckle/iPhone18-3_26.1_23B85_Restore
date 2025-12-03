@interface FKBankConnectSpotlightTransactionsProviderResponse
- (FKBankConnectSpotlightTransactionsProviderResponse)initWithTransaction:(id)transaction primaryAccountIdentifier:(id)identifier;
@end

@implementation FKBankConnectSpotlightTransactionsProviderResponse

- (FKBankConnectSpotlightTransactionsProviderResponse)initWithTransaction:(id)transaction primaryAccountIdentifier:(id)identifier
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = FKBankConnectSpotlightTransactionsProviderResponse;
  v8 = [(FKBankConnectSpotlightTransactionsProviderResponse *)&v14 init];
  if (v8)
  {
    v9 = [transactionCopy copy];
    transaction = v8->_transaction;
    v8->_transaction = v9;

    v11 = [identifierCopy copy];
    primaryAccountIdentifier = v8->_primaryAccountIdentifier;
    v8->_primaryAccountIdentifier = v11;
  }

  return v8;
}

@end