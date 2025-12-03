@interface AAUIAccountRecoveryViewController
- (AAUIAccountRecoveryViewController)initWithAccountManager:(id)manager;
- (AAUIAccountRecoveryViewController)initWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier;
- (BOOL)_canBeCustodian;
- (BOOL)_canHaveCustodian;
- (BOOL)_isEligibleForRecoveryKey;
- (id)_accountRecoveryDetailsSpecifier;
- (id)_accountRecoveryDetailsSpecifierForIneligibleAccount;
- (id)_addRecoveryContactSpecifier;
- (id)_appleAccount;
- (id)_generateSpecifiers;
- (id)_idmsAccount;
- (id)_myRecoveryOptionsSpecifiers;
- (id)_recoveryContactForGroupSpecifier;
- (id)_recoveryContactForSpecifiers;
- (id)_recoveryKeySpecifiers;
- (id)_recoveryOptionsGroupSpecifier;
- (id)_recoveryOptionsGroupSpecifierForIneligibleAccount;
- (id)specifiers;
- (void)_beginObservingNotifications;
- (void)_beginObservingReviewCustodianDismissedNotification;
- (void)_beginObservingTrustedContactChangeNotification;
- (void)_continueShowingAddCustodian;
- (void)_custodianshipOwnerWasTapped:(id)tapped;
- (void)_displayCustodianAddNotAllowedAlert;
- (void)_displayRatchetGenericErrorAlert;
- (void)_fetchAllCustodianContacts;
- (void)_fetchRecoveryKeyUpdate;
- (void)_footerLearnMoreWasTapped;
- (void)_learnMoreWasTapped;
- (void)_myRecoveryContactWasTapped:(id)tapped;
- (void)_reloadSpecifiersAnimated;
- (void)_rkFooterLearnMoreTapped;
- (void)_showAddCustodian;
- (void)_showRecoveryKey:(id)key;
- (void)_showViewController:(id)controller;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopObservingNotifications;
- (void)_stopObservingReviewCustodianDismissedNotification;
- (void)_stopObservingTrustedContactChangeNotification;
- (void)_syncAccountRecoveryFactorsWithCompletion:(id)completion;
- (void)_syncTrustedContactsFromCloudKit;
- (void)dealloc;
- (void)finishingRepair;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)reviewCustodianSheetDismissed:(id)dismissed withUUIDs:(id)ds;
- (void)showReviewCustodiansModalIfNeeded;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUIAccountRecoveryViewController

- (AAUIAccountRecoveryViewController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = AAUIAccountRecoveryViewController;
  v6 = [(AAUIAccountRecoveryViewController *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    v8 = objc_opt_new();
    contactsProvider = v7->_contactsProvider;
    v7->_contactsProvider = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.appleaccountsettings.fetchcustodians", v10);
    contactWorkQueue = v7->_contactWorkQueue;
    v7->_contactWorkQueue = v11;

    v13 = objc_alloc_init(AAUICustodianRepairHelper);
    repairHelper = v7->_repairHelper;
    v7->_repairHelper = v13;

    [(AAUICustodianRepairHelper *)v7->_repairHelper setRepairDelegate:v7];
    myCustodianshipOwners = v7->_myCustodianshipOwners;
    v7->_myCustodianshipOwners = MEMORY[0x1E695E0F0];

    v16 = objc_opt_new();
    viewModel = v7->_viewModel;
    v7->_viewModel = v16;

    v18 = objc_alloc_init(MEMORY[0x1E698B850]);
    custodianController = v7->_custodianController;
    v7->_custodianController = v18;

    v20 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    authenticationController = v7->_authenticationController;
    v7->_authenticationController = v20;

    v7->_didShowCustodianReviewSheet = 0;
    v22 = objc_alloc_init(MEMORY[0x1E698DD40]);
    v23 = [[AAUIDTOHelper alloc] initWithDTOController:v22];
    dtoHelper = v7->_dtoHelper;
    v7->_dtoHelper = v23;
  }

  return v7;
}

- (AAUIAccountRecoveryViewController)initWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = AAUIAccountRecoveryViewController;
  v8 = [(AAUIAccountRecoveryViewController *)&v12 init];
  if (v8)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AAUIAccountRecoveryViewController initWithAccountManager:highlightRowIdentifier:];
    }

    objc_storeStrong((&v8->super.super.super.super.super.isa + *MEMORY[0x1E69C57A8]), identifier);
  }

  v10 = [(AAUIAccountRecoveryViewController *)v8 initWithAccountManager:managerCopy];

  return v10;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_self();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "dealloc %@", buf, 0xCu);
  }

  [(AAUIAccountRecoveryViewController *)self _stopObservingNotifications];
  v6.receiver = self;
  v6.super_class = AAUIAccountRecoveryViewController;
  [(AAUIAccountRecoveryViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AAUIAccountRecoveryViewController;
  [(AAUIAccountRecoveryViewController *)&v12 viewDidLoad];
  if (!self->_accountManager)
  {
    specifier = [(AAUIAccountRecoveryViewController *)self specifier];
    v4 = [specifier objectForKeyedSubscript:@"icloudAccountManager"];
    accountManager = self->_accountManager;
    self->_accountManager = v4;
  }

  title = [(AAAccountRecoveryManagementViewModel *)self->_viewModel title];
  navigationItem = [(AAUIAccountRecoveryViewController *)self navigationItem];
  [navigationItem setTitle:title];

  v8 = [AAUISpinnerManager alloc];
  navigationItem2 = [(AAUIAccountRecoveryViewController *)self navigationItem];
  v10 = [(AAUISpinnerManager *)v8 initWithNavigationItem:navigationItem2 hideBackButton:0];
  spinnerManager = self->_spinnerManager;
  self->_spinnerManager = v10;

  [(AAUIAccountRecoveryViewController *)self _fetchAllCustodianContacts];
  [(AAUIAccountRecoveryViewController *)self _beginObservingNotifications];
  [(AAUIAccountRecoveryViewController *)self _syncTrustedContactsFromCloudKit];
}

- (void)showReviewCustodiansModalIfNeeded
{
  v3 = objc_alloc_init(MEMORY[0x1E698B8C0]);
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke;
  v4[3] = &unk_1E820D4D8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 pendingFollowUpWithIdentifier:@"com.apple.AAFollowUpIdentifier.custodianReview" completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _AAUILogSystem();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Found Custodian Review followup. Presenting Custodian Review sheet", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke_57;
    v6[3] = &unk_1E820BE68;
    objc_copyWeak(&v7, (a1 + 40));
    v6[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(&v7);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke_cold_1();
    }
  }
}

void __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];

    v5 = [AAUIReviewCustodianListViewFactory createWithAccountManager:*(*(a1 + 32) + 1456) repairHelper:WeakRetained[186] telemetryFlowID:v4];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke_2;
    v6[3] = &unk_1E820C290;
    objc_copyWeak(&v7, (a1 + 40));
    [WeakRetained presentViewController:v5 animated:1 completion:v6];
    objc_destroyWeak(&v7);
  }
}

void __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[1576] = 1;
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUIAccountRecoveryViewController_showReviewCustodiansModalIfNeeded__block_invoke_2_cold_1();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AAUIAccountRecoveryViewController;
  [(AAUIAccountRecoveryViewController *)&v4 viewWillAppear:appear];
  [(AAUIAccountRecoveryViewController *)self _fetchRecoveryKeyUpdate];
  [(AAUIAccountRecoveryViewController *)self reloadSpecifiers];
  if (!self->_didShowCustodianReviewSheet)
  {
    [(AAUIAccountRecoveryViewController *)self showReviewCustodiansModalIfNeeded];
  }
}

- (void)_beginObservingNotifications
{
  [(AAUIAccountRecoveryViewController *)self _beginObservingReviewCustodianDismissedNotification];

  [(AAUIAccountRecoveryViewController *)self _beginObservingTrustedContactChangeNotification];
}

- (void)reviewCustodianSheetDismissed:(id)dismissed withUUIDs:(id)ds
{
  dismissedCopy = dismissed;
  if (-[AAUIAccountRecoveryViewController isViewLoaded](self, "isViewLoaded") && (-[AAUIAccountRecoveryViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 window], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = CFPreferencesCopyAppValue(@"DismissCustodianReviewCFU", *MEMORY[0x1E698B7D0]);
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AAUIAccountRecoveryViewController reviewCustodianSheetDismissed:withUUIDs:];
    }

    if (v8 && [MEMORY[0x1E698B9D8] canRepairCustodian])
    {
      v10 = _AAUILogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [AAUIAccountRecoveryViewController reviewCustodianSheetDismissed:withUUIDs:];
      }

      v11 = objc_alloc_init(MEMORY[0x1E698B850]);
      userInfo = [dismissedCopy userInfo];
      v13 = [userInfo valueForKey:@"custodianUUIDs"];
      [v11 repairCustodians:v13 remove:MEMORY[0x1E695E0F0] completion:&__block_literal_global_18];
    }
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUIAccountRecoveryViewController reviewCustodianSheetDismissed:withUUIDs:];
    }
  }
}

void __77__AAUIAccountRecoveryViewController_reviewCustodianSheetDismissed_withUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _AAUILogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __77__AAUIAccountRecoveryViewController_reviewCustodianSheetDismissed_withUUIDs___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Successfully repaired custodians.", v5, 2u);
  }
}

- (void)_stopObservingNotifications
{
  [(AAUIAccountRecoveryViewController *)self _stopObservingReviewCustodianDismissedNotification];

  [(AAUIAccountRecoveryViewController *)self _stopObservingTrustedContactChangeNotification];
}

- (void)_beginObservingReviewCustodianDismissedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_reviewCustodianSheetDismissed_withUUIDs_ name:@"AAUICustodianReviewSheetDismissed" object:0];
}

- (void)_beginObservingTrustedContactChangeNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__fetchAllCustodianContacts name:*MEMORY[0x1E698B7D8] object:0 suspensionBehavior:4];
}

- (void)_stopObservingTrustedContactChangeNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698B7D8] object:0];
}

- (void)_stopObservingReviewCustodianDismissedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"AAUICustodianReviewSheetDismissed" object:0];
}

- (id)specifiers
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69C57B8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    _generateSpecifiers = [(AAUIAccountRecoveryViewController *)self _generateSpecifiers];
    v5 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = _generateSpecifiers;
  }

  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(&self->super.super.super.super.super.isa + v3);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "AAUIAccountRecoveryViewController specifiers: returning %@", &v10, 0xCu);
  }

  v8 = *(&self->super.super.super.super.super.isa + v3);

  return v8;
}

- (id)_generateSpecifiers
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Loading Account Recovery specifiers.", buf, 2u);
  }

  v4 = objc_opt_new();
  _canHaveCustodian = [(AAUIAccountRecoveryViewController *)self _canHaveCustodian];
  v6 = _AAUILogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (_canHaveCustodian)
  {
    if (v7)
    {
      *v21 = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account can have custodians, adding custodian specifiers to UI...", v21, 2u);
    }

    _accountRecoveryDetailsSpecifier = [(AAUIAccountRecoveryViewController *)self _accountRecoveryDetailsSpecifier];
    [v4 addObject:_accountRecoveryDetailsSpecifier];

    _recoveryOptionsGroupSpecifier = [(AAUIAccountRecoveryViewController *)self _recoveryOptionsGroupSpecifier];
    [v4 addObject:_recoveryOptionsGroupSpecifier];

    _myRecoveryOptionsSpecifiers = [(AAUIAccountRecoveryViewController *)self _myRecoveryOptionsSpecifiers];
    [v4 addObjectsFromArray:_myRecoveryOptionsSpecifiers];

    _addRecoveryContactSpecifier = [(AAUIAccountRecoveryViewController *)self _addRecoveryContactSpecifier];
    [v4 addObject:_addRecoveryContactSpecifier];
  }

  else
  {
    if (v7)
    {
      *v20 = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account not eligible to have custodians, adding ineligible specifiers to UI...", v20, 2u);
    }

    _accountRecoveryDetailsSpecifierForIneligibleAccount = [(AAUIAccountRecoveryViewController *)self _accountRecoveryDetailsSpecifierForIneligibleAccount];
    [v4 addObject:_accountRecoveryDetailsSpecifierForIneligibleAccount];

    _recoveryOptionsGroupSpecifierForIneligibleAccount = [(AAUIAccountRecoveryViewController *)self _recoveryOptionsGroupSpecifierForIneligibleAccount];
    [v4 addObject:_recoveryOptionsGroupSpecifierForIneligibleAccount];

    _addRecoveryContactSpecifier = [(AAUIAccountRecoveryViewController *)self _myRecoveryOptionsSpecifiers];
    [v4 addObjectsFromArray:_addRecoveryContactSpecifier];
  }

  if ([(AAUIAccountRecoveryViewController *)self _isEligibleForRecoveryKey])
  {
    _recoveryKeySpecifiers = [(AAUIAccountRecoveryViewController *)self _recoveryKeySpecifiers];
    [v4 addObjectsFromArray:_recoveryKeySpecifiers];
  }

  if ([(AAUIAccountRecoveryViewController *)self _canBeCustodian])
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Account can be a custodian, adding custodianship owner specifiers, if any, to UI...", v19, 2u);
    }

    if ([(NSArray *)self->_myCustodianshipOwners count])
    {
      _recoveryContactForGroupSpecifier = [(AAUIAccountRecoveryViewController *)self _recoveryContactForGroupSpecifier];
      [v4 addObject:_recoveryContactForGroupSpecifier];

      _recoveryContactForSpecifiers = [(AAUIAccountRecoveryViewController *)self _recoveryContactForSpecifiers];
      [v4 addObjectsFromArray:_recoveryContactForSpecifiers];
    }
  }

  return v4;
}

- (void)_reloadSpecifiersAnimated
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]);
  if (v3 && (*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57B0]) & 1) != 0)
  {
    v4 = v3;
    _generateSpecifiers = [(AAUIAccountRecoveryViewController *)self _generateSpecifiers];
    v6 = [_generateSpecifiers differenceFromArray:v4 withOptions:0 usingEquivalenceTest:&__block_literal_global_81];
    [(AAUIAccountRecoveryViewController *)self beginUpdates];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    removals = [v6 removals];
    reverseObjectEnumerator = [removals reverseObjectEnumerator];

    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          -[AAUIAccountRecoveryViewController removeSpecifierAtIndex:animated:](self, "removeSpecifierAtIndex:animated:", [*(*(&v24 + 1) + 8 * i) index], 1);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    insertions = [v6 insertions];
    v14 = [insertions countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(insertions);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          object = [v18 object];
          -[AAUIAccountRecoveryViewController insertSpecifier:atIndex:animated:](self, "insertSpecifier:atIndex:animated:", object, [v18 index], 1);
        }

        v15 = [insertions countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    [(AAUIAccountRecoveryViewController *)self endUpdates];
  }

  else
  {

    [(AAUIAccountRecoveryViewController *)self reloadSpecifiers];
  }
}

uint64_t __62__AAUIAccountRecoveryViewController__reloadSpecifiersAnimated__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [v5 identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v4 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v5 userInfo];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if (v12)
      {
        v13 = [v4 userInfo];
        v14 = [v5 userInfo];
        v15 = [v13 displayName];
        v16 = [v14 displayName];
        v17 = v16;
        if (v15 == v16)
        {
        }

        else
        {
          v18 = [v13 displayName];
          v19 = [v14 displayName];
          v20 = [v18 isEqualToString:v19];

          if (!v20)
          {
            goto LABEL_11;
          }
        }

        v21 = [v13 detailsText];
        v22 = [v14 detailsText];
        v23 = v22;
        if (v21 == v22)
        {
        }

        else
        {
          v24 = [v13 detailsText];
          v25 = [v14 detailsText];
          v26 = [v24 isEqualToString:v25];

          if (!v26)
          {
LABEL_11:
            v8 = 0;
LABEL_14:

            goto LABEL_15;
          }
        }

        v27 = [v13 shouldGrayOutContactRow];
        v8 = v27 ^ [v14 shouldGrayOutContactRow] ^ 1;
        goto LABEL_14;
      }
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AAUIAccountRecoveryViewController_remoteUIRequestComplete_error___block_invoke;
  v4[3] = &unk_1E820C290;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__AAUIAccountRecoveryViewController_remoteUIRequestComplete_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[191] stopAllSpinners];
  v1 = [WeakRetained view];
  [v1 setUserInteractionEnabled:1];
}

- (void)_syncTrustedContactsFromCloudKit
{
  objc_initWeak(&location, self);
  custodianController = self->_custodianController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AAUIAccountRecoveryViewController__syncTrustedContactsFromCloudKit__block_invoke;
  v4[3] = &unk_1E820D520;
  objc_copyWeak(&v5, &location);
  [(AACustodianController *)custodianController pullTrustedContactsFromCloudKitWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __69__AAUIAccountRecoveryViewController__syncTrustedContactsFromCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Completed sync of trusted contacts from CloudKit with error: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AAUIAccountRecoveryViewController__syncTrustedContactsFromCloudKit__block_invoke_83;
  block[3] = &unk_1E820C290;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
}

void __69__AAUIAccountRecoveryViewController__syncTrustedContactsFromCloudKit__block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAllCustodianContacts];
    WeakRetained = v2;
  }
}

- (void)_fetchAllCustodianContacts
{
  [(AAUISpinnerManager *)self->_spinnerManager startNavigationSpinner];
  objc_initWeak(location, self);
  v3 = dispatch_group_create();
  v4 = objc_opt_new();
  dispatch_group_enter(v3);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke;
  v27[3] = &unk_1E820D548;
  v5 = v3;
  v28 = v5;
  objc_copyWeak(&v29, location);
  [v4 isWalrusRecoveryKeyAvailableWithCompletion:v27];
  v6 = objc_opt_new();
  if (!self->_myCustodiansRequestId)
  {
    localContacts = [(AAUICustodianRepairHelper *)self->_repairHelper localContacts];
    v8 = [localContacts count];

    if (!v8)
    {
      dispatch_group_enter(v5);
      contactsProvider = self->_contactsProvider;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_92;
      v23[3] = &unk_1E820D598;
      objc_copyWeak(&v26, location);
      v24 = v5;
      v25 = v6;
      [(AAContactsProvider *)contactsProvider fetchMyCachedCustodians:v23];

      objc_destroyWeak(&v26);
    }
  }

  dispatch_group_enter(v5);
  v10 = self->_contactsProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_3;
  v19[3] = &unk_1E820D598;
  objc_copyWeak(&v22, location);
  v11 = v5;
  v20 = v11;
  v21 = v6;
  [(AAContactsProvider *)v10 fetchMyCustodians:v19];
  objc_storeStrong(&self->_myCustodiansRequestId, v6);
  dispatch_group_enter(v11);
  v12 = self->_contactsProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_5;
  v16[3] = &unk_1E820D5E8;
  objc_copyWeak(&v18, location);
  v13 = v11;
  v17 = v13;
  [(AAContactsProvider *)v12 fetchMyCustodianshipOwners:v16];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_7;
  block[3] = &unk_1E820C290;
  objc_copyWeak(&v15, location);
  dispatch_group_notify(v13, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_cold_1();
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Recovery key state: %@ (fetch all)", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = WeakRetained;
    if (WeakRetained && *(WeakRetained + 1560) != a2)
    {
      *(WeakRetained + 1560) = a2;
      v11 = [WeakRetained[189] recoveryKeyLabel];
      [v10 reloadSpecifierID:v11];
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_2;
  v7[3] = &unk_1E820D570;
  objc_copyWeak(&v11, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v11);
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [*(a1 + 40) isEqual:WeakRetained[185]])
  {
    [WeakRetained[186] setLocalContacts:*(a1 + 48)];
    [WeakRetained _reloadSpecifiersAnimated];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_4;
  v7[3] = &unk_1E820D570;
  objc_copyWeak(&v11, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v11);
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [*(a1 + 40) isEqual:*(WeakRetained + 185)])
  {
    v2 = *(WeakRetained + 185);
    *(WeakRetained + 185) = 0;

    [*(WeakRetained + 186) setLocalContacts:*(a1 + 48)];
    [WeakRetained _reloadSpecifiersAnimated];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_6;
  block[3] = &unk_1E820D5C0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 187, *(a1 + 40));
    [WeakRetained _reloadSpecifiersAnimated];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__AAUIAccountRecoveryViewController__fetchAllCustodianContacts__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[191] stopNavigationSpinner];
    WeakRetained = v2;
  }
}

- (void)_fetchRecoveryKeyUpdate
{
  objc_initWeak(&location, self);
  v2 = objc_opt_new();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__AAUIAccountRecoveryViewController__fetchRecoveryKeyUpdate__block_invoke;
  v3[3] = &unk_1E820D308;
  objc_copyWeak(&v4, &location);
  [v2 isWalrusRecoveryKeyAvailableWithCompletion:v3];
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
}

void __60__AAUIAccountRecoveryViewController__fetchRecoveryKeyUpdate__block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__AAUIAccountRecoveryViewController__fetchRecoveryKeyUpdate__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Recovery key state: %@ (fetch recovery key)", buf, 0xCu);
    }

    if (WeakRetained && WeakRetained[1560] != a2)
    {
      WeakRetained[1560] = a2;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__AAUIAccountRecoveryViewController__fetchRecoveryKeyUpdate__block_invoke_94;
      block[3] = &unk_1E820B8F0;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __60__AAUIAccountRecoveryViewController__fetchRecoveryKeyUpdate__block_invoke_94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[189] recoveryKeyLabel];
  [v1 reloadSpecifierID:v2];
}

- (void)_syncAccountRecoveryFactorsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to sync recovery factors and walrus status", buf, 2u);
  }

  authenticationController = self->_authenticationController;
  _appleAccount = [(AAUIAccountRecoveryViewController *)self _appleAccount];
  aa_altDSID = [_appleAccount aa_altDSID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__AAUIAccountRecoveryViewController__syncAccountRecoveryFactorsWithCompletion___block_invoke;
  v10[3] = &unk_1E820C0A0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(AKAppleIDAuthenticationController *)authenticationController performCheckInForAccountWithAltDSID:aa_altDSID completion:v10];
}

void __79__AAUIAccountRecoveryViewController__syncAccountRecoveryFactorsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__AAUIAccountRecoveryViewController__syncAccountRecoveryFactorsWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Successfully performed liveness check-in", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_accountRecoveryDetailsSpecifier
{
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"ACCOUNT RECOVERY DETAILS" name:0];
  details = [(AAAccountRecoveryManagementViewModel *)self->_viewModel details];
  [v3 setProperty:details forKey:*MEMORY[0x1E69C5900]];

  return v3;
}

- (id)_accountRecoveryDetailsSpecifierForIneligibleAccount
{
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"ACCOUNT RECOVERY DETAILS INELIGIBLE" name:0];
  detailsForIneligibleAccount = [(AAAccountRecoveryManagementViewModel *)self->_viewModel detailsForIneligibleAccount];
  [v3 setProperty:detailsForIneligibleAccount forKey:*MEMORY[0x1E69C5900]];

  return v3;
}

- (id)_recoveryOptionsGroupSpecifier
{
  v3 = objc_opt_new();
  myRecoveryContactsGroupTitle = [(AAAccountRecoveryManagementViewModel *)self->_viewModel myRecoveryContactsGroupTitle];
  myRecoveryContactsFooter = [(AAAccountRecoveryManagementViewModel *)self->_viewModel myRecoveryContactsFooter];
  learnMore = [(AAAccountRecoveryManagementViewModel *)self->_viewModel learnMore];
  v7 = [v3 createGroupSpecifierWithIdentifier:@"RECOVERY CONTACT" title:myRecoveryContactsGroupTitle footerText:myRecoveryContactsFooter linkText:learnMore actionMethodName:@"_footerLearnMoreWasTapped" target:self];

  return v7;
}

- (id)_recoveryOptionsGroupSpecifierForIneligibleAccount
{
  v3 = objc_opt_new();
  myRecoveryContactsGroupTitle = [(AAAccountRecoveryManagementViewModel *)self->_viewModel myRecoveryContactsGroupTitle];
  myRecoveryContactsFooterForIneligibleAccount = [(AAAccountRecoveryManagementViewModel *)self->_viewModel myRecoveryContactsFooterForIneligibleAccount];
  learnMore = [(AAAccountRecoveryManagementViewModel *)self->_viewModel learnMore];
  v7 = [v3 createGroupSpecifierWithIdentifier:@"RECOVERY CONTACT INELIGIBLE" title:myRecoveryContactsGroupTitle footerText:myRecoveryContactsFooterForIneligibleAccount linkText:learnMore actionMethodName:@"_footerLearnMoreWasTapped" target:self];

  return v7;
}

- (id)_myRecoveryOptionsSpecifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([(AAUIAccountRecoveryViewController *)self _canHaveCustodian])
  {
    localContacts = [(AAUICustodianRepairHelper *)self->_repairHelper localContacts];
    v5 = [localContacts sortedArrayUsingComparator:&__block_literal_global_114];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [AAUITrustedContactListCell specifierForContact:v10 loadAction:sel__myRecoveryContactWasTapped_ target:self];
          handle = [v10 handle];
          v13 = [@"RecoveryOption-" stringByAppendingString:handle];
          [v11 setIdentifier:v13];

          [v3 addObject:v11];
        }

        v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

uint64_t __65__AAUIAccountRecoveryViewController__myRecoveryOptionsSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_addRecoveryContactSpecifier
{
  v3 = objc_opt_new();
  myRecoveryContactsAdd = [(AAAccountRecoveryManagementViewModel *)self->_viewModel myRecoveryContactsAdd];
  v5 = [v3 createAddTableCellWithTitle:myRecoveryContactsAdd loadAction:sel__showAddCustodian target:self];

  return v5;
}

- (id)_recoveryKeySpecifiers
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  recoveryKeyLabel = [(AAAccountRecoveryManagementViewModel *)self->_viewModel recoveryKeyLabel];
  recoveryKeyDetails = [(AAAccountRecoveryManagementViewModel *)self->_viewModel recoveryKeyDetails];
  learnMore = [(AAAccountRecoveryManagementViewModel *)self->_viewModel learnMore];
  v8 = [v4 createGroupSpecifierWithIdentifier:@"RECOVERY KEY" title:recoveryKeyLabel footerText:recoveryKeyDetails linkText:learnMore actionMethodName:@"_rkFooterLearnMoreTapped" target:self];

  [v3 addObject:v8];
  v9 = MEMORY[0x1E69C5748];
  recoveryKeyLabel2 = [(AAAccountRecoveryManagementViewModel *)self->_viewModel recoveryKeyLabel];
  v11 = [v9 preferenceSpecifierNamed:recoveryKeyLabel2 target:self set:0 get:sel__recoveryKeyState detail:0 cell:2 edit:0];

  recoveryKeyLabel3 = [(AAAccountRecoveryManagementViewModel *)self->_viewModel recoveryKeyLabel];
  [v11 setIdentifier:recoveryKeyLabel3];

  recoveryKeyLabel4 = [(AAAccountRecoveryManagementViewModel *)self->_viewModel recoveryKeyLabel];
  [v11 setProperty:recoveryKeyLabel4 forKey:*MEMORY[0x1E69C59A8]];

  [v11 setControllerLoadAction:sel__showRecoveryKey_];
  [v3 addObject:v11];

  return v3;
}

- (id)_recoveryContactForGroupSpecifier
{
  v2 = MEMORY[0x1E69C5748];
  recoveryContactForGroupTitle = [(AAAccountRecoveryManagementViewModel *)self->_viewModel recoveryContactForGroupTitle];
  v4 = [v2 groupSpecifierWithID:@"ACCOUNT RECOVERY FOR" name:recoveryContactForGroupTitle];

  return v4;
}

- (id)_recoveryContactForSpecifiers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_myCustodianshipOwners;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [AAUITrustedContactListCell specifierForContact:v8 loadAction:sel__custodianshipOwnerWasTapped_ target:self];
        handle = [v8 handle];
        v11 = [@"RecoveryContact-" stringByAppendingString:handle];
        [v9 setIdentifier:v11];

        [v3 addObject:v9];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_myRecoveryContactWasTapped:(id)tapped
{
  userInfo = [tapped userInfo];
  trustedContactStatus = [userInfo trustedContactStatus];
  v5 = off_1E8209C50;
  if (trustedContactStatus != 1)
  {
    v5 = off_1E8209C40;
  }

  v6 = [objc_alloc(*v5) initWithAccountManager:self->_accountManager localContact:userInfo];
  v7 = objc_opt_new();
  v8 = [v7 viewModelForFlow:0 withContact:userInfo];

  v9 = [[AAUITrustedContactDetailsViewController alloc] initWithContact:userInfo viewModel:v8 actionHandler:v6];
  [(AAUIAccountRecoveryViewController *)self _showViewController:v9];
}

- (void)_learnMoreWasTapped
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "iCDRS Learn More was tapped", v6, 2u);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  learnMoreURL = [(AAAccountRecoveryManagementViewModel *)self->_viewModel learnMoreURL];
  [mEMORY[0x1E69DC668] openURL:learnMoreURL withCompletionHandler:0];
}

- (void)_footerLearnMoreWasTapped
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "iCDRS Footer Learn More was tapped", v6, 2u);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  footerLearnMoreURL = [(AAAccountRecoveryManagementViewModel *)self->_viewModel footerLearnMoreURL];
  [mEMORY[0x1E69DC668] openURL:footerLearnMoreURL withCompletionHandler:0];
}

- (void)_custodianshipOwnerWasTapped:(id)tapped
{
  userInfo = [tapped userInfo];
  v4 = [[AAUICustodianForActionHandler alloc] initWithLocalContact:userInfo];
  v5 = objc_opt_new();
  v6 = [v5 viewModelForFlow:1 withContact:userInfo];

  v7 = [[AAUITrustedContactDetailsViewController alloc] initWithContact:userInfo viewModel:v6 actionHandler:v4];
  [(AAUIAccountRecoveryViewController *)self _showViewController:v7];
}

- (void)_showAddCustodian
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v4)
  {
    dtoHelper = self->_dtoHelper;
    aa_altDSID = [v4 aa_altDSID];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke;
    v8[3] = &unk_1E820C140;
    v8[4] = self;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:aa_altDSID completion:v8];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAUIRecoveryFactorController startAddingRecoveryContact];
    }
  }
}

void __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_149;
    v13[3] = &unk_1E820B8F0;
    v13[4] = *(a1 + 32);
    v11 = MEMORY[0x1E69E96A0];
    v12 = v13;
LABEL_10:
    dispatch_async(v11, v12);
    return;
  }

  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_cold_1();
  }

  if (![*(*(a1 + 32) + 1552) isDTOGatingEnabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_2;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    v11 = MEMORY[0x1E69E96A0];
    v12 = block;
    goto LABEL_10;
  }

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_cold_2();
  }

  v5 = *(a1 + 32);
  v6 = v5[194];
  v7 = [v5 presentingViewController];
  v8 = [v6 makeRatchetContextWithPresentationContext:v7 DTOContextType:1];

  v9 = *(a1 + 32);
  v10 = *(v9 + 1552);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_147;
  v15[3] = &unk_1E820C1A8;
  v15[4] = v9;
  [v10 shouldAllowOpForContext:v8 completion:v15];
}

void __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_147(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_35_cold_1(a2, v5, v6);
  }

  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_148;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _continueShowingAddCustodian];
}

uint64_t __54__AAUIAccountRecoveryViewController__showAddCustodian__block_invoke_149(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39_cold_1();
  }

  return [*(a1 + 32) _displayCustodianAddNotAllowedAlert];
}

- (void)_continueShowingAddCustodian
{
  v3 = [[AAUICustodianSetupFlowController alloc] initWithAccountManager:self->_accountManager];
  custodianSetupFlowController = self->_custodianSetupFlowController;
  self->_custodianSetupFlowController = v3;

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setIsWalrusEnabled:+[AAUICDPHelper isWalrusEnabled]];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController startWithoutFirstTimeSetup];
  navigationController = [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController navigationController];
  [(AAUIAccountRecoveryViewController *)self _showViewController:navigationController];
}

- (void)_displayCustodianAddNotAllowedAlert
{
  makeCustodianAddOpNotAllowedAlert = [(AAUIDTOHelper *)self->_dtoHelper makeCustodianAddOpNotAllowedAlert];
  [(AAUIAccountRecoveryViewController *)self presentViewController:makeCustodianAddOpNotAllowedAlert animated:1 completion:0];
}

- (void)_displayRatchetGenericErrorAlert
{
  makeGenericRatchetFailedAlert = [(AAUIDTOHelper *)self->_dtoHelper makeGenericRatchetFailedAlert];
  [(AAUIAccountRecoveryViewController *)self presentViewController:makeGenericRatchetFailedAlert animated:1 completion:0];
}

- (void)_showRecoveryKey:(id)key
{
  keyCopy = key;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Show recovery key management...", buf, 2u);
  }

  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v7 = [mEMORY[0x1E698DDF8] urlAtKey:*MEMORY[0x1E698DC70]];

  if (v7)
  {
    [(AAUIAccountRecoveryViewController *)self _startSpinnerInSpecifier:keyCopy];
    v8 = [MEMORY[0x1E696AF68] requestWithURL:v7];
    v9 = [[AAUIGrandSlamRemoteUIPresenter alloc] initWithAccountManager:self->_accountManager presenter:self];
    remoteUIPresenter = self->_remoteUIPresenter;
    self->_remoteUIPresenter = v9;

    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setDelegate:self];
    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter loadRequest:v8];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Unable to load Recovery Key UI. We're missing the URL from the URL bag.", v11, 2u);
    }
  }
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AAUIAccountRecoveryViewController__startSpinnerInSpecifier___block_invoke;
  block[3] = &unk_1E820BE68;
  objc_copyWeak(&v8, &location);
  v7 = specifierCopy;
  v5 = specifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__AAUIAccountRecoveryViewController__startSpinnerInSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[191] startNavigationSpinner];
  v2 = WeakRetained[191];
  v3 = *(a1 + 32);
  v4 = [v3 identifier];
  [v2 startSpinnerInSpecifier:v3 forKey:v4];

  v5 = [WeakRetained view];
  [v5 setUserInteractionEnabled:0];
}

- (void)_showViewController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAccountRecoveryViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(UIViewController *)self aaui_showViewController:controllerCopy sender:self];
  }
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKey:*MEMORY[0x1E698C218]];

  return v3;
}

- (id)_idmsAccount
{
  idmsAccount = self->_idmsAccount;
  if (!idmsAccount)
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    _appleAccount = [(AAUIAccountRecoveryViewController *)self _appleAccount];
    aa_altDSID = [_appleAccount aa_altDSID];
    v7 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:aa_altDSID];
    v8 = self->_idmsAccount;
    self->_idmsAccount = v7;

    idmsAccount = self->_idmsAccount;
  }

  return idmsAccount;
}

- (BOOL)_canHaveCustodian
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  _idmsAccount = [(AAUIAccountRecoveryViewController *)self _idmsAccount];
  v5 = [mEMORY[0x1E698DC80] canHaveCustodianForAccount:_idmsAccount];

  return v5;
}

- (BOOL)_canBeCustodian
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  _idmsAccount = [(AAUIAccountRecoveryViewController *)self _idmsAccount];
  v5 = [mEMORY[0x1E698DC80] canBeCustodianForAccount:_idmsAccount];

  return v5;
}

- (BOOL)_isEligibleForRecoveryKey
{
  v2 = MEMORY[0x1E69977E0];
  _appleAccount = [(AAUIAccountRecoveryViewController *)self _appleAccount];
  aa_personID = [_appleAccount aa_personID];
  LOBYTE(v2) = [v2 isICDPEnabledForDSID:aa_personID];

  return v2;
}

- (void)_rkFooterLearnMoreTapped
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "%@: RK footer Learn More was tapped", v5, 0xCu);
}

- (void)finishingRepair
{
  [(AAUIAccountRecoveryViewController *)self _beginObservingNotifications];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__AAUIAccountRecoveryViewController_finishingRepair__block_invoke;
  v3[3] = &unk_1E820C290;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__AAUIAccountRecoveryViewController_finishingRepair__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAllCustodianContacts];
    WeakRetained = v2;
  }
}

- (void)initWithAccountManager:highlightRowIdentifier:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C5355000, v0, OS_LOG_TYPE_DEBUG, "Highlighting row %@", v1, 0xCu);
}

- (void)reviewCustodianSheetDismissed:withUUIDs:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C5355000, v0, OS_LOG_TYPE_DEBUG, "Review sheet dismissed. Should dismiss CFU: %@", v1, 0xCu);
}

@end