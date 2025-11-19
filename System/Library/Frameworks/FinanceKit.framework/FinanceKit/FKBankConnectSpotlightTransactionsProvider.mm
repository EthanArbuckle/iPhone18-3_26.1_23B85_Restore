@interface FKBankConnectSpotlightTransactionsProvider
- (FKBankConnectSpotlightTransactionsProvider)init;
@end

@implementation FKBankConnectSpotlightTransactionsProvider

- (FKBankConnectSpotlightTransactionsProvider)init
{
  v6.receiver = self;
  v6.super_class = FKBankConnectSpotlightTransactionsProvider;
  v2 = [(FKBankConnectSpotlightTransactionsProvider *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC10FinanceKit40BankConnectSpotlightTransactionsProvider makeProvider];
    spotlightProvider = v2->_spotlightProvider;
    v2->_spotlightProvider = v3;
  }

  return v2;
}

@end