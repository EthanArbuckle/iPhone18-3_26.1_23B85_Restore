@interface FKBankConnectTransactionsListProvider
- (FKBankConnectTransactionsListProvider)initWithPrimaryAccountIdentifier:(id)a3 dateFromYear:(id)a4 groupType:(unint64_t)a5;
@end

@implementation FKBankConnectTransactionsListProvider

- (FKBankConnectTransactionsListProvider)initWithPrimaryAccountIdentifier:(id)a3 dateFromYear:(id)a4 groupType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = FKBankConnectTransactionsListProvider;
  v10 = [(FKBankConnectTransactionsListProvider *)&v14 init];
  if (v10)
  {
    v11 = [_TtC10FinanceKit24TransactionsListProvider makeProviderWithPrimaryAccountIdentifier:v8 dateFromYear:v9 groupType:a5];
    dataProvider = v10->_dataProvider;
    v10->_dataProvider = v11;
  }

  return v10;
}

@end