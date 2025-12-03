@interface FKBankConnectAccountsProvider
- (FKBankConnectAccountsProvider)initWithPrimaryAccountIdentifier:(id)identifier;
@end

@implementation FKBankConnectAccountsProvider

- (FKBankConnectAccountsProvider)initWithPrimaryAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FKBankConnectAccountsProvider;
  v5 = [(FKBankConnectAccountsProvider *)&v11 init];
  if (v5 && ([_TtC10FinanceKit27BankConnectAccountsProvider makeProviderWithPrimaryAccountIdentifier:identifierCopy], v6 = objc_claimAutoreleasedReturnValue(), dataProvider = v5->_dataProvider, v5->_dataProvider = v6, dataProvider, !v5->_dataProvider))
  {
    v9 = os_log_create("com.apple.FinanceKit", "BankConnect");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FKBankConnectAccountsProvider initWithPrimaryAccountIdentifier:v9];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)initWithPrimaryAccountIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_1B7198000, log, OS_LOG_TYPE_ERROR, "Error initializing FKBankConnectAccountsProvider: %@", &v1, 0xCu);
}

@end