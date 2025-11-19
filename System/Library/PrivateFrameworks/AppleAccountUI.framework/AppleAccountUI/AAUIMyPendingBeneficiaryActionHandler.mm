@interface AAUIMyPendingBeneficiaryActionHandler
- (id)_appleAccount;
- (id)_doneButton;
- (void)_checkMessageEligibility;
- (void)_dismiss;
- (void)_dismissAndNavigateToDateOfBirthSettings;
- (void)_showAlertWithTitle:(id)a3 message:(id)a4;
- (void)_showIncompatibleDeviceAlert;
- (void)_showPrintPreview;
- (void)_showSetupCompleteWithShareTypePrint;
- (void)_startInviteMessageFlow;
- (void)doPrimaryAction:(id)a3 specifier:(id)a4;
- (void)inheritanceDidSelectSharingOption:(unint64_t)a3;
- (void)inviteMessageFlowDidFinish:(id)a3;
- (void)inviteMessageWasSent:(id)a3 completion:(id)a4;
@end

@implementation AAUIMyPendingBeneficiaryActionHandler

- (void)doPrimaryAction:(id)a3 specifier:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v20 = 138412290;
    v21 = v8;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ : Showing Share Access Key Options...", &v20, 0xCu);
  }

  v9 = [AAUIInheritanceShareAccessKeyOptionsViewController alloc];
  v10 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v11 = [v10 firstName];
  v12 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v13 = [v12 handle];
  v14 = [(AAUIInheritanceShareAccessKeyOptionsViewController *)v9 initWithBeneficiaryName:v11 handle:v13];
  shareAccessKeyOptionsViewController = self->_shareAccessKeyOptionsViewController;
  self->_shareAccessKeyOptionsViewController = v14;

  [(AAUIInheritanceShareAccessKeyOptionsViewController *)self->_shareAccessKeyOptionsViewController setFlowDelegate:self];
  [(AAUIInheritanceShareAccessKeyOptionsViewController *)self->_shareAccessKeyOptionsViewController setShowsCancelButton:1];
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    [(AAUIOBTableWelcomeController *)self->_shareAccessKeyOptionsViewController setDelegate:self];
    v16 = [(AAUIOBTableWelcomeController *)self->_shareAccessKeyOptionsViewController primaryButton];
    [v16 setHidden:1];
  }

  v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_shareAccessKeyOptionsViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v17;

  v19 = [v5 navigationController];

  [v19 presentViewController:self->_navigationController animated:1 completion:0];
}

- (void)inheritanceDidSelectSharingOption:(unint64_t)a3
{
  if (a3 == 1)
  {
    [(AAUIMyPendingBeneficiaryActionHandler *)self _showPrintPreview];
  }

  else if (!a3)
  {
    [(AAUIMyPendingBeneficiaryActionHandler *)self _startInviteMessageFlow];
  }
}

- (void)_checkMessageEligibility
{
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x1E698B900]) initWithCapabilityType:2];
  objc_initWeak(&location, self);
  v5 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v6 = [v5 handle];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AAUIMyPendingBeneficiaryActionHandler__checkMessageEligibility__block_invoke;
  v7[3] = &unk_1E820C530;
  objc_copyWeak(&v8, &location);
  [v3 isRecipient:v6 capableOf:v4 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__AAUIMyPendingBeneficiaryActionHandler__checkMessageEligibility__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__AAUIMyPendingBeneficiaryActionHandler__checkMessageEligibility__block_invoke_2;
    v5[3] = &unk_1E820C508;
    v6 = a2;
    v5[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __65__AAUIMyPendingBeneficiaryActionHandler__checkMessageEligibility__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = _AAUILogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Recipient has compatible device to recieve access key. Starting message invite flow...", &v10, 0xCu);
    }

    return [*(a1 + 32) _startInviteMessageFlow];
  }

  else
  {
    if (v4)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Recipient does not have compatible device to recieve access key. Showing incompatible device alert...", &v10, 0xCu);
    }

    return [*(a1 + 32) _showIncompatibleDeviceAlert];
  }
}

- (void)_startInviteMessageFlow
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 contact];
  v4[0] = 67109120;
  v4[1] = [v3 isFamilyMember];
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "LCInvite: Initialing LC Invite Message view based on receiver isFamilyMember: %d", v4, 8u);
}

- (void)_showPrintPreview
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Print Preview...", buf, 0xCu);
  }

  v6 = [AAUIInheritanceAccessKeyPDFGenerator alloc];
  v7 = [(AAUIMyPendingBeneficiaryActionHandler *)self _appleAccount];
  v8 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v9 = [(AAUIInheritanceAccessKeyPDFGenerator *)v6 initWithAppleAccount:v7 localContactInfo:v8];

  v10 = [(AAUIInheritanceAccessKeyPDFGenerator *)v9 createPDFDocumentData];
  if ([MEMORY[0x1E69C5A18] canPrintData:v10])
  {
    v11 = [MEMORY[0x1E69C5A10] printInfo];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(AAUIMyBeneficiaryActionHandler *)self contact];
    v14 = [v13 firstName];
    v15 = [MEMORY[0x1E698B9B0] printAccessKeyDocumentTitle];
    v16 = [v12 stringWithFormat:@"%@ - %@", v14, v15];
    [v11 setJobName:v16];

    [v11 setOrientation:0];
    [v11 setOutputType:2];
    v17 = [MEMORY[0x1E69C5A18] sharedPrintController];
    [v17 setPrintInfo:v11];
    [v17 setShowsNumberOfCopies:1];
    [v17 setPrintingItem:v10];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke;
    v18[3] = &unk_1E820C558;
    v18[4] = self;
    [v17 presentAnimated:1 completionHandler:v18];
  }
}

void __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Error presenting printInteractionController - %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke_52;
    block[3] = &unk_1E820BEB8;
    block[4] = *(a1 + 32);
    v15 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v10 = v15;
    goto LABEL_8;
  }

  if (!a3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke_3;
    v11[3] = &unk_1E820BEB8;
    v11[4] = *(a1 + 32);
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
    v10 = v12;
LABEL_8:

    goto LABEL_9;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke_2;
  v13[3] = &unk_1E820B8F0;
  v13[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v13);
LABEL_9:
}

void __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke_52(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) localizedDescription];
  [v1 _showAlertWithTitle:0 message:v2];
}

uint64_t __58__AAUIMyPendingBeneficiaryActionHandler__showPrintPreview__block_invoke_3(uint64_t a1)
{
  v2 = +[AAUIFeatureFlags isSolariumEnabled];
  v3 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v4 = [v3 primaryButton];
    [v4 setHidden:0];
  }

  else
  {
    v4 = [v3 navigationItem];
    v5 = [*(a1 + 32) _doneButton];
    [v4 setRightBarButtonItem:v5 animated:1];
  }

  v6 = *(a1 + 40);

  return [v6 dismissAnimated:1];
}

- (void)_showSetupCompleteWithShareTypePrint
{
  v3 = [AAUIOBInheritanceSetupCompleteViewModel alloc];
  v4 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v5 = [v4 displayName];
  v10 = [(AAUIOBInheritanceSetupCompleteViewModel *)v3 initWithBeneficiaryName:v5 accessKeyShareType:1];

  v6 = [[AAUIOBWelcomeController alloc] initWithViewModel:v10];
  v7 = [(AAUIOBWelcomeController *)v6 primaryButton];
  [v7 addTarget:self action:sel__dismiss forControlEvents:64];

  v8 = [(AAUIOBWelcomeController *)v6 secondaryButton];
  [v8 addTarget:self action:sel__dismissAndNavigateToDateOfBirthSettings forControlEvents:64];

  v9 = [(OBBaseWelcomeController *)v6 navigationItem];
  [v9 setHidesBackButton:1];

  [(UINavigationController *)self->_navigationController aaui_showViewController:v6 sender:0];
}

- (void)_showIncompatibleDeviceAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ALERT_BENEFICIARY_INELIGIBLE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ALERT_BENEFICIARY_INELIGIBLE_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  v9 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v10 = [v9 firstName];
  v11 = [v6 stringWithFormat:v8, v10];
  v12 = [v3 alertWithTitle:v5 message:v11];

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ALERT_BENEFICIARY_INELIGIBLE_BUTTON_PRIMARY" value:&stru_1F447F790 table:@"Localizable"];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__AAUIMyPendingBeneficiaryActionHandler__showIncompatibleDeviceAlert__block_invoke;
  v20[3] = &unk_1E820BFA8;
  v20[4] = self;
  v15 = [MEMORY[0x1E69DC648] actionWithTitle:v14 style:0 handler:v20];
  [v12 addAction:v15];

  v16 = MEMORY[0x1E69DC648];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"ALERT_BENEFICIARY_INELIGIBLE_BUTTON_DISMISS" value:&stru_1F447F790 table:@"Localizable"];
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];
  [v12 addAction:v19];

  [(UINavigationController *)self->_navigationController presentViewController:v12 animated:1 completion:0];
}

- (void)inviteMessageFlowDidFinish:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "%@ : Resend Invite flow did finish", &v8, 0xCu);
  }

  v7 = [v3 navigationController];

  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)inviteMessageWasSent:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ : Sending IDS Message to Beneficiary", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v10 = [(AAUIMyBeneficiaryActionHandler *)self contact];
  v11 = [v10 inheritanceContactInfo];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AAUIMyPendingBeneficiaryActionHandler_inviteMessageWasSent_completion___block_invoke;
  v13[3] = &unk_1E820C580;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [v9 sendInvitationToContact:v11 completion:v13];
}

void __73__AAUIMyPendingBeneficiaryActionHandler_inviteMessageWasSent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AAUIMyPendingBeneficiaryActionHandler_inviteMessageWasSent_completion___block_invoke_2;
  block[3] = &unk_1E820B708;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__AAUIMyPendingBeneficiaryActionHandler_inviteMessageWasSent_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _AALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __73__AAUIMyPendingBeneficiaryActionHandler_inviteMessageWasSent_completion___block_invoke_2_cold_1(a1, v2);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }
}

- (id)_appleAccount
{
  v2 = [(AAUIMyBeneficiaryActionHandler *)self accountManager];
  v3 = [v2 accounts];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  return v4;
}

- (void)_showAlertWithTitle:(id)a3 message:(id)a4
{
  v8 = [MEMORY[0x1E69DC650] alertWithTitle:a3 message:a4];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v6 style:0 handler:0];
  [v8 addAction:v7];

  [(UINavigationController *)self->_navigationController presentViewController:v8 animated:1 completion:0];
}

- (void)_dismiss
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AAUIMyPendingBeneficiaryActionHandler__dismiss__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_dismissAndNavigateToDateOfBirthSettings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__AAUIMyPendingBeneficiaryActionHandler__dismissAndNavigateToDateOfBirthSettings__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__AAUIMyPendingBeneficiaryActionHandler__dismissAndNavigateToDateOfBirthSettings__block_invoke_2()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountContactDetails"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (id)_doneButton
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NEXT" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__showSetupCompleteWithShareTypePrint];

  return v6;
}

void __73__AAUIMyPendingBeneficiaryActionHandler_inviteMessageWasSent_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "%@ : Failed to notify beneficiary via private IDS channel.", &v5, 0xCu);
}

@end