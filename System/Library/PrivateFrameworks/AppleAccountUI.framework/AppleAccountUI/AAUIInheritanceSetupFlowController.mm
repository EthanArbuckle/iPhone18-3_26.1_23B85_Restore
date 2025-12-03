@interface AAUIInheritanceSetupFlowController
- (AAUIInheritanceSetupFlowController)initWithAccount:(id)account;
- (AAUIInheritanceSetupFlowController)initWithAccount:(id)account navigationController:(id)controller;
- (id)_doneButton;
- (void)_beginAddBeneficiaryFlow;
- (void)_dismiss;
- (void)_dismissAndNavigateToDateOfBirthSettings;
- (void)_fetchSuggestedContacts;
- (void)_setupBeneficiary;
- (void)_showAlertWithTitle:(id)title message:(id)message;
- (void)_showContactSelector:(id)selector;
- (void)_showDefaultContactPicker;
- (void)_showDefaultContactPickerWithCancel;
- (void)_showIntro;
- (void)_showPrintPreview;
- (void)_showSetupCompleteWithShareTypePrint;
- (void)_showShareAccessKey;
- (void)_showShareData;
- (void)_startInviteMessageFlow;
- (void)_validateAccountWithCompletion:(id)completion;
- (void)_verifyCDPWithCompletion:(id)completion;
- (void)accountContactSelector:(id)selector didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)inheritanceDidSelectSharingOption:(unint64_t)option;
- (void)inviteMessageWasSent:(id)sent completion:(id)completion;
@end

@implementation AAUIInheritanceSetupFlowController

- (AAUIInheritanceSetupFlowController)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = objc_opt_new();
  v6 = [(AAUIInheritanceSetupFlowController *)self initWithAccount:accountCopy navigationController:v5];

  return v6;
}

- (AAUIInheritanceSetupFlowController)initWithAccount:(id)account navigationController:(id)controller
{
  accountCopy = account;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = AAUIInheritanceSetupFlowController;
  v9 = [(AAUIInheritanceSetupFlowController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigationController, controller);
    objc_storeStrong(&v10->_appleAccount, account);
    v11 = objc_opt_new();
    contactsProvider = v10->_contactsProvider;
    v10->_contactsProvider = v11;
  }

  return v10;
}

- (void)_showIntro
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Intro...", &v12, 0xCu);
  }

  v6 = objc_alloc_init(AAUIOBInheritanceIntroViewModel);
  v7 = [[AAUIOBWelcomeController alloc] initWithViewModel:v6];
  firstTimeSetupVC = self->_firstTimeSetupVC;
  self->_firstTimeSetupVC = v7;

  primaryButton = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC primaryButton];
  [primaryButton addTarget:self action:sel__beginAddBeneficiaryFlow forControlEvents:64];

  secondaryButton = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC secondaryButton];
  [secondaryButton addTarget:self action:sel__dismiss forControlEvents:64];

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController showViewController:self->_firstTimeSetupVC sender:0];
}

- (void)_beginAddBeneficiaryFlow
{
  primaryButton = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC primaryButton];
  [primaryButton setEnabled:0];

  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    primaryButton2 = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC primaryButton];
    [primaryButton2 showsBusyIndicator];
  }

  else
  {
    [(UINavigationController *)self->_navigationController aaui_showActivityIndicator];
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AAUIInheritanceSetupFlowController__beginAddBeneficiaryFlow__block_invoke;
  v5[3] = &unk_1E820D308;
  objc_copyWeak(&v6, &location);
  [(AAUIInheritanceSetupFlowController *)self _validateAccountWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__AAUIInheritanceSetupFlowController__beginAddBeneficiaryFlow__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = WeakRetained;
    [WeakRetained _fetchSuggestedContacts];
  }

  else
  {
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__AAUIInheritanceSetupFlowController__beginAddBeneficiaryFlow__block_invoke_2;
      block[3] = &unk_1E820B8F0;
      block[4] = WeakRetained;
      v5 = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      WeakRetained = v5;
    }
  }
}

void __62__AAUIInheritanceSetupFlowController__beginAddBeneficiaryFlow__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) primaryButton];
  [v2 setEnabled:1];

  v3 = +[AAUIFeatureFlags isSolariumEnabled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v6 = [*(v4 + 48) primaryButton];
    [v6 hidesBusyIndicator];
  }

  else
  {
    v5 = *(v4 + 80);

    [v5 aaui_hideActivityIndicator];
  }
}

- (void)_validateAccountWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "%@ : Showing Interactive Auth Prompt...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = objc_opt_new();
  appleAccount = self->_appleAccount;
  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  topViewController = [navigationController topViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AAUIInheritanceSetupFlowController__validateAccountWithCompletion___block_invoke;
  v13[3] = &unk_1E820D380;
  objc_copyWeak(&v15, buf);
  v13[4] = self;
  v12 = completionCopy;
  v14 = v12;
  [v8 aaui_beneficiaryAuthForAccount:appleAccount presentingViewController:topViewController completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __69__AAUIInheritanceSetupFlowController__validateAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5 || v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AAUIInheritanceSetupFlowController__validateAccountWithCompletion___block_invoke_2;
    block[3] = &unk_1E820B708;
    v14 = v6;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v13 = v18;
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@ : Authentication successful, continue setup...", buf, 0xCu);
    }

    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBA8]];
    v12 = WeakRetained[5];
    WeakRetained[5] = v11;

    v13 = objc_loadWeakRetained((a1 + 48));
    [v13 _verifyCDPWithCompletion:*(a1 + 40)];
  }
}

uint64_t __69__AAUIInheritanceSetupFlowController__validateAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) code];
  v3 = _AAUILogSystem();
  v4 = v3;
  if (v2 == -7003)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "%@ : User canceled auth", &v9, 0xCu);
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __69__AAUIInheritanceSetupFlowController__validateAccountWithCompletion___block_invoke_2_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  return v7();
}

- (void)_verifyCDPWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[AAUID2DEncryptionFlowContext alloc] initWithType:3];
  v6 = [AAUIManateeStateValidator alloc];
  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  v8 = [(AAUIManateeStateValidator *)v6 initWithFlowContext:v5 withPresentingViewController:navigationController];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AAUIInheritanceSetupFlowController__verifyCDPWithCompletion___block_invoke;
  v11[3] = &unk_1E820C988;
  v12 = v8;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = v8;
  [(AAUIManateeStateValidator *)v10 verifyAndRepairManateeWithCompletion:v11];
}

uint64_t __63__AAUIInheritanceSetupFlowController__verifyCDPWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_fetchSuggestedContacts
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Fetching suggested contacts...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  contactsProvider = self->_contactsProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AAUIInheritanceSetupFlowController__fetchSuggestedContacts__block_invoke;
  v7[3] = &unk_1E820D3D0;
  v7[4] = self;
  objc_copyWeak(&v8, buf);
  [(AAUIContactsProvider *)contactsProvider fetchSuggestedBeneficiariesWithImagesOfSize:v7 andCompletion:16.0];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __61__AAUIInheritanceSetupFlowController__fetchSuggestedContacts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AAUIInheritanceSetupFlowController__fetchSuggestedContacts__block_invoke_2;
  block[3] = &unk_1E820D3A8;
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
}

void __61__AAUIInheritanceSetupFlowController__fetchSuggestedContacts__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) primaryButton];
  [v2 setEnabled:1];

  v3 = +[AAUIFeatureFlags isSolariumEnabled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(v4 + 48) primaryButton];
    [v5 hidesBusyIndicator];
  }

  else
  {
    [*(v4 + 80) aaui_hideActivityIndicator];
  }

  v6 = [*(a1 + 40) count];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained _showContactSelector:*(a1 + 40)];
  }

  else
  {
    [WeakRetained _showDefaultContactPickerWithCancel];
  }
}

- (void)_showContactSelector:(id)selector
{
  v15 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "%@ : Showing Trusted/Family Contacts Picker...", &v13, 0xCu);
  }

  v8 = [[AAUIOBContactSelectorViewModel alloc] initWithFlow:1];
  [(AAUIOBContactSelectorViewModel *)v8 setSuggestedContacts:selectorCopy];

  v9 = [[AAUIAccountContactSelectorViewController alloc] initWithViewModel:v8];
  [(AAUIOBTableWelcomeController *)v9 setDelegate:self];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismiss];
  navigationItem = [(OBBaseWelcomeController *)v9 navigationItem];
  [navigationItem setLeftBarButtonItem:v10];

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController showViewController:v9 sender:0];
}

- (void)_showDefaultContactPicker
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Default Contacts Picker...", &v8, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setDelegate:self];
  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)_showDefaultContactPickerWithCancel
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Default Contacts Picker...", &v10, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismiss];
  navigationItem = [v6 navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)_showShareData
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Share Data Priming Step...", &v13, 0xCu);
  }

  v6 = [AAUIOBInheritanceShareDataViewModel alloc];
  firstName = [(AALocalContactInfo *)self->_selectedContact firstName];
  v8 = [(AAUIOBInheritanceShareDataViewModel *)v6 initWithBeneficiaryName:firstName];

  v9 = [(AAUIOBWelcomeController *)[AAUIInheritanceShareDataViewController alloc] initWithViewModel:v8];
  shareDataVC = self->_shareDataVC;
  self->_shareDataVC = v9;

  primaryButton = [(AAUIOBWelcomeController *)self->_shareDataVC primaryButton];
  [primaryButton addTarget:self action:sel__shareDataDidContinue forControlEvents:64];

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController showViewController:self->_shareDataVC sender:0];
}

- (void)_showShareAccessKey
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Share Access Key Options...", &v14, 0xCu);
  }

  v6 = [AAUIInheritanceShareAccessKeyOptionsViewController alloc];
  firstName = [(AALocalContactInfo *)self->_selectedContact firstName];
  handle = [(AALocalContactInfo *)self->_selectedContact handle];
  v9 = [(AAUIInheritanceShareAccessKeyOptionsViewController *)v6 initWithBeneficiaryName:firstName handle:handle];
  shareAccessKeyOptionsViewController = self->_shareAccessKeyOptionsViewController;
  self->_shareAccessKeyOptionsViewController = v9;

  [(AAUIInheritanceShareAccessKeyOptionsViewController *)self->_shareAccessKeyOptionsViewController setFlowDelegate:self];
  navigationItem = [(OBBaseWelcomeController *)self->_shareAccessKeyOptionsViewController navigationItem];
  [navigationItem setHidesBackButton:1];

  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    [(AAUIOBTableWelcomeController *)self->_shareAccessKeyOptionsViewController setDelegate:self];
    primaryButton = [(AAUIOBTableWelcomeController *)self->_shareAccessKeyOptionsViewController primaryButton];
    [primaryButton setHidden:1];
  }

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController showViewController:self->_shareAccessKeyOptionsViewController sender:0];
}

- (void)_showPrintPreview
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Showing Print Preview...", buf, 0xCu);
  }

  [(AALocalContactInfo *)self->_selectedContact setInheritanceContactInfo:self->_selectedBeneficiary];
  v6 = [[AAUIInheritanceAccessKeyPDFGenerator alloc] initWithAppleAccount:self->_appleAccount localContactInfo:self->_selectedContact];
  createPDFDocumentData = [(AAUIInheritanceAccessKeyPDFGenerator *)v6 createPDFDocumentData];
  if ([MEMORY[0x1E69C5A18] canPrintData:createPDFDocumentData])
  {
    printInfo = [MEMORY[0x1E69C5A10] printInfo];
    v9 = MEMORY[0x1E696AEC0];
    firstName = [(AALocalContactInfo *)self->_selectedContact firstName];
    printAccessKeyDocumentTitle = [MEMORY[0x1E698B9B0] printAccessKeyDocumentTitle];
    v12 = [v9 stringWithFormat:@"%@ - %@", firstName, printAccessKeyDocumentTitle];
    [printInfo setJobName:v12];

    [printInfo setOrientation:0];
    [printInfo setOutputType:2];
    mEMORY[0x1E69C5A18] = [MEMORY[0x1E69C5A18] sharedPrintController];
    [mEMORY[0x1E69C5A18] setPrintInfo:printInfo];
    [mEMORY[0x1E69C5A18] setShowsNumberOfCopies:1];
    [mEMORY[0x1E69C5A18] setPrintingItem:createPDFDocumentData];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke;
    v14[3] = &unk_1E820C558;
    v14[4] = self;
    [mEMORY[0x1E69C5A18] presentAnimated:1 completionHandler:v14];
  }
}

void __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
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
    block[2] = __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke_84;
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
    v11[2] = __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke_3;
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
  v13[2] = __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke_2;
  v13[3] = &unk_1E820B8F0;
  v13[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v13);
LABEL_9:
}

void __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke_84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) localizedDescription];
  [v1 _showAlertWithTitle:0 message:v2];
}

uint64_t __55__AAUIInheritanceSetupFlowController__showPrintPreview__block_invoke_3(uint64_t a1)
{
  v2 = +[AAUIFeatureFlags isSolariumEnabled];
  v3 = *(*(a1 + 32) + 72);
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

- (void)_startInviteMessageFlow
{
  [*self isFamilyMember];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)_showSetupCompleteWithShareTypePrint
{
  v3 = [AAUIOBInheritanceSetupCompleteViewModel alloc];
  displayName = [(AALocalContactInfo *)self->_selectedContact displayName];
  v10 = [(AAUIOBInheritanceSetupCompleteViewModel *)v3 initWithBeneficiaryName:displayName accessKeyShareType:1];

  v5 = [[AAUIOBWelcomeController alloc] initWithViewModel:v10];
  primaryButton = [(AAUIOBWelcomeController *)v5 primaryButton];
  [primaryButton addTarget:self action:sel__dismiss forControlEvents:64];

  secondaryButton = [(AAUIOBWelcomeController *)v5 secondaryButton];
  [secondaryButton addTarget:self action:sel__dismissAndNavigateToDateOfBirthSettings forControlEvents:64];

  navigationItem = [(OBBaseWelcomeController *)v5 navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController showViewController:v5 sender:0];
}

- (void)_dismiss
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AAUIInheritanceSetupFlowController__dismiss__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __46__AAUIInheritanceSetupFlowController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)_dismissAndNavigateToDateOfBirthSettings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AAUIInheritanceSetupFlowController__dismissAndNavigateToDateOfBirthSettings__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__AAUIInheritanceSetupFlowController__dismissAndNavigateToDateOfBirthSettings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 dismissViewControllerAnimated:1 completion:&__block_literal_global_16];
}

void __78__AAUIInheritanceSetupFlowController__dismissAndNavigateToDateOfBirthSettings__block_invoke_2()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountContactDetails"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)inheritanceDidSelectSharingOption:(unint64_t)option
{
  if (option == 1)
  {
    [(AAUIInheritanceSetupFlowController *)self _showPrintPreview];
  }

  else if (!option)
  {
    [(AAUIInheritanceSetupFlowController *)self _startInviteMessageFlow];
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  pickerCopy = picker;
  v8 = [AAUITrustedContactPickerViewController addressKindAndHandleForSingleAddressContact:contactCopy];
  v9 = objc_alloc(MEMORY[0x1E698B8F0]);
  handle = [v8 handle];
  v11 = [v9 initWithHandle:handle contact:contactCopy];

  selectedContact = self->_selectedContact;
  self->_selectedContact = v11;

  [(AALocalContactInfo *)self->_selectedContact setContactType:[(AALocalContactInfo *)self->_selectedContact contactType]| 4];
  v13 = objc_alloc(MEMORY[0x1E698B828]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  aa_altDSID = [(ACAccount *)self->_appleAccount aa_altDSID];
  handle2 = [v8 handle];
  v17 = [v13 initWithBeneficiaryID:uUID benefactorAltDSID:aa_altDSID handle:handle2];
  selectedBeneficiary = self->_selectedBeneficiary;
  self->_selectedBeneficiary = v17;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__AAUIInheritanceSetupFlowController_contactPicker_didSelectContact___block_invoke;
  v19[3] = &unk_1E820B8F0;
  v19[4] = self;
  [pickerCopy dismissViewControllerAnimated:1 completion:v19];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  pickerCopy = picker;
  value = [propertyCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [value stringValue];
LABEL_5:
    v10 = stringValue;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = value;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AAUIInheritanceSetupFlowController contactPicker:didSelectContactProperty:];
  }

  v12 = objc_alloc(MEMORY[0x1E698B8F0]);
  contact = [propertyCopy contact];

  v14 = [v12 initWithHandle:v10 contact:contact];
  selectedContact = self->_selectedContact;
  self->_selectedContact = v14;

  [(AALocalContactInfo *)self->_selectedContact setContactType:[(AALocalContactInfo *)self->_selectedContact contactType]| 4];
  v16 = objc_alloc(MEMORY[0x1E698B828]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  aa_altDSID = [(ACAccount *)self->_appleAccount aa_altDSID];
  v19 = [v16 initWithBeneficiaryID:uUID benefactorAltDSID:aa_altDSID handle:v10];
  selectedBeneficiary = self->_selectedBeneficiary;
  self->_selectedBeneficiary = v19;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__AAUIInheritanceSetupFlowController_contactPicker_didSelectContactProperty___block_invoke;
  v21[3] = &unk_1E820B8F0;
  v21[4] = self;
  [pickerCopy dismissViewControllerAnimated:1 completion:v21];
}

- (void)accountContactSelector:(id)selector didSelectContact:(id)contact
{
  contactCopy = contact;
  v6 = [contactCopy copy];
  selectedContact = self->_selectedContact;
  self->_selectedContact = v6;

  [(AALocalContactInfo *)self->_selectedContact setContactType:[(AALocalContactInfo *)self->_selectedContact contactType]| 4];
  v8 = objc_alloc(MEMORY[0x1E698B828]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  aa_altDSID = [(ACAccount *)self->_appleAccount aa_altDSID];
  handle = [contactCopy handle];
  v12 = [v8 initWithBeneficiaryID:uUID benefactorAltDSID:aa_altDSID handle:handle];
  selectedBeneficiary = self->_selectedBeneficiary;
  self->_selectedBeneficiary = v12;

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [AAUIInheritanceSetupFlowController accountContactSelector:didSelectContact:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AAUIInheritanceSetupFlowController_accountContactSelector_didSelectContact___block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)inviteMessageWasSent:(id)sent completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ : Sending IDS Message to Beneficiary", buf, 0xCu);
  }

  v9 = objc_opt_new();
  if (!+[AAUIFeatureFlags isSolariumEnabled])
  {
    [(UINavigationController *)self->_navigationController aaui_showActivityIndicator];
  }

  selectedBeneficiary = self->_selectedBeneficiary;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AAUIInheritanceSetupFlowController_inviteMessageWasSent_completion___block_invoke;
  v12[3] = &unk_1E820C580;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v9 sendInvitationToContact:selectedBeneficiary completion:v12];
}

void __70__AAUIInheritanceSetupFlowController_inviteMessageWasSent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AAUIInheritanceSetupFlowController_inviteMessageWasSent_completion___block_invoke_2;
  block[3] = &unk_1E820B708;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__AAUIInheritanceSetupFlowController_inviteMessageWasSent_completion___block_invoke_2(void *a1)
{
  if (!+[AAUIFeatureFlags isSolariumEnabled])
  {
    [*(a1[4] + 80) aaui_hideActivityIndicator];
  }

  if (a1[5])
  {
    v2 = _AALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __70__AAUIInheritanceSetupFlowController_inviteMessageWasSent_completion___block_invoke_2_cold_1();
    }

    return (*(a1[6] + 16))();
  }

  else
  {
    v4 = *(a1[6] + 16);

    return v4();
  }
}

- (void)_setupBeneficiary
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "%@ : Creating Beneficiary...", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x1E698DD38]);
  v7 = [v6 initWithBundleInformation:MEMORY[0x1E695E0F0] manifestOptions:1];
  v8 = objc_opt_new();
  primaryButton = [(AAUIOBWelcomeController *)self->_shareDataVC primaryButton];
  [primaryButton setEnabled:0];

  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    primaryButton2 = [(AAUIOBWelcomeController *)self->_shareDataVC primaryButton];
    [primaryButton2 showsBusyIndicator];
  }

  else
  {
    [(UINavigationController *)self->_navigationController aaui_showActivityIndicator];
  }

  selectedBeneficiary = self->_selectedBeneficiary;
  setupAuthToken = self->_setupAuthToken;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke;
  v13[3] = &unk_1E820D3F8;
  v13[4] = self;
  [v8 setupBeneficiaryManifest:v7 contactInfo:selectedBeneficiary setupAuthToken:setupAuthToken completion:v13];
}

void __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 accessKey];
  v8 = *(a1 + 32);
  v7 = a1 + 32;
  [*(v8 + 32) setAccessKey:v6];

  v9 = _AAUILogSystem();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke_cold_1();
    }

    if ([v5 code] == 6)
    {
      v11 = [MEMORY[0x1E698B9B0] cannotAddAnExistingBeneficiaryErrorTitle];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E698B9B0] cannotAddAnExistingBeneficiaryErrorMessage];
      v14 = [*(*v7 + 32) handle];
      v15 = [v12 stringWithFormat:v13, v14];
    }

    else
    {
      v11 = [MEMORY[0x1E698B9B0] setupBeneficiaryErrorTitle];
      v15 = [MEMORY[0x1E698B9B0] setupBeneficiaryErrorMessage];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke_108;
    v21[3] = &unk_1E820BF58;
    v21[4] = *v7;
    v22 = v11;
    v23 = v15;
    v18 = v15;
    v19 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v21);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "%@ : Beneficiary setup successful.", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke_109;
    block[3] = &unk_1E820B8F0;
    block[4] = *v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke_108(void *a1)
{
  v2 = [*(a1[4] + 56) primaryButton];
  [v2 setEnabled:1];

  v3 = +[AAUIFeatureFlags isSolariumEnabled];
  v4 = a1[4];
  if (v3)
  {
    v5 = [*(v4 + 56) primaryButton];
    [v5 hidesBusyIndicator];
  }

  else
  {
    [*(v4 + 80) aaui_hideActivityIndicator];
  }

  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];

  return [v6 _showAlertWithTitle:v7 message:v8];
}

uint64_t __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke_109(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) primaryButton];
  [v2 setEnabled:1];

  v3 = +[AAUIFeatureFlags isSolariumEnabled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(v4 + 56) primaryButton];
    [v5 hidesBusyIndicator];
  }

  else
  {
    [*(v4 + 80) aaui_hideActivityIndicator];
  }

  v6 = *(a1 + 32);

  return [v6 _showShareAccessKey];
}

- (void)_showAlertWithTitle:(id)title message:(id)message
{
  v9 = [MEMORY[0x1E69DC650] alertWithTitle:title message:message];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v6 style:0 handler:0];
  [v9 addAction:v7];

  navigationController = [(AAUIInheritanceSetupFlowController *)self navigationController];
  [navigationController presentViewController:v9 animated:1 completion:0];
}

- (id)_doneButton
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NEXT" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__showSetupCompleteWithShareTypePrint];

  return v6;
}

void __69__AAUIInheritanceSetupFlowController__validateAccountWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)contactPicker:didSelectContactProperty:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)accountContactSelector:didSelectContact:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v8 = [v0 handle];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __70__AAUIInheritanceSetupFlowController_inviteMessageWasSent_completion___block_invoke_2_cold_1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __55__AAUIInheritanceSetupFlowController__setupBeneficiary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end