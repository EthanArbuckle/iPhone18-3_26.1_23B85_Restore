@interface AAUIAuthKitAuthenticatonHook
- (AAUIAuthKitAuthenticatonHook)initWithUsername:(id)a3 altDSID:(id)a4;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (id)_authContextFromAttributes:(id)a3;
- (void)_reauthenticateWithServerAttributes:(id)a3 completion:(id)a4;
- (void)_updateResponseWithAuthResults:(id)a3;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIAuthKitAuthenticatonHook

- (AAUIAuthKitAuthenticatonHook)initWithUsername:(id)a3 altDSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(AAUIAuthKitAuthenticatonHook *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleId, a3);
    objc_storeStrong(&v10->_altDSID, a4);
  }

  return v10;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"ak:auth"];

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

  v7 = [v6 isEqualToString:@"ak:auth"];
  return v7;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(AAUIAuthKitAuthenticatonHook *)self _reauthenticateWithServerAttributes:v7 completion:v6];
}

- (void)_reauthenticateWithServerAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUIAuthKitAuthenticatonHook *)self _authContextFromAttributes:v6];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v9 = v15[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__AAUIAuthKitAuthenticatonHook__reauthenticateWithServerAttributes_completion___block_invoke;
  v11[3] = &unk_1E820DBF8;
  v13 = &v14;
  v10 = v7;
  v11[4] = self;
  v12 = v10;
  [v9 authenticateWithContext:v8 completion:v11];

  _Block_object_dispose(&v14, 8);
}

void __79__AAUIAuthKitAuthenticatonHook__reauthenticateWithServerAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v6)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __79__AAUIAuthKitAuthenticatonHook__reauthenticateWithServerAttributes_completion___block_invoke_cold_1(v6, v9);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_8:
      v11();
    }
  }

  else
  {
    [*(a1 + 32) _updateResponseWithAuthResults:v5];
    v12 = *(a1 + 40);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_8;
    }
  }
}

- (id)_authContextFromAttributes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698DE80]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained presentationContextForHook:self];
  [v5 setPresentingViewController:v7];

  [v5 setAuthenticationType:2];
  [v5 setIsUsernameEditable:0];
  [v5 setAltDSID:self->_altDSID];
  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"username"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 length];
  appleId = v9;
  if (!v10)
  {
    if (![(NSString *)self->_appleId length])
    {
      goto LABEL_8;
    }

    appleId = self->_appleId;
  }

  [v5 setUsername:appleId];
LABEL_8:
  objc_opt_class();
  v12 = [v4 objectForKeyedSubscript:@"authTitle"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([v13 length])
  {
    [v5 setTitle:v13];
  }

  v30 = v9;
  objc_opt_class();
  v14 = [v4 objectForKeyedSubscript:@"authBody"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ([v15 length])
  {
    [v5 setReason:v15];
  }

  v29 = v13;
  objc_opt_class();
  v16 = [v4 objectForKeyedSubscript:@"authOK"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([v17 length])
  {
    [v5 setDefaultButtonString:{v17, v29, v30}];
  }

  objc_opt_class();
  v18 = [v4 objectForKeyedSubscript:@"authIsEphemeral"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    [v5 setIsEphemeral:{objc_msgSend(v19, "BOOLValue")}];
  }

  objc_opt_class();
  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ([v21 length])
  {
    [v5 setForceInlinePresentation:{objc_msgSend(v21, "BOOLValue")}];
  }

  objc_opt_class();
  v22 = [v4 objectForKeyedSubscript:@"forceModalPresentation"];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if ([v23 length])
  {
    [v5 setForceModalPresentation:{objc_msgSend(v23, "BOOLValue")}];
  }

  objc_opt_class();
  v24 = [v4 objectForKeyedSubscript:@"biometric"];
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if ([v25 BOOLValue])
  {
    [v5 setVerifyCredentialReason:3];
    objc_opt_class();
    v26 = [v4 objectForKeyedSubscript:@"passcodeFallback"];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 && ([v27 BOOLValue] & 1) == 0)
    {
      [v5 setBiometricSkipPasscodeFallback:1];
    }
  }

  return v5;
}

- (void)_updateResponseWithAuthResults:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C7038]);
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DB70]];

    v8 = @"biometric";
    if (!v7)
    {
      v8 = @"password";
    }

    v10[0] = @"password";
    v10[1] = @"authType";
    v11[0] = v5;
    v11[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v6 setAdditionalPayload:v9];

    [(AAUIAuthKitAuthenticatonHook *)self setServerHookResponse:v6];
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__AAUIAuthKitAuthenticatonHook__reauthenticateWithServerAttributes_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Error during authentication - %@", &v2, 0xCu);
}

@end