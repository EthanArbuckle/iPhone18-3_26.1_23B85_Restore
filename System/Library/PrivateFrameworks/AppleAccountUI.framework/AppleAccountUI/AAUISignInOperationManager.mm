@interface AAUISignInOperationManager
- (AAUISignInOperationDelegate)delegate;
- (AAUISignInOperationManager)init;
- (AAUISignInOperationManager)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)_alertControllerForPicker:(id)picker completion:(id)completion;
- (id)_dataclassMergeActionPickerFromPicker:(id)picker;
- (id)operationsHelper:(id)helper desiredDataclassActionFromPicker:(id)picker;
- (void)_delegate_signInOperationManagerDidSaveAccount:(id)account error:(id)error;
- (void)_disableDataclasses:(id)dataclasses forAccount:(id)account completion:(id)completion;
- (void)_mainQueue_dataclassActionsForPicker:(id)picker completion:(id)completion;
- (void)_refreshEnabledDataclassesForAccount:(id)account;
- (void)enableDataclasses:(id)dataclasses forAccount:(id)account;
- (void)operationsHelper:(id)helper didRemoveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper willRemoveAccount:(id)account;
- (void)operationsHelper:(id)helper willSaveAccount:(id)account;
- (void)signInAccount:(id)account enablingDataclasses:(BOOL)dataclasses;
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

- (AAUISignInOperationManager)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(AAUISignInOperationManager *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
  }

  return v6;
}

- (void)signInAccount:(id)account enablingDataclasses:(BOOL)dataclasses
{
  dataclassesCopy = dataclasses;
  accountCopy = account;
  v7 = accountCopy;
  if (dataclassesCopy)
  {
    provisionedDataclasses = [accountCopy provisionedDataclasses];
    [(AAUISignInOperationManager *)self enableDataclasses:provisionedDataclasses forAccount:v7];
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

- (void)enableDataclasses:(id)dataclasses forAccount:(id)account
{
  v26 = *MEMORY[0x1E69E9840];
  dataclassesCopy = dataclasses;
  accountCopy = account;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = dataclassesCopy;
    v24 = 2112;
    v25 = accountCopy;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to enable dataclasses (%@) for account (%@)", buf, 0x16u);
  }

  [(AAUISignInOperationManager *)self _refreshEnabledDataclassesForAccount:accountCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = dataclassesCopy;
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
        mEMORY[0x1E698B888] = [MEMORY[0x1E698B888] sharedManager];
        v16 = [mEMORY[0x1E698B888] canAutoEnableDataclass:v14 forAccount:accountCopy];

        if (v16)
        {
          [accountCopy setEnabled:1 forDataclass:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(ACUIAccountOperationsHelper *)self->_accountOperationsHelper saveAccount:accountCopy requireVerification:1];
}

- (void)_refreshEnabledDataclassesForAccount:(id)account
{
  accountCopy = account;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AAUISignInOperationManager *)accountCopy _refreshEnabledDataclassesForAccount:v4];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v6 = [v5 enabledDataclassesForAccount:accountCopy];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    [accountCopy setEnabledDataclasses:v7];
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

- (void)_delegate_signInOperationManagerDidSaveAccount:(id)account error:(id)error
{
  accountCopy = account;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignInOperationManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInOperationManager:self didSaveAccount:accountCopy error:errorCopy];
  }
}

- (void)operationsHelper:(id)helper willSaveAccount:(id)account
{
  v12 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  accountCopy = account;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = helperCopy;
    v10 = 2112;
    v11 = accountCopy;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ willSaveAccount: %@", &v8, 0x16u);
  }
}

- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v29 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  accountCopy = account;
  errorCopy = error;
  v13 = _AAUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *buf = 138413058;
    v22 = helperCopy;
    if (successCopy)
    {
      v14 = @"YES";
    }

    v23 = 2112;
    v24 = accountCopy;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ didSaveAccount: %@ withSuccess: %@ error: %@", buf, 0x2Au);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__AAUISignInOperationManager_operationsHelper_didSaveAccount_withSuccess_error___block_invoke;
  v17[3] = &unk_1E820CC28;
  v20 = successCopy;
  v17[4] = self;
  v18 = accountCopy;
  v19 = errorCopy;
  v15 = errorCopy;
  v16 = accountCopy;
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

- (void)operationsHelper:(id)helper willRemoveAccount:(id)account
{
  v12 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  accountCopy = account;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = helperCopy;
    v10 = 2112;
    v11 = accountCopy;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ willRemoveAccount: %@", &v8, 0x16u);
  }
}

- (void)operationsHelper:(id)helper didRemoveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v22 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  accountCopy = account;
  errorCopy = error;
  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v14 = 138413058;
    v15 = helperCopy;
    v16 = 2112;
    if (successCopy)
    {
      v13 = @"YES";
    }

    v17 = accountCopy;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "operationsHelper: %@ didRemoveAccount: %@ withSuccess: %@ error: %@", &v14, 0x2Au);
  }
}

- (id)operationsHelper:(id)helper desiredDataclassActionFromPicker:(id)picker
{
  v23 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  pickerCopy = picker;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = helperCopy;
    *&buf[12] = 2112;
    *&buf[14] = pickerCopy;
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
  v16 = pickerCopy;
  v17 = v10;
  v18 = buf;
  v11 = v10;
  v12 = pickerCopy;
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

- (id)_dataclassMergeActionPickerFromPicker:(id)picker
{
  pickerCopy = picker;
  if ([pickerCopy hasActionOfType:5] && !objc_msgSend(pickerCopy, "hasDestructiveActions"))
  {
    v5 = [AAUIDataclassMergeActionPicker alloc];
    actions = [pickerCopy actions];
    affectedAccount = [pickerCopy affectedAccount];
    v4 = [(ACUIDataclassActionPicker *)v5 initWithActions:actions affectingAccount:affectedAccount];

    affectedDataclasses = [pickerCopy affectedDataclasses];
    [(ACUIDataclassActionPicker *)v4 setAffectedDataclasses:affectedDataclasses];

    [(AAUIDataclassMergeActionPicker *)v4 setPerformingBatchMerge:1];
  }

  else
  {
    v4 = pickerCopy;
  }

  return v4;
}

- (void)_mainQueue_dataclassActionsForPicker:(id)picker completion:(id)completion
{
  completionCopy = completion;
  pickerCopy = picker;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v9 = [(AAUISignInOperationManager *)self _alertControllerForPicker:pickerCopy completion:completionCopy];

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v9 animated:1 completion:0];
}

- (id)_alertControllerForPicker:(id)picker completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  completionCopy = completion;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v8 = MEMORY[0x1E69DC650];
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    title = [pickerCopy title];
    message = [pickerCopy message];
    v11 = [v8 alertWithTitle:title message:message];
  }

  else
  {
    title = [pickerCopy message];
    v11 = [v8 alertWithTitle:title message:0];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [pickerCopy actions];
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
        v17 = [pickerCopy descriptionForDataclassAction:v16];
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
        v26 = pickerCopy;
        v27 = completionCopy;
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

- (void)_disableDataclasses:(id)dataclasses forAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dataclassesCopy = dataclasses;
  accountCopy = account;
  completionCopy = completion;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [dataclassesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(dataclassesCopy);
        }

        [accountCopy setEnabled:0 forDataclass:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [dataclassesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  completionCopy[2](completionCopy);
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