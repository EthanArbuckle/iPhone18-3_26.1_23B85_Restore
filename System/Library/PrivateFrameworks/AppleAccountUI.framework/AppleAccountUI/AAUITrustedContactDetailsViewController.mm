@interface AAUITrustedContactDetailsViewController
- (AAUITrustedContactDetailsViewController)initWithContact:(id)a3 viewModel:(id)a4 actionHandler:(id)a5;
- (id)_bigContactSpecifier;
- (id)_destructiveActionRowSpecifier;
- (id)_detailsRowSpecifier;
- (id)_optionsGroupSpecifier;
- (id)_primaryActionRowSpecifier;
- (id)_secondaryActionRowSpecifier;
- (id)specifiers;
- (void)_doPrimaryAction:(id)a3;
- (void)_doSecondaryAction:(id)a3;
- (void)_showDestructiveAlert:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AAUITrustedContactDetailsViewController

- (AAUITrustedContactDetailsViewController)initWithContact:(id)a3 viewModel:(id)a4 actionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AAUITrustedContactDetailsViewController;
  v12 = [(AAUITrustedContactDetailsViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    objc_storeStrong(&v13->_viewModel, a4);
    objc_storeStrong(&v13->_actionHandler, a5);
  }

  return v13;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = AAUITrustedContactDetailsViewController;
  [(AAUITrustedContactDetailsViewController *)&v8 viewWillAppear:a3];
  v4 = MEMORY[0x1E6985DB0];
  v5 = [(AAUITrustedContactDetailsViewController *)self telemetryFlowID];
  v6 = [v4 analyticsEventWithName:@"com.apple.appleaccount.custodian.ui.openCustodianDetails" altDSID:0 flowID:v5];

  v7 = [MEMORY[0x1E698B810] reporter];
  [v7 sendEvent:v6];
}

- (id)specifiers
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69C57B8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Loading Trusted Contact details specifiers.", &v21, 2u);
    }

    v5 = objc_opt_new();
    v6 = [(AAUITrustedContactDetailsViewController *)self _bigContactSpecifier];
    [v5 addObject:v6];

    v7 = [(AAUITrustedContactDetailsViewController *)self _optionsGroupSpecifier];
    [v5 addObject:v7];

    v8 = [(AAUITrustedContactDetailsViewController *)self _detailsRowSpecifier];
    [v5 addObject:v8];

    if (objc_opt_respondsToSelector())
    {
      v9 = [(AATrustedContactDetailsViewModel *)self->_viewModel primaryActionText];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [(AAUITrustedContactDetailsViewController *)self _primaryActionRowSpecifier];
        [v5 addObject:v11];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [(AATrustedContactDetailsViewModel *)self->_viewModel secondaryActionText];
      v13 = [v12 length];

      if (v13)
      {
        v14 = [(AAUITrustedContactDetailsViewController *)self _secondaryActionRowSpecifier];
        [v5 addObject:v14];
      }
    }

    v15 = [(AAUITrustedContactDetailsViewController *)self _destructiveActionRowSpecifier];
    [v5 addObject:v15];

    v16 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
  }

  v17 = _AAUILogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(&self->super.super.super.super.super.isa + v3);
    v21 = 138412290;
    v22 = v18;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "AAUITrustedContactDetailsViewController specifiers: returning %@", &v21, 0xCu);
  }

  v19 = *(&self->super.super.super.super.super.isa + v3);

  return v19;
}

- (id)_bigContactSpecifier
{
  v3 = MEMORY[0x1E69C5748];
  v4 = [(AALocalContactInfo *)self->_contact displayName];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  v6 = [(AALocalContactInfo *)self->_contact displayName];
  [v5 setProperty:v6 forKey:*MEMORY[0x1E69C59A8]];

  v7 = [(AALocalContactInfo *)self->_contact handle];
  [v5 setProperty:v7 forKey:*MEMORY[0x1E69C59A0]];

  v8 = objc_opt_new();
  v9 = [v8 profilePictureForLocalContact:self->_contact];
  [v5 setProperty:v9 forKey:*MEMORY[0x1E69C5920]];
  [v5 setProperty:&unk_1F44C0700 forKey:*MEMORY[0x1E69C5988]];

  return v5;
}

- (id)_optionsGroupSpecifier
{
  v2 = MEMORY[0x1E69C5748];
  v3 = [(AATrustedContactDetailsViewModel *)self->_viewModel title];
  v4 = [v2 groupSpecifierWithID:v3 name:0];

  return v4;
}

- (id)_detailsRowSpecifier
{
  v3 = objc_opt_new();
  v4 = [(AATrustedContactDetailsViewModel *)self->_viewModel detailsLabel];
  v5 = [(AATrustedContactDetailsViewModel *)self->_viewModel detailsLabel];
  v6 = [(AATrustedContactDetailsViewModel *)self->_viewModel detailsSubtitle];
  v7 = [v3 createSubtitleTableCellWithName:v4 title:v5 subtitle:v6 image:0];

  return v7;
}

- (id)_primaryActionRowSpecifier
{
  v3 = [(AATrustedContactDetailsViewModel *)self->_viewModel contact];
  v4 = v3;
  if (v3 && [v3 contactType] == 2)
  {
    if ([v4 trustedContactStatus] == 2)
    {
      v5 = [v4 isAcceptedAndShared];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x1E69C5748];
  v7 = [(AATrustedContactDetailsViewModel *)self->_viewModel primaryActionText];
  v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v9 = [(AATrustedContactDetailsViewModel *)self->_viewModel primaryActionText];
  [v8 setIdentifier:v9];

  [v8 setButtonAction:sel__doPrimaryAction_];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v8 setProperty:v10 forKey:*MEMORY[0x1E69C58C8]];

  return v8;
}

- (id)_secondaryActionRowSpecifier
{
  v3 = MEMORY[0x1E69C5748];
  v4 = [(AATrustedContactDetailsViewModel *)self->_viewModel secondaryActionText];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v6 = [(AATrustedContactDetailsViewModel *)self->_viewModel secondaryActionText];
  [v5 setIdentifier:v6];

  [v5 setButtonAction:sel__doSecondaryAction_];

  return v5;
}

- (id)_destructiveActionRowSpecifier
{
  v3 = MEMORY[0x1E69C5748];
  v4 = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionText];
  v5 = [v3 deleteButtonSpecifierWithName:v4 target:self action:sel__showDestructiveAlert_];

  v6 = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionText];
  [v5 setIdentifier:v6];

  [v5 setProperty:&unk_1F44C05D0 forKey:*MEMORY[0x1E69C5818]];

  return v5;
}

- (void)_doPrimaryAction:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(AAUITrustedContactDetailsActionHandler *)self->_actionHandler doPrimaryAction:self specifier:v4];
  }
}

- (void)_doSecondaryAction:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(AAUITrustedContactDetailsActionHandler *)self->_actionHandler doSecondaryAction:self specifier:v4];
  }
}

- (void)_showDestructiveAlert:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC650];
  v6 = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionSheetDetails];
  v7 = [v5 alertWithTitle:0 message:v6];

  v8 = MEMORY[0x1E69DC648];
  v9 = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionText];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AAUITrustedContactDetailsViewController__showDestructiveAlert___block_invoke;
  v15[3] = &unk_1E820D420;
  objc_copyWeak(&v17, &location);
  v10 = v4;
  v16 = v10;
  v11 = [v8 actionWithTitle:v9 style:2 handler:v15];
  [v7 addAction:v11];

  v12 = MEMORY[0x1E69DC648];
  v13 = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionSheetCancelText];
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];

  [(AAUITrustedContactDetailsViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __65__AAUITrustedContactDetailsViewController__showDestructiveAlert___block_invoke(uint64_t a1)
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__AAUITrustedContactDetailsViewController__showDestructiveAlert___block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doDestructiveAction:*(a1 + 32)];
}

@end