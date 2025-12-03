@interface AAAccountStoreProxy
+ (BOOL)_isAccountDaemonConnectionError:(id)error;
- (void)saveAccount:(id)account onAccountStore:(id)store withCompletionHandler:(id)handler;
@end

@implementation AAAccountStoreProxy

+ (BOOL)_isAccountDaemonConnectionError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 10002)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:*MEMORY[0x1E6959978]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)saveAccount:(id)account onAccountStore:(id)store withCompletionHandler:(id)handler
{
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  v10 = _AAAccountStoreLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AAAccountStoreProxy saveAccount:onAccountStore:withCompletionHandler:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7C9AFD8;
  v15 = storeCopy;
  v16 = accountCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = accountCopy;
  v13 = storeCopy;
  [v13 saveAccount:v12 withCompletionHandler:v14];
}

void __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = _AAAccountStoreLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_1();
  }

  if ([AAAccountStoreProxy _isAccountDaemonConnectionError:v4])
  {
    v6 = _AAAccountStoreLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_2();
    }

    v7 = dispatch_time(0, 333000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_28;
    block[3] = &unk_1E7C9A898;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
  }

  else
  {
LABEL_8:
    (*(a1[6] + 2))();
  }
}

void __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = _AAAccountStoreLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_1();
  }

  if ([AAAccountStoreProxy _isAccountDaemonConnectionError:v4])
  {
    v6 = _AAAccountStoreLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_2();
    }

    v7 = dispatch_time(0, 333000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_31;
    block[3] = &unk_1E7C9ACD0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v18 = *(a1 + 64);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v16 = v13;
    v17 = v12;
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_after(v7, MEMORY[0x1E69E96A0], v14);
  }

  else
  {
LABEL_8:
    (*(*(a1 + 56) + 16))();
  }
}

- (void)saveAccount:onAccountStore:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)saveAccount:onAccountStore:withDataclassActions:doVerify:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end