@interface AAUIAccountMigrationHook
- (AAUIAccountMigrationHook)initWithAltDSID:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_invokeShieldMigrationFlowWithPendingDOB:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIAccountMigrationHook

- (AAUIAccountMigrationHook)initWithAltDSID:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AAUIAccountMigrationHook;
  v6 = [(AAUIAccountMigrationHook *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, a3);
    v8 = [MEMORY[0x1E6959A48] defaultStore];
    v9 = [v8 aa_appleAccountWithAltDSID:v5];
    appleAccount = v7->_appleAccount;
    v7->_appleAccount = v9;

    v11 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    authController = v7->_authController;
    v7->_authController = v11;
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"age:migration"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 clientInfo];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 isEqualToString:@"age:migration"];
  return v7;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  objc_opt_class();
  v10 = [v9 objectForKeyedSubscript:@"birthday"];

  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = _AAUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountMigrationHook processElement:v12 attributes:v13 objectModel:? completion:?];
  }

  [(AAUIAccountMigrationHook *)self _invokeShieldMigrationFlowWithPendingDOB:v12 completion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 clientInfo];

  v9 = [v8 objectForKeyedSubscript:@"birthday"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountMigrationHook processElement:v10 attributes:v11 objectModel:? completion:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__AAUIAccountMigrationHook_processObjectModel_completion___block_invoke;
  v15[3] = &unk_1E820B708;
  v15[4] = self;
  v16 = v10;
  v17 = v6;
  v13 = v6;
  v14 = v10;
  [WeakRetained dismissObjectModelsAnimated:1 completion:v15];
}

- (void)_invokeShieldMigrationFlowWithPendingDOB:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUIAccountMigrationHook *)self appleAccount];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698DE80]);
    [v9 setAuthenticationType:2];
    [v9 setIsUsernameEditable:0];
    [v9 setAltDSID:self->_altDSID];
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v10 setDateFormat:@"yyyy-MM-dd"];
    v11 = [v10 dateFromString:v6];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E698DC88]) initWithPendingDOB:v11];
      [v9 setAccountMigrationContext:v12];
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy_;
      v23 = __Block_byref_object_dispose_;
      v24 = [(AAUIAccountMigrationHook *)self authController];
      v13 = v20[5];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke;
      v16[3] = &unk_1E820B730;
      v18 = &v19;
      v17 = v7;
      [v13 authenticateWithContext:v9 completion:v16];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AAUIAccountMigrationHook _invokeShieldMigrationFlowWithPendingDOB:v6 completion:v15];
      }

      if (v7)
      {
        (*(v7 + 2))(v7, 0, 0);
      }
    }
  }

  else
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAUIAccountMigrationHook _invokeShieldMigrationFlowWithPendingDOB:v14 completion:?];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

void __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke_cold_1(v5 != 0, v6, v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5 != 0, v6);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processElement:(uint64_t)a1 attributes:(NSObject *)a2 objectModel:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Received migration hook with dob: %@", &v2, 0xCu);
}

- (void)_invokeShieldMigrationFlowWithPendingDOB:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to parse date from string: %@", &v2, 0xCu);
}

void __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "AAUIAccountMigrationHook - authentication came back with success: %@, %@", &v4, 0x16u);
}

@end