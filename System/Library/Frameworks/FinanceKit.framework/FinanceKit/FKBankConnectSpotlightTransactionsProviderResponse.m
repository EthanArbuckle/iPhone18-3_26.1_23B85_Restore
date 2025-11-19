@interface FKBankConnectSpotlightTransactionsProviderResponse
- (FKBankConnectSpotlightTransactionsProviderResponse)initWithTransaction:(id)a3 primaryAccountIdentifier:(id)a4;
@end

@implementation FKBankConnectSpotlightTransactionsProviderResponse

- (FKBankConnectSpotlightTransactionsProviderResponse)initWithTransaction:(id)a3 primaryAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FKBankConnectSpotlightTransactionsProviderResponse;
  v8 = [(FKBankConnectSpotlightTransactionsProviderResponse *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    transaction = v8->_transaction;
    v8->_transaction = v9;

    v11 = [v7 copy];
    primaryAccountIdentifier = v8->_primaryAccountIdentifier;
    v8->_primaryAccountIdentifier = v11;
  }

  return v8;
}

@end