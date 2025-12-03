@interface AAUISignOutFlowControllerDelegate
- (AAUISignOutFlowControllerDelegate)init;
- (AAUISignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller;
- (AAUISignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller backupManagerStore:(id)store;
- (AAUISignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller deviceLocatorUtilities:(id)utilities deviceLocatorService:(id)service;
- (UIViewController)presentingViewController;
- (id)_confirmTitleForDisableDeviceLocatorAlert;
- (id)_messageForDisableDeviceLocatorAlert;
- (id)_recoveryFactorController;
- (void)_completedRestoreFromiCloud:(id)cloud;
- (void)_disableDeviceLocatorForAccount:(id)account inViewController:(id)controller completion:(id)completion;
- (void)_offerManateeRepairWithContext:(id)context completion:(id)completion;
- (void)_performLastDeviceCheckForAccount:(id)account withContext:(id)context completion:(id)completion;
- (void)_presentLastDeviceAlertForAccount:(id)account withRecoveryFactors:(unint64_t)factors withCompletion:(id)completion;
- (void)recoveryFactorController:(id)controller didFinishAddingRecoveryContactWithError:(id)error;
- (void)signOutController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signOutControllerDidCancel:(id)cancel;
- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller startSignOutForAccount:(id)account completion:(id)completion;
- (void)signOutViewController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)welcomeFlowEndedWithResult:(id)result;
@end

@implementation AAUISignOutFlowControllerDelegate

- (AAUISignOutFlowControllerDelegate)init
{
  v11.receiver = self;
  v11.super_class = AAUISignOutFlowControllerDelegate;
  v2 = [(AAUISignOutFlowControllerDelegate *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(AAUIDeviceLocatorConfirmationUtilitiesWrapper);
    deviceLocatorUtilities = v2->_deviceLocatorUtilities;
    v2->_deviceLocatorUtilities = v5;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  telemetryFlowID = v2->_telemetryFlowID;
  v2->_telemetryFlowID = uUIDString;

  return v2;
}

- (AAUISignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = AAUISignOutFlowControllerDelegate;
  v5 = [(AAUISignOutFlowControllerDelegate *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v5->_accountStore;
    v5->_accountStore = v6;

    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
    v8 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
    navController = v5->_navController;
    v5->_navController = v8;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = uUIDString;

    v13 = objc_alloc_init(AAUIDeviceLocatorConfirmationUtilitiesWrapper);
    deviceLocatorUtilities = v5->_deviceLocatorUtilities;
    v5->_deviceLocatorUtilities = v13;
  }

  return v5;
}

- (AAUISignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller deviceLocatorUtilities:(id)utilities deviceLocatorService:(id)service
{
  utilitiesCopy = utilities;
  serviceCopy = service;
  v11 = [(AAUISignOutFlowControllerDelegate *)self initWithPresentingViewController:controller];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deviceLocatorUtilities, utilities);
    objc_storeStrong(&v12->_deviceLocatorService, service);
  }

  return v12;
}

- (AAUISignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller backupManagerStore:(id)store
{
  storeCopy = store;
  v8 = [(AAUISignOutFlowControllerDelegate *)self initWithPresentingViewController:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backupManager, store);
  }

  return v9;
}

- (void)signOutFlowController:(id)controller startSignOutForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    v10 = [objc_alloc(MEMORY[0x1E698B880]) initWithAccount:accountCopy];
    dataclassActionsStore = self->_dataclassActionsStore;
    self->_dataclassActionsStore = v10;

    v12 = [AAUISignOutOrEraseOfferFlow alloc];
    navController = self->_navController;
    v14 = objc_loadWeakRetained(&self->_presentingViewController);
    v15 = [(AAUISignOutOrEraseOfferFlow *)v12 initWithNavController:navController presentingController:v14 account:accountCopy dataclassActionsStore:self->_dataclassActionsStore];

    [(AAUISignOutOrEraseOfferFlow *)v15 beginFlowWithInvoker:self];
    v16 = [completionCopy copy];

    pendingSignOutOfferFlowCompletion = self->_pendingSignOutOfferFlowCompletion;
    self->_pendingSignOutOfferFlowCompletion = v16;
  }

  else
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignOutFlowControllerDelegate signOutFlowController:startSignOutForAccount:completion:];
    }

    v19 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion
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
    v18[2] = __97__AAUISignOutFlowControllerDelegate_signOutFlowController_showAlertWithTitle_message_completion___block_invoke;
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

- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = accountCopy;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to disableFindMyDevice for %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke;
  v12[3] = &unk_1E820C5D0;
  v13 = accountCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = accountCopy;
  v11 = completionCopy;
  [(AAUISignOutFlowControllerDelegate *)self _completedRestoreFromiCloud:v12];
}

void __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Starting to refresh current FMIP state...", buf, 2u);
    }

    v6 = +[AAUIDeviceLocatorService sharedInstance];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_50;
    v12[3] = &unk_1E820C5A8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = v7;
    v12[4] = v8;
    v13 = v9;
    [v6 refreshCurrentState:v12];

    v10 = v14;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Device is restoring from iCloud, not allowing account removal!", buf, 2u);
    }

    v11 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-12];
    (*(v11 + 16))(v11, 0, v10);
  }
}

void __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = a2;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "FMIP state came back as %lu", buf, 0xCu);
  }

  v5 = +[AAUIDeviceLocatorService sharedInstance];
  v6 = [v5 isStateKnown];

  if ((v6 & 1) == 0)
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "FMiP state is unknown, so not allowing account removal!", buf, 2u);
    }

    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
    (*(v14 + 16))(v14, 0, v15);
    goto LABEL_19;
  }

  v7 = +[AAUIDeviceLocatorService sharedInstance];
  v8 = [v7 isEnabled];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v10 = +[AAUIFeatureFlags isSignOutRedesignEnabled];
    v11 = *(a1 + 32);
    if (v10)
    {
      WeakRetained = *(v11 + 48);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v11 + 80));
    }

    v15 = WeakRetained;

    if (v15)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_53;
      v21[3] = &unk_1E820BFF8;
      v17 = *(a1 + 40);
      v21[4] = *(a1 + 32);
      v22 = v17;
      v23 = v15;
      v24 = *(a1 + 48);
      dispatch_async(MEMORY[0x1E69E96A0], v21);
    }

    else
    {
      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "No view controller provided for sign out, unable to disable FMiP!", buf, 2u);
      }

      v19 = *(a1 + 48);
      v20 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
      (*(v19 + 16))(v19, 0, v20);
    }

LABEL_19:

    return;
  }

  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "Device locator not enabled, allowing account removal!", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_53(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_2;
  v4[3] = &unk_1E820C308;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _disableDeviceLocatorForAccount:v2 inViewController:v3 completion:v4];
}

void __100__AAUISignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
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
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Device locator disabled with success %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_disableDeviceLocatorForAccount:(id)account inViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  accountCopy = account;
  v11 = +[AAUIFeatureFlags isSignOutRedesignEnabled];
  v12 = objc_opt_new();
  [v12 setAccount:accountCopy];

  _messageForDisableDeviceLocatorAlert = [(AAUISignOutFlowControllerDelegate *)self _messageForDisableDeviceLocatorAlert];
  [v12 setMessage:_messageForDisableDeviceLocatorAlert];

  _confirmTitleForDisableDeviceLocatorAlert = [(AAUISignOutFlowControllerDelegate *)self _confirmTitleForDisableDeviceLocatorAlert];
  [v12 setButtonTitle:_confirmTitleForDisableDeviceLocatorAlert];

  [v12 setPresentingViewController:controllerCopy];
  telemetryFlowID = [(AAUISignOutFlowControllerDelegate *)self telemetryFlowID];
  [v12 setTelemetryFlowID:telemetryFlowID];

  [v12 setKeepAlertVisible:v11];
  clientID = [(AAUISignOutFlowControllerDelegate *)self clientID];
  [v12 setClientID:clientID];

  deviceLocatorUtilities = self->_deviceLocatorUtilities;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__AAUISignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke;
  v19[3] = &unk_1E820D710;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [(AAUIDeviceLocatorConfirmationUtilitiesProtocol *)deviceLocatorUtilities showDisableAlertForContext:v12 withCompletion:v19];
}

void __97__AAUISignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = [a3 fmipWipeToken];
  if (a2)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "User canceled FMiP password prompt.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 72);
    if (!v7)
    {
      v8 = +[AAUIDeviceLocatorService sharedInstance];
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = v8;

      v7 = *(*(a1 + 32) + 72);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__AAUISignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke_63;
    v11[3] = &unk_1E820C5F8;
    v12 = *(a1 + 40);
    [v7 disableInContext:2 withWipeToken:v5 completion:v11];
  }
}

void __97__AAUISignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke_63(uint64_t a1, int a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Failed to disable FMiP for account deletion.", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Successfully disabled FMiP for account deletion!", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)_messageForDisableDeviceLocatorAlert
{
  v2 = +[AAUIFeatureFlags isSignOutRedesignEnabled];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 localizedStringForKey:@"DISABLE_DEVICE_LOCATOR_SUBTITLE" value:&stru_1F447F790 table:@"Localizable"];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DISABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
    v5 = [v4 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];
  }

  return v5;
}

- (id)_confirmTitleForDisableDeviceLocatorAlert
{
  v2 = +[AAUIFeatureFlags isSignOutRedesignEnabled];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"DISABLE_DEVICE_LOCATOR_CONFIRM";
  }

  else
  {
    v5 = @"DISABLE_DEVICE_LOCATOR_BUTTON";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F447F790 table:@"Localizable"];

  return v6;
}

- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v9 = [[AAUISignOutDataclassActionSpinnerViewController alloc] initWithAccount:accountCopy dataclassActionsStore:self->_dataclassActionsStore];

    [(AAUISignOutDataclassActionSpinnerViewController *)v9 setDelegate:self];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(AAUISignOutDataclassActionSpinnerViewController *)v9 setModalPresentationStyle:2];
      [(AAUISignOutDataclassActionSpinnerViewController *)v9 setModalTransitionStyle:0];
    }

    v12 = _Block_copy(completionCopy);
    pendingSignOutCompletion = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = v12;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke;
    block[3] = &unk_1E820BEB8;
    block[4] = self;
    v24 = v9;
    WeakRetained = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v15 = [[AAUISignOutController alloc] initWithAccount:accountCopy];

    telemetryFlowID = [(AAUISignOutFlowControllerDelegate *)self telemetryFlowID];
    [(AAUISignOutController *)v15 setTelemetryFlowID:telemetryFlowID];

    [(AAUISignOutController *)v15 setDelegate:self];
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 1)
    {
      [(AAUISignOutController *)v15 setModalPresentationStyle:2];
      [(AAUISignOutController *)v15 setModalTransitionStyle:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2;
    v20[3] = &unk_1E820D738;
    v20[4] = self;
    v21 = v15;
    v22 = completionCopy;
    v19 = v15;
    [(AAUISignOutController *)v19 prepareInViewController:WeakRetained completion:v20];
  }
}

void __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _Block_copy(*(a1 + 48));
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_3;
    v11[3] = &unk_1E820BEB8;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2_cold_1(v5, v10);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion
{
  controllerCopy = controller;
  accountCopy = account;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E6985DB0];
  aida_alternateDSID = [accountCopy aida_alternateDSID];
  telemetryFlowID = [(AAUISignOutFlowControllerDelegate *)self telemetryFlowID];
  v14 = [v11 analyticsEventWithName:*MEMORY[0x1E698BA10] altDSID:aida_alternateDSID flowID:telemetryFlowID];

  v15 = objc_alloc_init(MEMORY[0x1E6997808]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke;
  v19[3] = &unk_1E820D788;
  objc_copyWeak(&v24, &location);
  v16 = v14;
  v20 = v16;
  v17 = completionCopy;
  v23 = v17;
  v18 = accountCopy;
  v21 = v18;
  selfCopy = self;
  [v15 walrusStatusWithCompletion:v19];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [a1[4] setObject:v7 forKeyedSubscript:*MEMORY[0x1E6997810]];

  v8 = [MEMORY[0x1E698B810] reporter];
  [v8 sendEvent:a1[4]];

  if (!a2)
  {
    v23 = _AAUILogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke_cold_1(v5, v23);
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
LABEL_8:
    (*(a1[7] + 2))();
    goto LABEL_13;
  }

  if (WeakRetained)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69977E8]);
    v10 = MEMORY[0x1E696AD98];
    v11 = [a1[5] aida_dsid];
    v12 = [v10 numberWithLongLong:{objc_msgSend(v11, "longLongValue")}];
    [v9 setDsid:v12];

    v13 = [a1[5] aida_alternateDSID];
    [v9 setAltDSID:v13];

    v14 = [a1[5] appleID];
    [v9 setAppleID:v14];

    v15 = [a1[6] telemetryFlowID];
    [v9 setTelemetryFlowID:v15];

    v16 = MEMORY[0x1E6985DB0];
    v17 = *MEMORY[0x1E698BA40];
    v18 = [a1[5] aida_alternateDSID];
    v19 = [a1[6] telemetryFlowID];
    v20 = [v16 analyticsEventWithName:v17 altDSID:v18 flowID:v19];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke_86;
    v26[3] = &unk_1E820D760;
    objc_copyWeak(&v31, a1 + 8);
    v21 = v20;
    v27 = v21;
    v28 = a1[5];
    v22 = v9;
    v29 = v22;
    v30 = a1[7];
    [WeakRetained _offerManateeRepairWithContext:v22 completion:v26];

    objc_destroyWeak(&v31);
  }

  else
  {
    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke_cold_2();
    }

    v25 = a1[7];
    v22 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
    v25[2](v25, 0, v22);
  }

LABEL_13:
}

void __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke_86(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      [*(a1 + 32) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
      v8 = [MEMORY[0x1E698B810] reporter];
      [v8 sendEvent:*(a1 + 32)];

      [v7 _performLastDeviceCheckForAccount:*(a1 + 40) withContext:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      v10 = _AALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke_cold_2();
      }

      [*(a1 + 32) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
      v11 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
      [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v11];
      v12 = [MEMORY[0x1E698B810] reporter];
      [v12 sendEvent:*(a1 + 32)];

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    [*(a1 + 32) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v5];
    v9 = [MEMORY[0x1E698B810] reporter];
    [v9 sendEvent:*(a1 + 32)];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_performLastDeviceCheckForAccount:(id)account withContext:(id)context completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AAUISignOutFlowControllerDelegate _performLastDeviceCheckForAccount:withContext:completion:];
  }

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E6997800]);
  v13 = MEMORY[0x1E6985DB0];
  aida_alternateDSID = [accountCopy aida_alternateDSID];
  telemetryFlowID = [(AAUISignOutFlowControllerDelegate *)self telemetryFlowID];
  v16 = [v13 analyticsEventWithName:*MEMORY[0x1E698BA58] altDSID:aida_alternateDSID flowID:telemetryFlowID];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke;
  v21[3] = &unk_1E820D800;
  v17 = v16;
  v22 = v17;
  v18 = contextCopy;
  v23 = v18;
  selfCopy = self;
  v27 = v28;
  v19 = accountCopy;
  v25 = v19;
  v20 = completionCopy;
  v26 = v20;
  [v12 fetchEscrowRecordDevicesWithContext:v18 usingCache:0 completion:v21];

  _Block_object_dispose(v28, 8);
}

void __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x1E6997838]];

  if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isCurrentDevice"), v8, v9))
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Current device is determined to be the last escrow device for context (%@)", buf, 0xCu);
    }

    v12 = [*(a1 + 48) _recoveryFactorController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke_89;
    v19[3] = &unk_1E820D7D8;
    v24 = *(a1 + 72);
    v20 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    v21 = v13;
    v22 = v14;
    v23 = *(a1 + 64);
    [v12 availableRecoveryFactorsWithCompletion:v19];
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = v6 == 0;
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(a1 + 72) + 8) + 24)];
    [*(a1 + 32) setObject:v15 forKeyedSubscript:*MEMORY[0x1E6985E40]];

    v16 = _AAUILogSystem();
    v17 = v16;
    if (v6)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke_cold_1(a1, v6, v17);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke_cold_2();
    }

    v18 = [MEMORY[0x1E698B810] reporter];
    [v18 sendEvent:*(a1 + 32)];

    (*(*(a1 + 64) + 16))();
  }
}

void __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke_89(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 64) + 8) + 24) = v5 == 0;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(a1 + 64) + 8) + 24)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:(a2 >> 2) & 1];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x1E6997830]];

  if ((a2 & 2) != 0)
  {
    v9 = [MEMORY[0x1E698DC80] sharedInstance];
    v10 = [*(a1 + 40) aida_alternateDSID];
    v8 = [v9 numberOfApprovedRecoveryContactsForAltDSID:v10];
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:*MEMORY[0x1E6997828]];

  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v5];
  v12 = [MEMORY[0x1E698B810] reporter];
  [v12 sendEvent:*(a1 + 32)];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke_2;
  block[3] = &unk_1E820D7B0;
  v14 = *(a1 + 40);
  v13 = v14.i64[0];
  v16 = vextq_s8(v14, v14, 8uLL);
  v18 = a2;
  v17 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentLastDeviceAlertForAccount:(id)account withRecoveryFactors:(unint64_t)factors withCompletion:(id)completion
{
  factorsCopy = factors;
  accountCopy = account;
  completionCopy = completion;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AAUISignOutFlowControllerDelegate _presentLastDeviceAlertForAccount:withRecoveryFactors:withCompletion:];
  }

  v10 = MEMORY[0x1E6985DB0];
  v11 = *MEMORY[0x1E698BA60];
  aida_alternateDSID = [accountCopy aida_alternateDSID];
  telemetryFlowID = [(AAUISignOutFlowControllerDelegate *)self telemetryFlowID];
  v64 = [v10 analyticsEventWithName:v11 altDSID:aida_alternateDSID flowID:telemetryFlowID];

  selfCopy = self;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = (factorsCopy & 4) == 0;
  v62 = (factorsCopy & 4) >> 2;
  v16 = @"CONTACT";
  if ((factorsCopy & 4) != 0)
  {
    v16 = @"KEY";
  }

  v17 = MEMORY[0x1E696AEC0];
  if (v15)
  {
    v18 = MEMORY[0x1E698BB18];
  }

  else
  {
    v18 = MEMORY[0x1E698BB20];
  }

  v19 = v16;
  v20 = [v17 stringWithFormat:@"SIGN_OUT_LAST_DEVICE_RECOVERY_%@_TITLE", v19];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIGN_OUT_LAST_DEVICE_RECOVERY_%@_MESSAGE", v19];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIGN_OUT_ADD_RECOVERY_%@_BUTTON", v19];

  [v14 addObject:*v18];
  v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v69 = v20;
  v24 = [v23 localizedStringForKey:v20 value:&stru_1F447F790 table:@"Localizable"];

  v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v68 = v21;
  v26 = [v25 localizedStringForKey:v21 value:&stru_1F447F790 table:@"Localizable"];

  v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v67 = v22;
  v71 = [v27 localizedStringForKey:v22 value:&stru_1F447F790 table:@"Localizable"];

  v28 = MEMORY[0x1E6985DB0];
  v29 = *MEMORY[0x1E698BA68];
  v70 = accountCopy;
  aida_alternateDSID2 = [accountCopy aida_alternateDSID];
  telemetryFlowID2 = [(AAUISignOutFlowControllerDelegate *)self telemetryFlowID];
  v32 = [v28 analyticsEventWithName:v29 altDSID:aida_alternateDSID2 flowID:telemetryFlowID2];

  v65 = v26;
  v66 = v24;
  v33 = [MEMORY[0x1E69DC650] alertWithTitle:v24 message:v26];
  v34 = MEMORY[0x1E69DC648];
  v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"SIGN_OUT_CONFIRMATION_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke;
  v85[3] = &unk_1E820D828;
  v37 = v32;
  v86 = v37;
  v38 = completionCopy;
  v87 = v38;
  v39 = [v34 actionWithTitle:v36 style:2 handler:v85];
  [v33 addAction:v39];

  [v14 addObject:*MEMORY[0x1E698BB30]];
  v40 = MEMORY[0x1E69DC648];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_2;
  v80[3] = &unk_1E820D850;
  v84 = v62;
  v41 = v37;
  v81 = v41;
  selfCopy2 = self;
  v42 = v38;
  v83 = v42;
  v43 = [v40 actionWithTitle:v71 style:0 handler:v80];
  [v33 addAction:v43];

  v44 = MEMORY[0x1E69DC648];
  v45 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v46 = [v45 localizedStringForKey:@"SIGN_OUT_ADD_DATA_RECOVERY_SERVICE_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_4;
  v76[3] = &unk_1E820D878;
  v47 = v41;
  v77 = v47;
  selfCopy3 = self;
  v48 = v42;
  v79 = v48;
  v49 = [v44 actionWithTitle:v46 style:0 handler:v76];
  [v33 addAction:v49];

  [v14 addObject:*MEMORY[0x1E698BB10]];
  v50 = MEMORY[0x1E69DC648];
  v51 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v52 = [v51 localizedStringForKey:@"SIGN_OUT_CANCEL_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_5;
  v73[3] = &unk_1E820D828;
  v53 = v47;
  v74 = v53;
  v54 = v48;
  v75 = v54;
  v55 = [v50 actionWithTitle:v52 style:1 handler:v73];
  [v33 addAction:v55];

  [v14 addObject:*MEMORY[0x1E698BB28]];
  aaf_arrayAsCommaSeperatedString = [v14 aaf_arrayAsCommaSeperatedString];
  [v64 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x1E6997818]];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v64];

  if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    topViewController = [(UINavigationController *)selfCopy->_navController topViewController];

    v59 = v70;
    if (topViewController)
    {
      topViewController2 = [(UINavigationController *)selfCopy->_navController topViewController];
      [topViewController2 presentViewController:v33 animated:1 completion:0];
    }

    else
    {
      v61 = _AAUISignOutLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [AAUISignOutFlowControllerDelegate _presentLastDeviceAlertForAccount:withRecoveryFactors:withCompletion:];
      }

      topViewController2 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-21];
      (*(v54 + 2))(v54, 0, topViewController2);
    }
  }

  else
  {
    topViewController2 = [(AAUISignOutFlowControllerDelegate *)selfCopy presentingViewController];
    [topViewController2 presentViewController:v33 animated:1 completion:0];
    v59 = v70;
  }
}

uint64_t __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setObject:*MEMORY[0x1E698BB30] forKeyedSubscript:*MEMORY[0x1E6997820]];
  v2 = [MEMORY[0x1E698B810] reporter];
  [v2 sendEvent:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6997820];
  if (v2 == 1)
  {
    [v3 setObject:*MEMORY[0x1E698BB20] forKeyedSubscript:v4];
    v5 = [MEMORY[0x1E698B810] reporter];
    [v5 sendEvent:*(a1 + 32)];

    v6 = [*(a1 + 40) _recoveryFactorController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_3;
    v12[3] = &unk_1E820C308;
    v13 = *(a1 + 48);
    [v6 generateRecoveryKeyWithCompletion:v12];
  }

  else
  {
    [v3 setObject:*MEMORY[0x1E698BB18] forKeyedSubscript:v4];
    v7 = [MEMORY[0x1E698B810] reporter];
    [v7 sendEvent:*(a1 + 32)];

    v8 = _Block_copy(*(a1 + 48));
    v9 = *(a1 + 40);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(a1 + 40) _recoveryFactorController];
    [v11 startAddingRecoveryContact];
  }
}

void __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0 underlyingError:a3];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }
}

void __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setObject:*MEMORY[0x1E698BB10] forKeyedSubscript:*MEMORY[0x1E6997820]];
  v2 = [MEMORY[0x1E698B810] reporter];
  [v2 sendEvent:*(a1 + 32)];

  v3 = _Block_copy(*(a1 + 48));
  v4 = *(a1 + 40);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 40) _recoveryFactorController];
  [v6 startAddingDataRecoveryService];
}

void __106__AAUISignOutFlowControllerDelegate__presentLastDeviceAlertForAccount_withRecoveryFactors_withCompletion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setObject:*MEMORY[0x1E698BB28] forKeyedSubscript:*MEMORY[0x1E6997820]];
  v2 = [MEMORY[0x1E698B810] reporter];
  [v2 sendEvent:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
  (*(v3 + 16))(v3, 0, v4);
}

- (void)_offerManateeRepairWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  altDSID = [contextCopy altDSID];
  v8 = [AAUID2DEncryptionFlowContext contextWithType:5 altDSID:altDSID];

  telemetryFlowID = [contextCopy telemetryFlowID];
  [v8 setTelemetryFlowID:telemetryFlowID];

  if (!+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v11 = [AAUIManateeStateValidator alloc];
    presentingViewController = [(AAUISignOutFlowControllerDelegate *)self presentingViewController];
    goto LABEL_5;
  }

  topViewController = [(UINavigationController *)self->_navController topViewController];

  if (topViewController)
  {
    v11 = [AAUIManateeStateValidator alloc];
    presentingViewController = [(UINavigationController *)self->_navController topViewController];
LABEL_5:
    v13 = presentingViewController;
    v14 = [(AAUIManateeStateValidator *)v11 initWithFlowContext:v8 withPresentingViewController:presentingViewController];

    goto LABEL_6;
  }

  v14 = 0;
LABEL_6:
  [(AAUIManateeStateValidator *)v14 setContext:contextCopy];
  [(AAUIManateeStateValidator *)v14 verifyAndRepairManateeWithCompletion:completionCopy];
}

- (id)_recoveryFactorController
{
  recoveryFactorController = self->_recoveryFactorController;
  if (!recoveryFactorController)
  {
    if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
    {
      topViewController = [(UINavigationController *)self->_navController topViewController];

      if (!topViewController)
      {
LABEL_7:
        [(AAUIRecoveryFactorController *)self->_recoveryFactorController setDelegate:self];
        [(AAUIRecoveryFactorController *)self->_recoveryFactorController setTelemetryFlowID:self->_telemetryFlowID];
        recoveryFactorController = self->_recoveryFactorController;
        goto LABEL_8;
      }

      v5 = [AAUIRecoveryFactorController alloc];
      accountManager = self->_accountManager;
      WeakRetained = [(UINavigationController *)self->_navController topViewController];
    }

    else
    {
      v5 = [AAUIRecoveryFactorController alloc];
      accountManager = self->_accountManager;
      WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    }

    v8 = WeakRetained;
    v9 = [(AAUIRecoveryFactorController *)v5 initWithAccountManager:accountManager presentingViewController:WeakRetained];
    v10 = self->_recoveryFactorController;
    self->_recoveryFactorController = v9;

    goto LABEL_7;
  }

LABEL_8:

  return recoveryFactorController;
}

- (void)signOutControllerDidCancel:(id)cancel
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    v5 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
    pendingSignOutCompletion[2](pendingSignOutCompletion, 0, v5);

    v6 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }

  else
  {
    v7 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAUISignOutFlowControllerDelegate signOutControllerDidCancel:];
    }
  }
}

- (void)signOutController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    pendingSignOutCompletion[2](pendingSignOutCompletion, success, error);
    v7 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }

  else
  {
    v8 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUISignOutFlowControllerDelegate signOutControllerDidCancel:];
    }
  }
}

- (void)signOutViewController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    pendingSignOutCompletion[2](pendingSignOutCompletion, success, error);
    v7 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }

  else
  {
    v8 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUISignOutFlowControllerDelegate signOutControllerDidCancel:];
    }
  }
}

- (void)recoveryFactorController:(id)controller didFinishAddingRecoveryContactWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  pendingWalrusValidationCompletion = self->_pendingWalrusValidationCompletion;
  if (pendingWalrusValidationCompletion)
  {
    if (errorCopy)
    {
      pendingWalrusValidationCompletion[2](pendingWalrusValidationCompletion, 0, errorCopy);
    }

    else
    {
      v9 = _Block_copy(pendingWalrusValidationCompletion);
      v10 = objc_alloc_init(MEMORY[0x1E6997808]);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __102__AAUISignOutFlowControllerDelegate_recoveryFactorController_didFinishAddingRecoveryContactWithError___block_invoke;
      v14[3] = &unk_1E820D8A0;
      v15 = v9;
      v11 = v9;
      [v10 walrusStatusWithCompletion:v14];
    }

    v12 = self->_pendingWalrusValidationCompletion;
    self->_pendingWalrusValidationCompletion = 0;

    recoveryFactorController = self->_recoveryFactorController;
    self->_recoveryFactorController = 0;
  }
}

void __102__AAUISignOutFlowControllerDelegate_recoveryFactorController_didFinishAddingRecoveryContactWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:v6 underlyingError:a3];
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)_completedRestoreFromiCloud:(id)cloud
{
  v22 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  v5 = _AAUISignpostLogSystem();
  v6 = _AAUISignpostCreate(v5);
  v8 = v7;

  v9 = _AAUISignpostLogSystem();
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SignOutRestoreBackupCheck", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v6;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutRestoreBackupCheck  enableTelemetry=YES ", buf, 0xCu);
  }

  backupManager = self->_backupManager;
  if (!backupManager)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69B1968]);
    v14 = self->_backupManager;
    self->_backupManager = v13;

    backupManager = self->_backupManager;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__AAUISignOutFlowControllerDelegate__completedRestoreFromiCloud___block_invoke;
  v16[3] = &unk_1E820C648;
  v18 = v6;
  v19 = v8;
  v17 = cloudCopy;
  v15 = cloudCopy;
  [(AAUIMBManagerStore *)backupManager aaui_fetchiCloudRestoreIsCompleteWithCompletion:v16];
}

void __65__AAUISignOutFlowControllerDelegate__completedRestoreFromiCloud___block_invoke(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AAUISignpostGetNanoseconds(a1[5], a1[6]);
  v7 = _AAUISignpostLogSystem();
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v14 = 67240448;
    *v15 = a2;
    *&v15[4] = 1026;
    *&v15[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignOutRestoreBackupCheck", " RestoreIsComplete=%{public,signpost.telemetry:number1,name=RestoreIsComplete}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 0xEu);
  }

  v10 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v5 code];
    v14 = 134218752;
    *v15 = v12;
    *&v15[8] = 2048;
    v16 = v11;
    v17 = 1026;
    v18 = a2;
    v19 = 1026;
    v20 = v13;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutRestoreBackupCheck  RestoreIsComplete=%{public,signpost.telemetry:number1,name=RestoreIsComplete}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 0x22u);
  }

  (*(a1[4] + 16))();
}

- (void)welcomeFlowEndedWithResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (self->_pendingSignOutOfferFlowCompletion)
  {
    if ([resultCopy outcome])
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "User cancelled sign out flow.", v9, 2u);
      }

      pendingSignOutOfferFlowCompletion = self->_pendingSignOutOfferFlowCompletion;
      v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
      pendingSignOutOfferFlowCompletion[2](pendingSignOutOfferFlowCompletion, 0, v8);
    }

    else
    {
      (*(self->_pendingSignOutOfferFlowCompletion + 2))();
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)signOutFlowController:startSignOutForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__AAUISignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Sign out preparation failed with error: %@", &v2, 0xCu);
}

void __104__AAUISignOutFlowControllerDelegate_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to determine walrus status, but not blocking sign out: %@", &v2, 0xCu);
}

void __94__AAUISignOutFlowControllerDelegate__performLastDeviceCheckForAccount_withContext_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C5355000, log, OS_LOG_TYPE_ERROR, "Failed to fetch escrow record devices with context (%@), failing validation: %@", &v4, 0x16u);
}

- (void)_presentLastDeviceAlertForAccount:withRecoveryFactors:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end