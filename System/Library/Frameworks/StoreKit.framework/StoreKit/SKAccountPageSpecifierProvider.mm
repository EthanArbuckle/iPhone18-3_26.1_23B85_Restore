@interface SKAccountPageSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_isSingleIdentity;
- (BOOL)handleURL:(id)l;
- (NSArray)specifiers;
- (SKAccountPageSpecifierProvider)initWithAccountManager:(id)manager;
- (id)_appleAccount;
- (id)_storeAccount;
- (void)_accountPageSpecifierWasTapped:(id)tapped;
- (void)_viewAccountPageSpecifierWasTapped:(id)tapped;
@end

@implementation SKAccountPageSpecifierProvider

- (SKAccountPageSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SKAccountPageSpecifierProvider;
  v6 = [(SKAccountPageSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (NSArray)specifiers
{
  v14[1] = *MEMORY[0x1E69E9840];
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v3 = specifiers;
  }

  else
  {
    _storeAccount = [(SKAccountPageSpecifierProvider *)self _storeAccount];

    if (_storeAccount)
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"APPLEID_ACCOUNT_PAGE_CELL_TITLE" value:&stru_1F29BCE20 table:0];
      v8 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v8 setControllerLoadAction:sel__accountPageSpecifierWasTapped_];
      [v8 setIdentifier:@"STORE_SERVICE"];
      [v8 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5950]];
      [v8 setProperty:@"com.apple.AppStore" forKey:*MEMORY[0x1E69C5948]];
      if (![(SKAccountPageSpecifierProvider *)self _isSingleIdentity])
      {
        [v8 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
        [v8 setProperty:v7 forKey:*MEMORY[0x1E69C59A8]];
        _storeAccount2 = [(SKAccountPageSpecifierProvider *)self _storeAccount];
        aa_formattedUsername = [_storeAccount2 aa_formattedUsername];
        [v8 setProperty:aa_formattedUsername forKey:*MEMORY[0x1E69C59A0]];
      }

      v14[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = self->_specifiers;
      self->_specifiers = v11;

      v3 = self->_specifiers;
    }

    else
    {
      v3 = MEMORY[0x1E695E0F0];
    }
  }

  return v3;
}

- (BOOL)_isSingleIdentity
{
  _appleAccount = [(SKAccountPageSpecifierProvider *)self _appleAccount];
  _storeAccount = [(SKAccountPageSpecifierProvider *)self _storeAccount];
  v5 = _storeAccount;
  v6 = 1;
  if (_appleAccount && _storeAccount)
  {
    ams_altDSID = [_appleAccount ams_altDSID];
    ams_altDSID2 = [v5 ams_altDSID];
    if ([ams_altDSID length] && objc_msgSend(ams_altDSID2, "length"))
    {
      v6 = [ams_altDSID isEqualToString:ams_altDSID2];
    }

    else
    {
      ams_DSID = [_appleAccount ams_DSID];
      ams_DSID2 = [v5 ams_DSID];
      v11 = ams_DSID2;
      if (ams_DSID2)
      {
        v12 = ams_DSID2;
      }

      else
      {
        v12 = &unk_1F29D5210;
      }

      v6 = [ams_DSID isEqualToNumber:v12];
    }
  }

  return v6;
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAIDAServiceTypeCloudSymbolLoc_ptr;
  v11 = getAIDAServiceTypeCloudSymbolLoc_ptr;
  if (!getAIDAServiceTypeCloudSymbolLoc_ptr)
  {
    v4 = AppleIDSSOAuthenticationLibrary();
    v9[3] = dlsym(v4, "AIDAServiceTypeCloud");
    getAIDAServiceTypeCloudSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v7 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v5 = [accounts objectForKeyedSubscript:*v3];

  return v5;
}

- (id)_storeAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAIDAServiceTypeStoreSymbolLoc_ptr;
  v11 = getAIDAServiceTypeStoreSymbolLoc_ptr;
  if (!getAIDAServiceTypeStoreSymbolLoc_ptr)
  {
    v4 = AppleIDSSOAuthenticationLibrary();
    v9[3] = dlsym(v4, "AIDAServiceTypeStore");
    getAIDAServiceTypeStoreSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v7 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v5 = [accounts objectForKeyedSubscript:*v3];

  return v5;
}

- (void)_accountPageSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(SKAccountPageSpecifierProvider *)self delegate];
  [delegate specifierProvider:self willBeginLoadingSpecifier:tappedCopy];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v8 = MEMORY[0x1E69DC648];
  v9 = [v6 localizedStringForKey:@"SIGN_OUT" value:&stru_1F29BCE20 table:0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke;
  v39[3] = &unk_1E7B28A30;
  v10 = v6;
  v40 = v10;
  selfCopy = self;
  v11 = tappedCopy;
  v42 = v11;
  v12 = [v8 actionWithTitle:v9 style:2 handler:v39];
  [v7 addAction:v12];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v13 = getAMSBiometricsClass_softClass;
  v47 = getAMSBiometricsClass_softClass;
  if (!getAMSBiometricsClass_softClass)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __getAMSBiometricsClass_block_invoke;
    v43[3] = &unk_1E7B279A8;
    v43[4] = &v44;
    __getAMSBiometricsClass_block_invoke(v43);
    v13 = v45[3];
  }

  v14 = v13;
  _Block_object_dispose(&v44, 8);
  _storeAccount = [(SKAccountPageSpecifierProvider *)self _storeAccount];
  v16 = [v13 isAvailableForAccount:_storeAccount];

  if ((v16 & 1) == 0)
  {
    v17 = MEMORY[0x1E69DC648];
    v18 = [v10 localizedStringForKey:@"PASSWORD_SETTINGS" value:&stru_1F29BCE20 table:0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_6;
    v37[3] = &unk_1E7B289E0;
    v37[4] = self;
    v38 = v11;
    v19 = [v17 actionWithTitle:v18 style:0 handler:v37];
    [v7 addAction:v19];
  }

  v20 = MEMORY[0x1E69DC648];
  v21 = [v10 localizedStringForKey:@"VIEW_ACCOUNT" value:&stru_1F29BCE20 table:0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_7;
  v35[3] = &unk_1E7B289E0;
  v35[4] = self;
  v22 = v11;
  v36 = v22;
  v23 = [v20 actionWithTitle:v21 style:0 handler:v35];
  [v7 addAction:v23];

  v24 = MEMORY[0x1E69DC648];
  v25 = [v10 localizedStringForKey:@"CANCEL" value:&stru_1F29BCE20 table:0];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_8;
  v32 = &unk_1E7B289E0;
  selfCopy2 = self;
  v34 = v22;
  v26 = v22;
  v27 = [v24 actionWithTitle:v25 style:1 handler:&v29];
  [v7 addAction:{v27, v29, v30, v31, v32, selfCopy2}];

  delegate2 = [(SKAccountPageSpecifierProvider *)self delegate];
  [delegate2 specifierProvider:self showViewController:v7];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DC650];
  v3 = [*(a1 + 32) localizedStringForKey:@"ARE_YOU_SURE" value:&stru_1F29BCE20 table:0];
  v4 = [*(a1 + 32) localizedStringForKey:@"CONFIRM_BLURB" value:&stru_1F29BCE20 table:0];
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = [*(a1 + 32) localizedStringForKey:@"CANCEL" value:&stru_1F29BCE20 table:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_2;
  v21[3] = &unk_1E7B289E0;
  v8 = *(a1 + 48);
  v21[4] = *(a1 + 40);
  v22 = v8;
  v9 = [v6 actionWithTitle:v7 style:1 handler:v21];
  [v5 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = [*(a1 + 32) localizedStringForKey:@"SIGN_OUT" value:&stru_1F29BCE20 table:0];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_3;
  v18 = &unk_1E7B289E0;
  v12 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v12;
  v13 = [v10 actionWithTitle:v11 style:2 handler:&v15];
  [v5 addAction:{v13, v15, v16, v17, v18, v19}];

  v14 = [*(a1 + 40) delegate];
  [v14 specifierProvider:*(a1 + 40) showViewController:v5];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _storeAccount];
  [v2 setActive:0];
  v3 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v4 = [v3 ams_saveAccount:v2];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_4;
  v6[3] = &unk_1E7B28A08;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 addFinishBlock:v6];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_5;
  v2[3] = &unk_1E7B28640;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = getAMSUIPasswordSettingsViewControllerClass_softClass;
  v16 = getAMSUIPasswordSettingsViewControllerClass_softClass;
  if (!getAMSUIPasswordSettingsViewControllerClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getAMSUIPasswordSettingsViewControllerClass_block_invoke;
    v12[3] = &unk_1E7B279A8;
    v12[4] = &v13;
    __getAMSUIPasswordSettingsViewControllerClass_block_invoke(v12);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  v6 = [v4 alloc];
  v7 = [*(a1 + 32) _storeAccount];
  v8 = [v6 initWithAccount:v7];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  v10 = [*(a1 + 32) delegate];
  [v10 specifierProvider:*(a1 + 32) showViewController:v9];

  v11 = [*(a1 + 32) delegate];
  [v11 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _viewAccountPageSpecifierWasTapped:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];
}

void __65__SKAccountPageSpecifierProvider__accountPageSpecifierWasTapped___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];
}

- (void)_viewAccountPageSpecifierWasTapped:(id)tapped
{
  v6 = [[SKAccountPageViewController alloc] initWithAccountURL:0];
  _storeAccount = [(SKAccountPageSpecifierProvider *)self _storeAccount];
  [(SKAccountPageViewController *)v6 setAccount:_storeAccount];

  delegate = [(SKAccountPageSpecifierProvider *)self delegate];
  [delegate specifierProvider:self showViewController:v6];
}

- (BOOL)handleURL:(id)l
{
  v4 = [l valueForKey:@"path"];
  v5 = [v4 isEqualToString:@"VIEW_ACCOUNT"];
  if (v5)
  {
    specifiers = [(SKAccountPageSpecifierProvider *)self specifiers];
    firstObject = [specifiers firstObject];

    delegate = [(SKAccountPageSpecifierProvider *)self delegate];
    [delegate specifierProvider:self willBeginLoadingSpecifier:firstObject];

    [(SKAccountPageSpecifierProvider *)self _viewAccountPageSpecifierWasTapped:firstObject];
    delegate2 = [(SKAccountPageSpecifierProvider *)self delegate];
    [delegate2 specifierProvider:self didFinishLoadingSpecifier:firstObject];
  }

  return v5;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end