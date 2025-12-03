@interface _SFAccountPickerTableViewController
- (BOOL)_shouldShowAutoFillPasskeys;
- (BOOL)_shouldShowPasswordsMatchingHintStringsSection;
- (BOOL)_shouldUseEmptyHeaderFooterHeightInSection:(int64_t)section;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (_SFAccountPickerTableViewController)initWithConfiguration:(id)configuration;
- (_SFAccountPickerTableViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_appIconForVerificationCode:(id)code;
- (id)_bundleIdentifierForVerificationCode:(id)code;
- (id)_cellConfigurationForVerificationCodeAtIndexPath:(id)path;
- (id)_detailViewControllerForSavedAccount:(id)account;
- (id)_generatedPasswordsDomainHintString;
- (id)_indexPathForSavedAccount:(id)account;
- (id)_savedAccountForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_rowTypeForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_accountStoreDidChange;
- (void)_cancel;
- (void)_consumeAndFillVerificationCode:(id)code;
- (void)_deleteSavedAccountAtIndexPath:(id)path;
- (void)_didPickSavedAccountForPassword:(id)password;
- (void)_didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable:(id)applicable;
- (void)_fillPasswordForSavedAccount:(id)account;
- (void)_fillUsernameForSavedAccount:(id)account;
- (void)_fillVerificationCodeForSavedAccount:(id)account;
- (void)_presentAddPasswordViewController;
- (void)_presentAlertToConfirmDeletingAccountsAtIndexPath:(id)path;
- (void)_presentErrorAlertWithString:(id)string;
- (void)_presentGeneratedPasswordsViewController;
- (void)_reloadSavedAccountsWithCompletionHandler:(id)handler;
- (void)_reloadVerificationCodesIfNeeded;
- (void)_removeSavedAccount:(id)account shouldPerformDeletionInAccountStore:(BOOL)store;
- (void)_showAccountDetailsForSavedAccount:(id)account;
- (void)_showAccountDetailsForSavedAccountAtIndexPath:(id)path;
- (void)_updateMatchingGeneratedPasswordsState;
- (void)_updateMatchingPasswords;
- (void)_updateNavigationItemTitleAndPrompt;
- (void)_updateSections;
- (void)addSavedAccountViewControllerDidFinish:(id)finish withSavedAccount:(id)account;
- (void)dealloc;
- (void)handleIconDidUpdateForDomain:(id)domain;
- (void)linkableFooterViewDidInteractWithLink:(id)link;
- (void)newAutoFillablePasskeysAvailable:(id)available;
- (void)passwordManagerLogViewControllerWantsToDismiss;
- (void)passwordManagerLogViewControllerWantsToSaveGeneratedPassword:(id)password;
- (void)reloadTable;
- (void)searchPatternDidUpdate;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _SFAccountPickerTableViewController

- (_SFAccountPickerTableViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_alloc_init(_SFAccountTableConfiguration);
  [(_SFAccountTableConfiguration *)v6 setShouldShowSearchBar:1];
  [(_SFAccountTableConfiguration *)v6 setSupportsDelete:1];
  [(_SFAccountTableConfiguration *)v6 setShouldConfigureMultipleSelectionDuringEditing:0];
  [(_SFAccountTableConfiguration *)v6 setSupportsShare:0];
  -[_SFAccountTableConfiguration setIsForFillingIndividualAccountFields:](v6, "setIsForFillingIndividualAccountFields:", [configurationCopy isForFillingIndividualAccountFields]);
  mEMORY[0x1E69B1C68] = [MEMORY[0x1E69B1C68] sharedSiteMetadataManager];
  v28.receiver = self;
  v28.super_class = _SFAccountPickerTableViewController;
  v8 = [(_SFAccountTableViewController *)&v28 initWithSiteMetadataManager:mEMORY[0x1E69B1C68] configuration:v6];

  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    navigationItem = [(_SFAccountPickerTableViewController *)v8 navigationItem];
    v10 = _WBSLocalizedString();
    [navigationItem setBackButtonTitle:v10];

    prompt = [(SFAccountPickerConfiguration *)v8->_configuration prompt];
    [navigationItem setPrompt:prompt];

    if ([(SFAccountPickerConfiguration *)v8->_configuration shouldAllowAddingNewPasswords])
    {
      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:v8 action:sel__addNavigationBarItemTapped_];
      addNavigationBarItem = v8->_addNavigationBarItem;
      v8->_addNavigationBarItem = v12;

      [(UIBarButtonItem *)v8->_addNavigationBarItem setAccessibilityIdentifier:@"Passwords List Navigation Bar Add Button"];
      [navigationItem setRightBarButtonItem:v8->_addNavigationBarItem];
    }

    v14 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v8->_authenticationServicesAgentProxy;
    v8->_authenticationServicesAgentProxy = v14;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_newAutoFillablePasskeysAvailable_ name:*MEMORY[0x1E69C8D58] object:0];

    tableView = [(_SFAccountPickerTableViewController *)v8 tableView];
    [tableView setAccessibilityIdentifier:@"AutoFillPasswordTable"];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = *MEMORY[0x1E69C8D50];
    mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
    [defaultCenter2 addObserver:v8 selector:sel__accountStoreDidChange name:v19 object:mEMORY[0x1E69C8A38]];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = *MEMORY[0x1E69C8BF0];
    mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
    [defaultCenter3 addObserver:v8 selector:sel__generatedPasswordsStoreDidChange name:v22 object:mEMORY[0x1E69C8898]];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69C8D50];
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x1E69C8A38]];

  v6.receiver = self;
  v6.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v4 viewDidLoad];
  tableView = [(_SFAccountPickerTableViewController *)self tableView];
  [tableView setKeyboardDismissMode:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v8 viewWillAppear:appear];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
  navigationItem = [(_SFAccountPickerTableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];

  [(_SFAccountPickerTableViewController *)self _updateNavigationItemTitleAndPrompt];
  if (self->_indexPathOfRowShowingDetailView)
  {
    tableView = [(_SFAccountPickerTableViewController *)self tableView];
    [tableView deselectRowAtIndexPath:self->_indexPathOfRowShowingDetailView animated:1];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v6 viewWillDisappear:?];
  navigationController = [(_SFAccountPickerTableViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = _SFAccountPickerTableViewController;
  [(_SFAccountTableViewController *)&v10 viewDidDisappear:disappear];
  if (!self->_indexPathOfRowShowingDetailView)
  {
    mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
    [mEMORY[0x1E69C8A38] reset];

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

- (void)newAutoFillablePasskeysAvailable:(id)available
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
  navigationItem = [(_SFAccountPickerTableViewController *)self navigationItem];
  if ([(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count]|| self->_passkeyNearbyDeviceOptions)
  {
    v3 = _WBSLocalizedString();
    [navigationItem setTitle:v3];

    promptWhenPasskeysAreAvailable = [(SFAccountPickerConfiguration *)self->_configuration promptWhenPasskeysAreAvailable];
  }

  else
  {
    title = [(SFAccountPickerConfiguration *)self->_configuration title];
    if (title)
    {
      [navigationItem setTitle:title];
    }

    else
    {
      v7 = _WBSLocalizedString();
      [navigationItem setTitle:v7];
    }

    promptWhenPasskeysAreAvailable = [(SFAccountPickerConfiguration *)self->_configuration prompt];
  }

  v5 = promptWhenPasskeysAreAvailable;
  [navigationItem setPrompt:promptWhenPasskeysAreAvailable];
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewControllerDidCancel:self];
  }
}

- (void)handleIconDidUpdateForDomain:(id)domain
{
  domainCopy = domain;
  addPasswordViewController = self->_addPasswordViewController;
  if (addPasswordViewController)
  {
    [(SFAddSavedAccountViewController *)addPasswordViewController updatedIconIsAvailableForDomain:domainCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_detailViewController);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updatedIconIsAvailableForDomain:domainCopy];
  }
}

- (void)_reloadSavedAccountsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccounts = [mEMORY[0x1E69C8A38] savedAccounts];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E8495728;
  v18[4] = self;
  v7 = [savedAccounts safari_filterObjectsUsingBlock:v18];
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
    v17 = handlerCopy;
    v10 = _Block_copy(aBlock);
    hasAuditToken = [(SFAccountPickerConfiguration *)self->_configuration hasAuditToken];
    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
    if (hasAuditToken)
    {
      configuration = self->_configuration;
      if (configuration)
      {
        [(SFAccountPickerConfiguration *)configuration connectedAppAuditToken];
      }

      mainBundle = WBSApplicationIdentifierFromAuditToken();
      [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeysForRunningAssertionWithApplicationIdentifier:mainBundle withCompletionHandler:v10];
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeysForRunningAssertionWithApplicationIdentifier:bundleIdentifier withCompletionHandler:v10];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
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

- (void)_didPickSavedAccountForPassword:(id)password
{
  v20[1] = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  if (![(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
  {
    addPasswordSuggestedDomain = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
    safari_highLevelDomainForPasswordManager = [addPasswordSuggestedDomain safari_highLevelDomainForPasswordManager];
    highLevelDomain = [passwordCopy highLevelDomain];
    v8 = [safari_highLevelDomainForPasswordManager isEqualToString:highLevelDomain];

    if (v8)
    {
      v9 = MEMORY[0x1E695AC58];
      v10 = [@"https://" stringByAppendingString:addPasswordSuggestedDomain];
      safari_bestURLForUserTypedString = [v10 safari_bestURLForUserTypedString];
      v12 = [v9 safari_HTMLFormProtectionSpaceForURL:safari_bestURLForUserTypedString];

      mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
      savedAccountContext = [(SFAccountPickerConfiguration *)self->_configuration savedAccountContext];
      v15 = +[_SFFormDataController sharedController];
      autoFillQuirksManager = [v15 autoFillQuirksManager];
      associatedDomainsManager = [autoFillQuirksManager associatedDomainsManager];
      [mEMORY[0x1E69C8A38] setSavedAccountAsDefault:passwordCopy forProtectionSpace:v12 context:savedAccountContext associatedDomainsManager:associatedDomainsManager completionHandler:&__block_literal_global_97_0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v20[0] = passwordCopy;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [WeakRetained accountPickerTableViewController:self didPickSavedAccounts:v19];
    }
  }
}

- (void)_didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable:(id)applicable
{
  v57[1] = *MEMORY[0x1E69E9840];
  applicableCopy = applicable;
  addPasswordSuggestedDomain = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
  highLevelDomain = [applicableCopy highLevelDomain];
  v57[0] = highLevelDomain;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];

  additionalSites = [applicableCopy additionalSites];
  v9 = [additionalSites safari_mapObjectsUsingBlock:&__block_literal_global_101];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  if ([addPasswordSuggestedDomain length])
  {
    safari_highLevelDomainForPasswordManager = [addPasswordSuggestedDomain safari_highLevelDomainForPasswordManager];
    v12 = [safari_highLevelDomainForPasswordManager isEqualToString:@"apple.com"];
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E69C8DE8];
  v14 = [MEMORY[0x1E69C8DE8] domainByStrippingSubdomainWildcardPrefixIfNecessary:addPasswordSuggestedDomain];
  v15 = [v13 domainIsProhibitedForSavingCredentials:v14];

  if ([addPasswordSuggestedDomain length] && (objc_msgSend(addPasswordSuggestedDomain, "safari_highLevelDomainForPasswordManager"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v10, "containsObject:", v16) | v12 | v15, v16, (v17 & 1) == 0))
  {
    appID = [(SFAccountPickerConfiguration *)self->_configuration appID];
    v48 = appID;
    if (appID)
    {
      v19 = appID;
      if ([(SFAccountPickerConfiguration *)self->_configuration isConnectedAppAWebBrowser])
      {
        appID = 0;
      }

      else
      {
        appID = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v19 error:0];
      }
    }

    v49 = v10;
    v47 = appID;
    localizedName = [appID localizedName];
    v21 = [localizedName length];
    v22 = MEMORY[0x1E696AEC0];
    if (v21)
    {
      v23 = _WBSLocalizedString();
      effectiveTitle = [applicableCopy effectiveTitle];
      v25 = [v22 stringWithFormat:v23, effectiveTitle, localizedName];

      v26 = MEMORY[0x1E696AEC0];
      v27 = _WBSLocalizedString();
      [v26 stringWithFormat:v27, localizedName];
    }

    else
    {
      v28 = _WBSLocalizedString();
      effectiveTitle2 = [applicableCopy effectiveTitle];
      v25 = [v22 stringWithFormat:v28, effectiveTitle2, addPasswordSuggestedDomain];

      v30 = MEMORY[0x1E696AEC0];
      v27 = _WBSLocalizedString();
      [v30 stringWithFormat:v27, addPasswordSuggestedDomain];
    }
    v31 = ;
    v32 = localizedName;

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
    v37 = applicableCopy;
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
    v52 = addPasswordSuggestedDomain;
    v53 = v37;
    selfCopy = self;
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
    [(_SFAccountPickerTableViewController *)self _didPickSavedAccountForPassword:applicableCopy];
  }
}

- (void)_presentAddPasswordViewController
{
  password = [(WBSGeneratedPassword *)self->_generatedPasswordBeingTransformedIntoSavedAccount password];
  v3 = [SFAddSavedAccountViewController alloc];
  addPasswordSuggestedDomain = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
  addPasswordSuggestedLabel = addPasswordSuggestedDomain;
  if (!addPasswordSuggestedDomain)
  {
    addPasswordSuggestedLabel = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedLabel];
  }

  v6 = [(SFAddSavedAccountViewController *)v3 initWithSuggestedDomain:addPasswordSuggestedLabel password:password];
  addPasswordViewController = self->_addPasswordViewController;
  self->_addPasswordViewController = v6;

  if (!addPasswordSuggestedDomain)
  {
  }

  appID = [(SFAccountPickerConfiguration *)self->_configuration appID];

  if (appID)
  {
    appID2 = [(SFAccountPickerConfiguration *)self->_configuration appID];
    [(SFAddSavedAccountViewController *)self->_addPasswordViewController setAppIDForFallbackIcon:appID2];
  }

  [(SFAddSavedAccountViewController *)self->_addPasswordViewController setDelegate:self];
  mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
  keychainSyncSettingValue = [mEMORY[0x1E69C88B8] keychainSyncSettingValue];

  if (keychainSyncSettingValue >= 2)
  {
    if (keychainSyncSettingValue != 2)
    {
      goto LABEL_12;
    }

    v12 = [password length] == 0;
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
  presentedViewController = [(_SFAccountPickerTableViewController *)self presentedViewController];
  v15 = presentedViewController;
  if (presentedViewController)
  {
    selfCopy = presentedViewController;
  }

  else
  {
    selfCopy = self;
  }

  v17 = selfCopy;

  [(_SFAccountPickerTableViewController *)v17 presentViewController:v13 animated:1 completion:0];
}

- (void)_fillUsernameForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillUsernameForSavedAccount:accountCopy];
  }
}

- (void)_fillPasswordForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillPasswordForSavedAccount:accountCopy];
  }
}

- (void)_fillVerificationCodeForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillVerificationCodeForSavedAccount:accountCopy];
  }
}

- (void)_reloadVerificationCodesIfNeeded
{
  appID = [(SFAccountPickerConfiguration *)self->_configuration appID];
  v4 = [appID length];

  if (v4)
  {
    verificationCodeProvider = self->_verificationCodeProvider;
    appID2 = [(SFAccountPickerConfiguration *)self->_configuration appID];
    websiteURLForReceivedVerificationCodes = [(SFAccountPickerConfiguration *)self->_configuration websiteURLForReceivedVerificationCodes];
    v8 = [(SFAppAutoFillOneTimeCodeProvider *)verificationCodeProvider currentOneTimeCodesWithAppIdentifier:appID2 website:websiteURLForReceivedVerificationCodes usernameHint:0 fieldClassification:2];
    v9 = [v8 safari_filterObjectsUsingBlock:&__block_literal_global_161];
    verificationCodes = self->_verificationCodes;
    self->_verificationCodes = v9;

    if ([(_SFAccountPickerTableViewController *)self isViewLoaded])
    {
      tableView = [(_SFAccountPickerTableViewController *)self tableView];
      [tableView reloadData];
    }
  }
}

- (id)_cellConfigurationForVerificationCodeAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_verificationCodes, "objectAtIndexedSubscript:", [path row]);
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v6];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryTextProperties2 = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setColor:secondaryLabelColor];

  v10 = [v4 localizedTitleForContext:3];
  [cellConfiguration setText:v10];

  v11 = [v4 localizedSubtitleForContext:3];
  [cellConfiguration setSecondaryText:v11];

  v12 = [(_SFAccountPickerTableViewController *)self _appIconForVerificationCode:v4];
  [cellConfiguration setImage:v12];

  return cellConfiguration;
}

- (id)_bundleIdentifierForVerificationCode:(id)code
{
  codeCopy = code;
  source = [codeCopy source];
  if (source == 2)
  {
    sourceApplicationIdentifier = [codeCopy sourceApplicationIdentifier];
  }

  else
  {
    v5 = @"com.apple.MobileSMS";
    if (source)
    {
      v5 = 0;
    }

    if (source == 1)
    {
      sourceApplicationIdentifier = @"com.apple.mobilemail";
    }

    else
    {
      sourceApplicationIdentifier = v5;
    }
  }

  return sourceApplicationIdentifier;
}

- (id)_appIconForVerificationCode:(id)code
{
  v3 = [(_SFAccountPickerTableViewController *)self _bundleIdentifierForVerificationCode:code];
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
      cGImage = [v12 CGImage];
      [v12 scale];
      v16 = [v14 initWithCGImage:cGImage scale:0 orientation:?];
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

- (void)_consumeAndFillVerificationCode:(id)code
{
  codeCopy = code;
  [(SFAppAutoFillOneTimeCodeProvider *)self->_verificationCodeProvider consumeOneTimeCode:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountPickerTableViewController:self fillVerificationCode:codeCopy];
  }
}

- (void)addSavedAccountViewControllerDidFinish:(id)finish withSavedAccount:(id)account
{
  finishCopy = finish;
  accountCopy = account;
  v8 = accountCopy;
  if (!accountCopy)
  {
    addPasswordViewController = self;
LABEL_11:
    [addPasswordViewController dismissViewControllerAnimated:1 completion:0];
    goto LABEL_12;
  }

  if (self->_didPresentAddAccountViewControllerFromGeneratedPasswords)
  {
    password = [accountCopy password];
    password2 = [(WBSGeneratedPassword *)self->_generatedPasswordBeingTransformedIntoSavedAccount password];
    v11 = [password isEqualToString:password2];

    if (v11)
    {
      mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
      [mEMORY[0x1E69C8898] removeGeneratedPassword:self->_generatedPasswordBeingTransformedIntoSavedAccount completionHandler:0];
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

- (int64_t)_rowTypeForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if ([pathCopy section] == self->_sectionForPasswordsMatchingHintStrings)
  {
    shouldAllowAddingNewPasswords = [(SFAccountPickerConfiguration *)self->_configuration shouldAllowAddingNewPasswords];
    if ([(SFAccountPickerConfiguration *)self->_configuration shouldShowGeneratedPasswordsForDomain])
    {
      if (self->_hasMatchingGeneratedPasswords && shouldAllowAddingNewPasswords)
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

    if (shouldAllowAddingNewPasswords && v5 == [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (-[SFAccountPickerConfiguration shouldShowAutoFillPasskeys](self->_configuration, "shouldShowAutoFillPasskeys") && [pathCopy section] == self->_sectionForPasskeys && (v8 = objc_msgSend(pathCopy, "row"), v8 == -[NSMutableArray count](self->_savedAccountsWithUsablePasskeys, "count")))
  {
    v7 = 2;
  }

  else if ([pathCopy section] == self->_sectionForVerificationCodes)
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

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_sectionForPasskeys == section)
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

  else if (self->_sectionForPasswordsMatchingHintStrings == section)
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
    if (self->_sectionForAllPasswords == section)
    {
      v10 = 1104;
    }

    else
    {
      if (self->_sectionForVerificationCodes != section)
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_sectionForPasskeys == section)
  {
    if ([(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count])
    {
LABEL_10:
      v8 = _WBSLocalizedString();
      goto LABEL_12;
    }
  }

  else if (self->_sectionForAllPasswords == section)
  {
    if ([(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
    {
      searchPattern = [(_SFAccountTableViewController *)self searchPattern];
      [searchPattern length];
      v8 = _WBSLocalizedString();

      goto LABEL_12;
    }
  }

  else if (self->_sectionForVerificationCodes == section || [(_SFAccountPickerTableViewController *)self _shouldShowAutoFillPasskeys]|| [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count])
  {
    goto LABEL_10;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_SFAccountPickerTableViewController *)self _rowTypeForIndexPath:pathCopy];
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"addPassword"];
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"addPassword"];
        v27 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        textLabel = [(SFAccountTableViewCell *)v10 textLabel];
        [textLabel setTextColor:v27];

        goto LABEL_30;
      }

LABEL_18:
      v10 = v9;
      goto LABEL_39;
    }

    if (v8 == 2)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"useNearbyDevice"];
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"useNearbyDevice"];
        v11 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        textLabel2 = [(SFAccountTableViewCell *)v10 textLabel];
        [textLabel2 setTextColor:v11];

LABEL_30:
        v15 = _WBSLocalizedString();
        textLabel3 = [(SFAccountTableViewCell *)v10 textLabel];
        [textLabel3 setText:v15];
        goto LABEL_31;
      }

      goto LABEL_18;
    }

LABEL_10:
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"savedAccount"];
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
    v18 = [pathCopy section] == self->_sectionForPasswordsMatchingHintStrings || objc_msgSend(pathCopy, "section") == self->_sectionForPasskeys;
    v15 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:pathCopy];
    searchPattern = [(_SFAccountTableViewController *)self searchPattern];
    -[SFAccountTableViewCell setSavedAccount:searchPattern:emphasizeUserName:shouldDifferentiateWithGroupName:](v10, "setSavedAccount:searchPattern:emphasizeUserName:shouldDifferentiateWithGroupName:", v15, searchPattern, v18, [v15 hasSameUsernameAndHighLevelDomainAsOtherSharedSavedAccounts]);

    v23 = [pathCopy section] == self->_sectionForPasskeys || objc_msgSend(v15, "credentialTypes") != 2;
    v24 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys containsObject:v15];
    v25 = v24;
    if (v23 || (v24 & 1) != 0 || [(SFAccountPickerConfiguration *)self->_configuration forUserNamesOnly])
    {
      [(SFAccountTableViewCell *)v10 setUserInteractionEnabled:1];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v29 = _WBSLocalizedString();
      detailTextLabel = [(SFAccountTableViewCell *)v10 detailTextLabel];
      [detailTextLabel setText:v29];

      [(SFAccountTableViewCell *)v10 setUserInteractionEnabled:0];
      labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    v31 = labelColor;
    textLabel4 = [(SFAccountTableViewCell *)v10 textLabel];
    [textLabel4 setTextColor:v31];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    detailTextLabel2 = [(SFAccountTableViewCell *)v10 detailTextLabel];
    [detailTextLabel2 setTextColor:secondaryLabelColor];

    if (v25)
    {
      passkeyRelyingPartyID = [v15 passkeyRelyingPartyID];
      v36 = [passkeyRelyingPartyID isEqualToString:@"apple.com"];

      if (v36)
      {
        [(SFAccountTableViewCell *)v10 setAccessoryType:0];
      }
    }

    goto LABEL_38;
  }

  if (v8 == 3)
  {
    v19 = [viewCopy dequeueReusableCellWithIdentifier:@"verificationCode"];
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

    v15 = [(_SFAccountPickerTableViewController *)self _cellConfigurationForVerificationCodeAtIndexPath:pathCopy];
    [(SFAccountTableViewCell *)v10 setContentConfiguration:v15];
    goto LABEL_38;
  }

  if (v8 != 4)
  {
    goto LABEL_10;
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"generatedPasswords"];
  if (v9)
  {
    goto LABEL_18;
  }

  v10 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"generatedPasswords"];
  v13 = _WBSLocalizedString();
  textLabel5 = [(SFAccountTableViewCell *)v10 textLabel];
  [textLabel5 setText:v13];

  v15 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
  textLabel3 = [(SFAccountTableViewCell *)v10 textLabel];
  [textLabel3 setTextColor:v15];
LABEL_31:

LABEL_38:
LABEL_39:

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (self->_sectionForPasswordsMatchingHintStrings == section && [(SFAccountPickerConfiguration *)self->_configuration shouldAllowAddingNewPasswords]&& ![(SFAccountPickerConfiguration *)self->_configuration shouldHideCreatePasswordsInSettingsHint])
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_SFAccountPickerTableViewController *)self _rowTypeForIndexPath:pathCopy];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v12 = -[NSArray objectAtIndexedSubscript:](self->_verificationCodes, "objectAtIndexedSubscript:", [pathCopy row]);
      [(_SFAccountPickerTableViewController *)self _consumeAndFillVerificationCode:v12];
    }

    else if (v8 == 4)
    {
      [(_SFAccountPickerTableViewController *)self _presentGeneratedPasswordsViewController];
      tableView = [(_SFAccountPickerTableViewController *)self tableView];
      [tableView deselectRowAtIndexPath:pathCopy animated:1];

      goto LABEL_22;
    }

LABEL_10:
    if ([pathCopy section] == self->_sectionForPasskeys)
    {
      v13 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:pathCopy];
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

        delegate = [(_SFAccountPickerTableViewController *)self delegate];
        [delegate accountPickerTableViewControllerDidCancel:self];
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
        [(_SFAccountPickerTableViewController *)self _showAccountDetailsForSavedAccountAtIndexPath:pathCopy];
        goto LABEL_22;
      }

      v14 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:pathCopy];
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
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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

- (void)linkableFooterViewDidInteractWithLink:(id)link
{
  passwordManagerURL = [MEMORY[0x1E69C8978] passwordManagerURL];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:passwordManagerURL withOptions:0];
}

- (void)_presentGeneratedPasswordsViewController
{
  v3 = MEMORY[0x1E69BC7A8];
  _generatedPasswordsDomainHintString = [(_SFAccountPickerTableViewController *)self _generatedPasswordsDomainHintString];
  v5 = _generatedPasswordsDomainHintString;
  if (_generatedPasswordsDomainHintString)
  {
    v6 = _generatedPasswordsDomainHintString;
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

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  if (![(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields])
  {
    [(_SFAccountPickerTableViewController *)self _showAccountDetailsForSavedAccountAtIndexPath:pathCopy];
  }
}

- (void)_showAccountDetailsForSavedAccountAtIndexPath:(id)path
{
  pathCopy = path;
  v9 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:pathCopy];
  v5 = [(_SFAccountPickerTableViewController *)self _detailViewControllerForSavedAccount:v9];
  tableView = [(_SFAccountPickerTableViewController *)self tableView];
  [tableView selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];

  navigationController = [(_SFAccountPickerTableViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];

  indexPathOfRowShowingDetailView = self->_indexPathOfRowShowingDetailView;
  self->_indexPathOfRowShowingDetailView = pathCopy;

  objc_storeWeak(&self->_detailViewController, v5);
  [(_SFAccountPickerTableViewController *)self reloadTable];
}

- (void)_showAccountDetailsForSavedAccount:(id)account
{
  accountCopy = account;
  v4 = [(_SFAccountPickerTableViewController *)self _indexPathForSavedAccount:?];
  if (v4)
  {
    [(_SFAccountPickerTableViewController *)self _showAccountDetailsForSavedAccountAtIndexPath:v4];
  }

  else
  {
    v5 = [(_SFAccountPickerTableViewController *)self _detailViewControllerForSavedAccount:accountCopy];
    navigationController = [(_SFAccountPickerTableViewController *)self navigationController];
    [navigationController pushViewController:v5 animated:1];

    objc_storeWeak(&self->_detailViewController, v5);
  }
}

- (id)_detailViewControllerForSavedAccount:(id)account
{
  accountCopy = account;
  v5 = [[SFAccountDetailViewController alloc] initWithSavedAccount:accountCopy passwordWarning:0 options:0];

  [(SFAccountDetailViewController *)v5 setDelegate:self];
  [(SFAccountDetailViewController *)v5 setIsForFillingIndividualAccountFields:[(SFAccountPickerConfiguration *)self->_configuration isForFillingIndividualAccountFields]];

  return v5;
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = _SFAccountPickerTableViewController;
  return [(_SFAccountPickerTableViewController *)&v5 tableView:view shouldShowMenuForRowAtIndexPath:path];
}

- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  v7.receiver = self;
  v7.super_class = _SFAccountPickerTableViewController;
  return [(_SFAccountPickerTableViewController *)&v7 tableView:view canPerformAction:action forRowAtIndexPath:path withSender:sender];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v22[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (([(_SFAccountPickerTableViewController *)self _rowTypeForIndexPath:pathCopy]- 1) >= 4)
  {
    v7 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:pathCopy];
    passkeyRelyingPartyID = [v7 passkeyRelyingPartyID];
    v9 = [passkeyRelyingPartyID isEqualToString:@"apple.com"];

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
      selfCopy = self;
      v21 = pathCopy;
      v12 = [v11 contextualActionWithStyle:1 title:v10 handler:&v16];
      v13 = MEMORY[0x1E69DCFC0];
      v22[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:{1, v16, v17, v18, v19, selfCopy}];
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

- (void)_presentAlertToConfirmDeletingAccountsAtIndexPath:(id)path
{
  v25[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:pathCopy];
  v6 = MEMORY[0x1E695A9A0];
  v25[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v8 = [v6 configurationForDeletingSavedAccounts:v7];

  v9 = MEMORY[0x1E69DC650];
  title = [v8 title];
  subtitle = [v8 subtitle];
  v12 = [v9 alertControllerWithTitle:title message:subtitle preferredStyle:_SFDeviceAlertStyle()];

  view = [v12 view];
  [view setAccessibilityIdentifier:@"DeleteCredentialConfirmation"];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC648];
  buttonTitle = [v8 buttonTitle];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89___SFAccountPickerTableViewController__presentAlertToConfirmDeletingAccountsAtIndexPath___block_invoke;
  v21[3] = &unk_1E848FCE8;
  objc_copyWeak(&v23, &location);
  v16 = pathCopy;
  v22 = v16;
  v17 = [v14 actionWithTitle:buttonTitle style:2 handler:v21];
  [v12 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = _WBSLocalizedString();
  v20 = [v18 actionWithTitle:v19 style:1 handler:0];
  [v12 addAction:v20];

  [(_SFAccountPickerTableViewController *)self presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_deleteSavedAccountAtIndexPath:(id)path
{
  v4 = [(_SFAccountPickerTableViewController *)self _savedAccountForIndexPath:path];
  [(_SFAccountPickerTableViewController *)self _removeSavedAccount:v4 shouldPerformDeletionInAccountStore:1];
}

- (void)_removeSavedAccount:(id)account shouldPerformDeletionInAccountStore:(BOOL)store
{
  storeCopy = store;
  accountCopy = account;
  array = [MEMORY[0x1E695DF70] array];
  v8 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings indexOfObject:accountCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v9 = v8, [(NSMutableArray *)self->_savedAccountsMatchingHintStrings removeObject:accountCopy], self->_sectionForPasswordsMatchingHintStrings == 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:?];
    [array addObject:v11];
    v10 = [(NSMutableArray *)self->_savedAccountsMatchingHintStrings count]== 0;
  }

  v12 = [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys indexOfObject:accountCopy];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v12;
    [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys removeObject:accountCopy];
    if (self->_sectionForPasskeys != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:?];
      [array addObject:v14];
      v10 |= [(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count]== 0;
    }
  }

  v15 = [(NSMutableArray *)self->_matchingSavedAccounts indexOfObject:accountCopy];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
    [(NSMutableArray *)self->_matchingSavedAccounts removeObject:accountCopy];
    if (self->_sectionForAllPasswords != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x1E696AC88] indexPathForRow:v16 inSection:?];
      [array addObject:v17];
      v10 |= [(NSMutableArray *)self->_matchingSavedAccounts count]== 0;
    }
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v18 = dispatch_group_create();
  v19 = v18;
  if (storeCopy)
  {
    dispatch_group_enter(v18);
    mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95___SFAccountPickerTableViewController__removeSavedAccount_shouldPerformDeletionInAccountStore___block_invoke;
    v29[3] = &unk_1E84957C8;
    v31 = v32;
    v30 = v19;
    [mEMORY[0x1E69C8A38] _moveCredentialTypesToRecentlyDeleted:3 fromSavedAccount:accountCopy completionHandler:v29];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95___SFAccountPickerTableViewController__removeSavedAccount_shouldPerformDeletionInAccountStore___block_invoke_2;
  block[3] = &unk_1E84957F0;
  v27 = storeCopy;
  v28 = v10 & 1;
  block[4] = self;
  v24 = array;
  v25 = accountCopy;
  v26 = v32;
  v21 = accountCopy;
  v22 = array;
  dispatch_group_notify(v19, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v32, 8);
}

- (void)_presentErrorAlertWithString:(id)string
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:string message:0 preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = _WBSLocalizedString();
  v6 = [v4 actionWithTitle:v5 style:0 handler:0];
  [v7 addAction:v6];

  [(_SFAccountPickerTableViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(_SFAccountPickerTableViewController *)self _shouldUseEmptyHeaderFooterHeightInSection:section])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(_SFAccountPickerTableViewController *)self _shouldUseEmptyHeaderFooterHeightInSection:section];
  v5 = &SFAccountListEmptyHeaderFooterHeight;
  if (!v4)
  {
    v5 = MEMORY[0x1E69DE3D0];
  }

  return *v5;
}

- (BOOL)_shouldUseEmptyHeaderFooterHeightInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  tableView = [(_SFAccountPickerTableViewController *)self tableView];
  v6 = [(_SFAccountPickerTableViewController *)self tableView:tableView titleForHeaderInSection:0];
  v3 = v6 == 0;

  return v3;
}

- (void)searchPatternDidUpdate
{
  [(_SFAccountPickerTableViewController *)self _updateMatchingPasswords];
  tableView = [(_SFAccountPickerTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)_updateMatchingPasswords
{
  searchPattern = [(_SFAccountTableViewController *)self searchPattern];
  v4 = [searchPattern length];

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
  addPasswordSuggestedDomain = [(SFAccountPickerConfiguration *)self->_configuration addPasswordSuggestedDomain];
  v4 = addPasswordSuggestedDomain;
  if (addPasswordSuggestedDomain)
  {
    safari_highLevelDomainForPasswordManager = [addPasswordSuggestedDomain safari_highLevelDomainForPasswordManager];
  }

  else
  {
    domainHintStrings = [(SFAccountPickerConfiguration *)self->_configuration domainHintStrings];
    firstObject = [domainHintStrings firstObject];
    safari_highLevelDomainForPasswordManager = [firstObject safari_highLevelDomainForPasswordManager];
  }

  return safari_highLevelDomainForPasswordManager;
}

- (void)_updateMatchingGeneratedPasswordsState
{
  _generatedPasswordsDomainHintString = [(_SFAccountPickerTableViewController *)self _generatedPasswordsDomainHintString];

  if (_generatedPasswordsDomainHintString)
  {
    v4 = MEMORY[0x1E695AC58];
    _generatedPasswordsDomainHintString2 = [(_SFAccountPickerTableViewController *)self _generatedPasswordsDomainHintString];
    v6 = [@"https://" stringByAppendingString:_generatedPasswordsDomainHintString2];
    safari_bestURLForUserTypedString = [v6 safari_bestURLForUserTypedString];
    v10 = [v4 safari_HTMLFormProtectionSpaceForURL:safari_bestURLForUserTypedString];

    mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
    v9 = [mEMORY[0x1E69C8898] generatedPasswordsForProtectionSpace:v10 options:1];
    self->_hasMatchingGeneratedPasswords = [v9 count] != 0;
  }

  else
  {
    self->_hasMatchingGeneratedPasswords = 0;
  }
}

- (BOOL)_shouldShowAutoFillPasskeys
{
  shouldShowAutoFillPasskeys = [(SFAccountPickerConfiguration *)self->_configuration shouldShowAutoFillPasskeys];
  if (shouldShowAutoFillPasskeys)
  {
    if ([(NSMutableArray *)self->_savedAccountsWithUsablePasskeys count])
    {
      LOBYTE(shouldShowAutoFillPasskeys) = 1;
    }

    else
    {
      LOBYTE(shouldShowAutoFillPasskeys) = self->_passkeyNearbyDeviceOptions != 0;
    }
  }

  return shouldShowAutoFillPasskeys;
}

- (BOOL)_shouldShowPasswordsMatchingHintStringsSection
{
  searchPattern = [(_SFAccountTableViewController *)self searchPattern];
  v4 = [searchPattern length];

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

- (id)_savedAccountForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  if (section == self->_sectionForPasskeys)
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

  if (section == self->_sectionForPasswordsMatchingHintStrings)
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

  if (section == self->_sectionForAllPasswords)
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

- (id)_indexPathForSavedAccount:(id)account
{
  accountCopy = account;
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
        v18 = [accountCopy isEqual:v17];

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
        v14 = [accountCopy isEqual:v13];

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
      v10 = [accountCopy isEqual:v9];

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

- (void)passwordManagerLogViewControllerWantsToSaveGeneratedPassword:(id)password
{
  self->_didPresentAddAccountViewControllerFromGeneratedPasswords = 1;
  objc_storeStrong(&self->_generatedPasswordBeingTransformedIntoSavedAccount, password);

  [(_SFAccountPickerTableViewController *)self _presentAddPasswordViewController];
}

- (void)passwordManagerLogViewControllerWantsToDismiss
{
  presentedViewController = [(_SFAccountPickerTableViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (_SFAccountPickerTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end