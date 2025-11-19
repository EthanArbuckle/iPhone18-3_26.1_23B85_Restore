@interface FKWalletExposedDB
- (BOOL)deleteAppleAccountWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteTransactionsWithIdentifiers:(id)a3 forAssociatedAppleAccountWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)insertOrUpdateAccount:(id)a3 error:(id *)a4;
- (BOOL)insertOrUpdateTransactions:(id)a3 forAppleAccountWithID:(id)a4 error:(id *)a5;
- (FKWalletExposedDB)init;
- (id)fetchAppleAccountsWithError:(id *)a3;
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

- (id)fetchAppleAccountsWithError:(id *)a3
{
  v4 = [(FKWalletExposedDB *)self walletExposedDB];
  v5 = [v4 fetchAppleAccountsAndReturnError:a3];

  return v5;
}

- (BOOL)insertOrUpdateAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FKWalletExposedDB *)self walletExposedDB];
  v11 = 0;
  [v7 insertOrUpdateWithAppleAccount:v6 error:&v11];

  v8 = v11;
  if (a4)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v8 == 0;
}

- (BOOL)deleteAppleAccountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FKWalletExposedDB *)self walletExposedDB];
  v11 = 0;
  [v7 deleteAppleAccountWith:v6 error:&v11];

  v8 = v11;
  if (a4)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v8 == 0;
}

- (BOOL)insertOrUpdateTransactions:(id)a3 forAppleAccountWithID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(FKWalletExposedDB *)self walletExposedDB];
  v14 = 0;
  [v10 insertOrUpdateTransactions:v9 forAppleAccountWithID:v8 error:&v14];

  v11 = v14;
  if (a5)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v11 == 0;
}

- (BOOL)deleteTransactionsWithIdentifiers:(id)a3 forAssociatedAppleAccountWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(FKWalletExposedDB *)self walletExposedDB];
  v14 = 0;
  [v10 deleteTransactionsWithIdentifiers:v9 forAppleAccountIdentifier:v8 error:&v14];

  v11 = v14;
  if (a5)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v11 == 0;
}

- (void)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7198000, a2, OS_LOG_TYPE_ERROR, "Error initializing WalletExposedDB: %@", &v2, 0xCu);
}

@end