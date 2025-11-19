@interface AAUIAccountConversionSignOutFlowControllerDelegate
- (AAUIAccountConversionSignOutFlowControllerDelegate)init;
- (AAUIAccountConversionSignOutFlowControllerDelegate)initWithPresentingViewController:(id)a3 shouldRemoveAppleAccount:(BOOL)a4;
- (UIViewController)presentingViewController;
- (void)_completedRestoreFromiCloud:(id)a3;
- (void)_disableDeviceLocatorForAccount:(id)a3 inViewController:(id)a4 completion:(id)a5;
- (void)signOutController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)signOutControllerDidCancel:(id)a3;
- (void)signOutFlowController:(id)a3 disableFindMyDeviceForAccount:(id)a4 completion:(id)a5;
- (void)signOutFlowController:(id)a3 performWalrusValidationForAccount:(id)a4 completion:(id)a5;
- (void)signOutFlowController:(id)a3 showAlertWithTitle:(id)a4 message:(id)a5 completion:(id)a6;
- (void)signOutFlowController:(id)a3 signOutAccount:(id)a4 completion:(id)a5;
@end

@implementation AAUIAccountConversionSignOutFlowControllerDelegate

- (AAUIAccountConversionSignOutFlowControllerDelegate)init
{
  v6.receiver = self;
  v6.super_class = AAUIAccountConversionSignOutFlowControllerDelegate;
  v2 = [(AAUIAccountConversionSignOutFlowControllerDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v2->_shouldRemoveAppleAccount = 1;
  }

  return v2;
}

- (AAUIAccountConversionSignOutFlowControllerDelegate)initWithPresentingViewController:(id)a3 shouldRemoveAppleAccount:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AAUIAccountConversionSignOutFlowControllerDelegate;
  v7 = [(AAUIAccountConversionSignOutFlowControllerDelegate *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v7->_accountStore;
    v7->_accountStore = v8;

    objc_storeWeak(&v7->_presentingViewController, v6);
    v7->_shouldRemoveAppleAccount = a4;
  }

  return v7;
}

- (void)signOutFlowController:(id)a3 showAlertWithTitle:(id)a4 message:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

    v15 = MEMORY[0x1E69DC650];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_showAlertWithTitle_message_completion___block_invoke;
    v18[3] = &unk_1E820B820;
    v19 = v11;
    v16 = [v15 alertWithTitle:v9 message:v10 buttonTitle:v14 actionHandler:v18];
    v17 = objc_loadWeakRetained(&self->_presentingViewController);
    [v17 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (void)signOutFlowController:(id)a3 disableFindMyDeviceForAccount:(id)a4 completion:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Account Conversion - Attempting to disableFindMyDevice for %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke;
  v12[3] = &unk_1E820C5D0;
  v13 = v7;
  v14 = v8;
  v12[4] = self;
  v10 = v7;
  v11 = v8;
  [(AAUIAccountConversionSignOutFlowControllerDelegate *)self _completedRestoreFromiCloud:v12];
}

void __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - Device is restoring from iCloud but allowing account removal anyways", buf, 2u);
    }
  }

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Account Conversion - Starting to refresh current FMIP state...", buf, 2u);
  }

  v8 = +[AAUIDeviceLocatorService sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_44;
  v12[3] = &unk_1E820C5A8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14 = v9;
  v12[4] = v10;
  v13 = v11;
  [v8 refreshCurrentState:v12];
}

void __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = a2;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Account Conversion - FMIP state came back as %lu", buf, 0xCu);
  }

  v5 = +[AAUIDeviceLocatorService sharedInstance];
  v6 = [v5 isStateKnown];

  if ((v6 & 1) == 0)
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Account Conversion - FMiP state is unknown, stopping converison.", buf, 2u);
    }

    v14 = *(a1 + 48);
    WeakRetained = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
    (*(v14 + 16))(v14, 0, WeakRetained);
    goto LABEL_17;
  }

  v7 = +[AAUIDeviceLocatorService sharedInstance];
  v8 = [v7 isEnabled];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    if (WeakRetained)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_46;
      v18[3] = &unk_1E820C308;
      v19 = *(a1 + 48);
      [v10 _disableDeviceLocatorForAccount:v11 inViewController:WeakRetained completion:v18];
      v12 = v19;
    }

    else
    {
      v16 = _AAUILogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "Account Conversion - No view controller provided for sign out, unable to disable FMiP.", buf, 2u);
      }

      v17 = *(a1 + 48);
      v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
      (*(v17 + 16))(v17, 0, v12);
    }

LABEL_17:
    return;
  }

  v15 = _AAUILogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Account Conversion - Device locator not enabled, allowing account removal.", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_46(uint64_t a1, int a2, void *a3)
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
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - Device locator disabled with success %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_disableDeviceLocatorForAccount:(id)a3 inViewController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke;
  v9[3] = &unk_1E820C620;
  v10 = v7;
  v8 = v7;
  [AAUIDeviceLocatorConfirmationUtilities showDisableAlertForAccount:a3 presentingViewController:a4 withCompletion:v9];
}

void __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - User canceled FMiP password prompt.", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = +[AAUIDeviceLocatorService sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke_56;
    v8[3] = &unk_1E820C5F8;
    v9 = *(a1 + 32);
    [v7 disableInContext:2 withWipeToken:v5 completion:v8];
  }
}

void __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke_56(uint64_t a1, int a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Account Conversion - Failed to disable FMiP for account deletion.", buf, 2u);
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
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Account Conversion - Successfully disabled FMiP for account deletion!", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)signOutFlowController:(id)a3 signOutAccount:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  shouldRemoveAppleAccount = self->_shouldRemoveAppleAccount;
  v10 = _AAUILogSystem();
  v11 = v10;
  if (shouldRemoveAppleAccount)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Account Conversion - Removing Apple Account", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke;
    block[3] = &unk_1E820B708;
    v13 = v7;
    v14 = self;
    v15 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AAUIAccountConversionSignOutFlowControllerDelegate signOutFlowController:v11 signOutAccount:? completion:?];
    }

    (*(v8 + 2))(v8, 1, 0);
  }
}

void __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [[AAUISignOutController alloc] initWithAccount:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DF20] dictionary];
  [(AAUISignOutController *)v2 _setDataclassOptions:v3];

  [(AAUISignOutController *)v2 setDelegate:*(a1 + 40)];
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2;
  block[3] = &unk_1E820B708;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_async(v4, block);
}

void __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Account Conversion - Attempting to sign out account %@ with no dataclass actions.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);
  v6 = [MEMORY[0x1E695DF20] dictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_61;
  v7[3] = &unk_1E820C308;
  v8 = *(a1 + 48);
  [v5 removeAccount:v4 withDataclassActions:v6 completion:v7];
}

void __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_61(uint64_t a1, int a2, void *a3)
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
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - Removal of account completed with success: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)signOutFlowController:(id)a3 performWalrusValidationForAccount:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AAUIAccountConversionSignOutFlowControllerDelegate signOutFlowController:v6 performWalrusValidationForAccount:? completion:?];
  }

  v5[2](v5, 1, 0);
}

- (void)signOutControllerDidCancel:(id)a3
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    v5 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
    pendingSignOutCompletion[2](pendingSignOutCompletion, 0, v5);

    v6 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }
}

- (void)signOutController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    pendingSignOutCompletion[2](pendingSignOutCompletion, a4, a5);
    v7 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }
}

- (void)_completedRestoreFromiCloud:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _AAUISignpostLogSystem();
  v5 = _AAUISignpostCreate(v4);
  v7 = v6;

  v8 = _AAUISignpostLogSystem();
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SignOutRestoreBackupCheck", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v5;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutRestoreBackupCheck  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E69B1968]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__AAUIAccountConversionSignOutFlowControllerDelegate__completedRestoreFromiCloud___block_invoke;
  v13[3] = &unk_1E820C648;
  v15 = v5;
  v16 = v7;
  v14 = v3;
  v12 = v3;
  [v11 fetchiCloudRestoreIsCompleteWithCompletion:v13];
}

void __82__AAUIAccountConversionSignOutFlowControllerDelegate__completedRestoreFromiCloud___block_invoke(void *a1, int a2, void *a3)
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

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end