@interface FKBankConnectOsloProvider
- (FKBankConnectOsloProvider)init;
- (void)init;
@end

@implementation FKBankConnectOsloProvider

- (FKBankConnectOsloProvider)init
{
  v10.receiver = self;
  v10.super_class = FKBankConnectOsloProvider;
  v2 = [(FKBankConnectOsloProvider *)&v10 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v3 = [_TtC10FinanceKit23BankConnectOsloProvider makeProviderAndReturnError:&v9];
  v4 = v9;
  dataProvider = v2->_dataProvider;
  v2->_dataProvider = v3;

  if (v2->_dataProvider)
  {

LABEL_4:
    v6 = v2;
    goto LABEL_8;
  }

  v7 = os_log_create("com.apple.FinanceKit", "BankConnect");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(FKBankConnectOsloProvider *)v4 init];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B7198000, a2, OS_LOG_TYPE_ERROR, "Error initializing FKBankConnectAccountBalancesProvider: %@", &v2, 0xCu);
}

@end