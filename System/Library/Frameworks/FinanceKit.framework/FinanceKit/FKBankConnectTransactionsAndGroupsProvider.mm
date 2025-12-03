@interface FKBankConnectTransactionsAndGroupsProvider
- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)identifier;
- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)identifier fixedNumberOfLatestTransactions:(unint64_t)transactions;
@end

@implementation FKBankConnectTransactionsAndGroupsProvider

- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)identifier fixedNumberOfLatestTransactions:(unint64_t)transactions
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FKBankConnectTransactionsAndGroupsProvider;
  v7 = [(FKBankConnectTransactionsAndGroupsProvider *)&v11 init];
  if (v7)
  {
    v8 = [_TtC10FinanceKit29TransactionsAndGroupsProvider makeProviderWithPrimaryAccountIdentifier:identifierCopy fixedNumberOfLatestTransactions:transactions];
    dataProvider = v7->_dataProvider;
    v7->_dataProvider = v8;
  }

  return v7;
}

- (FKBankConnectTransactionsAndGroupsProvider)initWithPrimaryAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FKBankConnectTransactionsAndGroupsProvider;
  v5 = [(FKBankConnectTransactionsAndGroupsProvider *)&v9 init];
  if (v5)
  {
    v6 = [_TtC10FinanceKit29TransactionsAndGroupsProvider makeProviderWithPrimaryAccountIdentifier:identifierCopy];
    dataProvider = v5->_dataProvider;
    v5->_dataProvider = v6;
  }

  return v5;
}

@end