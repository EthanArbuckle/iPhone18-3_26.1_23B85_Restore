@interface FKBankConnectTransactionsListProvider
- (FKBankConnectTransactionsListProvider)initWithPrimaryAccountIdentifier:(id)identifier dateFromYear:(id)year groupType:(unint64_t)type;
@end

@implementation FKBankConnectTransactionsListProvider

- (FKBankConnectTransactionsListProvider)initWithPrimaryAccountIdentifier:(id)identifier dateFromYear:(id)year groupType:(unint64_t)type
{
  identifierCopy = identifier;
  yearCopy = year;
  v14.receiver = self;
  v14.super_class = FKBankConnectTransactionsListProvider;
  v10 = [(FKBankConnectTransactionsListProvider *)&v14 init];
  if (v10)
  {
    v11 = [_TtC10FinanceKit24TransactionsListProvider makeProviderWithPrimaryAccountIdentifier:identifierCopy dateFromYear:yearCopy groupType:type];
    dataProvider = v10->_dataProvider;
    v10->_dataProvider = v11;
  }

  return v10;
}

@end