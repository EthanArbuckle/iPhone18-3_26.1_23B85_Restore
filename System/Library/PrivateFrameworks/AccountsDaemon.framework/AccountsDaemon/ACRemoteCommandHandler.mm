@interface ACRemoteCommandHandler
- (ACRemoteCommandHandler)init;
- (void)_addAccount:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)_authenticateAccount:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)_deleteAccount:(id)a3 withCompletion:(id)a4;
- (void)_fetchAccountsWithCompletion:(id)a3 options:(id)a4;
- (void)_invalidateFetchedAccountsCacheWithCompletion:(id)a3;
- (void)_promptUserForAccountCredential:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)_removeAllAccountsWithCompletion:(id)a3;
- (void)_saveAccount:(id)a3 completion:(id)a4;
- (void)_updateAccount:(id)a3 withCompletion:(id)a4;
- (void)handleCommand:(id)a3 forAccount:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation ACRemoteCommandHandler

- (ACRemoteCommandHandler)init
{
  v6.receiver = self;
  v6.super_class = ACRemoteCommandHandler;
  v2 = [(ACRemoteCommandHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (void)handleCommand:(id)a3 forAccount:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _ACLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteCommandHandler handleCommand:forAccount:options:completion:];
  }

  if ([v10 isEqualToString:*MEMORY[0x277CB8EA0]])
  {
    [(ACRemoteCommandHandler *)self _addAccount:v11 withOptions:v12 completion:v13];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8ED0]])
  {
    [(ACRemoteCommandHandler *)self _updateAccount:v11 withCompletion:v13];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8EC8]])
  {
    [(ACRemoteCommandHandler *)self _promptUserForAccountCredential:v11 withOptions:v12 completion:v13];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8EA8]])
  {
    [(ACRemoteCommandHandler *)self _deleteAccount:v11 withCompletion:v13];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8ED8]])
  {
    [(ACRemoteCommandHandler *)self _authenticateAccount:v11 withOptions:v12 completion:v13];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8EB0]])
  {
    [(ACRemoteCommandHandler *)self _removeAllAccountsWithCompletion:v13];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8EB8]])
  {
    [(ACRemoteCommandHandler *)self _fetchAccountsWithCompletion:v13 options:v12];
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CB8EC0]])
  {
    [(ACRemoteCommandHandler *)self _invalidateFetchedAccountsCacheWithCompletion:v13];
  }
}

- (void)_removeAllAccountsWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0, 0);
  }
}

- (void)_addAccount:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0, 0);
  }
}

- (void)_saveAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accountStore = self->_accountStore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ACRemoteCommandHandler__saveAccount_completion___block_invoke;
  v11[3] = &unk_27848BC58;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(ACAccountStore *)accountStore saveVerifiedAccount:v10 withCompletionHandler:v11];
}

void __50__ACRemoteCommandHandler__saveAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _ACLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __50__ACRemoteCommandHandler__saveAccount_completion___block_invoke_cold_2(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __50__ACRemoteCommandHandler__saveAccount_completion___block_invoke_cold_1(v5, v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, 0, v5);
  }
}

- (void)_updateAccount:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0, 0);
  }
}

- (void)_authenticateAccount:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0, 0);
  }
}

- (void)_promptUserForAccountCredential:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteCommandHandler _promptUserForAccountCredential:withOptions:completion:];
  }

  v12 = [ACRemoteUtilities localAccountMatchingRemoteAccount:v8 inAccountStore:self->_accountStore];
  if (v12)
  {
    v13 = [v9 mutableCopy];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CB90A8]];
    accountStore = self->_accountStore;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__ACRemoteCommandHandler__promptUserForAccountCredential_withOptions_completion___block_invoke;
    v16[3] = &unk_27848BC80;
    v18 = v10;
    v17 = v12;
    [(ACAccountStore *)accountStore renewCredentialsForAccount:v17 options:v13 completion:v16];

    goto LABEL_11;
  }

  v15 = _ACLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [ACRemoteCommandHandler _promptUserForAccountCredential:v15 withOptions:? completion:?];
  }

  if (v10)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:0];
    (*(v10 + 2))(v10, 0, 0, v13);
LABEL_11:
  }
}

void __81__ACRemoteCommandHandler__promptUserForAccountCredential_withOptions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_221D2F000, v6, OS_LOG_TYPE_DEFAULT, "Renewal completed with result: %@. Error: %@", &v13, 0x16u);
  }

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) credential];
    v9 = [v8 credentialItemForKey:*MEMORY[0x277CB8E98]];

    if (!v9)
    {
      v10 = [*(a1 + 32) credential];
      v9 = [v10 credentialItemForKey:*MEMORY[0x277CB8E30]];
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0, v9, v5);
  }

  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __81__ACRemoteCommandHandler__promptUserForAccountCredential_withOptions_completion___block_invoke_cold_1();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAccount:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0, 0);
  }
}

- (void)_fetchAccountsWithCompletion:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteCommandHandler _fetchAccountsWithCompletion:options:];
  }

  accountStore = self->_accountStore;
  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CB8EF0]];

  v11 = [(ACAccountStore *)accountStore accountsWithAccountTypeIdentifiers:0 preloadedProperties:v10 error:0];

  if (v6)
  {
    v6[2](v6, 1, v11, 0);
  }
}

- (void)_invalidateFetchedAccountsCacheWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _ACLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteCommandHandler _invalidateFetchedAccountsCacheWithCompletion:];
  }

  v5 = +[ACDPairedDeviceAccountCache sharedInstance];
  [v5 invalidate];

  if (v3)
  {
    (*(v3 + 2))(v3, 1, 0, 0);
  }

  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteCommandHandler _invalidateFetchedAccountsCacheWithCompletion:];
  }
}

- (void)handleCommand:forAccount:options:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136381443;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called (%@, %@)", v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

void __50__ACRemoteCommandHandler__saveAccount_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Save verified account failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __50__ACRemoteCommandHandler__saveAccount_completion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_promptUserForAccountCredential:withOptions:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__ACRemoteCommandHandler__promptUserForAccountCredential_withOptions_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAccountsWithCompletion:options:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateFetchedAccountsCacheWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateFetchedAccountsCacheWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end