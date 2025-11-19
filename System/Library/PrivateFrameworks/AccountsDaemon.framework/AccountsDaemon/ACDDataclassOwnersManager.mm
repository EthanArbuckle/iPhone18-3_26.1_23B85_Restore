@interface ACDDataclassOwnersManager
- (ACDDataclassOwnersManager)init;
- (BOOL)isPerformingDataclassActionsForAccount:(id)a3;
- (BOOL)performDataclassActions:(id)a3 forAccount:(id)a4 withChildren:(id)a5 withError:(id *)a6;
- (id)_dataclassOwnersManagerConnection;
- (id)actionsForAddingAccount:(id)a3 affectingDataclass:(id)a4 withError:(id *)a5;
- (id)actionsForDeletingAccount:(id)a3 affectingDataclass:(id)a4 withError:(id *)a5;
- (id)actionsForDisablingDataclass:(id)a3 onAccount:(id)a4 withError:(id *)a5;
- (id)actionsForEnablingDataclass:(id)a3 onAccount:(id)a4 withError:(id *)a5;
- (void)preloadDataclassOwnersWithError:(id *)a3;
@end

@implementation ACDDataclassOwnersManager

- (ACDDataclassOwnersManager)init
{
  v6.receiver = self;
  v6.super_class = ACDDataclassOwnersManager;
  v2 = [(ACDDataclassOwnersManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v3;
  }

  return v2;
}

- (void)preloadDataclassOwnersWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v4 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke;
  v8[3] = &unk_27848D0D8;
  v8[4] = &v9;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_1;
  v7[3] = &unk_27848D0D8;
  v7[4] = &v9;
  [v5 preloadDataclassOwnersWithCompletion:v7];
  if (a3)
  {
    v6 = v10[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)isPerformingDataclassActionsForAccount:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_11];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__ACDDataclassOwnersManager_isPerformingDataclassActionsForAccount___block_invoke_2;
  v8[3] = &unk_27848D120;
  v8[4] = &v9;
  [v6 isPerformingDataclassActionsForAccount:v4 completion:v8];
  LOBYTE(v5) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __68__ACDDataclassOwnersManager_isPerformingDataclassActionsForAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }
}

- (id)actionsForAddingAccount:(id)a3 affectingDataclass:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v10 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__ACDDataclassOwnersManager_actionsForAddingAccount_affectingDataclass_withError___block_invoke;
  v16[3] = &unk_27848D0D8;
  v16[4] = &v23;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__ACDDataclassOwnersManager_actionsForAddingAccount_affectingDataclass_withError___block_invoke_4;
  v15[3] = &unk_27848D148;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 actionsForAddingAccount:v8 affectingDataclass:v9 completion:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __82__ACDDataclassOwnersManager_actionsForAddingAccount_affectingDataclass_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __82__ACDDataclassOwnersManager_actionsForAddingAccount_affectingDataclass_withError___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)actionsForDeletingAccount:(id)a3 affectingDataclass:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v10 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__ACDDataclassOwnersManager_actionsForDeletingAccount_affectingDataclass_withError___block_invoke;
  v16[3] = &unk_27848D0D8;
  v16[4] = &v23;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__ACDDataclassOwnersManager_actionsForDeletingAccount_affectingDataclass_withError___block_invoke_6;
  v15[3] = &unk_27848D148;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 actionsForDeletingAccount:v8 affectingDataclass:v9 completion:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __84__ACDDataclassOwnersManager_actionsForDeletingAccount_affectingDataclass_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __84__ACDDataclassOwnersManager_actionsForDeletingAccount_affectingDataclass_withError___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)actionsForEnablingDataclass:(id)a3 onAccount:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v10 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__ACDDataclassOwnersManager_actionsForEnablingDataclass_onAccount_withError___block_invoke;
  v16[3] = &unk_27848D0D8;
  v16[4] = &v23;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__ACDDataclassOwnersManager_actionsForEnablingDataclass_onAccount_withError___block_invoke_7;
  v15[3] = &unk_27848D148;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 actionsForEnablingDataclass:v8 onAccount:v9 completion:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __77__ACDDataclassOwnersManager_actionsForEnablingDataclass_onAccount_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __77__ACDDataclassOwnersManager_actionsForEnablingDataclass_onAccount_withError___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)actionsForDisablingDataclass:(id)a3 onAccount:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v10 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ACDDataclassOwnersManager_actionsForDisablingDataclass_onAccount_withError___block_invoke;
  v16[3] = &unk_27848D0D8;
  v16[4] = &v23;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__ACDDataclassOwnersManager_actionsForDisablingDataclass_onAccount_withError___block_invoke_8;
  v15[3] = &unk_27848D148;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 actionsForDisablingDataclass:v8 onAccount:v9 completion:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __78__ACDDataclassOwnersManager_actionsForDisablingDataclass_onAccount_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __78__ACDDataclassOwnersManager_actionsForDisablingDataclass_onAccount_withError___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)performDataclassActions:(id)a3 forAccount:(id)a4 withChildren:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 count])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__9;
    v23 = __Block_byref_object_dispose__9;
    v24 = 0;
    v13 = [(ACDDataclassOwnersManager *)self _dataclassOwnersManagerConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__ACDDataclassOwnersManager_performDataclassActions_forAccount_withChildren_withError___block_invoke;
    v18[3] = &unk_27848D0D8;
    v18[4] = &v19;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v18];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __87__ACDDataclassOwnersManager_performDataclassActions_forAccount_withChildren_withError___block_invoke_9;
    v17[3] = &unk_27848D170;
    v17[4] = &v25;
    v17[5] = &v19;
    [v14 performDataclassActions:v10 forAccount:v11 withChildren:v12 completion:v17];
    if (a6)
    {
      *a6 = v20[5];
    }

    v15 = *(v26 + 24);

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

void __87__ACDDataclassOwnersManager_performDataclassActions_forAccount_withChildren_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)_dataclassOwnersManagerConnection
{
  [(NSLock *)self->_connectionLock lock];
  if (!self->_connection)
  {
    v3 = _ACDLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ACDDataclassOwnersManager *)v3 _dataclassOwnersManagerConnection];
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.accounts.dom"];
    connection = self->_connection;
    self->_connection = v4;

    v6 = +[ACDDataclassOwnersManagerInterface XPCInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_15];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&__block_literal_global_18];
    [(NSXPCConnection *)self->_connection resume];
  }

  [(NSLock *)self->_connectionLock unlock];
  v7 = self->_connection;

  return v7;
}

void __62__ACDDataclassOwnersManager__dataclassOwnersManagerConnection__block_invoke()
{
  v0 = _ACDLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__ACDDataclassOwnersManager__dataclassOwnersManagerConnection__block_invoke_cold_1(v0);
  }
}

void __62__ACDDataclassOwnersManager__dataclassOwnersManagerConnection__block_invoke_16()
{
  v0 = _ACDLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEFAULT, "Connection to remote DOM closed.", v1, 2u);
  }
}

void __61__ACDDataclassOwnersManager_preloadDataclassOwnersWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Remote dataclass owners manager returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end