@interface ACDAccessPluginManager
- (ACDAccessPluginManager)init;
- (id)_authorizationPluginForAccountType:(id)a3;
- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8;
- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)revokeAllAccessToAccountsOfType:(id)a3 store:(id)a4 withCompletion:(id)a5;
@end

@implementation ACDAccessPluginManager

- (ACDAccessPluginManager)init
{
  v7.receiver = self;
  v7.super_class = ACDAccessPluginManager;
  v2 = [(ACDAccessPluginManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ACDAccessPluginQueue", v3);
    accessPluginQueue = v2->_accessPluginQueue;
    v2->_accessPluginQueue = v4;
  }

  return v2;
}

- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8
{
  v52[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [v14 identifier];
  v20 = [MEMORY[0x277CB8F48] _obsoleteAccountTypeIDsToRemove];
  v21 = [v20 containsObject:v19];

  v22 = _ACDLogSystem();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
  if (v21)
  {
    v40 = v14;
    v24 = v17;
    v25 = v16;
    v26 = v15;
    if (v23)
    {
      [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"No accounts found for account type %@", v19];
    if ([v19 isEqualToString:*MEMORY[0x277CB8C18]])
    {
      v28 = 6;
    }

    else
    {
      v28 = 7;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CB8DC0];
    v51 = *MEMORY[0x277CCA450];
    v52[0] = v27;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v32 = [v29 errorWithDomain:v30 code:v28 userInfo:v31];

    v18[2](v18, 0, v32);
    goto LABEL_15;
  }

  if (v23)
  {
    [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
  }

  v27 = [(ACDAccessPluginManager *)self _authorizationPluginForAccountType:v19];
  if (!v27)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"No access plugin was found that supports the account type %@", v19];
    v40 = v14;
    v24 = v17;
    v25 = v16;
    v26 = v15;
    v35 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CB8DC0];
    v49 = *MEMORY[0x277CCA450];
    v50 = v32;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v38 = [v35 errorWithDomain:v36 code:1 userInfo:v37];

    v18[2](v18, 0, v38);
LABEL_15:
    v15 = v26;
    v16 = v25;
    v17 = v24;
    v14 = v40;
    goto LABEL_16;
  }

  v33 = _ACDLogSystem();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
  }

  accessPluginQueue = self->_accessPluginQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__ACDAccessPluginManager_handleAccessRequestToAccountsOfType_forClient_withOptions_store_allowUserInteraction_completion___block_invoke;
  block[3] = &unk_27848CD20;
  v27 = v27;
  v42 = v27;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  v46 = v17;
  v48 = a7;
  v47 = v18;
  dispatch_async(accessPluginQueue, block);

  v32 = v42;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
}

void __122__ACDAccessPluginManager_handleAccessRequestToAccountsOfType_forClient_withOptions_store_allowUserInteraction_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __122__ACDAccessPluginManager_handleAccessRequestToAccountsOfType_forClient_withOptions_store_allowUserInteraction_completion___block_invoke_2;
  v12[3] = &unk_27848CCF8;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v13 = v2;
  v14 = v9;
  v10 = v2;
  [v3 handleAccessRequestToAccountsOfType:v4 forClient:v5 withOptions:v6 store:v8 allowUserInteraction:v7 completion:v12];
  v11 = _ACDLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __122__ACDAccessPluginManager_handleAccessRequestToAccountsOfType_forClient_withOptions_store_allowUserInteraction_completion___block_invoke_cold_1();
  }

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __122__ACDAccessPluginManager_handleAccessRequestToAccountsOfType_forClient_withOptions_store_allowUserInteraction_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 identifier];
  v15 = _ACDLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
  }

  v16 = [(ACDAccessPluginManager *)self _authorizationPluginForAccountType:v14];
  if (v16)
  {
    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
    }

    accessPluginQueue = self->_accessPluginQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke;
    block[3] = &unk_27848C380;
    v26 = v16;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    dispatch_async(accessPluginQueue, block);

    v19 = v26;
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"No access plugin was found that supports the account type %@", v14];
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CB8DC0];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v23 = [v20 errorWithDomain:v21 code:1 userInfo:v22];

    (*(v13 + 2))(v13, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_2;
  v10[3] = &unk_27848CCF8;
  v7 = *(a1 + 64);
  v11 = v2;
  v12 = v7;
  v8 = v2;
  [v3 authorizeAccessToAccountsOfType:v4 forClient:v5 store:v6 completion:v10];
  v9 = _ACDLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_cold_1();
  }

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _ACDLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_2_cold_1(a2);
  }

  (*(*(a1 + 40) + 16))();
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 identifier];
  v15 = _ACDLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccessPluginManager revokeAccessToAccountsOfType:forClient:store:completion:];
  }

  v16 = [(ACDAccessPluginManager *)self _authorizationPluginForAccountType:v14];
  if (v16)
  {
    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
    }

    accessPluginQueue = self->_accessPluginQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__ACDAccessPluginManager_revokeAccessToAccountsOfType_forClient_store_completion___block_invoke;
    block[3] = &unk_27848C380;
    v26 = v16;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    dispatch_async(accessPluginQueue, block);

    v19 = v26;
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"No access plugin was found that supports the account type %@", v14];
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CB8DC0];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v23 = [v20 errorWithDomain:v21 code:1 userInfo:v22];

    (*(v13 + 2))(v13, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __82__ACDAccessPluginManager_revokeAccessToAccountsOfType_forClient_store_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__ACDAccessPluginManager_revokeAccessToAccountsOfType_forClient_store_completion___block_invoke_2;
  v10[3] = &unk_27848CCF8;
  v7 = *(a1 + 64);
  v11 = v2;
  v12 = v7;
  v8 = v2;
  [v3 revokeAccessToAccountsOfType:v4 forClient:v5 store:v6 completion:v10];
  v9 = _ACDLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __82__ACDAccessPluginManager_revokeAccessToAccountsOfType_forClient_store_completion___block_invoke_cold_1();
  }

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __82__ACDAccessPluginManager_revokeAccessToAccountsOfType_forClient_store_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_2_cold_1(a2);
  }

  (*(*(a1 + 40) + 16))();
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)revokeAllAccessToAccountsOfType:(id)a3 store:(id)a4 withCompletion:(id)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccessPluginManager revokeAllAccessToAccountsOfType:store:withCompletion:];
  }

  v13 = [(ACDAccessPluginManager *)self _authorizationPluginForAccountType:v11];
  if (v13)
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccessPluginManager handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:];
    }

    accessPluginQueue = self->_accessPluginQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__ACDAccessPluginManager_revokeAllAccessToAccountsOfType_store_withCompletion___block_invoke;
    block[3] = &unk_27848C358;
    v23 = v13;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    dispatch_async(accessPluginQueue, block);

    v16 = v23;
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"No access plugin was found that supports the account type %@", v11];
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CB8DC0];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];

    (*(v10 + 2))(v10, 0, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __79__ACDAccessPluginManager_revokeAllAccessToAccountsOfType_store_withCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ACDAccessPluginManager_revokeAllAccessToAccountsOfType_store_withCompletion___block_invoke_2;
  v9[3] = &unk_27848CCF8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10 = v2;
  v11 = v6;
  v7 = v2;
  [v3 revokeAllAccessToAccountsOfType:v4 store:v5 withCompletion:v9];
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __79__ACDAccessPluginManager_revokeAllAccessToAccountsOfType_store_withCompletion___block_invoke_cold_1();
  }

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __79__ACDAccessPluginManager_revokeAllAccessToAccountsOfType_store_withCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_2_cold_1(a2);
  }

  (*(*(a1 + 40) + 16))();
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_authorizationPluginForAccountType:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  accessPlugins = v5->_accessPlugins;
  if (!accessPlugins)
  {
    v7 = [(ACPluginLoader *)ACDPluginLoader pluginBundlesAtSubpath:@"Access"];
    v8 = v5->_accessPlugins;
    v5->_accessPlugins = v7;

    accessPlugins = v5->_accessPlugins;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = accessPlugins;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v12 = *v26;
    *&v11 = 138412546;
    v22 = v11;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 principalClass];
        v16 = _ACDLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v14 bundleURL];
          *buf = v22;
          v30 = v18;
          v31 = 2112;
          v32 = v4;
          _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "Testing if plugin %@ supports account type %@", buf, 0x16u);
        }

        if ([(objc_class *)v15 supportsAccountTypeWithIdentifier:v4])
        {
          v19 = _ACDLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [ACDAccessPluginManager _authorizationPluginForAccountType:];
          }

          v10 = objc_alloc_init(v15);
          goto LABEL_19;
        }

        v17 = _ACDLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(ACDAccessPluginManager *)&v23 _authorizationPluginForAccountType:v24, v17];
        }
      }

      v10 = [(NSSet *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  objc_sync_exit(v5);
  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_221D2F000, v0, v1, "Looking for plugin to authorize access to account type %@ for %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessRequestToAccountsOfType:forClient:withOptions:store:allowUserInteraction:completion:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "Account type %@ has been obsoleted and accounts and authorization plugins removed, returning no accounts error", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __85__ACDAccessPluginManager_authorizeAccessToAccountsOfType_forClient_store_completion___block_invoke_2_cold_1(char a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "Plugin result handler called with result %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)revokeAccessToAccountsOfType:forClient:store:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_221D2F000, v0, v1, "Looking for plugin to revoke access to account type %@ for %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)revokeAllAccessToAccountsOfType:store:withCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "Looking for plugin to revoke ALL access to account type %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_authorizationPluginForAccountType:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_221D2F000, log, OS_LOG_TYPE_DEBUG, "Account type not supported!", buf, 2u);
}

@end