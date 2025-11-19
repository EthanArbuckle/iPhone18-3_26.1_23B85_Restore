@interface FPUIAuthenticationCredentialsViewController
- (BOOL)_canMoveToNextStep;
- (BOOL)textFieldShouldReturn:(id)a3;
- (FPUIAuthenticationCredentialsViewController)initWithCredentialDescriptors:(id)a3;
- (id)_rowDescriptorForCredentialDescriptor:(id)a3;
- (id)defaultRightBarButtonItem;
- (void)_next:(id)a3;
- (void)_updateCanTransitionToNextStepState;
- (void)_updateCurrentlyVisibleSectionsNeedsReloadData:(BOOL)a3;
- (void)_updateTextFieldConstraints;
- (void)setupTableViewSections;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationCredentialsViewController

- (FPUIAuthenticationCredentialsViewController)initWithCredentialDescriptors:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPUIAuthenticationCredentialsViewController;
  v6 = [(FPUIAuthenticationTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_credentialDescriptors, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FPUIAuthenticationCredentialsViewController;
  [(FPUIAuthenticationTableViewController *)&v3 viewDidLoad];
  [(FPUIAuthenticationTableViewController *)self setCanTransitionToNextStep:[(FPUIAuthenticationCredentialsViewController *)self _canMoveToNextStep]];
}

- (id)defaultRightBarButtonItem
{
  v9 = FPUILoc(@"NEXT_NAV_BAR_BUTTON_TITLE", a2, v2, v3, v4, v5, v6, v7, v12);
  v10 = FPNavBarButton(v9, 0, self, sel__next_);

  return v10;
}

- (id)_rowDescriptorForCredentialDescriptor:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 type];

  switch(v7)
  {
    case 2:
      v15 = @"APPLE_ID_OPTION";
      goto LABEL_7;
    case 1:
      v15 = @"REGISTERED_USER_OPTION";
      goto LABEL_7;
    case 0:
      v15 = @"GUEST_OPTION";
LABEL_7:
      v16 = FPUILoc(v15, v8, v9, v10, v11, v12, v13, v14, v20);
      goto LABEL_9;
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"FPUIAuthenticationCredentialsViewController.m" lineNumber:72 description:@"bad credential descriptor type"];

  v16 = 0;
LABEL_9:
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__FPUIAuthenticationCredentialsViewController__rowDescriptorForCredentialDescriptor___block_invoke;
  v22[3] = &unk_278A513E8;
  v23 = v16;
  v24 = self;
  v18 = v16;
  [v6 setCellCustomizationHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__FPUIAuthenticationCredentialsViewController__rowDescriptorForCredentialDescriptor___block_invoke_2;
  v21[3] = &unk_278A51520;
  v21[4] = self;
  [v6 setSelectionHandler:v21];

  return v6;
}

void __85__FPUIAuthenticationCredentialsViewController__rowDescriptorForCredentialDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v11 = a2;
  v7 = [v11 textLabel];
  [v7 setText:v5];

  v8 = *(*(a1 + 40) + 1080);
  v9 = [v6 row];

  if (v8 == v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v11 setAccessoryType:v10];
}

void __85__FPUIAuthenticationCredentialsViewController__rowDescriptorForCredentialDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 1080);
  if (v4 != [v3 row])
  {
    *(*(a1 + 32) + 1080) = [v3 row];
    v5 = [*(a1 + 32) tableView];
    v6 = [v5 cellForRowAtIndexPath:v3];

    [v6 setAccessoryType:3];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [*(a1 + 32) tableView];
    v8 = [v7 visibleCells];

    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [*(a1 + 32) tableView];
          v15 = [v14 indexPathForCell:v13];

          v16 = [v15 section];
          if (v16 == [v3 section])
          {
            v17 = [v15 row];
            if (v17 != [v3 row])
            {
              [v13 setAccessoryType:0];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) _updateCurrentlyVisibleSections];
    [*(a1 + 32) setCanTransitionToNextStep:{objc_msgSend(*(a1 + 32), "_canMoveToNextStep")}];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setupTableViewSections
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = FPUILoc(@"CONNECT_AS", v4, v5, v6, v7, v8, v9, v10, v34);
  [v3 setHeaderTitle:v11];

  [v3 setHeaderHeight:*MEMORY[0x277D76F30]];
  v12 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = self->_credentialDescriptors;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        if ([v19 type] == 1)
        {
          self->_selectedCredentialRow = v16;
        }

        v20 = [(FPUIAuthenticationCredentialsViewController *)self _rowDescriptorForCredentialDescriptor:v19];
        [v12 addObject:v20];
        ++v16;
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v15);
  }

  v21 = objc_opt_new();
  credentialsInputSection = self->_credentialsInputSection;
  self->_credentialsInputSection = v21;

  [(FPUIAuthenticationSectionDescriptor *)self->_credentialsInputSection setHeaderHeight:36.0];
  v23 = objc_opt_new();
  [v23 setCellReuseIdentifier:@"TextInputReuseIdentifier"];
  [v23 setCellClass:objc_opt_class()];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke;
  v41[3] = &unk_278A51590;
  v41[4] = self;
  [v23 setCellCustomizationHandler:v41];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_2;
  v40[3] = &unk_278A514D8;
  v40[4] = self;
  [v23 setCellWillDisplayHandler:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_3;
  v39[3] = &unk_278A51520;
  v39[4] = self;
  [v23 setSelectionHandler:v39];
  v24 = [v23 copy];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_4;
  v38[3] = &unk_278A51590;
  v38[4] = self;
  [v24 setCellCustomizationHandler:v38];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_5;
  v37[3] = &unk_278A514D8;
  v37[4] = self;
  [v24 setCellWillDisplayHandler:v37];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_6;
  v36[3] = &unk_278A51520;
  v36[4] = self;
  [v24 setSelectionHandler:v36];
  v25 = objc_opt_new();
  rememberPasswordSection = self->_rememberPasswordSection;
  self->_rememberPasswordSection = v25;

  v27 = objc_opt_new();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_7;
  v35[3] = &unk_278A514D8;
  v35[4] = self;
  [v27 setCellCustomizationHandler:v35];
  v28 = self->_credentialsInputSection;
  v50[0] = v3;
  v50[1] = v28;
  v50[2] = self->_rememberPasswordSection;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  [(FPUIAuthenticationTableViewController *)self setSectionDescriptors:v29];

  v49[0] = v12;
  v48[0] = &unk_284B1D698;
  v48[1] = &unk_284B1D6B0;
  v47[0] = v23;
  v47[1] = v24;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v49[1] = v30;
  v48[2] = &unk_284B1D6C8;
  v46 = v27;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v49[2] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  [(FPUIAuthenticationTableViewController *)self setRowDescriptors:v32];

  [(FPUIAuthenticationCredentialsViewController *)self _updateCurrentlyVisibleSectionsNeedsReloadData:0];
  v33 = *MEMORY[0x277D85DE8];
}

void __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = [*(*(a1 + 32) + 1072) objectAtIndexedSubscript:*(*(a1 + 32) + 1080)];
  v11 = FPUILoc(@"NAME", v4, v5, v6, v7, v8, v9, v10, v27);
  v12 = [v29 label];
  [v12 setText:v11];

  if ([v3 type] == 2)
  {
    v20 = @"APPLE_ID_PLACEHOLDER";
  }

  else
  {
    v20 = @"USERNAME_PLACEHOLDER";
  }

  v21 = FPUILoc(v20, v13, v14, v15, v16, v17, v18, v19, v28);
  v22 = [v29 textField];
  [v22 setPlaceholder:v21];

  v23 = [v29 textField];
  v24 = *(a1 + 32);
  v25 = *(v24 + 1104);
  *(v24 + 1104) = v23;

  v26 = [v3 username];
  [*(*(a1 + 32) + 1104) setText:v26];

  [*(*(a1 + 32) + 1104) setDelegate:?];
  [*(*(a1 + 32) + 1104) setAutocorrectionType:1];
  [*(*(a1 + 32) + 1104) setAutocapitalizationType:0];
  [*(*(a1 + 32) + 1104) setTextContentType:&stru_284B1A950];
  [*(*(a1 + 32) + 1104) addTarget:*(a1 + 32) action:sel_textFieldDidChange_ forControlEvents:0x20000];
  [*(*(a1 + 32) + 1104) setAccessibilityIdentifier:@"Username"];
  [*(a1 + 32) _updateTextFieldConstraints];
  [*(a1 + 32) _updateCanTransitionToNextStepState];
}

void __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = FPUILoc(@"PASSWORD", v4, v5, v6, v7, v8, v9, v10, v38);
  v12 = [v3 label];
  [v12 setText:v11];

  v41 = [*(*(a1 + 32) + 1072) objectAtIndexedSubscript:*(*(a1 + 32) + 1080)];
  v20 = FPUILoc(@"PASSWORD_OPTIONAL", v13, v14, v15, v16, v17, v18, v19, v39);
  v21 = [v3 textField];
  [v21 setPlaceholder:v20];

  v22 = [v3 textField];
  [v22 setSecureTextEntry:1];

  v23 = [v41 password];
  v24 = [v3 textField];
  [v24 setText:v23];

  v25 = [v3 textField];
  [v25 setAccessibilityIdentifier:@"Password"];

  v33 = FPUILoc(@"PASSWORD", v26, v27, v28, v29, v30, v31, v32, v40);
  v34 = [v3 textField];
  [v34 setAccessibilityLabel:v33];

  v35 = [v3 textField];

  v36 = *(a1 + 32);
  v37 = *(v36 + 1112);
  *(v36 + 1112) = v35;

  [*(*(a1 + 32) + 1112) setDelegate:?];
  [*(*(a1 + 32) + 1112) addTarget:*(a1 + 32) action:sel_textFieldDidChange_ forControlEvents:0x20000];
  [*(*(a1 + 32) + 1112) setTextContentType:&stru_284B1A950];
  [*(a1 + 32) _updateCanTransitionToNextStepState];
}

void __69__FPUIAuthenticationCredentialsViewController_setupTableViewSections__block_invoke_7(uint64_t a1, void *a2)
{
  v16 = a2;
  v10 = FPUILoc(@"REMEMBER_PASSWORD", v3, v4, v5, v6, v7, v8, v9, v15);
  v11 = [v16 textLabel];
  [v11 setText:v10];

  v12 = objc_opt_new();
  v13 = *(a1 + 32);
  v14 = *(v13 + 1120);
  *(v13 + 1120) = v12;

  [v16 setAccessoryView:*(*(a1 + 32) + 1120)];
}

- (void)_updateTextFieldConstraints
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldLeadingAnchorConstraint);

  if (!WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__FPUIAuthenticationCredentialsViewController__updateTextFieldConstraints__block_invoke;
    v9[3] = &unk_278A51670;
    v9[4] = self;
    v4 = MEMORY[0x2383F1490](v9);
    if ((v4)[2](v4, self->_nameInputTextField))
    {
      if ((v4)[2](v4, self->_passwordInputTextField))
      {
        v5 = [(UITextField *)self->_nameInputTextField leadingAnchor];
        v6 = [(UITextField *)self->_passwordInputTextField leadingAnchor];
        v7 = [v5 constraintEqualToAnchor:v6];
        objc_storeWeak(&self->_textFieldLeadingAnchorConstraint, v7);

        v8 = objc_loadWeakRetained(&self->_textFieldLeadingAnchorConstraint);
        [v8 setActive:1];
      }
    }
  }
}

BOOL __74__FPUIAuthenticationCredentialsViewController__updateTextFieldConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  do
  {
    v5 = [*(a1 + 32) tableView];

    v6 = v4 == v5;
    v7 = v4 == v5;
    if (v6)
    {
      break;
    }

    v8 = [v4 superview];

    v4 = v8;
  }

  while (v8);

  return v7;
}

- (void)_updateCurrentlyVisibleSectionsNeedsReloadData:(BOOL)a3
{
  v3 = a3;
  v6 = [(NSArray *)self->_credentialDescriptors objectAtIndexedSubscript:self->_selectedCredentialRow];
  v8 = v6;
  if (!v6)
  {
    [(FPUIAuthenticationCredentialsViewController *)a2 _updateCurrentlyVisibleSectionsNeedsReloadData:?];
    v6 = 0;
  }

  -[FPUIAuthenticationSectionDescriptor setActive:](self->_credentialsInputSection, "setActive:", [v6 type] != 0);
  [(FPUIAuthenticationSectionDescriptor *)self->_rememberPasswordSection setActive:0];
  if (v3)
  {
    v7 = [(FPUIAuthenticationCredentialsViewController *)self tableView];
    [v7 reloadData];
  }
}

- (void)_next:(id)a3
{
  [(FPUIAuthenticationTableViewController *)self setNavBarActivityIndicatorHidden:0];
  v8 = [(NSArray *)self->_credentialDescriptors objectAtIndexedSubscript:self->_selectedCredentialRow];
  v4 = objc_opt_new();
  [v4 setType:{objc_msgSend(v8, "type")}];
  v5 = [v8 username];
  [v4 setUsername:v5];

  v6 = [v8 password];
  [v4 setPassword:v6];

  [(FPUIAuthenticationTableViewController *)self setTransitioning:1];
  v7 = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  [v7 connectionFlowDelegate:self didInputCredentials:v4];
}

- (BOOL)_canMoveToNextStep
{
  v3 = [(NSArray *)self->_credentialDescriptors objectAtIndexedSubscript:self->_selectedCredentialRow];
  if ([v3 type])
  {
    v4 = [(UITextField *)self->_nameInputTextField text];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  if ([(UITextField *)self->_nameInputTextField isFirstResponder])
  {
    [(UITextField *)self->_passwordInputTextField becomeFirstResponder];
  }

  else
  {
    if (![(FPUIAuthenticationCredentialsViewController *)self _canMoveToNextStep])
    {
      v5 = 1;
      goto LABEL_7;
    }

    [(FPUIAuthenticationCredentialsViewController *)self _next:v4];
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)textFieldDidChange:(id)a3
{
  v6 = a3;
  v4 = [(NSArray *)self->_credentialDescriptors objectAtIndexedSubscript:self->_selectedCredentialRow];
  if (self->_nameInputTextField == v6)
  {
    v5 = [(UITextField *)v6 text];
    [v4 setUsername:v5];
  }

  else
  {
    if (self->_passwordInputTextField != v6)
    {
      goto LABEL_6;
    }

    v5 = [(UITextField *)v6 text];
    [v4 setPassword:v5];
  }

LABEL_6:
  [(FPUIAuthenticationCredentialsViewController *)self _updateCanTransitionToNextStepState];
}

- (void)_updateCanTransitionToNextStepState
{
  v3 = [(FPUIAuthenticationCredentialsViewController *)self _canMoveToNextStep];

  [(FPUIAuthenticationTableViewController *)self setCanTransitionToNextStep:v3];
}

- (void)_updateCurrentlyVisibleSectionsNeedsReloadData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPUIAuthenticationCredentialsViewController.m" lineNumber:245 description:@"nil currentlySelectedDescriptor"];
}

@end