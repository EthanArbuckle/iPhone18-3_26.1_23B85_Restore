@interface AAUIAccountConversionHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_navigateBackToStartWithCompletion:(id)completion;
- (void)_signOutAccountsWithAccount:(id)account shouldRemoveAppleAccount:(BOOL)appleAccount viewController:(id)controller completion:(id)completion;
- (void)_signOutWithAttributes:(id)attributes completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
- (void)signOutPrimaryAccountWithShouldRetainTrust:(BOOL)trust viewController:(id)controller completion:(id)completion;
@end

@implementation AAUIAccountConversionHook

- (BOOL)shouldMatchElement:(id)element
{
  elementCopy = element;
  if (+[AAUIFeatureFlags isConvertToMAIDEnabled])
  {
    name = [elementCopy name];
    if ([name isEqualToString:@"account:signout"])
    {
      v5 = 1;
    }

    else
    {
      name2 = [elementCopy name];
      v5 = [name2 isEqualToString:@"account:navigateToSignIn"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  if (+[AAUIFeatureFlags isConvertToMAIDEnabled])
  {
    objc_opt_class();
    clientInfo = [modelCopy clientInfo];
    v5 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if ([v6 isEqualToString:@"account:signout"])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 isEqualToString:@"account:navigateToSignIn"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  elementCopy = element;
  attributesCopy = attributes;
  completionCopy = completion;
  name = [elementCopy name];
  v12 = [name isEqualToString:@"account:signout"];

  if (v12)
  {
    [(AAUIAccountConversionHook *)self _signOutWithAttributes:attributesCopy completion:completionCopy];
  }

  else
  {
    name2 = [elementCopy name];
    v14 = [name2 isEqualToString:@"account:navigateToSignIn"];

    if (v14)
    {
      [(AAUIAccountConversionHook *)self _navigateBackToStartWithCompletion:completionCopy];
    }
  }
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];
  v8 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 isEqualToString:@"account:signout"])
  {
    clientInfo2 = [modelCopy clientInfo];
    [(AAUIAccountConversionHook *)self _signOutWithAttributes:clientInfo2 completion:completionCopy];
  }

  else if ([v9 isEqualToString:@"account:navigateToSignIn"])
  {
    [(AAUIAccountConversionHook *)self _navigateBackToStartWithCompletion:completionCopy];
  }
}

- (void)_signOutWithAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  objc_opt_class();
  v8 = [attributesCopy objectForKeyedSubscript:@"retainTrust"];

  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  bOOLValue = [v10 BOOLValue];
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  v12 = [WeakRetained presentationContextForHook:self];
  [(AAUIAccountConversionHook *)self signOutPrimaryAccountWithShouldRetainTrust:bOOLValue viewController:v12 completion:completionCopy];
}

- (void)signOutPrimaryAccountWithShouldRetainTrust:(BOOL)trust viewController:(id)controller completion:(id)completion
{
  trustCopy = trust;
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountConversionHook signOutPrimaryAccountWithShouldRetainTrust:v10 viewController:? completion:?];
  }

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"YES";
      if (trustCopy)
      {
        v14 = @"NO";
      }

      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Account Conversion - Initating sign out with intent to remove the AppleAccount : %@", &v16, 0xCu);
    }

    [(AAUIAccountConversionHook *)self _signOutAccountsWithAccount:aa_primaryAppleAccount shouldRemoveAppleAccount:!trustCopy viewController:controllerCopy completion:completionCopy];
  }

  else
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Account Conversion - The account has already been removed. Move straight to conversion.", &v16, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_signOutAccountsWithAccount:(id)account shouldRemoveAppleAccount:(BOOL)appleAccount viewController:(id)controller completion:(id)completion
{
  appleAccountCopy = appleAccount;
  v33[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  controllerCopy = controller;
  completionCopy = completion;
  v12 = objc_alloc_init(MEMORY[0x1E698C258]);
  [v12 setViewController:controllerCopy];
  v13 = [[AAUIAccountConversionSignOutFlowControllerDelegate alloc] initWithPresentingViewController:controllerCopy shouldRemoveAppleAccount:appleAccountCopy];
  v32 = *MEMORY[0x1E698C218];
  v14 = v32;
  v33[0] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  [v12 setSignOutContexts:v15];

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v17 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:defaultStore];
  serviceOwnersManager = self->_serviceOwnersManager;
  self->_serviceOwnersManager = v17;

  objc_initWeak(&location, self);
  v19 = self->_serviceOwnersManager;
  v20 = [v12 copy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke;
  v25[3] = &unk_1E820CF78;
  objc_copyWeak(&v29, &location);
  v21 = completionCopy;
  v28 = v21;
  v30 = appleAccountCopy;
  v22 = v12;
  v26 = v22;
  v23 = accountCopy;
  v27 = v23;
  [(AIDAServiceOwnerProtocol *)v19 signOutService:v14 withContext:v20 completion:v25];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (WeakRetained)
  {
    if (a2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 64))
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        *buf = 138412290;
        v34 = v9;
        _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Account Conversion - Sign Out of iCloud service returned successfully with shouldRemoveAppleAccount: %@", buf, 0xCu);
      }

      v10 = WeakRetained[1];
      v11 = [*(a1 + 32) copy];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_59;
      v28[3] = &unk_1E820CF50;
      objc_copyWeak(&v32, (a1 + 56));
      v12 = *MEMORY[0x1E698C238];
      v31 = *(a1 + 48);
      v29 = *(a1 + 40);
      v30 = *(a1 + 32);
      [v10 signOutService:v12 withContext:v11 completion:v28];

      objc_destroyWeak(&v32);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_cold_1(v5, v8, v22, v23, v24, v25, v26, v27);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_cold_2(v8, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = *(a1 + 48);
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUIConversionToMAIDErrorDomain" code:-12001 userInfo:0];
    (*(v20 + 16))(v20, 0, v21);
  }
}

void __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_59(id *a1, int a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = _AAUILogSystem();
  v8 = v7;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Account Conversion - Store sign out completed with success %@, error: %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(AAUISignOutUtilities);
    v11 = WeakRetained[1];
    v12 = [a1[4] aa_altDSID];
    v13 = [a1[4] aa_personID];
    v14 = [a1[5] copy];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_61;
    v25[3] = &unk_1E820CF28;
    v15 = a1[6];
    v26 = v10;
    v27 = v15;
    v16 = v10;
    [(AAUISignOutUtilities *)v16 signOutServiceAccountsWithServiceOwnersManager:v11 forAltDSID:v12 DSID:v13 context:v14 completion:v25];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_cold_2(v8, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = a1[6];
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUIConversionToMAIDErrorDomain" code:-12001 userInfo:0];
    v24[2](v24, 0, v16);
  }
}

void __108__AAUIAccountConversionHook__signOutAccountsWithAccount_shouldRemoveAppleAccount_viewController_completion___block_invoke_61(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - Service accounts sign out completed with success %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_navigateBackToStartWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AAUIAccountConversionHook__navigateBackToStartWithCompletion___block_invoke;
  v6[3] = &unk_1E820B780;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __64__AAUIAccountConversionHook__navigateBackToStartWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained presentationContextForHook:*(a1 + 32)];
  v4 = [v3 navigationController];
  [v4 aaui_removeLastViewControllerAnimated:1];

  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AAUIAccountConversionHook__navigateBackToStartWithCompletion___block_invoke_2;
  block[3] = &unk_1E820B820;
  v7 = *(a1 + 40);
  dispatch_async(v5, block);
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end