@interface FKBankConnectTransactionsAndGroupsProvider
- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)a3;
- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)a3 fixedNumberOfLatestTransactions:(unint64_t)a4;
@end

@implementation FKBankConnectTransactionsAndGroupsProvider

- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)a3 fixedNumberOfLatestTransactions:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FKBankConnectTransactionsAndGroupsProvider;
  v7 = [(FKBankConnectTransactionsAndGroupsProvider *)&v11 init];
  if (v7)
  {
    v8 = [_TtC10FinanceKit29TransactionsAndGroupsProvider makeProviderWithPrimaryAccountIdentifier:v6 fixedNumberOfLatestTransactions:a4];
    dataProvider = v7->_dataProvider;
    v7->_dataProvider = v8;
  }

  return v7;
}

- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKBankConnectTransactionsAndGroupsProvider;
  v5 = [(FKBankConnectTransactionsAndGroupsProvider *)&v9 init];
  if (v5)
  {
    v6 = [_TtC10FinanceKit29TransactionsAndGroupsProvider makeProviderWithPrimaryAccountIdentifier:v4];
    dataProvider = v5->_dataProvider;
    v5->_dataProvider = v6;
  }

  return v5;
}

@end