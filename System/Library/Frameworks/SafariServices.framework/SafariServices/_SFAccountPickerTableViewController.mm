@interface _SFAccountPickerTableViewController
- (BOOL)_shouldShowAutoFillPasskeys;
- (BOOL)_shouldShowPasswordsMatchingHintStringsSection;
- (BOOL)_shouldUseEmptyHeaderFooterHeightInSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4;
- (_SFAccountPickerTableViewController)initWithConfiguration:(id)a3;
- (_SFAccountPickerTableViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_appIconForVerificationCode:(id)a3;
- (id)_bundleIdentifierForVerificationCode:(id)a3;
- (id)_cellConfigurationForVerificationCodeAtIndexPath:(id)a3;
- (id)_detailViewControllerForSavedAccount:(id)a3;
- (id)_generatedPasswordsDomainHintString;
- (id)_indexPathForSavedAccount:(id)a3;
- (id)_savedAccountForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_rowTypeForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_accountStoreDidChange;
- (void)_cancel;
- (void)_consumeAndFillVerificationCode:(id)a3;
- (void)_deleteSavedAccountAtIndexPath:(id)a3;
- (void)_didPickSavedAccountForPassword:(id)a3;
- (void)_didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable:(id)a3;
- (void)_fillPasswordForSavedAccount:(id)a3;
- (void)_fillUsernameForSavedAccount:(id)a3;
- (void)_fillVerificationCodeForSavedAccount:(id)a3;
- (void)_presentAddPasswordViewController;
- (void)_presentAlertToConfirmDeletingAccountsAtIndexPath:(id)a3;
- (void)_presentErrorAlertWithString:(id)a3;
- (void)_presentGeneratedPasswordsViewController;
- (void)_reloadSavedAccountsWithCompletionHandler:(id)a3;
- (void)_reloadVerificationCodesIfNeeded;
- (void)_removeSavedAccount:(id)a3 shouldPerformDeletionInAccountStore:(BOOL)a4;
- (void)_showAccountDetailsForSavedAccount:(id)a3;
- (void)_showAccountDetailsForSavedAccountAtIndexPath:(id)a3;
- (void)_updateMatchingGeneratedPasswordsState;
- (void)_updateMatchingPasswords;
- (void)_updateNavigationItemTitleAndPrompt;
- (void)_updateSections;
- (void)addSavedAccountViewControllerDidFinish:(id)a3 withSavedAccount:(id)a4;
- (void)dealloc;
- (void)handleIconDidUpdateForDomain:(id)a3;
- (void)linkableFooterViewDidInteractWithLink:(id)a3;
- (void)newAutoFillablePasskeysAvailable:(id)a3;
- (void)passwordManagerLogViewControllerWantsToDismiss;
- (void)passwordManagerLogViewControllerWantsToSaveGeneratedPassword:(id)a3;
- (void)reloadTable;
- (void)searchPatternDidUpdate;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _SFAccountPickerTableViewController

- (_SFAccountPickerTableViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(_SFAccountTableConfiguration);
  [(_SFAccountTableConfiguration *)v6 setShouldShowSearchBar:1];
  [(_SFAccountTableConfiguration *)v6 setSupportsDelete:1];
  [(_SFAccountTableConfiguration *)v6 setShouldConfigureMultipleSelectionDuringEditing:0];
  [(_SFAccountTableConfiguration *)v6 setSupportsShare:0];
  -[_SFAccountTableConfiguration setIsForFillingIndividualAccountFields:](v6, "setIsForFillingIndividualAccountFields:", [v5 isForFillingIndividualAccountFields]);
  v7 = [MEMORY[0x1E69B1C68] sharedSiteMetadataManager];
  v28.receiver = self;
  v28.super_class = _SFAccountPickerTableViewController;
  v8 = [(_SFAccountTableViewController *)&v28 initWithSiteMetadataManager:v7 configuration:v6];

  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    v9 = [(_SFAccountPickerTableViewController *)v8 navigationItem];
    v10 = _WBSLocalizedString();
    [v9 setBackButtonTitle:v10];

    v11 = [(SFAccountPickerConfiguration *)v8->_configuration prompt];
    [v9 setPrompt:v11];

    if ([(SFAccountPickerConfiguration *)v8->_configuration shouldAllowAddingNewPasswords])
    {
      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:v8 action:sel__addNavigationBarItemTapped_];
      addNavigationBarItem = v8->_addNavigationBarItem;
      v8->_addNavigationBarItem = v12;

      [(UIBarButtonItem *)v8->_addNavigationBarItem setAccessibilityIdentifier:@"Passwords List Navigation Bar Add Button"];
      [v9 setRightBarButtonItem:v8->_addNavigationBarItem];
    }

    v14 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v8->_authenticationServicesAgentProxy;
    v8->_authenticationServicesAgentProxy = v14;

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v8 selector:sel_newAutoFillablePasskeysAvailable_ name:*MEMORY[0x1E69C8D58] object:0];

    v17 = [(_SFAccountPickerTableViewController *)v8 tableView];
    [v17 setAccessibilityIdentifier:@"AutoFillPasswordTable"];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = *MEMORY[0x1E69C8D50];
    v20 = [MEMORY[0x1E69C8A38] sharedStore];
    [v18 addObserver:v8 selector:sel__accountStoreDidChange name:v19 object:v20];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = *MEMORY[0x1E69C8BF0];
    v23 = [MEMORY[0x1E69C8898] sharedStore];
    [v21 addObserver:v8 selector:sel__generatedPasswordsStoreDidChange name:v22 object:v23];

    if ([(SFAccountPickerConfiguration *)v8->_configuration shouldShowReceivedVerificationCodes])
    {
      v24 = objc_alloc_init(MEMORY[0x1E69C8DB0]);
      verificationCodeProvider = v8->_verificationCodeProvider;
      v8->_verificationCodeProvider = v24;

      [(SFAppAutoFillOneTimeCodeProvider *)v8->_verificationCodeProvider addObserver:v8];
      [(_SFAccountPickerTableViewController *)v8 _reloadVerificationCodesIfNeeded];
    }

    v26 = v8;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69C8D50];
  v5 = [MEMORY[0x1E69C8A38] sharedStore];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v4 viewDidLoad];
  v3 = [(_SFAccountPickerTableViewController *)self tableView];
  [v3 setKeyboardDismissMode:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v8 viewWillAppear:a3];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
  v5 = [(_SFAccountPickerTableViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  [(_SFAccountPickerTableViewController *)self _updateNavigationItemTitleAndPrompt];
  if (self->_indexPathOfRowShowingDetailView)
  {
    v6 = [(_SFAccountPickerTableViewController *)self tableView];
    [v6 deselectRowAtIndexPath:self->_indexPathOfRowShowingDetailView animated:1];

    indexPathOfRowShowingDetailView = self->_indexPathOfRowShowingDetailView;
    self->_indexPathOfRowShowingDetailView = 0;
  }

  else
  {
    [(_SFAccountPickerTableViewController *)self reloadTable];
  }
}

- (void)reloadTable
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50___SFAccountPickerTableViewController_reloadTable__block_invoke;
  v2[3] = &unk_1E848F810;
  v2[4] = self;
  [(_SFAccountPickerTableViewController *)self _reloadSavedAccountsWithCompletionHandler:v2];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v6 viewWillDisappear:?];
  v5 = [(_SFAccountPickerTableViewController *)self navigationController];
  [v5 setNavigationBarHidden:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v10 viewDidDisappear:a3];
  if (!self->_indexPathOfRowShowingDetailView)
  {
    v4 = [MEMORY[0x1E69C8A38] sharedStore];
    [v4 reset];

    savedAccounts = self->_savedAccounts;
    self->_savedAccounts = 0;

    matchingSavedAccounts = self->_matchingSavedAccounts;
    self->_matchingSavedAccounts = 0;

    autoFillPasskeys = self->_autoFillPasskeys;
    self->_autoFillPasskeys = 0;

    savedAccountsWithUsablePasskeys = self->_savedAccountsWithUsablePasskeys;
    self->_savedAccountsWithUsablePasskeys = 0;

    passkeyNearbyDeviceOptions = self->_passkeyNearbyDeviceOptions;
    self->_passkeyNearbyDeviceOptions = 0;
  }
}

- (void)newAutoFillablePasskeysAvailable:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___SFAccountPickerTableViewController_newAutoFillablePasskeysAvailable___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateNavigationItemTitleAndPrompt
{
  v8 = [(_SFAccountPickerTableViewController *)self navigationItem];
  if ([(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count]|| self->_passkeyNearbyDeviceOptions)
  {
    v3 = _WBSLocalizedString();
    [v8 setTitle:v3];

    v4 = [(SFAccountPickerConfiguration *)self->_configuration promptWhenPasskeysAreAvailable];
  }

  else
  {
    v6 = [(SFAccountPickerConfiguration *)self->_configuration title];
    if (v6)
    {
      [v8 setTitle:v6];
    }

    else
    {
      v7 = _WBSLocalizedString();
      [v8 setTitle:v7];
    }

    v4 = [(SFAccountPickerConfiguration *)self->_configuration prompt];
  }

  v5 = v4;
  [v8 setPrompt:v4];
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewControllerDidCancel:self];
  }
}

- (void)handleIconDidUpdateForDomain:(id)a3
{
  v7 = a3;
  addPasswordViewController = self->_addPasswordViewController;
  if (addPasswordViewController)
  {
    [(SFAddSavedAccountViewController *)addPasswordViewController updatedIconIsAvailableForDomain:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_detailViewController);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updatedIconIsAvailableForDomain:v7];
  }
}

- (void)_reloadSavedAccountsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C8A38] sharedStore];
  v6 = [v5 savedAccounts];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E8495728;
  v18[4] = self;
  v7 = [v6 safari_filterObjectsUsingBlock:v18];
  v8 = [v7 mutableCopy];
  savedAccounts = self->_savedAccounts;
  self->_savedAccounts = v8;

  if ([(SFAccountPickerConfiguration *)self->_configuration shouldShowAutoFillPasskeys])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8495750;
    aBlock[4] = self;
    v17 = v4;
    v10 = _Block_copy(aBlock);
    v11 = [(SFAccountPickerConfiguration *)self->_configuration hasAuditToken];
    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
    if (v11)
    {
      configuration = self->_configuration;
      if (configuration)
      {
        [(SFAccountPickerConfiguration *)configuration connectedAppAuditToken];
      }

      v14 = WBSApplicationIdentifierFromAuditToken();
      [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeysForRunningAssertionWithApplicationIdentifier:v14 withCompletionHandler:v10];
    }

    else
    {
      v14 = [MEMORY[0x1E696AAE8] mainBundle];
      v15 = [v14 bundleIdentifier];
      [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeysForRunningAssertionWithApplicationIdentifier:v15 withCompletionHandler:v10];
    }
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_accountStoreDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61___SFAccountPickerTableViewController__accountStoreDidChange__block_invoke;
  v2[3] = &unk_1E848F810;
  v2[4] = self;
  [(_SFAccountPickerTableViewController *)self _reloadSavedAccountsWithCompletionHandler:v2];
}

- (void)_didPickSavedAccountForPassword:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
  {
    v5 = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
    v6 = [v5 safari_highLevelDomainForPasswordManager];
    v7 = [v4 highLevelDomain];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = MEMORY[0x1E695AC58];
      v10 = [@"https://" stringByAppendingString:v5];
      v11 = [v10 safari_bestURLForUserTypedString];
      v12 = [v9 safari_HTMLFormProtectionSpaceForURL:v11];

      v13 = [MEMORY[0x1E69C8A38] sharedStore];
      v14 = [(SFAccountPickerConfiguration *)self->_configuration savedAccountContext];
      v15 = +[_SFFormDataController sharedController];
      v16 = [v15 autoFillQuirksManager];
      v17 = [v16 associatedDomainsManager];
      [v13 setSavedAccountAsDefault:v4 forProtectionSpace:v12 context:v14 associatedDomainsManager:v17 completionHandler:&__block_literal_global_97_0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v20[0] = v4;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [WeakRetained accountPickerTableViewController:self didPickSavedAccounts:v19];
    }
  }
}

- (void)_didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable:(id)a3
{
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
  v6 = [v4 highLevelDomain];
  v57[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];

  v8 = [v4 additionalSites];
  v9 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_101];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  if ([v5 length])
  {
    v11 = [v5 safari_highLevelDomainForPasswordManager];
    v12 = [v11 isEqualToString:@"apple.com"];
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E69C8DE8];
  v14 = [MEMORY[0x1E69C8DE8] domainByStrippingSubdomainWildcardPrefixIfNecessary:v5];
  v15 = [v13 domainIsProhibitedForSavingCredentials:v14];

  if ([v5 length] && (objc_msgSend(v5, "safari_highLevelDomainForPasswordManager"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v10, "containsObject:", v16) | v12 | v15, v16, (v17 & 1) == 0))
  {
    v18 = [(SFAccountPickerConfiguration *)self->_configuration appID];
    v48 = v18;
    if (v18)
    {
      v19 = v18;
      if ([(SFAccountPickerConfiguration *)self->_configuration isConnectedAppAWebBrowser])
      {
        v18 = 0;
      }

      else
      {
        v18 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v19 error:0];
      }
    }

    v49 = v10;
    v47 = v18;
    v20 = [v18 localizedName];
    v21 = [v20 length];
    v22 = MEMORY[0x1E696AEC0];
    if (v21)
    {
      v23 = _WBSLocalizedString();
      v24 = [v4 effectiveTitle];
      v25 = [v22 stringWithFormat:v23, v24, v20];

      v26 = MEMORY[0x1E696AEC0];
      v27 = _WBSLocalizedString();
      [v26 stringWithFormat:v27, v20];
    }

    else
    {
      v28 = _WBSLocalizedString();
      v29 = [v4 effectiveTitle];
      v25 = [v22 stringWithFormat:v28, v29, v5];

      v30 = MEMORY[0x1E696AEC0];
      v27 = _WBSLocalizedString();
      [v30 stringWithFormat:v27, v5];
    }
    v31 = ;
    v32 = v20;

    v33 = v25;
    v45 = v31;
    v34 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v25 message:v31 preferredStyle:1];
    v35 = MEMORY[0x1E69DC648];
    v36 = _WBSLocalizedString();
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __117___SFAccountPickerTableViewController__didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable___block_invoke_2;
    v55[3] = &unk_1E848F780;
    v55[4] = self;
    v37 = v4;
    v56 = v37;
    v38 = [v35 actionWithTitle:v36 style:0 handler:v55];

    [v34 addAction:v38];
    [v34 setPreferredAction:v38];
    v46 = v32;
    [v32 length];
    v39 = _WBSLocalizedString();
    v40 = MEMORY[0x1E69DC648];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __117___SFAccountPickerTableViewController__didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable___block_invoke_3;
    v51[3] = &unk_1E848FE00;
    v52 = v5;
    v53 = v37;
    v54 = self;
    v41 = [v40 actionWithTitle:v39 style:0 handler:v51];
    [v34 addAction:v41];
    v42 = MEMORY[0x1E69DC648];
    v43 = _WBSLocalizedString();
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __117___SFAccountPickerTableViewController__didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable___block_invoke_5;
    v50[3] = &unk_1E848FBF8;
    v50[4] = self;
    v44 = [v42 actionWithTitle:v43 style:1 handler:v50];
    [v34 addAction:v44];

    [(_SFAccountPickerTableViewController *)self presentViewController:v34 animated:1 completion:0];
    v10 = v49;
  }

  else
  {
    [(_SFAccountPickerTableViewController *)self _didPickSavedAccountForPassword:v4];
  }
}

- (void)_presentAddPasswordViewController
{
  v18 = [(WBSGeneratedPassword *)self->_generatedPasswordBeingTransformedIntoSavedAccount password];
  v3 = [SFAddSavedAccountViewController alloc];
  v4 = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
  v5 = v4;
  if (!v4)
  {
    v5 = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedLabel];
  }

  v6 = [(SFAddSavedAccountViewController *)v3 initWithSuggestedDomain:v5 password:v18];
  addPasswordViewController = self->_addPasswordViewController;
  self->_addPasswordViewController = v6;

  if (!v4)
  {
  }

  v8 = [(SFAccountPickerConfiguration *)self->_configuration appID];

  if (v8)
  {
    v9 = [(SFAccountPickerConfiguration *)self->_configuration appID];
    [(SFAddSavedAccountViewController *)self->_addPasswordViewController setAppIDForFallbackIcon:v9];
  }

  [(SFAddSavedAccountViewController *)self->_addPasswordViewController setDelegate:self];
  v10 = [MEMORY[0x1E69C88B8] sharedMonitor];
  v11 = [v10 keychainSyncSettingValue];

  if (v11 >= 2)
  {
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v12 = [v18 length] == 0;
  }

  else
  {
    v12 = 0;
  }

  [(SFAddSavedAccountViewController *)self->_addPasswordViewController setShouldPopulatePasswordFieldWithNewGeneratedStrongPassword:v12];
LABEL_12:
  v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_addPasswordViewController];
  [v13 setModalPresentationStyle:2];
  +[_SFAccountManagerAppearanceValues preferredFormSheetContentSize];
  [v13 setPreferredContentSize:?];
  v14 = [(_SFAccountPickerTableViewController *)self presentedViewController];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = self;
  }

  v17 = v16;

  [(_SFAccountPickerTableViewController *)v17 presentViewController:v13 animated:1 completion:0];
}

- (void)_fillUsernameForSavedAccount:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillUsernameForSavedAccount:v5];
  }
}

- (void)_fillPasswordForSavedAccount:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillPasswordForSavedAccount:v5];
  }
}

- (void)_fillVerificationCodeForSavedAccount:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillVerificationCodeForSavedAccount:v5];
  }
}

- (void)_reloadVerificationCodesIfNeeded
{
  v3 = [(SFAccountPickerConfiguration *)self->_configuration appID];
  v4 = [v3 length];

  if (v4)
  {
    verificationCodeProvider = self->_verificationCodeProvider;
    v6 = [(SFAccountPickerConfiguration *)self->_configuration appID];
    v7 = [(SFAccountPickerConfiguration *)self->_configuration websiteURLForReceivedVerificationCodes];
    v8 = [(SFAppAutoFillOneTimeCodeProvider *)verificationCodeProvider currentOneTimeCodesWithAppIdentifier:v6 website:v7 usernameHint:0 fieldClassification:2];
    v9 = [v8 safari_filterObjectsUsingBlock:&__block_literal_global_161];
    verificationCodes = self->_verificationCodes;
    self->_verificationCodes = v9;

    if ([(_SFAccountPickerTableViewController *)self isViewLoaded])
    {
      v11 = [(_SFAccountPickerTableViewController *)self tableView];
      [v11 reloadData];
    }
  }
}

- (id)_cellConfigurationForVerificationCodeAtIndexPath:(id)a3
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_verificationCodes, "objectAtIndexedSubscript:", [a3 row]);
  v5 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v7 = [v5 secondaryTextProperties];
  [v7 setFont:v6];

  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v9 = [v5 secondaryTextProperties];
  [v9 setColor:v8];

  v10 = [v4 localizedTitleForContext:3];
  [v5 setText:v10];

  v11 = [v4 localizedSubtitleForContext:3];
  [v5 setSecondaryText:v11];

  v12 = [(_SFAccountPickerTableViewController *)self _appIconForVerificationCode:v4];
  [v5 setImage:v12];

  return v5;
}

- (id)_bundleIdentifierForVerificationCode:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  if (v4 == 2)
  {
    v6 = [v3 sourceApplicationIdentifier];
  }

  else
  {
    v5 = @"com.apple.MobileSMS";
    if (v4)
    {
      v5 = 0;
    }

    if (v4 == 1)
    {
      v6 = @"com.apple.mobilemail";
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

- (id)_appIconForVerificationCode:(id)a3
{
  v3 = [(_SFAccountPickerTableViewController *)self _bundleIdentifierForVerificationCode:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v3];
    v5 = objc_alloc(MEMORY[0x1E69A8A30]);
    [MEMORY[0x1E695A9A8] tableViewIconSize];
    v7 = v6;
    v9 = v8;
    _SFScreenScale();
    v11 = [v5 initWithSize:v7 scale:{v9, v10}];
    v12 = [v4 prepareImageForDescriptor:v11];
    if ([v12 placeholder])
    {
      v13 = 0;
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v15 = [v12 CGImage];
      [v12 scale];
      v16 = [v14 initWithCGImage:v15 scale:0 orientation:?];
      v17 = MEMORY[0x1E69C97E0];
      [MEMORY[0x1E695A9A8] tableViewIconSize];
      v13 = [v17 resizedImage:v16 withSize:?];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_consumeAndFillVerificationCode:(id)a3
{
  v5 = a3;
  [(SFAppAutoFillOneTimeCodeProvider *)self->_verificationCodeProvider consumeOneTimeCode:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillVerificationCode:v5];
  }
}

- (void)addSavedAccountViewControllerDidFinish:(id)a3 withSavedAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    addPasswordViewController = self;
LABEL_11:
    [addPasswordViewController dismissViewControllerAnimated:1 completion:0];
    goto LABEL_12;
  }

  if (self->_didPresentAddAccountViewControllerFromGeneratedPasswords)
  {
    v9 = [v7 password];
    v10 = [(WBSGeneratedPassword *)self->_generatedPasswordBeingTransformedIntoSavedAccount password];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E69C8898] sharedStore];
      [v12 removeGeneratedPassword:self->_generatedPasswordBeingTransformedIntoSavedAccount completionHandler:0];
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_DEFAULT, "Newly created saved account has a password that doesn't match the generated password record it was created from. The generated password record was not deleted.", buf, 2u);
      }
    }

    generatedPasswordBeingTransformedIntoSavedAccount = self->_generatedPasswordBeingTransformedIntoSavedAccount;
    self->_generatedPasswordBeingTransformedIntoSavedAccount = 0;

    addPasswordViewController = self->_addPasswordViewController;
    goto LABEL_11;
  }

  if ([(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95___SFAccountPickerTableViewController_addSavedAccountViewControllerDidFinish_withSavedAccount___block_invoke;
    v17[3] = &unk_1E848F548;
    v17[4] = self;
    v18 = v8;
    [(_SFAccountPickerTableViewController *)self dismissViewControllerAnimated:1 completion:v17];
  }

  else
  {
    [(_SFAccountPickerTableViewController *)self _didPickSavedAccountForPassword:v8];
  }

LABEL_12:
  v16 = self->_addPasswordViewController;
  self->_addPasswordViewController = 0;
}

- (int64_t)_rowTypeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if ([v4 section] == self->_sectionForPasswordsMatchingHintStrings)
  {
    v6 = [(SFAccountPickerConfiguration *)self->_configuration shouldAllowAddingNewPasswords];
    if ([(SFAccountPickerConfiguration *)self->_configuration shouldShowGeneratedPasswordsForDomain])
    {
      if (self->_hasMatchingGeneratedPasswords && v6)
      {
        if (v5 != [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
        {
          if (v5 != [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count]+ 1)
          {
            goto LABEL_13;
          }

LABEL_12:
          v7 = 1;
          goto LABEL_20;
        }

LABEL_9:
        v7 = 4;
        goto LABEL_20;
      }

      if (self->_hasMatchingGeneratedPasswords && v5 == [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
      {
        goto LABEL_9;
      }
    }

    if (v6 && v5 == [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (-[SFAccountPickerConfiguration shouldShowAutoFillPasskeys](self->_configuration, "shouldShowAutoFillPasskeys") && [v4 section] == self->_sectionForPasskeys && (v8 = objc_msgSend(v4, "row"), v8 == -[NSMutableArray count](self->_savedAccountsWithUsablePasskeys, "count")))
  {
    v7 = 2;
  }

  else if ([v4 section] == self->_sectionForVerificationCodes)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

LABEL_20:

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  [(_SFAccountPickerTableViewController *)self _updateSections];
  v4 = 1;
  if (self->_sectionForPasskeys != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 2;
  }

  if (self->_sectionForPasswordsMatchingHintStrings == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = self->_sectionForPasskeys != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
  }

  if (self->_sectionForAllPasswords != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++v5;
  }

  if (self->_sectionForVerificationCodes == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_sectionForPasskeys == a4)
  {
    v7 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count];
    if (self->_passkeyNearbyDeviceOptions)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7;
    }
  }

  else if (self->_sectionForPasswordsMatchingHintStrings == a4)
  {
    v9 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count];
    v8 = v9 + [(SFAccountPickerConfiguration *)self->_configuration shouldAllowAddingNewPasswords];
    if ([(SFAccountPickerConfiguration *)self->_configuration shouldShowGeneratedPasswordsForDomain])
    {
      v8 += self->_hasMatchingGeneratedPasswords;
    }
  }

  else
  {
    if (self->_sectionForAllPasswords == a4)
    {
      v10 = 1104;
    }

    else
    {
      if (self->_sectionForVerificationCodes != a4)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v10 = 1216;
    }

    v8 = [*(&self->super.super.super.super.super.isa + v10) count];
  }

LABEL_14:

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_sectionForPasskeys == a4)
  {
    if ([(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count])
    {
LABEL_10:
      v8 = _WBSLocalizedString();
      goto LABEL_12;
    }
  }

  else if (self->_sectionForAllPasswords == a4)
  {
    if ([(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
    {
      v7 = [(_SFAccountTableViewController *)self searchPattern];
      [v7 length];
      v8 = _WBSLocalizedString();

      goto LABEL_12;
    }
  }

  else if (self->_sectionForVerificationCodes == a4 || [(_SFAccountPickerTableViewController *)self _shouldShowAutoFillPasskeys]|| [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
  {
    goto LABEL_10;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFAccountPickerTableViewController *)self _rowTypeForIndexPath:v7];
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"addPassword"];
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"addPassword"];
        v27 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        v28 = [(SFAccountTableViewCell *)v10 textLabel];
        [v28 setTextColor:v27];

        goto LABEL_30;
      }

LABEL_18:
      v10 = v9;
      goto LABEL_39;
    }

    if (v8 == 2)
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"useNearbyDevice"];
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"useNearbyDevice"];
        v11 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        v12 = [(SFAccountTableViewCell *)v10 textLabel];
        [v12 setTextColor:v11];

LABEL_30:
        v15 = _WBSLocalizedString();
        v16 = [(SFAccountTableViewCell *)v10 textLabel];
        [v16 setText:v15];
        goto LABEL_31;
      }

      goto LABEL_18;
    }

LABEL_10:
    v10 = [v6 dequeueReusableCellWithIdentifier:@"savedAccount"];
    if (!v10)
    {
      v10 = [[SFAccountTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"savedAccount"];
    }

    if ([(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
    {
      v17 = 1;
    }

    else
    {
      v17 = 4;
    }

    [(SFAccountTableViewCell *)v10 setAccessoryType:v17];
    [(SFAccountTableViewCell *)v10 setDelegate:self];
    v18 = [v7 section] == self->_sectionForPasswordsMatchingHintStrings || objc_msgSend(v7, "section") == self->_sectionForPasskeys;
    v15 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:v7];
    v22 = [(_SFAccountTableViewController *)self searchPattern];
    -[SFAccountTableViewCell setSavedAccount:searchPattern:emphasizeUserName:shouldDifferentiateWithGroupName:](v10, "setSavedAccount:searchPattern:emphasizeUserName:shouldDifferentiateWithGroupName:", v15, v22, v18, [v15 hasSameUsernameAndHighLevelDomainAsOtherSharedSavedAccounts]);

    v23 = [v7 section] == self->_sectionForPasskeys || objc_msgSend(v15, "credentialTypes") != 2;
    v24 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys containsObject:v15];
    v25 = v24;
    if (v23 || (v24 & 1) != 0 || [(SFAccountPickerConfiguration *)self->_configuration forUserNamesOnly])
    {
      [(SFAccountTableViewCell *)v10 setUserInteractionEnabled:1];
      v26 = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v29 = _WBSLocalizedString();
      v30 = [(SFAccountTableViewCell *)v10 detailTextLabel];
      [v30 setText:v29];

      [(SFAccountTableViewCell *)v10 setUserInteractionEnabled:0];
      v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    v31 = v26;
    v32 = [(SFAccountTableViewCell *)v10 textLabel];
    [v32 setTextColor:v31];

    v33 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v34 = [(SFAccountTableViewCell *)v10 detailTextLabel];
    [v34 setTextColor:v33];

    if (v25)
    {
      v35 = [v15 passkeyRelyingPartyID];
      v36 = [v35 isEqualToString:@"apple.com"];

      if (v36)
      {
        [(SFAccountTableViewCell *)v10 setAccessoryType:0];
      }
    }

    goto LABEL_38;
  }

  if (v8 == 3)
  {
    v19 = [v6 dequeueReusableCellWithIdentifier:@"verificationCode"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"verificationCode"];
    }

    v10 = v21;

    v15 = [(_SFAccountPickerTableViewController *)self _cellConfigurationForVerificationCodeAtIndexPath:v7];
    [(SFAccountTableViewCell *)v10 setContentConfiguration:v15];
    goto LABEL_38;
  }

  if (v8 != 4)
  {
    goto LABEL_10;
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:@"generatedPasswords"];
  if (v9)
  {
    goto LABEL_18;
  }

  v10 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"generatedPasswords"];
  v13 = _WBSLocalizedString();
  v14 = [(SFAccountTableViewCell *)v10 textLabel];
  [v14 setText:v13];

  v15 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
  v16 = [(SFAccountTableViewCell *)v10 textLabel];
  [v16 setTextColor:v15];
LABEL_31:

LABEL_38:
LABEL_39:

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (self->_sectionForPasswordsMatchingHintStrings == a4 && [(SFAccountPickerConfiguration *)self->_configuration shouldAllowAddingNewPasswords]&& ![(SFAccountPickerConfiguration *)self->_configuration shouldHideCreatePasswordsInSettingsHint])
  {
    v5 = objc_alloc_init(_SFTableLinkableFooterView);
    [(_SFTableLinkableFooterView *)v5 setDelegate:self];
    v7 = _WBSLocalizedString();
    if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
    {
      v8 = _WBSLocalizedString();

      v7 = v8;
    }

    v9 = _WBSLocalizedString();
    [(_SFTableLinkableFooterView *)v5 setText:v7 linkPlaceholderString:@"%settings-link%" linkReplacementString:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFAccountPickerTableViewController *)self _rowTypeForIndexPath:v7];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v12 = -[NSArray objectAtIndexedSubscript:](self->_verificationCodes, "objectAtIndexedSubscript:", [v7 row]);
      [(_SFAccountPickerTableViewController *)self _consumeAndFillVerificationCode:v12];
    }

    else if (v8 == 4)
    {
      [(_SFAccountPickerTableViewController *)self _presentGeneratedPasswordsViewController];
      v11 = [(_SFAccountPickerTableViewController *)self tableView];
      [v11 deselectRowAtIndexPath:v7 animated:1];

      goto LABEL_22;
    }

LABEL_10:
    if ([v7 section] == self->_sectionForPasskeys)
    {
      v13 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:v7];
      v14 = v13;
      if (v13)
      {
        autoFillPasskeys = self->_autoFillPasskeys;
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __73___SFAccountPickerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_247;
        v26 = &unk_1E8495778;
        v27 = v13;
        v16 = [(NSArray *)autoFillPasskeys safari_firstObjectPassingTest:&v23];
        authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
        authenticatedContext = self->_authenticatedContext;
        v19 = [(SFAccountPickerConfiguration *)self->_configuration savedAccountContext:v23];
        [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy userSelectedAutoFillPasskey:v16 authenticatedLAContext:authenticatedContext savedAccountContext:v19 completionHandler:&__block_literal_global_250_0];

        v20 = [(_SFAccountPickerTableViewController *)self delegate];
        [v20 accountPickerTableViewControllerDidCancel:self];
      }

      else
      {
        v21 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [_SFAccountPickerTableViewController tableView:didSelectRowAtIndexPath:];
        }
      }
    }

    else
    {
      if ([(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
      {
        [(_SFAccountPickerTableViewController *)self _showAccountDetailsForSavedAccountAtIndexPath:v7];
        goto LABEL_22;
      }

      v14 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:v7];
      if (v14)
      {
        [(_SFAccountPickerTableViewController *)self _didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable:v14];
      }

      else
      {
        v22 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [_SFAccountPickerTableViewController tableView:didSelectRowAtIndexPath:];
        }
      }
    }

    goto LABEL_22;
  }

  if (v8 == 1)
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    self->_didPresentAddAccountViewControllerFromGeneratedPasswords = 0;
    [(_SFAccountPickerTableViewController *)self _presentAddPasswordViewController];
    goto LABEL_22;
  }

  if (v8 != 2)
  {
    goto LABEL_10;
  }

  v9 = self->_authenticationServicesAgentProxy;
  passkeyNearbyDeviceOptions = self->_passkeyNearbyDeviceOptions;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73___SFAccountPickerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v28[3] = &unk_1E848FA00;
  v28[4] = self;
  [(WBSAuthenticationServicesAgentProxy *)v9 userSelectedAutoFillNearbyDevice:passkeyNearbyDeviceOptions completionHandler:v28];
LABEL_22:
}

- (void)linkableFooterViewDidInteractWithLink:(id)a3
{
  v4 = [MEMORY[0x1E69C8978] passwordManagerURL];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_presentGeneratedPasswordsViewController
{
  v3 = MEMORY[0x1E69BC7A8];
  v4 = [(_SFAccountPickerTableViewController *)self _generatedPasswordsDomainHintString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F4FE9E38;
  }

  v8 = [v3 makeUIViewControllerWithDelegate:self searchTerm:v6 alwaysShowSearchBar:0];

  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  [v7 setModalPresentationStyle:2];
  [(_SFAccountPickerTableViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  if (![(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
  {
    [(_SFAccountPickerTableViewController *)self _showAccountDetailsForSavedAccountAtIndexPath:v5];
  }
}

- (void)_showAccountDetailsForSavedAccountAtIndexPath:(id)a3
{
  v4 = a3;
  v9 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:v4];
  v5 = [(_SFAccountPickerTableViewController *)self _detailViewControllerForSavedAccount:v9];
  v6 = [(_SFAccountPickerTableViewController *)self tableView];
  [v6 selectRowAtIndexPath:v4 animated:1 scrollPosition:0];

  v7 = [(_SFAccountPickerTableViewController *)self navigationController];
  [v7 pushViewController:v5 animated:1];

  indexPathOfRowShowingDetailView = self->_indexPathOfRowShowingDetailView;
  self->_indexPathOfRowShowingDetailView = v4;

  objc_storeWeak(&self->_detailViewController, v5);
  [(_SFAccountPickerTableViewController *)self reloadTable];
}

- (void)_showAccountDetailsForSavedAccount:(id)a3
{
  v7 = a3;
  v4 = [(_SFAccountPickerTableViewController *)self _indexPathForSavedAccount:?];
  if (v4)
  {
    [(_SFAccountPickerTableViewController *)self _showAccountDetailsForSavedAccountAtIndexPath:v4];
  }

  else
  {
    v5 = [(_SFAccountPickerTableViewController *)self _detailViewControllerForSavedAccount:v7];
    v6 = [(_SFAccountPickerTableViewController *)self navigationController];
    [v6 pushViewController:v5 animated:1];

    objc_storeWeak(&self->_detailViewController, v5);
  }
}

- (id)_detailViewControllerForSavedAccount:(id)a3
{
  v4 = a3;
  v5 = [[SFAccountDetailViewController alloc] initWithSavedAccount:v4 passwordWarning:0 options:0];

  [(SFAccountDetailViewController *)v5 setDelegate:self];
  [(SFAccountDetailViewController *)v5 setIsForFillingIndividualAccountFields:[(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields]];

  return v5;
}

- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SFAccountPickerTableViewController;
  return [(_SFAccountPickerTableViewController *)&v5 tableView:a3 shouldShowMenuForRowAtIndexPath:a4];
}

- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v7.receiver = self;
  v7.super_class = _SFAccountPickerTableViewController;
  return [(_SFAccountPickerTableViewController *)&v7 tableView:a3 canPerformAction:a4 forRowAtIndexPath:a5 withSender:a6];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (([(_SFAccountPickerTableViewController *)self _rowTypeForIndexPath:v5]- 1) >= 4)
  {
    v7 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:v5];
    v8 = [v7 passkeyRelyingPartyID];
    v9 = [v8 isEqualToString:@"apple.com"];

    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v10 = _WBSLocalizedString();
      v11 = MEMORY[0x1E69DC8E8];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __100___SFAccountPickerTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
      v19 = &unk_1E84957A0;
      v20 = self;
      v21 = v5;
      v12 = [v11 contextualActionWithStyle:1 title:v10 handler:&v16];
      v13 = MEMORY[0x1E69DCFC0];
      v22[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:{1, v16, v17, v18, v19, v20}];
      v6 = [v13 configurationWithActions:v14];

      [v6 setPerformsFirstActionWithFullSwipe:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_presentAlertToConfirmDeletingAccountsAtIndexPath:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:v4];
  v6 = MEMORY[0x1E695A9A0];
  v25[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v8 = [v6 configurationForDeletingSavedAccounts:v7];

  v9 = MEMORY[0x1E69DC650];
  v10 = [v8 title];
  v11 = [v8 subtitle];
  v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:_SFDeviceAlertStyle()];

  v13 = [v12 view];
  [v13 setAccessibilityIdentifier:@"DeleteCredentialConfirmation"];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC648];
  v15 = [v8 buttonTitle];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89___SFAccountPickerTableViewController__presentAlertToConfirmDeletingAccountsAtIndexPath___block_invoke;
  v21[3] = &unk_1E848FCE8;
  objc_copyWeak(&v23, &location);
  v16 = v4;
  v22 = v16;
  v17 = [v14 actionWithTitle:v15 style:2 handler:v21];
  [v12 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = _WBSLocalizedString();
  v20 = [v18 actionWithTitle:v19 style:1 handler:0];
  [v12 addAction:v20];

  [(_SFAccountPickerTableViewController *)self presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_deleteSavedAccountAtIndexPath:(id)a3
{
  v4 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:a3];
  [(_SFAccountPickerTableViewController *)self _removeSavedAccount:v4 shouldPerformDeletionInAccountStore:1];
}

- (void)_removeSavedAccount:(id)a3 shouldPerformDeletionInAccountStore:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings indexOfObject:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v9 = v8, [(NSMutableArray *)self->_savedAccountsMatchingHintStrings removeObject:v6], self->_sectionForPasswordsMatchingHintStrings == 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:?];
    [v7 addObject:v11];
    v10 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count]== 0;
  }

  v12 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys indexOfObject:v6];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v12;
    [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys removeObject:v6];
    if (self->_sectionForPasskeys != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:?];
      [v7 addObject:v14];
      v10 |= [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count]== 0;
    }
  }

  v15 = [(NSMutableArray *)self->_matchingSavedAccounts indexOfObject:v6];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
    [(NSMutableArray *)self->_matchingSavedAccounts removeObject:v6];
    if (self->_sectionForAllPasswords != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x1E696AC88] indexPathForRow:v16 inSection:?];
      [v7 addObject:v17];
      v10 |= [(NSMutableArray *)self->_matchingSavedAccounts count]== 0;
    }
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v18 = dispatch_group_create();
  v19 = v18;
  if (v4)
  {
    dispatch_group_enter(v18);
    v20 = [MEMORY[0x1E69C8A38] sharedStore];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95___SFAccountPickerTableViewController__removeSavedAccount_shouldPerformDeletionInAccountStore___block_invoke;
    v29[3] = &unk_1E84957C8;
    v31 = v32;
    v30 = v19;
    [v20 _moveCredentialTypesToRecentlyDeleted:3 fromSavedAccount:v6 completionHandler:v29];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95___SFAccountPickerTableViewController__removeSavedAccount_shouldPerformDeletionInAccountStore___block_invoke_2;
  block[3] = &unk_1E84957F0;
  v27 = v4;
  v28 = v10 & 1;
  block[4] = self;
  v24 = v7;
  v25 = v6;
  v26 = v32;
  v21 = v6;
  v22 = v7;
  dispatch_group_notify(v19, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v32, 8);
}

- (void)_presentErrorAlertWithString:(id)a3
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:0 preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = _WBSLocalizedString();
  v6 = [v4 actionWithTitle:v5 style:0 handler:0];
  [v7 addAction:v6];

  [(_SFAccountPickerTableViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(_SFAccountPickerTableViewController *)self _shouldUseEmptyHeaderFooterHeightInSection:a4])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(_SFAccountPickerTableViewController *)self _shouldUseEmptyHeaderFooterHeightInSection:a4];
  v5 = &SFAccountListEmptyHeaderFooterHeight;
  if (!v4)
  {
    v5 = MEMORY[0x1E69DE3D0];
  }

  return *v5;
}

- (BOOL)_shouldUseEmptyHeaderFooterHeightInSection:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  v5 = [(_SFAccountPickerTableViewController *)self tableView];
  v6 = [(_SFAccountPickerTableViewController *)self tableView:v5 titleForHeaderInSection:0];
  v3 = v6 == 0;

  return v3;
}

- (void)searchPatternDidUpdate
{
  [(_SFAccountPickerTableViewController *)self _updateMatchingPasswords];
  v3 = [(_SFAccountPickerTableViewController *)self tableView];
  [v3 reloadData];
}

- (void)_updateMatchingPasswords
{
  v3 = [(_SFAccountTableViewController *)self searchPattern];
  v4 = [v3 length];

  if (v4)
  {
    savedAccounts = self->_savedAccounts;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63___SFAccountPickerTableViewController__updateMatchingPasswords__block_invoke_3;
    v13[3] = &unk_1E8495728;
    v13[4] = self;
    v6 = [(NSMutableArray *)savedAccounts safari_filterObjectsUsingBlock:v13];
    v7 = [v6 mutableCopy];
    matchingSavedAccounts = self->_matchingSavedAccounts;
    self->_matchingSavedAccounts = v7;
  }

  else
  {
    v9 = self->_savedAccounts;
    if (self->_savedAccountsMatchingHintStrings)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63___SFAccountPickerTableViewController__updateMatchingPasswords__block_invoke;
      v14[3] = &unk_1E8495728;
      v14[4] = self;
      v10 = [(NSMutableArray *)v9 safari_filterObjectsUsingBlock:v14];
      v11 = [v10 mutableCopy];
      v12 = self->_matchingSavedAccounts;
      self->_matchingSavedAccounts = v11;
    }

    else
    {
      objc_storeStrong(&self->_matchingSavedAccounts, v9);
    }
  }

  if (![(SFAccountPickerConfiguration *)self->_configuration shouldShowPasskeysInAccountPicker])
  {
    [(NSMutableArray *)self->_matchingSavedAccounts safari_removeObjectsPassingTest:&__block_literal_global_287];
  }
}

- (id)_generatedPasswordsDomainHintString
{
  v3 = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safari_highLevelDomainForPasswordManager];
  }

  else
  {
    v6 = [(SFAccountPickerConfiguration *)self->_configuration domainHintStrings];
    v7 = [v6 firstObject];
    v5 = [v7 safari_highLevelDomainForPasswordManager];
  }

  return v5;
}

- (void)_updateMatchingGeneratedPasswordsState
{
  v3 = [(_SFAccountPickerTableViewController *)self _generatedPasswordsDomainHintString];

  if (v3)
  {
    v4 = MEMORY[0x1E695AC58];
    v5 = [(_SFAccountPickerTableViewController *)self _generatedPasswordsDomainHintString];
    v6 = [@"https://" stringByAppendingString:v5];
    v7 = [v6 safari_bestURLForUserTypedString];
    v10 = [v4 safari_HTMLFormProtectionSpaceForURL:v7];

    v8 = [MEMORY[0x1E69C8898] sharedStore];
    v9 = [v8 generatedPasswordsForProtectionSpace:v10 options:1];
    self->_hasMatchingGeneratedPasswords = [v9 count] != 0;
  }

  else
  {
    self->_hasMatchingGeneratedPasswords = 0;
  }
}

- (BOOL)_shouldShowAutoFillPasskeys
{
  v3 = [(SFAccountPickerConfiguration *)self->_configuration shouldShowAutoFillPasskeys];
  if (v3)
  {
    if ([(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = self->_passkeyNearbyDeviceOptions != 0;
    }
  }

  return v3;
}

- (BOOL)_shouldShowPasswordsMatchingHintStringsSection
{
  v3 = [(_SFAccountTableViewController *)self searchPattern];
  v4 = [v3 length];

  if (v4)
  {
    return 0;
  }

  if ([(SFAccountPickerConfiguration *)self->_configuration shouldAllowAddingNewPasswords])
  {
    return 1;
  }

  return [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count]!= 0;
}

- (void)_updateSections
{
  self->_sectionForPasskeys = 0x7FFFFFFFFFFFFFFFLL;
  self->_sectionForPasswordsMatchingHintStrings = 0x7FFFFFFFFFFFFFFFLL;
  self->_sectionForAllPasswords = 0x7FFFFFFFFFFFFFFFLL;
  self->_sectionForVerificationCodes = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSArray *)self->_verificationCodes count])
  {
    self->_sectionForVerificationCodes = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(_SFAccountPickerTableViewController *)self _shouldShowAutoFillPasskeys])
  {
    self->_sectionForPasskeys = v3++;
  }

  if ([(_SFAccountPickerTableViewController *)self _shouldShowPasswordsMatchingHintStringsSection])
  {
    self->_sectionForPasswordsMatchingHintStrings = v3++;
  }

  self->_sectionForAllPasswords = v3;
}

- (id)_savedAccountForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];

  if (v5 == self->_sectionForPasskeys)
  {
    if (v6 < 0 || (v7 = 1120, v6 >= [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count]))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_SFAccountPickerTableViewController _savedAccountForIndexPath:];
      }

      goto LABEL_17;
    }

LABEL_14:
    v10 = [*(&self->super.super.super.super.super.isa + v7) objectAtIndexedSubscript:v6];
    goto LABEL_18;
  }

  if (v5 == self->_sectionForPasswordsMatchingHintStrings)
  {
    if (v6 < 0 || (v7 = 1088, v6 >= [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count]))
    {
      v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_SFAccountPickerTableViewController _savedAccountForIndexPath:];
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v5 == self->_sectionForAllPasswords)
  {
    if (v6 < 0 || (v7 = 1104, v6 >= [(NSMutableArray *)self->_matchingSavedAccounts count]))
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_SFAccountPickerTableViewController _savedAccountForIndexPath:];
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:
  v10 = 0;
LABEL_18:

  return v10;
}

- (id)_indexPathForSavedAccount:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count];
  if (v5 < 1)
  {
LABEL_5:
    v11 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count];
    if (v11 < 1)
    {
LABEL_9:
      v15 = [(NSMutableArray *)self->_matchingSavedAccounts count];
      if (v15 < 1)
      {
LABEL_13:
        v19 = 0;
        goto LABEL_15;
      }

      v16 = v15;
      v7 = 0;
      v8 = &OBJC_IVAR____SFAccountPickerTableViewController__sectionForAllPasswords;
      while (1)
      {
        v17 = [(NSMutableArray *)self->_matchingSavedAccounts objectAtIndexedSubscript:v7];
        v18 = [v4 isEqual:v17];

        if (v18)
        {
          break;
        }

        if (v16 == ++v7)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v12 = v11;
      v7 = 0;
      v8 = &OBJC_IVAR____SFAccountPickerTableViewController__sectionForPasswordsMatchingHintStrings;
      while (1)
      {
        v13 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings objectAtIndexedSubscript:v7];
        v14 = [v4 isEqual:v13];

        if (v14)
        {
          break;
        }

        if (v12 == ++v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = &OBJC_IVAR____SFAccountPickerTableViewController__sectionForPasskeys;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys objectAtIndexedSubscript:v7];
      v10 = [v4 isEqual:v9];

      if (v10)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  v19 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:*(&self->super.super.super.super.super.isa + *v8)];
LABEL_15:

  return v19;
}

- (void)passwordManagerLogViewControllerWantsToSaveGeneratedPassword:(id)a3
{
  self->_didPresentAddAccountViewControllerFromGeneratedPasswords = 1;
  objc_storeStrong(&self->_generatedPasswordBeingTransformedIntoSavedAccount, a3);

  [(_SFAccountPickerTableViewController *)self _presentAddPasswordViewController];
}

- (void)passwordManagerLogViewControllerWantsToDismiss
{
  v2 = [(_SFAccountPickerTableViewController *)self presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (_SFAccountPickerTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end