@interface FKWalletExposedDB
- (BOOL)deleteAppleAccountWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteTransactionsWithIdentifiers:(id)identifiers forAssociatedAppleAccountWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)insertOrUpdateAccount:(id)account error:(id *)error;
- (BOOL)insertOrUpdateTransactions:(id)transactions forAppleAccountWithID:(id)d error:(id *)error;
- (FKWalletExposedDB)init;
- (id)fetchAppleAccountsWithError:(id *)error;
- (void)init;
@end

@implementation FKWalletExposedDB

- (FKWalletExposedDB)init
{
  v10.receiver = self;
  v10.super_class = FKWalletExposedDB;
  v2 = [(FKWalletExposedDB *)&v10 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v3 = [_TtC10FinanceKit15WalletExposedDB makeClassAndReturnError:&v9];
  v4 = v9;
  walletExposedDB = v2->_walletExposedDB;
  v2->_walletExposedDB = v3;

  if (v2->_walletExposedDB)
  {

LABEL_4:
    v6 = v2;
    goto LABEL_8;
  }

  v7 = os_log_create("com.apple.FinanceKit", "Store");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(FKWalletExposedDB *)v4 init];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)fetchAppleAccountsWithError:(id *)error
{
  walletExposedDB = [(FKWalletExposedDB *)self walletExposedDB];
  v5 = [walletExposedDB fetchAppleAccountsAndReturnError:error];

  return v5;
}

- (BOOL)insertOrUpdateAccount:(id)account error:(id *)error
{
  accountCopy = account;
  walletExposedDB = [(FKWalletExposedDB *)self walletExposedDB];
  v11 = 0;
  [walletExposedDB insertOrUpdateWithAppleAccount:accountCopy error:&v11];

  v8 = v11;
  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  return v8 == 0;
}

- (BOOL)deleteAppleAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  walletExposedDB = [(FKWalletExposedDB *)self walletExposedDB];
  v11 = 0;
  [walletExposedDB deleteAppleAccountWith:identifierCopy error:&v11];

  v8 = v11;
  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  return v8 == 0;
}

- (BOOL)insertOrUpdateTransactions:(id)transactions forAppleAccountWithID:(id)d error:(id *)error
{
  dCopy = d;
  transactionsCopy = transactions;
  walletExposedDB = [(FKWalletExposedDB *)self walletExposedDB];
  v14 = 0;
  [walletExposedDB insertOrUpdateTransactions:transactionsCopy forAppleAccountWithID:dCopy error:&v14];

  v11 = v14;
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  return v11 == 0;
}

- (BOOL)deleteTransactionsWithIdentifiers:(id)identifiers forAssociatedAppleAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  walletExposedDB = [(FKWalletExposedDB *)self walletExposedDB];
  v14 = 0;
  [walletExposedDB deleteTransactionsWithIdentifiers:identifiersCopy forAppleAccountIdentifier:identifierCopy error:&v14];

  v11 = v14;
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  return v11 == 0;
}

- (void)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B7198000, a2, OS_LOG_TYPE_ERROR, "Error initializing WalletExposedDB: %@", &v2, 0xCu);
}

@end