@interface AAUICodeEntryViewController
- (AAUICodeEntryViewController)initWithContext:(id)a3;
- (BOOL)validatePIN:(id)a3;
- (CGSize)preferredContentSize;
- (id)pinInstructionsPrompt;
- (id)stringsBundle;
- (void)_disableUserInteractionAndStartSpinner;
- (void)_enableUserInteractionAndStopSpinner;
- (void)_showIncorrectCodeAlert;
- (void)didCancelEnteringPIN;
- (void)setPane:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AAUICodeEntryViewController

- (AAUICodeEntryViewController)initWithContext:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = AAUICodeEntryViewController;
  v6 = [(DevicePINController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:@"AAUICodeEntry" target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v8 setEditPaneClass:objc_opt_class()];
    [(DevicePINController *)v7 setSpecifier:v8];
    [(DevicePINController *)v7 setMode:3];
    [(DevicePINController *)v7 setShouldDismissWhenDone:1];
    [(DevicePINController *)v7 setHidesCancelButton:0];
    [(DevicePINController *)v7 setHidesNavigationButtons:0];
    [(DevicePINController *)v7 setPinDelegate:v7];
    [(DevicePINController *)v7 setPinLength:6];
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom] != 1;

    [(DevicePINController *)v7 setNumericPIN:v10];
    v11 = [MEMORY[0x1E69C5710] appearance];
    v12 = [MEMORY[0x1E69DC888] labelColor];
    [v11 setTextColor:v12];

    v13 = [MEMORY[0x1E69C5710] appearance];
    v14 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v13 setBackgroundColor:v14];
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = AAUICodeEntryViewController;
  [(DevicePINController *)&v9 viewWillAppear:a3];
  v4 = [(AAUICodeEntryViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];

  if (v6 == self)
  {
    v7 = [(AAUICodeEntryViewController *)self navigationController];
    v8 = [v7 navigationBar];
    [v8 _setBackgroundOpacity:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AAUICodeEntryViewController;
  [(DevicePINController *)&v4 viewDidDisappear:a3];
  [(AAUICodeEntryViewController *)self _enableUserInteractionAndStopSpinner];
}

- (id)stringsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPane:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = AAUICodeEntryViewController;
  [(DevicePINController *)&v5 setPane:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setContext:self->_context];
  }
}

- (id)pinInstructionsPrompt
{
  if (self->_pinInstructions)
  {
    return self->_pinInstructions;
  }

  else
  {
    return &stru_1F447F790;
  }
}

- (void)didCancelEnteringPIN
{
  v3 = [(AAUICodeEntryContext *)self->_context cancelEntryAction];

  if (v3)
  {
    v4 = [(AAUICodeEntryContext *)self->_context cancelEntryAction];
    v4[2]();
  }
}

- (BOOL)validatePIN:(id)a3
{
  v4 = a3;
  v5 = [(PSDetailController *)self pane];
  [v5 resignFirstResponder];

  v6 = [(AAUICodeEntryContext *)self->_context codeEnteredAction];

  if (v6)
  {
    [(AAUICodeEntryViewController *)self _disableUserInteractionAndStartSpinner];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v7 = dispatch_semaphore_create(0);
    v8 = [(AAUICodeEntryContext *)self->_context codeEnteredAction];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__AAUICodeEntryViewController_validatePIN___block_invoke;
    v12[3] = &unk_1E820CF00;
    v14 = &v20;
    v15 = &v16;
    v9 = v7;
    v13 = v9;
    (v8)[2](v8, v4, v12);

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if ((v21[3] & 1) == 0)
    {
      if (*(v17 + 24) == 1)
      {
        [(AAUICodeEntryViewController *)self dismissViewControllerAnimated:1 completion:0];
        v10 = 0;
LABEL_8:

        _Block_object_dispose(&v16, 8);
        _Block_object_dispose(&v20, 8);
        goto LABEL_9;
      }

      [(AAUICodeEntryViewController *)self _showIncorrectCodeAlert];
    }

    [(AAUICodeEntryViewController *)self _enableUserInteractionAndStopSpinner];
    v10 = *(v21 + 24);
    goto LABEL_8;
  }

  v10 = 1;
LABEL_9:

  return v10 & 1;
}

intptr_t __43__AAUICodeEntryViewController_validatePIN___block_invoke(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_showIncorrectCodeAlert
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"INCORRECT_CODE_TRY_AGAIN_ALERT" value:&stru_1F447F790 table:@"Localizable"];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"INCORRECT_CODE_TRY_AGAIN_ALERT_TITLE" value:&stru_1F447F790 table:@"Localizable"];

  v7 = [MEMORY[0x1E69DC650] alertWithTitle:v6 message:v4];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC648];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __54__AAUICodeEntryViewController__showIncorrectCodeAlert__block_invoke;
  v15 = &unk_1E820C0C8;
  objc_copyWeak(&v16, &location);
  v11 = [v8 actionWithTitle:v10 style:0 handler:&v12];

  [v7 addAction:{v11, v12, v13, v14, v15}];
  [(AAUICodeEntryViewController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __54__AAUICodeEntryViewController__showIncorrectCodeAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pane];
  [v1 becomeFirstResponder];
}

- (void)_disableUserInteractionAndStartSpinner
{
  v3 = [MEMORY[0x1E69C5730] sharedSpinnerManager];
  v4 = [(AAUICodeEntryViewController *)self navigationItem];
  [v3 startAnimatingInNavItem:v4 forIdentifier:@"aauiCodeEntryValidator" hideBackButton:1];

  v5 = [(AAUICodeEntryViewController *)self view];
  [v5 setUserInteractionEnabled:0];
}

- (void)_enableUserInteractionAndStopSpinner
{
  v2 = [(AAUICodeEntryViewController *)self view];
  [v2 setUserInteractionEnabled:1];

  v3 = [MEMORY[0x1E69C5730] sharedSpinnerManager];
  [v3 stopAnimatingForIdentifier:@"aauiCodeEntryValidator"];
}

@end