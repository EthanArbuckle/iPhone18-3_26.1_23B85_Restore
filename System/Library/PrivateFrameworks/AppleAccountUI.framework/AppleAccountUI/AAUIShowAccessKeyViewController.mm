@interface AAUIShowAccessKeyViewController
- (AAUIShowAccessKeyViewController)initWithAppleAccount:(id)a3 localContactInfo:(id)a4 accessKey:(id)a5 accessKeyQRCodeImage:(id)a6;
- (id)_specifiersForShowAccessKey;
- (id)specifiers;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_printTapped:(id)a3;
- (void)_setTableSeparatorInset;
- (void)_setupNavigationBar;
- (void)inviteMessageCompleteSecondaryButtonTapped:(id)a3;
- (void)inviteMessageFlowDidFinish:(id)a3;
- (void)inviteMessageWasSent:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation AAUIShowAccessKeyViewController

- (AAUIShowAccessKeyViewController)initWithAppleAccount:(id)a3 localContactInfo:(id)a4 accessKey:(id)a5 accessKeyQRCodeImage:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AAUIShowAccessKeyViewController;
  v15 = [(AAUIShowAccessKeyViewController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appleAccount, a3);
    v17 = objc_alloc_init(AAUIAccountContactsSpecifierCreator);
    specifierCreator = v16->_specifierCreator;
    v16->_specifierCreator = v17;

    objc_storeStrong(&v16->_localContact, a4);
    objc_storeStrong(&v16->_accessKey, a5);
    objc_storeStrong(&v16->_qrCodeImage, a6);
  }

  return v16;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIShowAccessKeyViewController;
  [(AAUIShowAccessKeyViewController *)&v3 viewDidLoad];
  [(AAUIShowAccessKeyViewController *)self _setupNavigationBar];
  [(AAUIShowAccessKeyViewController *)self _setTableSeparatorInset];
}

- (void)_setupNavigationBar
{
  v4 = [(AAUIShowAccessKeyViewController *)self navigationItem];
  if (([(AALocalContactInfo *)self->_localContact contactType]& 4) != 0)
  {
    [MEMORY[0x1E698B9B0] showAccessKeyBeneficiaryTitle];
  }

  else
  {
    [MEMORY[0x1E698B9B0] showAccessKeyBenefactorTitle];
  }
  v3 = ;
  [v4 setTitle:v3];
}

- (void)_setTableSeparatorInset
{
  v2 = [(AAUIShowAccessKeyViewController *)self table];
  [v2 setSeparatorInset:{0.0, 0.0, 3.0, 0.0}];
}

- (id)specifiers
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69C57B8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "AAUIShowAccessKeyViewController is loading specifiers.", &v11, 2u);
    }

    v5 = [(AAUIShowAccessKeyViewController *)self _specifiersForShowAccessKey];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
  }

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(&self->super.super.super.super.super.isa + v3);
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUIShowAccessKeyViewController specifiers: returning %@", &v11, 0xCu);
  }

  v9 = *(&self->super.super.super.super.super.isa + v3);

  return v9;
}

- (id)_specifiersForShowAccessKey
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E698B9B0] showAccessKeyCellTitle];
  v5 = [(AALocalContactInfo *)self->_localContact contactType];
  v6 = MEMORY[0x1E696AEC0];
  if ((v5 & 4) != 0)
  {
    [MEMORY[0x1E698B9B0] showAccessKeyBeneficiarySubtitle];
  }

  else
  {
    [MEMORY[0x1E698B9B0] showAccessKeyBenefactorSubtitle];
  }
  v7 = ;
  v8 = [(AALocalContactInfo *)self->_localContact firstName];
  v9 = [v6 stringWithFormat:v7, v8];

  v10 = [(AAUIAccountContactsSpecifierCreator *)self->_specifierCreator createTableCellWithName:v4 title:v4 longSubtitle:v9 image:0];
  [v3 addObject:v10];
  v11 = [AAUIInheritanceAccessKeyCell specifierForAcessKey:self->_accessKey qrCodeImage:self->_qrCodeImage];
  [v3 addObject:v11];
  v12 = [MEMORY[0x1E698B9B0] showAccessKeyPrintTitle];
  v13 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v13 setButtonAction:sel__printTapped_];
  [v3 addObject:v13];
  v14 = [v3 copy];

  return v14;
}

- (void)_printTapped:(id)a3
{
  v11 = [[AAUIInheritanceAccessKeyPDFGenerator alloc] initWithAppleAccount:self->_appleAccount localContactInfo:self->_localContact];
  v4 = [(AAUIInheritanceAccessKeyPDFGenerator *)v11 createPDFDocumentData];
  if ([MEMORY[0x1E69C5A18] canPrintData:v4])
  {
    v5 = [MEMORY[0x1E69C5A10] printInfo];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(AALocalContactInfo *)self->_localContact firstName];
    v8 = [MEMORY[0x1E698B9B0] printAccessKeyDocumentTitle];
    v9 = [v6 stringWithFormat:@"%@ - %@", v7, v8];
    [v5 setJobName:v9];

    [v5 setOrientation:0];
    [v5 setOutputType:2];
    v10 = [MEMORY[0x1E69C5A18] sharedPrintController];
    [v10 setPrintInfo:v5];
    [v10 setShowsNumberOfCopies:1];
    [v10 setPrintingItem:v4];
    [v10 presentAnimated:1 completionHandler:&__block_literal_global_26];
  }
}

void __48__AAUIShowAccessKeyViewController__printTapped___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  if (v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Error presenting printInteractionController - %@", &v6, 0xCu);
    }
  }
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
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
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
  v10 = [(AALocalContactInfo *)self->_localContact inheritanceContactInfo];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__AAUIShowAccessKeyViewController_inviteMessageWasSent_completion___block_invoke;
  v12[3] = &unk_1E820C580;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  [v9 sendInvitationToContact:v10 completion:v12];
}

void __67__AAUIShowAccessKeyViewController_inviteMessageWasSent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AAUIShowAccessKeyViewController_inviteMessageWasSent_completion___block_invoke_2;
  block[3] = &unk_1E820B708;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__AAUIShowAccessKeyViewController_inviteMessageWasSent_completion___block_invoke_2(uint64_t a1)
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

- (void)inviteMessageCompleteSecondaryButtonTapped:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AAUIShowAccessKeyViewController_inviteMessageCompleteSecondaryButtonTapped___block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__AAUIShowAccessKeyViewController_inviteMessageCompleteSecondaryButtonTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 dismissViewControllerAnimated:1 completion:&__block_literal_global_54_0];
}

void __78__AAUIShowAccessKeyViewController_inviteMessageCompleteSecondaryButtonTapped___block_invoke_2()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountContactDetails"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = [a3 cellForRowAtIndexPath:{a4, a5.x, a5.y}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__AAUIShowAccessKeyViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v9[3] = &unk_1E820E0E8;
    v9[4] = self;
    v7 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __93__AAUIShowAccessKeyViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DC628];
  v3 = [MEMORY[0x1E698B9B0] showAccessKeyCopyTitle];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__AAUIShowAccessKeyViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v10[3] = &unk_1E820E0C0;
  v10[4] = *(a1 + 32);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v10];

  v6 = MEMORY[0x1E69DCC60];
  v11[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v6 menuWithChildren:v7];

  return v8;
}

void __93__AAUIShowAccessKeyViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(*(a1 + 32) + 1480)];
}

@end