@interface AAUISecurityCodeVerifyHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_verifySecurityCodeWithServerAttributes:(id)a3 completion:(id)a4;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUISecurityCodeVerifyHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"icsc:verify"];

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

  v7 = [v6 isEqualToString:@"icsc:verify"];
  return v7;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(AAUISecurityCodeVerifyHook *)self _verifySecurityCodeWithServerAttributes:v7 completion:v6];
}

- (void)_verifySecurityCodeWithServerAttributes:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Verifying security code with server attributes (%@)", buf, 0xCu);
  }

  v9 = [(AAUISecurityCodeVerifyHook *)self delegate];
  v10 = [v9 presentationContextForHook:self];

  v11 = [[AAUID2DEncryptionFlowContext alloc] initWithType:7];
  objc_opt_class();
  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 BOOLValue];
  if (v14)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  [(CDPUIDeviceToDeviceEncryptionFlowContext *)v11 setForceInlinePresentation:isKindOfClass & 1];
  v16 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v11 withPresentingViewController:v10];
  v17 = objc_alloc_init(MEMORY[0x1E69C7038]);
  serverHookResponse = self->_serverHookResponse;
  self->_serverHookResponse = v17;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke;
  v21[3] = &unk_1E820C960;
  v22 = v11;
  v23 = self;
  v24 = v7;
  v19 = v7;
  v20 = v11;
  [(AAUIManateeStateValidator *)v16 verifyAndRepairManateeWithCompletion:v21];
}

void __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Successfully verified or repaired security code, will attempt to respond with PET", &v15, 2u);
    }

    v8 = [*(a1 + 32) repairContext];
    v9 = [v8 cachedLocalSecret];

    v10 = [*(a1 + 32) repairContext];
    v7 = [v10 passwordEquivToken];

    v11 = _AAUILogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9 && v7)
    {
      if (v12)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Determined that local secret was created or validated, attaching PET to server hook response", &v15, 2u);
      }

      v11 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"password"];
      [*(*(a1 + 40) + 16) setAdditionalPayload:v11];
    }

    else if (v12)
    {
      v13 = @"NO";
      if (v9)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (v7)
      {
        v13 = @"YES";
      }

      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Unable to attach PET to server hook response (hasCachedLocalSecret: %@, hasPET: %@)", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke_cold_1(v5, v7);
  }

  (*(*(a1 + 48) + 16))();
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to verify and repair security code with error: %@", &v2, 0xCu);
}

@end