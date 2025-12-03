@interface AAUISignInFlowControllerDelegate
- (AAUISignInFlowControllerDelegate)init;
- (AAUISignInFlowControllerDelegate)initWithPresentingViewController:(id)controller;
- (BOOL)parentViewControllerPresentsErrorAlert;
- (UIViewController)presentingViewController;
- (void)_hasActivationLockSupportedWatchWithCompletion:(id)completion;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success serverInfo:(id)info;
- (void)signInFlowController:(id)controller enableFindMyWithAction:(unint64_t)action completion:(id)completion;
- (void)signInFlowController:(id)controller presentAccountPrivacyOptinForAccount:(id)account userActionCompletion:(id)completion;
- (void)signInFlowController:(id)controller presentDataclassActionsViewForAccount:(id)account withDataclassActionsStore:(id)store completion:(id)completion;
- (void)signInFlowController:(id)controller presentGenericTermsUIForAccount:(id)account completion:(id)completion;
- (void)signInFlowController:(id)controller presentProgressViewForAccount:(id)account completion:(id)completion;
- (void)signInFlowController:(id)controller saveAccount:(id)account withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion;
- (void)signInFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)signInOperationManager:(id)manager didSaveAccount:(id)account error:(id)error;
- (void)welcomeFlowEndedWithResult:(id)result;
@end

@implementation AAUISignInFlowControllerDelegate

- (AAUISignInFlowControllerDelegate)init
{
  v6.receiver = self;
  v6.super_class = AAUISignInFlowControllerDelegate;
  v2 = [(AAUISignInFlowControllerDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    [(AAUISignInFlowControllerDelegate *)v2 setNewSignInFlow:+[AAUIFeatureFlags isSignOutRedesignEnabled]];
  }

  return v2;
}

- (AAUISignInFlowControllerDelegate)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AAUISignInFlowControllerDelegate;
  v5 = [(AAUISignInFlowControllerDelegate *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v5->_accountStore;
    v5->_accountStore = v6;

    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
    [(AAUISignInFlowControllerDelegate *)v5 setNewSignInFlow:+[AAUIFeatureFlags isSignOutRedesignEnabled]];
  }

  return v5;
}

- (BOOL)parentViewControllerPresentsErrorAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)signInFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

    v15 = MEMORY[0x1E69DC650];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__AAUISignInFlowControllerDelegate_signInFlowController_showAlertWithTitle_message_completion___block_invoke;
    v18[3] = &unk_1E820B820;
    v19 = completionCopy;
    v16 = [v15 alertWithTitle:titleCopy message:messageCopy buttonTitle:v14 actionHandler:v18];
    v17 = objc_loadWeakRetained(&self->_presentingViewController);
    [v17 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)signInFlowController:(id)controller saveAccount:(id)account withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion
{
  controllerCopy = controller;
  accountCopy = account;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  if (WeakRetained)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__10;
    v32 = __Block_byref_object_dispose__10;
    v33 = [[AAUISignInOperationManager alloc] initWithPresentingViewController:WeakRetained];
    [v29[5] setDelegate:self];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SAVE_FAILED_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __119__AAUISignInFlowControllerDelegate_signInFlowController_saveAccount_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
    v23 = &unk_1E820CCF0;
    v26 = completionCopy;
    v14 = accountCopy;
    v24 = v14;
    v15 = v13;
    v25 = v15;
    v27 = &v28;
    v16 = _Block_copy(&v20);
    pendingEnableDataclassesCompletion = self->_pendingEnableDataclassesCompletion;
    self->_pendingEnableDataclassesCompletion = v16;

    [v29[5] signInAccount:v14 enablingDataclasses:{1, v20, v21, v22, v23}];
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController _saveAccount:withAllDataclassesEnabledIfPossibleWithCompletion:];
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8005 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v19);
  }
}

void __119__AAUISignInFlowControllerDelegate_signInFlowController_saveAccount_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke(void *a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v3 = a1[5];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v5 = a1[6];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8004 userInfo:v4];
    (*(v5 + 16))(v5, 0, 0, v6);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)signInOperationManager:(id)manager didSaveAccount:(id)account error:(id)error
{
  pendingEnableDataclassesCompletion = self->_pendingEnableDataclassesCompletion;
  if (pendingEnableDataclassesCompletion)
  {
    pendingEnableDataclassesCompletion[2](pendingEnableDataclassesCompletion, account != 0, account, error);
    v7 = self->_pendingEnableDataclassesCompletion;
    self->_pendingEnableDataclassesCompletion = 0;
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController signInOperationManager:didSaveAccount:error:];
    }
  }
}

- (void)signInFlowController:(id)controller enableFindMyWithAction:(unint64_t)action completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__AAUISignInFlowControllerDelegate_signInFlowController_enableFindMyWithAction_completion___block_invoke;
  v9[3] = &unk_1E820CD68;
  v10 = completionCopy;
  actionCopy = action;
  v8 = completionCopy;
  [(AAUISignInFlowControllerDelegate *)self _hasActivationLockSupportedWatchWithCompletion:v9];
}

void __91__AAUISignInFlowControllerDelegate_signInFlowController_enableFindMyWithAction_completion___block_invoke(uint64_t a1, char a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AAUISignInFlowControllerDelegate_signInFlowController_enableFindMyWithAction_completion___block_invoke_2;
  aBlock[3] = &unk_1E820CD18;
  v11 = a2;
  v10 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__AAUISignInFlowControllerDelegate_signInFlowController_enableFindMyWithAction_completion___block_invoke_66;
  v6[3] = &unk_1E820CD40;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __91__AAUISignInFlowControllerDelegate_signInFlowController_enableFindMyWithAction_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Enabling FindMy for newly added account, hasWatch: %{public}@.", &v7, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    v4 = [MEMORY[0x1E699C848] sharedInstance];
    [v4 userNotifiedOfActivationLockForAllPairedDevices];
  }

  v5 = +[AAUIDeviceLocatorService sharedInstance];
  [v5 enableInContext:3];

  return (*(*(a1 + 32) + 16))();
}

- (void)_hasActivationLockSupportedWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__AAUISignInFlowControllerDelegate__hasActivationLockSupportedWatchWithCompletion___block_invoke;
  aBlock[3] = &unk_1E820CAE8;
  v5 = completionCopy;
  aBlock[4] = self;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
  getActivePairedDevice = [mEMORY[0x1E69B36C0] getActivePairedDevice];

  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v10 = [getActivePairedDevice supportsCapability:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__AAUISignInFlowControllerDelegate__hasActivationLockSupportedWatchWithCompletion___block_invoke_2;
    v11[3] = &unk_1E820CB10;
    v12 = v6;
    [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __83__AAUISignInFlowControllerDelegate__hasActivationLockSupportedWatchWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (a2)
    {
      v4 = [v6 localizedStringForKey:@"DEVICE_LOCATOR_MESSAGE_WATCH_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
      (*(v2 + 16))(v2, 1, v4);
    }

    else
    {
      v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_MESSAGE_REBRAND"];
      v5 = [v6 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)signInFlowController:(id)controller presentGenericTermsUIForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (!WeakRetained)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8005 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v18);

    goto LABEL_16;
  }

  if (self->_pendingTermsCompletion)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AAUISignInFlowControllerDelegate signInFlowController:presentGenericTermsUIForAccount:completion:];
    }
  }

  v11 = _Block_copy(completionCopy);
  pendingTermsCompletion = self->_pendingTermsCompletion;
  self->_pendingTermsCompletion = v11;

  v13 = objc_loadWeakRetained(&self->_presentingViewController);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v14 = objc_loadWeakRetained(&self->_presentingViewController);
  topViewController = [v14 topViewController];

  if (!topViewController)
  {
LABEL_11:
    topViewController2 = objc_loadWeakRetained(&self->_presentingViewController);
    goto LABEL_12;
  }

  v16 = objc_loadWeakRetained(&self->_presentingViewController);
  topViewController2 = [v16 topViewController];

LABEL_12:
  requiredTerms = [(AAUISignInFlowControllerDelegate *)self requiredTerms];
  v20 = [requiredTerms count];

  v21 = [AAUIGenericTermsRemoteUI alloc];
  v22 = v21;
  accountStore = self->_accountStore;
  if (v20)
  {
    requiredTerms2 = [(AAUISignInFlowControllerDelegate *)self requiredTerms];
    v25 = [(AAUIGenericTermsRemoteUI *)v22 initWithAccount:accountCopy inStore:accountStore termsEntries:requiredTerms2];
    genericTermsRemoteUI = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v25;
  }

  else
  {
    v27 = [(AAUIGenericTermsRemoteUI *)v21 initWithAccount:accountCopy inStore:self->_accountStore];
    requiredTerms2 = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v27;
  }

  [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
  [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI presentFromViewController:topViewController2 modal:1];

LABEL_16:
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success serverInfo:(id)info
{
  iCopy = i;
  infoCopy = info;
  genericTermsRemoteUI = self->_genericTermsRemoteUI;
  self->_genericTermsRemoteUI = 0;

  pendingTermsCompletion = self->_pendingTermsCompletion;
  if (pendingTermsCompletion)
  {
    v12 = _Block_copy(pendingTermsCompletion);
    v13 = self->_pendingTermsCompletion;
    self->_pendingTermsCompletion = 0;

    if (success)
    {
      account = [iCopy account];
      [account _aa_setTermsServerInfo:infoCopy];
      account2 = [iCopy account];
      (*(v12 + 16))(v12, 1, account2, 0);
    }

    else
    {
      account = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8006 userInfo:0];
      (*(v12 + 16))(v12, 0, 0, account);
    }
  }

  else
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [AAUISignInFlowControllerDelegate genericTermsRemoteUI:didFinishWithSuccess:serverInfo:];
    }
  }
}

- (void)signInFlowController:(id)controller presentProgressViewForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  if (![(AAUISignInFlowControllerDelegate *)self wasProgressViewAlreadyPresented])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke;
    aBlock[3] = &unk_1E820CD90;
    v10 = accountCopy;
    v29 = v10;
    selfCopy = self;
    v11 = _Block_copy(aBlock);
    presentingViewController = [(AAUISignInFlowControllerDelegate *)self presentingViewController];
    objc_opt_class();
    presentingViewController2 = [(AAUISignInFlowControllerDelegate *)self presentingViewController];
    if (objc_opt_isKindOfClass())
    {
      v14 = presentingViewController2;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = v11[2](v11);
        [v14 pushViewController:v19 animated:0];

        v20 = _AAUILogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [AAUISignInFlowControllerDelegate signInFlowController:presentProgressViewForAccount:completion:];
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1);
        }

        goto LABEL_25;
      }

      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [AAUISignInFlowControllerDelegate signInFlowController:presentProgressViewForAccount:completion:];
      }

      v16 = v11[2](v11);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_89;
      v25[3] = &unk_1E820B708;
      v25[4] = self;
      v26 = v10;
      v27 = completionCopy;
      [v14 pushViewController:v16 completion:v25];

      v17 = v26;
    }

    else
    {
      if (!presentingViewController)
      {
        v21 = _AAUILogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [AAUISignInFlowControllerDelegate signInFlowController:presentProgressViewForAccount:completion:];
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_25;
      }

      v18 = v11[2](v11);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_90;
      v22[3] = &unk_1E820B708;
      v22[4] = self;
      v23 = v10;
      v24 = completionCopy;
      [presentingViewController presentViewController:v18 animated:1 completion:v22];

      v17 = v23;
    }

LABEL_25:
    goto LABEL_26;
  }

  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AAUISignInFlowControllerDelegate signInFlowController:presentProgressViewForAccount:completion:];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_26:
}

id __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) aa_fullName];
  if (!v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_cold_1();
    }

    v2 = &stru_1F447F790;
  }

  v4 = [AAUISpinnerViewController newSpinnerProgressViewForType:0 fullName:v2 forAccount:*v1];

  return v4;
}

uint64_t __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_89(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_89_cold_1();
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_90(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_90_cold_1();
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)signInFlowController:(id)controller presentAccountPrivacyOptinForAccount:(id)account userActionCompletion:(id)completion
{
  controllerCopy = controller;
  accountCopy = account;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke;
  aBlock[3] = &unk_1E820CDB8;
  v11 = accountCopy;
  v26 = v11;
  v28 = &v29;
  v12 = completionCopy;
  v27 = v12;
  v13 = _Block_copy(aBlock);
  presentingViewController = [(AAUISignInFlowControllerDelegate *)self presentingViewController];
  objc_opt_class();
  presentingViewController2 = [(AAUISignInFlowControllerDelegate *)self presentingViewController];
  if (objc_opt_isKindOfClass())
  {
    v16 = presentingViewController2;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (objc_opt_respondsToSelector())
    {
      v30[3] = 0;
      v17 = _AAUILogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [AAUISignInFlowControllerDelegate signInFlowController:presentAccountPrivacyOptinForAccount:userActionCompletion:];
      }

      v18 = v13[2](v13);
      if (v18)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_93;
        v23[3] = &unk_1E820BEB8;
        v23[4] = self;
        v24 = v11;
        [v16 pushViewController:v18 completion:v23];
        v19 = v24;
LABEL_13:
      }
    }

    else
    {
      v18 = v13[2](v13);
      if (v18)
      {
        [v16 pushViewController:v18 animated:0];
        v20 = _AAUILogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [AAUISignInFlowControllerDelegate signInFlowController:presentAccountPrivacyOptinForAccount:userActionCompletion:];
        }
      }
    }
  }

  else if (presentingViewController)
  {
    v18 = v13[2](v13);
    if (v18)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_94;
      v21[3] = &unk_1E820BEB8;
      v21[4] = self;
      v22 = v11;
      [presentingViewController presentViewController:v18 animated:1 completion:v21];
      v19 = v22;
      goto LABEL_13;
    }
  }

  else
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowControllerDelegate signInFlowController:presentAccountPrivacyOptinForAccount:userActionCompletion:];
    }
  }

  _Block_object_dispose(&v29, 8);
}

id __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) aa_altDSID];
  v4 = [MEMORY[0x1E698DE70] newAccountPrivacyOptInViewForFlow:*(*(*(v2 + 16) + 8) + 24) altDSID:v3 userActionCompletion:*(v2 + 8)];
  if (!v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_cold_1();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-15];
      (*(v6 + 16))(v6, 0, v7);
    }
  }

  return v4;
}

void __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_93()
{
  v0 = _AAUILogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_93_cold_1();
  }
}

void __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_94()
{
  v0 = _AAUILogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_94_cold_1();
  }
}

- (void)signInFlowController:(id)controller presentDataclassActionsViewForAccount:(id)account withDataclassActionsStore:(id)store completion:(id)completion
{
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    presentingViewController = [(AAUISignInFlowControllerDelegate *)self presentingViewController];
    objc_opt_class();
    v14 = presentingViewController;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v17 = [[AAUISignInDataclassActionFlow alloc] initWithNavController:v15 account:accountCopy dataclassActionsStore:storeCopy];
    [(AAUISignInDataclassActionFlow *)v17 beginFlowWithInvoker:self];
    v18 = [completionCopy copy];

    pendingSignInDataclassAction = self->_pendingSignInDataclassAction;
    self->_pendingSignInDataclassAction = v18;
  }

  else
  {
    v16 = _AAUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowControllerDelegate signInFlowController:presentDataclassActionsViewForAccount:withDataclassActionsStore:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (void)welcomeFlowEndedWithResult:(id)result
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = resultCopy;
  if (self->_pendingSignInDataclassAction)
  {
    if ([resultCopy outcome])
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowControllerDelegate: User cancelled sign in flow.", &v16, 2u);
      }

      pendingSignInDataclassAction = self->_pendingSignInDataclassAction;
      info = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
      (*(pendingSignInDataclassAction + 2))(pendingSignInDataclassAction, 0, 0, info);
    }

    else
    {
      info = [v5 info];
      v9 = [info valueForKey:*MEMORY[0x1E698B7E8]];
      v10 = v9;
      if (v9)
      {
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        v12 = _AAUILogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 134217984;
          v17 = unsignedIntegerValue;
          _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowControllerDelegate: User selected action is %ld", &v16, 0xCu);
        }

        (*(self->_pendingSignInDataclassAction + 2))();
      }

      else
      {
        v13 = _AAUILogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowControllerDelegate: SignInFlow missing result info. Unable to determine user action.", &v16, 2u);
        }

        v14 = self->_pendingSignInDataclassAction;
        v15 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
        (*(v14 + 2))(v14, 0, 0, v15);
      }
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)genericTermsRemoteUI:didFinishWithSuccess:serverInfo:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_1C5355000, v0, OS_LOG_TYPE_FAULT, "Terms completion for %@ is nil. This should never occur.", v1, 0xCu);
}

- (void)signInFlowController:presentProgressViewForAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)signInFlowController:presentProgressViewForAccount:completion:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_89_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __98__AAUISignInFlowControllerDelegate_signInFlowController_presentProgressViewForAccount_completion___block_invoke_90_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)signInFlowController:presentAccountPrivacyOptinForAccount:userActionCompletion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_93_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __115__AAUISignInFlowControllerDelegate_signInFlowController_presentAccountPrivacyOptinForAccount_userActionCompletion___block_invoke_94_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end