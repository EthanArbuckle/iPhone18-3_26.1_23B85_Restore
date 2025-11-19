@interface AAUISignInOperationManager
- (AAUISignInOperationDelegate)delegate;
- (AAUISignInOperationManager)init;
- (AAUISignInOperationManager)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (id)_alertControllerForPicker:(id)a3 completion:(id)a4;
- (id)_dataclassMergeActionPickerFromPicker:(id)a3;
- (id)operationsHelper:(id)a3 desiredDataclassActionFromPicker:(id)a4;
- (void)_delegate_signInOperationManagerDidSaveAccount:(id)a3 error:(id)a4;
- (void)_disableDataclasses:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)_mainQueue_dataclassActionsForPicker:(id)a3 completion:(id)a4;
- (void)_refreshEnabledDataclassesForAccount:(id)a3;
- (void)enableDataclasses:(id)a3 forAccount:(id)a4;
- (void)operationsHelper:(id)a3 didRemoveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6;
- (void)operationsHelper:(id)a3 didSaveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6;
- (void)operationsHelper:(id)a3 willRemoveAccount:(id)a4;
- (void)operationsHelper:(id)a3 willSaveAccount:(id)a4;
- (void)signInAccount:(id)a3 enablingDataclasses:(BOOL)a4;
@end

@implementation AAUISignInOperationManager

- (AAUISignInOperationManager)init
{
  v7.receiver = self;
  v7.super_class = AAUISignInOperationManager;
  v2 = [(AAUISignInOperationManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v4 = [objc_alloc(MEMORY[0x1E69898D8]) initWithAccountStore:v3];
    accountOperationsHelper = v2->_accountOperationsHelper;
    v2->_accountOperationsHelper = v4;

    [(ACUIAccountOperationsHelper *)v2->_accountOperationsHelper setDelegate:v2];
  }

  return v2;
}

- (AAUISignInOperationManager)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v5 = [(AAUISignInOperationManager *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
  }

  return v6;
}

- (void)signInAccount:(id)a3 enablingDataclasses:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v9 = [v6 provisionedDataclasses];
    [(AAUISignInOperationManager *)self enableDataclasses:v9 forAccount:v7];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Sign in operation about to call save, but not enabling dataclasses!", buf, 2u);
    }

    [(ACUIAccountOperationsHelper *)self->_accountOperationsHelper saveAccount:v7 requireVerification:1];
  }
}

- (void)enableDataclasses:(id)a3 forAccount:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to enable dataclasses (%@) for account (%@)", buf, 0x16u);
  }

  [(AAUISignInOperationManager *)self _refreshEnabledDataclassesForAccount:v7];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [MEMORY[0x1E698B888] sharedManager];
        v16 = [v15 canAutoEnableDataclass:v14 forAccount:v7];

        if (v16)
        {
          [v7 setEnabled:1 forDataclass:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(ACUIAccountOperationsHelper *)self->_accountOperationsHelper saveAccount:v7 requireVerification:1];
}

- (void)_refreshEnabledDataclassesForAccount:(id)a3
{
  v3 = a3;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AAUISignInOperationManager *)v3 _refreshEnabledDataclassesForAccount:v4];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v6 = [v5 enabledDataclassesForAccount:v3];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    [v3 setEnabledDataclasses:v7];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInOperationManager _refreshEnabledDataclassesForAccount:v8];
    }
  }
}

- (void)_delegate_signInOperationManagerDidSaveAccount:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(AAUISignInOperationManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 signInOperationManager:self didSaveAccount:v8 error:v6];
  }
}

- (void)operationsHelper:(id)a3 willSaveAccount:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ willSaveAccount: %@", &v8, 0x16u);
  }
}

- (void)operationsHelper:(id)a3 didSaveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _AAUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *buf = 138413058;
    v22 = v10;
    if (v7)
    {
      v14 = @"YES";
    }

    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ didSaveAccount: %@ withSuccess: %@ error: %@", buf, 0x2Au);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__AAUISignInOperationManager_operationsHelper_didSaveAccount_withSuccess_error___block_invoke;
  v17[3] = &unk_1E820CC28;
  v20 = v7;
  v17[4] = self;
  v18 = v11;
  v19 = v12;
  v15 = v12;
  v16 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

uint64_t __80__AAUISignInOperationManager_operationsHelper_didSaveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = *(a1 + 40);
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 48);
    v4 = 0;
  }

  return [v3 _delegate_signInOperationManagerDidSaveAccount:v4 error:v5];
}

- (void)operationsHelper:(id)a3 willRemoveAccount:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ willRemoveAccount: %@", &v8, 0x16u);
  }
}

- (void)operationsHelper:(id)a3 didRemoveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    if (v7)
    {
      v13 = @"YES";
    }

    v17 = v10;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ didRemoveAccount: %@ withSuccess: %@ error: %@", &v14, 0x2Au);
  }
}

- (id)operationsHelper:(id)a3 desiredDataclassActionFromPicker:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ desiredDataclassActionFromPicker: %@", buf, 0x16u);
  }

  v9 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v10 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AAUISignInOperationManager_operationsHelper_desiredDataclassActionFromPicker___block_invoke;
  v15[3] = &unk_1E820CC78;
  v15[4] = self;
  v16 = v7;
  v17 = v10;
  v18 = buf;
  v11 = v10;
  v12 = v7;
  dispatch_async(v9, v15);

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v13 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v13;
}

void __80__AAUISignInOperationManager_operationsHelper_desiredDataclassActionFromPicker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _dataclassMergeActionPickerFromPicker:*(a1 + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__AAUISignInOperationManager_operationsHelper_desiredDataclassActionFromPicker___block_invoke_2;
  v6[3] = &unk_1E820CC50;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 _mainQueue_dataclassActionsForPicker:v3 completion:v6];
}

void __80__AAUISignInOperationManager_operationsHelper_desiredDataclassActionFromPicker___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User selected dataclass action: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_dataclassMergeActionPickerFromPicker:(id)a3
{
  v3 = a3;
  if ([v3 hasActionOfType:5] && !objc_msgSend(v3, "hasDestructiveActions"))
  {
    v5 = [AAUIDataclassMergeActionPicker alloc];
    v6 = [v3 actions];
    v7 = [v3 affectedAccount];
    v4 = [(ACUIDataclassActionPicker *)v5 initWithActions:v6 affectingAccount:v7];

    v8 = [v3 affectedDataclasses];
    [(ACUIDataclassActionPicker *)v4 setAffectedDataclasses:v8];

    [(AAUIDataclassMergeActionPicker *)v4 setPerformingBatchMerge:1];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)_mainQueue_dataclassActionsForPicker:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v9 = [(AAUISignInOperationManager *)self _alertControllerForPicker:v7 completion:v6];

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v9 animated:1 completion:0];
}

- (id)_alertControllerForPicker:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = a4;
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = MEMORY[0x1E69DC650];
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = [v5 title];
    v10 = [v5 message];
    v11 = [v8 alertWithTitle:v9 message:v10];
  }

  else
  {
    v9 = [v5 message];
    v11 = [v8 alertWithTitle:v9 message:0];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v5 actions];
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v5 descriptionForDataclassAction:v16];
        if ([v16 isDestructive])
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        v19 = MEMORY[0x1E69DC648];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __67__AAUISignInOperationManager__alertControllerForPicker_completion___block_invoke;
        v25[3] = &unk_1E820CCA0;
        v25[4] = v16;
        v25[5] = self;
        v26 = v5;
        v27 = v24;
        v20 = [v19 actionWithTitle:v17 style:v18 handler:v25];
        [v11 addAction:v20];
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  return v11;
}

void __67__AAUISignInOperationManager__alertControllerForPicker_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) affectedDataclasses];
    v5 = [*(a1 + 48) affectedAccount];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__AAUISignInOperationManager__alertControllerForPicker_completion___block_invoke_2;
    v6[3] = &unk_1E820B820;
    v7 = *(a1 + 56);
    [v3 _disableDataclasses:v4 forAccount:v5 completion:v6];
  }
}

void __67__AAUISignInOperationManager__alertControllerForPicker_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E6959A58] actionWithType:7];
  (*(v1 + 16))(v1, v2);
}

- (void)_disableDataclasses:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [v8 setEnabled:0 forDataclass:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  v9[2](v9);
}

- (AAUISignInOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)_refreshEnabledDataclassesForAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Refreshing enabled dataclasses for account: %@", &v2, 0xCu);
}

@end