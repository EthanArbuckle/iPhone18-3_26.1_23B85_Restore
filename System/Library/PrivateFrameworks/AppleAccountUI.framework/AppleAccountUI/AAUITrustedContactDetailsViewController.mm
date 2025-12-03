@interface AAUITrustedContactDetailsViewController
- (AAUITrustedContactDetailsViewController)initWithContact:(id)contact viewModel:(id)model actionHandler:(id)handler;
- (id)_bigContactSpecifier;
- (id)_destructiveActionRowSpecifier;
- (id)_detailsRowSpecifier;
- (id)_optionsGroupSpecifier;
- (id)_primaryActionRowSpecifier;
- (id)_secondaryActionRowSpecifier;
- (id)specifiers;
- (void)_doPrimaryAction:(id)action;
- (void)_doSecondaryAction:(id)action;
- (void)_showDestructiveAlert:(id)alert;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUITrustedContactDetailsViewController

- (AAUITrustedContactDetailsViewController)initWithContact:(id)contact viewModel:(id)model actionHandler:(id)handler
{
  contactCopy = contact;
  modelCopy = model;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = AAUITrustedContactDetailsViewController;
  v12 = [(AAUITrustedContactDetailsViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    objc_storeStrong(&v13->_viewModel, model);
    objc_storeStrong(&v13->_actionHandler, handler);
  }

  return v13;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = AAUITrustedContactDetailsViewController;
  [(AAUITrustedContactDetailsViewController *)&v8 viewWillAppear:appear];
  v4 = MEMORY[0x1E6985DB0];
  telemetryFlowID = [(AAUITrustedContactDetailsViewController *)self telemetryFlowID];
  v6 = [v4 analyticsEventWithName:@"com.apple.appleaccount.custodian.ui.openCustodianDetails" altDSID:0 flowID:telemetryFlowID];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v6];
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
    _bigContactSpecifier = [(AAUITrustedContactDetailsViewController *)self _bigContactSpecifier];
    [v5 addObject:_bigContactSpecifier];

    _optionsGroupSpecifier = [(AAUITrustedContactDetailsViewController *)self _optionsGroupSpecifier];
    [v5 addObject:_optionsGroupSpecifier];

    _detailsRowSpecifier = [(AAUITrustedContactDetailsViewController *)self _detailsRowSpecifier];
    [v5 addObject:_detailsRowSpecifier];

    if (objc_opt_respondsToSelector())
    {
      primaryActionText = [(AATrustedContactDetailsViewModel *)self->_viewModel primaryActionText];
      v10 = [primaryActionText length];

      if (v10)
      {
        _primaryActionRowSpecifier = [(AAUITrustedContactDetailsViewController *)self _primaryActionRowSpecifier];
        [v5 addObject:_primaryActionRowSpecifier];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      secondaryActionText = [(AATrustedContactDetailsViewModel *)self->_viewModel secondaryActionText];
      v13 = [secondaryActionText length];

      if (v13)
      {
        _secondaryActionRowSpecifier = [(AAUITrustedContactDetailsViewController *)self _secondaryActionRowSpecifier];
        [v5 addObject:_secondaryActionRowSpecifier];
      }
    }

    _destructiveActionRowSpecifier = [(AAUITrustedContactDetailsViewController *)self _destructiveActionRowSpecifier];
    [v5 addObject:_destructiveActionRowSpecifier];

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
  displayName = [(AALocalContactInfo *)self->_contact displayName];
  v5 = [v3 preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  displayName2 = [(AALocalContactInfo *)self->_contact displayName];
  [v5 setProperty:displayName2 forKey:*MEMORY[0x1E69C59A8]];

  handle = [(AALocalContactInfo *)self->_contact handle];
  [v5 setProperty:handle forKey:*MEMORY[0x1E69C59A0]];

  v8 = objc_opt_new();
  v9 = [v8 profilePictureForLocalContact:self->_contact];
  [v5 setProperty:v9 forKey:*MEMORY[0x1E69C5920]];
  [v5 setProperty:&unk_1F44C0700 forKey:*MEMORY[0x1E69C5988]];

  return v5;
}

- (id)_optionsGroupSpecifier
{
  v2 = MEMORY[0x1E69C5748];
  title = [(AATrustedContactDetailsViewModel *)self->_viewModel title];
  v4 = [v2 groupSpecifierWithID:title name:0];

  return v4;
}

- (id)_detailsRowSpecifier
{
  v3 = objc_opt_new();
  detailsLabel = [(AATrustedContactDetailsViewModel *)self->_viewModel detailsLabel];
  detailsLabel2 = [(AATrustedContactDetailsViewModel *)self->_viewModel detailsLabel];
  detailsSubtitle = [(AATrustedContactDetailsViewModel *)self->_viewModel detailsSubtitle];
  v7 = [v3 createSubtitleTableCellWithName:detailsLabel title:detailsLabel2 subtitle:detailsSubtitle image:0];

  return v7;
}

- (id)_primaryActionRowSpecifier
{
  contact = [(AATrustedContactDetailsViewModel *)self->_viewModel contact];
  v4 = contact;
  if (contact && [contact contactType] == 2)
  {
    if ([v4 trustedContactStatus] == 2)
    {
      isAcceptedAndShared = [v4 isAcceptedAndShared];
    }

    else
    {
      isAcceptedAndShared = 0;
    }
  }

  else
  {
    isAcceptedAndShared = 1;
  }

  v6 = MEMORY[0x1E69C5748];
  primaryActionText = [(AATrustedContactDetailsViewModel *)self->_viewModel primaryActionText];
  v8 = [v6 preferenceSpecifierNamed:primaryActionText target:self set:0 get:0 detail:0 cell:13 edit:0];

  primaryActionText2 = [(AATrustedContactDetailsViewModel *)self->_viewModel primaryActionText];
  [v8 setIdentifier:primaryActionText2];

  [v8 setButtonAction:sel__doPrimaryAction_];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:isAcceptedAndShared];
  [v8 setProperty:v10 forKey:*MEMORY[0x1E69C58C8]];

  return v8;
}

- (id)_secondaryActionRowSpecifier
{
  v3 = MEMORY[0x1E69C5748];
  secondaryActionText = [(AATrustedContactDetailsViewModel *)self->_viewModel secondaryActionText];
  v5 = [v3 preferenceSpecifierNamed:secondaryActionText target:self set:0 get:0 detail:0 cell:13 edit:0];

  secondaryActionText2 = [(AATrustedContactDetailsViewModel *)self->_viewModel secondaryActionText];
  [v5 setIdentifier:secondaryActionText2];

  [v5 setButtonAction:sel__doSecondaryAction_];

  return v5;
}

- (id)_destructiveActionRowSpecifier
{
  v3 = MEMORY[0x1E69C5748];
  destructiveActionText = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionText];
  v5 = [v3 deleteButtonSpecifierWithName:destructiveActionText target:self action:sel__showDestructiveAlert_];

  destructiveActionText2 = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionText];
  [v5 setIdentifier:destructiveActionText2];

  [v5 setProperty:&unk_1F44C05D0 forKey:*MEMORY[0x1E69C5818]];

  return v5;
}

- (void)_doPrimaryAction:(id)action
{
  actionCopy = action;
  if (objc_opt_respondsToSelector())
  {
    [(AAUITrustedContactDetailsActionHandler *)self->_actionHandler doPrimaryAction:self specifier:actionCopy];
  }
}

- (void)_doSecondaryAction:(id)action
{
  actionCopy = action;
  if (objc_opt_respondsToSelector())
  {
    [(AAUITrustedContactDetailsActionHandler *)self->_actionHandler doSecondaryAction:self specifier:actionCopy];
  }
}

- (void)_showDestructiveAlert:(id)alert
{
  alertCopy = alert;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC650];
  destructiveActionSheetDetails = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionSheetDetails];
  v7 = [v5 alertWithTitle:0 message:destructiveActionSheetDetails];

  v8 = MEMORY[0x1E69DC648];
  destructiveActionText = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionText];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AAUITrustedContactDetailsViewController__showDestructiveAlert___block_invoke;
  v15[3] = &unk_1E820D420;
  objc_copyWeak(&v17, &location);
  v10 = alertCopy;
  v16 = v10;
  v11 = [v8 actionWithTitle:destructiveActionText style:2 handler:v15];
  [v7 addAction:v11];

  v12 = MEMORY[0x1E69DC648];
  destructiveActionSheetCancelText = [(AATrustedContactDetailsViewModel *)self->_viewModel destructiveActionSheetCancelText];
  v14 = [v12 actionWithTitle:destructiveActionSheetCancelText style:1 handler:0];
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