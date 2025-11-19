@interface AAUISignOutController
- (AAUIFinanceKitAdapterProtocol)walletOrderChecker;
- (AAUISignOutController)initWithAccount:(id)a3;
- (AAUISignOutController)initWithCoder:(id)a3;
- (BOOL)_hasOrders;
- (BOOL)_hasPaymentPasses;
- (BOOL)_hasiCloudDriveData;
- (BOOL)_hasiCloudPhotosData;
- (BOOL)_showWalletFooter;
- (NSDictionary)_dataclassOptions;
- (id)_actionableDataclassOptions;
- (id)_appendToSignoutMessage:(id)a3 appendedString:(id)a4;
- (id)_dataclassViewController;
- (id)_signOutMessageSimplified:(BOOL)a3 withConfirmation:(BOOL)a4;
- (id)_spinnerViewControllerForActions:(id)a3;
- (id)messageTextForDataclassPickerViewController:(id)a3;
- (id)titleTextForDataclassPickerViewController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegate_signOutControllerDidCancel;
- (void)_delegate_signOutControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_mainQueue_continueSignOutWithDataclassActions:(id)a3;
- (void)_mainQueue_presentSpinnerPageWithDataclassActions:(id)a3 completion:(id)a4;
- (void)_mainQueue_promptForConfirmationInViewController:(id)a3 simplified:(BOOL)a4 withCompletion:(id)a5;
- (void)dataclassPickerViewController:(id)a3 didCompleteWithDataclassActions:(id)a4;
- (void)prepareInViewController:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AAUISignOutController

- (AAUISignOutController)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AAUISignOutController;
  v6 = [(AAUISignOutController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [(ACAccount *)v7->_account accountStore];
    accountStore = v7->_accountStore;
    v7->_accountStore = v8;
  }

  return v7;
}

- (AAUISignOutController)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AAUISignOutController;
  v5 = [(AAUISignOutController *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [(ACAccount *)v5->_account accountStore];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v5->_accountStore, v9);
    if (!v8)
    {
    }
  }

  return v5;
}

- (void)viewDidLoad
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = AAUISignOutController;
  [(AAUISignOutController *)&v8 viewDidLoad];
  v3 = [(AAUISignOutController *)self _actionableDataclassOptions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AAUISignOutController *)self _dataclassViewController];
    v10[0] = v5;
    v6 = v10;
  }

  else
  {
    v5 = [(AAUISignOutController *)self _spinnerViewControllerForActions:0];
    v9 = v5;
    v6 = &v9;
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(AAUISignOutController *)self setViewControllers:v7 animated:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = AAUISignOutController;
  [(AAUISignOutController *)&v7 viewWillAppear:a3];
  v4 = [(AAUISignOutController *)self viewControllers];
  v5 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(AAUISignOutController *)self _mainQueue_continueSignOutWithDataclassActions:0];
  }
}

- (id)_dataclassViewController
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUISignOutController _dataclassViewController];
  }

  v4 = [AAUIDataclassPickerViewController alloc];
  v5 = [(AAUISignOutController *)self _dataclassOptions];
  v6 = [(AAUIDataclassPickerViewController *)v4 initWithDataclassOptions:v5 account:self->_account];

  v7 = [(AAUISignOutController *)self telemetryFlowID];
  [(AAUIDataclassPickerViewController *)v6 setTelemetryFlowID:v7];

  [(AAUIDataclassPickerViewController *)v6 setDelegate:self];

  return v6;
}

- (id)_spinnerViewControllerForActions:(id)a3
{
  v3 = [a3 allValues];
  v4 = [MEMORY[0x1E6959A58] actionWithType:2];
  v5 = [v3 containsObject:v4];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = @"SIGN_OUT_SPINNER_KEEPING";
  }

  else
  {
    v8 = @"SIGN_OUT_SPINNER_REMOVING";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F447F790 table:@"Localizable"];

  v10 = objc_alloc_init(AAUISpinnerViewController);
  v11 = [(AAUISpinnerViewController *)v10 label];
  [v11 setText:v9];

  return v10;
}

- (id)_signOutMessageSimplified:(BOOL)a3 withConfirmation:(BOOL)a4
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"SIGN_OUT_CONFIRM_MESSAGE"];
    v6 = [v4 localizedStringForKey:v5 value:&stru_1F447F790 table:@"Localizable"];

LABEL_20:
    goto LABEL_21;
  }

  v7 = a4;
  if ([(AAUISignOutController *)self _showWalletFooter])
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v9 localizedStringForKey:@"SIGN_OUT_PASSES_ORDERS" value:&stru_1F447F790 table:@"Localizable"];
  }

  else
  {
    v6 = 0;
  }

  if ([(AAUISignOutController *)self _hasiCloudPhotosData])
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"SIGN_OUT_CLOUDPHOTO"];
    v12 = [v10 localizedStringForKey:v11 value:&stru_1F447F790 table:@"Localizable"];

    if (v6)
    {
      v13 = [(AAUISignOutController *)self _appendToSignoutMessage:v6 appendedString:v12];

      v6 = v13;
    }

    else
    {
      v6 = v12;
    }
  }

  if ([(AAUISignOutController *)self _hasiCloudDriveData])
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"SIGN_OUT_ICLOUD_DRIVE"];
    v16 = [v14 localizedStringForKey:v15 value:&stru_1F447F790 table:@"Localizable"];

    if (v6)
    {
      v17 = [(AAUISignOutController *)self _appendToSignoutMessage:v6 appendedString:v16];

      v6 = v17;
    }

    else
    {
      v6 = v16;
    }
  }

  if (v7)
  {
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"SIGN_OUT_CONFIRM_MESSAGE"];
    v4 = [v18 localizedStringForKey:v19 value:&stru_1F447F790 table:@"Localizable"];

    if (v6)
    {
      v20 = [(AAUISignOutController *)self _appendToSignoutMessage:v6 appendedString:v4];

      v6 = v20;
    }

    else
    {
      v4 = v4;
      v6 = v4;
    }

    goto LABEL_20;
  }

LABEL_21:

  return v6;
}

- (id)_appendToSignoutMessage:(id)a3 appendedString:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v6 length])
  {
    [v6 stringByAppendingFormat:@"\n\n%@", v5];
  }

  else
  {
    [v6 stringByAppendingString:v5];
  }
  v7 = ;

  return v7;
}

- (BOOL)_hasiCloudDriveData
{
  if ([(AAUISignOutController *)self hasiCloudDriveData])
  {
    return 1;
  }

  v4 = [(AAUISignOutController *)self account];
  v5 = [v4 isEnabledForDataclass:*MEMORY[0x1E6959B58]];

  return v5;
}

- (BOOL)_hasiCloudPhotosData
{
  if ([(AAUISignOutController *)self hasiCloudPhotosData])
  {
    return 1;
  }

  v4 = [(AAUISignOutController *)self account];
  if ([v4 isEnabledForDataclass:*MEMORY[0x1E69596D0]])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(AAUISignOutController *)self account];
    if ([v5 isEnabledForDataclass:*MEMORY[0x1E69596A0]])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(AAUISignOutController *)self account];
      v3 = [v6 isEnabledForDataclass:*MEMORY[0x1E69596F0]];
    }
  }

  return v3;
}

- (BOOL)_hasOrders
{
  v3 = [(AAUISignOutController *)self walletOrderChecker];

  if (!v3)
  {
    return 0;
  }

  v4 = [(AAUISignOutController *)self walletOrderChecker];
  v5 = [v4 hasOrders];

  return v5;
}

- (AAUIFinanceKitAdapterProtocol)walletOrderChecker
{
  walletOrderChecker = self->_walletOrderChecker;
  if (!walletOrderChecker)
  {
    v4 = objc_opt_new();
    v5 = self->_walletOrderChecker;
    self->_walletOrderChecker = v4;

    walletOrderChecker = self->_walletOrderChecker;
  }

  return walletOrderChecker;
}

- (BOOL)_hasPaymentPasses
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getPKPassLibraryClass_softClass;
  v12 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getPKPassLibraryClass_block_invoke;
    v8[3] = &unk_1E820BE08;
    v8[4] = &v9;
    __getPKPassLibraryClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v5 = [v4 passesOfType:1];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)_showWalletFooter
{
  if ([(AAUISignOutController *)self _hasPaymentPasses])
  {
    return 1;
  }

  return [(AAUISignOutController *)self _hasOrders];
}

- (NSDictionary)_dataclassOptions
{
  dataclassOptions = self->_dataclassOptions;
  if (!dataclassOptions)
  {
    v4 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountDeletion:self->_account error:0];
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignOutController _dataclassOptions];
    }

    v6 = [v4 aaf_filter:&__block_literal_global_24];
    v7 = [v6 aaf_map:&__block_literal_global_112];
    v8 = self->_dataclassOptions;
    self->_dataclassOptions = v7;

    dataclassOptions = self->_dataclassOptions;
  }

  return dataclassOptions;
}

uint64_t __42__AAUISignOutController__dataclassOptions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6959A58];
  v4 = a3;
  v5 = [v3 actionWithType:3];
  v6 = [v4 containsObject:v5];

  return v6;
}

AAUIDataclassOption *__42__AAUISignOutController__dataclassOptions__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [[AAUIDataclassOption alloc] initWithActions:v3];

  return v4;
}

- (id)_actionableDataclassOptions
{
  v2 = [(AAUISignOutController *)self _dataclassOptions];
  v3 = [v2 aaf_filter:&__block_literal_global_116];

  return v3;
}

- (void)prepareInViewController:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    *buf = 138543362;
    v20 = account;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Preflighting sign out of account %{public}@...", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AAUISignOutController_prepareInViewController_completion___block_invoke;
  aBlock[3] = &unk_1E820C308;
  v10 = v7;
  v18 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(AAUISignOutController *)self _actionableDataclassOptions];
  v13 = [v12 count];

  if (v13)
  {
    v11[2](v11, 1, 0);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__AAUISignOutController_prepareInViewController_completion___block_invoke_2;
    v14[3] = &unk_1E820B708;
    v14[4] = self;
    v15 = v6;
    v16 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

uint64_t __60__AAUISignOutController_prepareInViewController_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_mainQueue_promptForConfirmationInViewController:(id)a3 simplified:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v30[2] = *MEMORY[0x1E69E9840];
  v25 = a5;
  v27 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(AAUISignOutController *)self setModalInPresentation:1];
  v8 = MEMORY[0x1E6985DB0];
  v9 = *MEMORY[0x1E698BA60];
  v10 = [(ACAccount *)self->_account aa_altDSID];
  v11 = [v8 analyticsEventWithName:v9 altDSID:v10 flowID:self->_telemetryFlowID];

  v12 = *MEMORY[0x1E698BB30];
  v30[0] = *MEMORY[0x1E698BB28];
  v30[1] = v12;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v13 = [v26 aaf_arrayAsCommaSeperatedString];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6997818]];

  v14 = [MEMORY[0x1E698B810] reporter];
  [v14 sendEvent:v11];

  v24 = MEMORY[0x1E69DC650];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SIGN_OUT_CONFIRM_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v17 = [(AAUISignOutController *)self _signOutMessageSimplified:v5 withConfirmation:1];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SIGN_OUT_CONFIRM_CANCEL" value:&stru_1F447F790 table:@"Localizable"];
  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"SIGN_OUT_CONFIRM_OK" value:&stru_1F447F790 table:@"Localizable"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __100__AAUISignOutController__mainQueue_promptForConfirmationInViewController_simplified_withCompletion___block_invoke;
  v28[3] = &unk_1E820DE28;
  v28[4] = self;
  v29 = v25;
  v22 = v25;
  v23 = [v24 alertWithTitle:v16 message:v17 cancelButtonTitle:v19 destructiveButtonTitle:v21 actionHandler:v28];

  [v27 presentViewController:v23 animated:1 completion:0];
}

void __100__AAUISignOutController__mainQueue_promptForConfirmationInViewController_simplified_withCompletion___block_invoke(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E6985DB0];
  v5 = *MEMORY[0x1E698BA68];
  v6 = [*(*(a1 + 32) + 1504) aa_altDSID];
  v7 = [v4 analyticsEventWithName:v5 altDSID:v6 flowID:*(*(a1 + 32) + 1512)];

  v8 = _AAUILogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "User opted to cancel sign out.", buf, 2u);
    }

    [v7 setObject:*MEMORY[0x1E698BB28] forKeyedSubscript:*MEMORY[0x1E6997820]];
    v10 = [MEMORY[0x1E698B810] reporter];
    [v10 sendEvent:v7];

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    if (v9)
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Continuing sign out with user-specified dataclass actions.", v14, 2u);
    }

    [v7 setObject:*MEMORY[0x1E698BB30] forKeyedSubscript:*MEMORY[0x1E6997820]];
    v13 = [MEMORY[0x1E698B810] reporter];
    [v13 sendEvent:v7];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_mainQueue_continueSignOutWithDataclassActions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    *buf = 138412546;
    v12 = account;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to sign out account %@ with dataclass actions %@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  accountStore = self->_accountStore;
  v8 = self->_account;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__AAUISignOutController__mainQueue_continueSignOutWithDataclassActions___block_invoke;
  v9[3] = &unk_1E820D308;
  objc_copyWeak(&v10, buf);
  [(ACAccountStore *)accountStore removeAccount:v8 withDataclassActions:v4 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __72__AAUISignOutController__mainQueue_continueSignOutWithDataclassActions___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Removal of account completed with success: %@, error: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AAUISignOutController__mainQueue_continueSignOutWithDataclassActions___block_invoke_139;
  block[3] = &unk_1E820BEE0;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = a2;
  v10 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __72__AAUISignOutController__mainQueue_continueSignOutWithDataclassActions___block_invoke_139(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _delegate_signOutControllerDidCompleteWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)_mainQueue_presentSpinnerPageWithDataclassActions:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(AAUISignOutController *)self _spinnerViewControllerForActions:v6];

  [(AAUISignOutController *)self pushViewController:v7 animated:1];
  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (void)_delegate_signOutControllerDidCancel
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUISignOutController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 signOutControllerDidCancel:self];
  }

  else
  {
    v4 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignOutController _delegate_signOutControllerDidCancel];
    }

    [(AAUISignOutController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signOutControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(AAUISignOutController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 signOutController:self didCompleteWithSuccess:v4 error:v6];
  }

  else
  {
    v8 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignOutController _delegate_signOutControllerDidCompleteWithSuccess:error:];
    }

    [(AAUISignOutController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)titleTextForDataclassPickerViewController:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"SIGN_OUT_TITLE"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];

  return v5;
}

- (id)messageTextForDataclassPickerViewController:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"SIGN_OUT_SUBTITLE"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];

  return v5;
}

- (void)dataclassPickerViewController:(id)a3 didCompleteWithDataclassActions:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__AAUISignOutController_dataclassPickerViewController_didCompleteWithDataclassActions___block_invoke;
  v7[3] = &unk_1E820CCC8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(AAUISignOutController *)self _mainQueue_promptForConfirmationInViewController:self simplified:1 withCompletion:v7];
}

void __87__AAUISignOutController_dataclassPickerViewController_didCompleteWithDataclassActions___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __87__AAUISignOutController_dataclassPickerViewController_didCompleteWithDataclassActions___block_invoke_2;
    v4[3] = &unk_1E820BEB8;
    v4[4] = v3;
    v5 = v2;
    [v3 _mainQueue_presentSpinnerPageWithDataclassActions:v5 completion:v4];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end