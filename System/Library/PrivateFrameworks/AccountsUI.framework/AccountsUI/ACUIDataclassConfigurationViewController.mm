@interface ACUIDataclassConfigurationViewController
+ (BOOL)shouldPresentAsModalSheet;
- (ACAccount)account;
- (ACUIDataclassConfigurationViewController)init;
- (BOOL)_confirmDeleteLocalDataForDataclasses:(id)dataclasses;
- (BOOL)_confirmKeepLocalDataForDataclasses:(id)dataclasses;
- (BOOL)_confirmSyncDelete;
- (BOOL)_isShowingDeleteAccountButton;
- (BOOL)_isUserOverridableForDataclass:(id)dataclass;
- (BOOL)_promptUserToConfirmAccountDeletion;
- (BOOL)dataclassStateForSpecifier:(id)specifier;
- (BOOL)isAppleMailAccount:(id)account;
- (BOOL)operationsHelper:(id)helper shouldRemoveAccount:(id)account;
- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)setup;
- (BOOL)shouldShowSpecifierForDataclass:(id)dataclass;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_accountIdentifier;
- (id)_getDescription:(id)description;
- (id)_navigationTitle;
- (id)_orderDataclassList:(id)list;
- (id)_specifiersForDataclasses:(id)dataclasses;
- (id)dataclassLinkListStateForSpecifier:(id)specifier;
- (id)dataclassSwitchStateForSpecifier:(id)specifier;
- (id)deviceMessage;
- (id)displayedAccountTypeString;
- (id)displayedShortAccountTypeString;
- (id)messageForAccountDeletionProgressUI;
- (id)messageForAccountDeletionWarning;
- (id)operationsHelper:(id)helper desiredDataclassActionFromPicker:(id)picker;
- (id)specifierForAccountSettingsCell;
- (id)specifierForAccountSummaryCell;
- (id)specifierForDataclass:(id)dataclass;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForDeleteButton;
- (id)valueForAccountSummaryCell;
- (int64_t)_promptUserToConfirmAccountSyncDeletion;
- (int64_t)operationsHelper:(id)helper shouldRemoveOrDisableAccount:(id)account;
- (void)_enableAllProvisionedDataclassesWithoutRequringUserInteraction;
- (void)_notifyOfAccountSetupCompletion;
- (void)_presentUndoAlert:(id)alert reason:(id)reason;
- (void)_setDataclass:(id)dataclass enabled:(BOOL)enabled onAccount:(id)account completion:(id)completion;
- (void)_setDescription:(id)description;
- (void)_textFieldValueDidChange:(id)change;
- (void)_updateDoneButton;
- (void)appendDeleteAccountButton;
- (void)cancelButtonTapped:(id)tapped;
- (void)dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier;
- (void)dealloc;
- (void)deleteButtonTapped:(id)tapped;
- (void)doneButtonTapped:(id)tapped;
- (void)operationsHelper:(id)helper didRemoveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper willRemoveAccount:(id)account;
- (void)operationsHelper:(id)helper willSaveAccount:(id)account;
- (void)reloadDynamicSpecifiersWithAnimation:(BOOL)animation;
- (void)setDataclass:(id)dataclass enabled:(BOOL)enabled;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ACUIDataclassConfigurationViewController

+ (BOOL)shouldPresentAsModalSheet
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v5 = 1;
  if (userInterfaceIdiom != 1)
  {
    return userInterfaceIdiom == 5;
  }

  return v5;
}

- (ACUIDataclassConfigurationViewController)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = ACUIDataclassConfigurationViewController;
  v10 = [(ACUIViewController *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    [(ACUIDataclassConfigurationViewController *)v10 setShouldEnableAccountSummaryCell:1];
    [(ACUIDataclassConfigurationViewController *)v10 setShouldEnableAccountSettingsCell:1];
    [(ACUIDataclassConfigurationViewController *)v10 setShouldEnableDeleteAccountButton:1];
    [(ACUIDataclassConfigurationViewController *)v10 setShouldEnableDataclassSwitches:1];
    [(ACUIDataclassConfigurationViewController *)v10 setFirstTimeSetup:0];
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allDesiredDataclassActions = v10->_allDesiredDataclassActions;
    v10->_allDesiredDataclassActions = v2;
    MEMORY[0x277D82BD8](allDesiredDataclassActions);
    [(ACUIDataclassConfigurationViewController *)v10 setShouldShowDeleteAccountButton:ACUIIsSharedIPadMode() == 0];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;
    [(ACUIDataclassConfigurationViewController *)v10 setIsAccountModificationDisabled:v4];
    MEMORY[0x277D82BD8](mEMORY[0x277D262A0]);
  }

  v6 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  v3.receiver = selfCopy;
  v3.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v3 dealloc];
}

- (id)displayedAccountTypeString
{
  account = [(ACUIDataclassConfigurationViewController *)self account];
  accountType = [(ACAccount *)account accountType];
  accountTypeDescription = [(ACAccountType *)accountType accountTypeDescription];
  MEMORY[0x277D82BD8](accountType);
  MEMORY[0x277D82BD8](account);

  return accountTypeDescription;
}

- (id)displayedShortAccountTypeString
{
  account = [(ACUIDataclassConfigurationViewController *)self account];
  accountType = [(ACAccount *)account accountType];
  accountTypeDescription = [(ACAccountType *)accountType accountTypeDescription];
  MEMORY[0x277D82BD8](accountType);
  MEMORY[0x277D82BD8](account);

  return accountTypeDescription;
}

- (id)valueForAccountSummaryCell
{
  account = [(ACUIDataclassConfigurationViewController *)self account];
  displayUsername = [(ACAccount *)account displayUsername];
  MEMORY[0x277D82BD8](account);

  return displayUsername;
}

- (id)titleForDeleteButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)messageForAccountDeletionWarning
{
  v3 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"DELETE_ACCOUNT_WARNING_FORMAT" value:? table:?];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
  v8 = [v3 stringWithFormat:v6, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

- (id)messageForAccountDeletionProgressUI
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DELETING" value:&stru_2850054A0 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)viewDidLoad
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35[1] = a2;
  account = [(ACUIDataclassConfigurationViewController *)self account];
  managingOwnerIdentifier = [(ACAccount *)account managingOwnerIdentifier];
  v33 = 0;
  v31 = 0;
  if (managingOwnerIdentifier)
  {
    v2 = MEMORY[0x277D82BE0](managingOwnerIdentifier);
  }

  else
  {
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v33 = 1;
    v32 = [(ACAccount *)account2 objectForKeyedSubscript:*MEMORY[0x277CB8A90]];
    v31 = 1;
    v2 = MEMORY[0x277D82BE0](v32);
  }

  v35[0] = v2;
  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](account2);
  }

  MEMORY[0x277D82BD8](managingOwnerIdentifier);
  MEMORY[0x277D82BD8](account);
  if (v35[0])
  {
    location = _ACUILogSystem();
    v29 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      account3 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v38, "[ACUIDataclassConfigurationViewController viewDidLoad]", 154, account3, v35[0]);
      _os_log_debug_impl(&dword_23DC86000, location, v29, "%s (%d) Hiding delete button for %@, account is managed by %@", v38, 0x26u);
      MEMORY[0x277D82BD8](account3);
    }

    objc_storeStrong(&location, 0);
    [(ACUIDataclassConfigurationViewController *)selfCopy setShouldShowDeleteAccountButton:0];
  }

  if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountModificationDisabled])
  {
    v28 = _ACUILogSystem();
    v27 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      account4 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      __os_log_helper_16_2_3_8_32_4_0_8_64(v37, "[ACUIDataclassConfigurationViewController viewDidLoad]", 159, account4);
      _os_log_debug_impl(&dword_23DC86000, v28, v27, "%s (%d) Hiding delete button for %@, account modification is disabled", v37, 0x1Cu);
      MEMORY[0x277D82BD8](account4);
    }

    objc_storeStrong(&v28, 0);
    [(ACUIDataclassConfigurationViewController *)selfCopy setShouldShowDeleteAccountButton:0];
    [(ACUIDataclassConfigurationViewController *)selfCopy setShouldEnableAccountSummaryCell:0];
    [(ACUIDataclassConfigurationViewController *)selfCopy setShouldEnableAccountSettingsCell:0];
    [(ACUIDataclassConfigurationViewController *)selfCopy setShouldEnableDataclassSwitches:0];
  }

  v26.receiver = selfCopy;
  v26.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v26 viewDidLoad];
  navigationItem = [(ACUIDataclassConfigurationViewController *)selfCopy navigationItem];
  if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
  {
    doneButton = [(ACUIViewController *)selfCopy doneButton];
    MEMORY[0x277D82BD8](doneButton);
    if (!doneButton)
    {
      v16 = objc_alloc(MEMORY[0x277D751E0]);
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:@"DONE" value:&stru_2850054A0 table:@"Localizable"];
      v17 = [v16 initWithTitle:? style:? target:? action:?];
      [(ACUIViewController *)selfCopy setDoneButton:?];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    doneButton2 = [(ACUIViewController *)selfCopy doneButton];
    [navigationItem setRightBarButtonItem:?];
    MEMORY[0x277D82BD8](doneButton2);
  }

  if ([(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
  {
    [navigationItem setHidesBackButton:1];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"SAVE" value:&stru_2850054A0 table:@"Localizable"];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setTitle:v12];
    MEMORY[0x277D82BD8](rightBarButtonItem);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    if (![(ACUIViewController *)selfCopy isPresentedAsModalSheet])
    {
      if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
      {
        rightBarButtonItem2 = [navigationItem rightBarButtonItem];
        [rightBarButtonItem2 setHidden:1];
        MEMORY[0x277D82BD8](rightBarButtonItem2);
      }

      else
      {
        [navigationItem setRightBarButtonItem:0];
      }
    }

    [navigationItem setLeftBarButtonItem:?];
    [(ACUIViewController *)selfCopy setCancelButton:0];
    [navigationItem setHidesBackButton:0];
  }

  _navigationTitle = [(ACUIDataclassConfigurationViewController *)selfCopy _navigationTitle];
  [navigationItem setTitle:?];
  MEMORY[0x277D82BD8](_navigationTitle);
  account5 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  accountDescription = [(ACAccount *)account5 accountDescription];
  initialAccountDescription = selfCopy->_initialAccountDescription;
  selfCopy->_initialAccountDescription = accountDescription;
  MEMORY[0x277D82BD8](initialAccountDescription);
  MEMORY[0x277D82BD8](account5);
  table = [(ACUIDataclassConfigurationViewController *)selfCopy table];
  v7 = objc_opt_class();
  v8 = +[(PSTableCell *)ACUIAccountSummaryCell];
  [table registerClass:v7 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](table);
  table2 = [(ACUIDataclassConfigurationViewController *)selfCopy table];
  [table2 setAccessibilityIdentifier:@"DATACLASS_CONFIGURATION_TABLE"];
  MEMORY[0x277D82BD8](table2);
  objc_storeStrong(&navigationItem, 0);
  objc_storeStrong(v35, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v10 viewWillAppear:appear];
  location = [(ACUIDataclassConfigurationViewController *)selfCopy navigationItem];
  _navigationTitle = [(ACUIDataclassConfigurationViewController *)selfCopy _navigationTitle];
  [location setTitle:?];
  MEMORY[0x277D82BD8](_navigationTitle);
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    isFirstTimeSetup = [(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup];
    v4 = @"First-time-setup";
    if (!isFirstTimeSetup)
    {
      v4 = @"existing-setup";
    }

    v5 = v4;
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    __os_log_helper_16_2_4_8_32_4_0_8_66_8_64(v14, "[ACUIDataclassConfigurationViewController viewWillAppear:]", 210, v5, account);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) Presenting %{public}@ for %@", v14, 0x26u);
    MEMORY[0x277D82BD8](account);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v9 viewDidAppear:appear];
  if (![(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
  {
    specifier = [(ACUIDataclassConfigurationViewController *)selfCopy specifier];
    v8 = [specifier propertyForKey:*MEMORY[0x277D3FD90]];
    MEMORY[0x277D82BD8](specifier);
    v4 = selfCopy;
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    identifier = [(ACAccount *)account identifier];
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    [ACUIUtils emitNavigationEventForSubPane:"emitNavigationEventForSubPane:subPath:account:inHostAppBundleID:" subPath:v4 account:identifier inHostAppBundleID:?];
    MEMORY[0x277D82BD8](account2);
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](account);
    objc_storeStrong(&v8, 0);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v10 = a2;
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v8 viewWillDisappear:disappear];
  v6 = 0;
  v5 = 0;
  if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
  {
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v6 = 1;
    v5 = account != 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](account);
  }

  if (v5)
  {
    accountStore = [(ACUIViewController *)selfCopy accountStore];
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    [ACAccountStore saveAccount:accountStore withCompletionHandler:"saveAccount:withCompletionHandler:"];
    MEMORY[0x277D82BD8](account2);
    MEMORY[0x277D82BD8](accountStore);
  }
}

void __62__ACUIDataclassConfigurationViewController_viewWillDisappear___block_invoke(NSObject *a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v8 & 1) == 0)
  {
    oslog[0] = _ACUILogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v11, "[ACUIDataclassConfigurationViewController viewWillDisappear:]_block_invoke", 231);
      _os_log_error_impl(&dword_23DC86000, oslog[0], type, "%s (%d) Account did not save", v11, 0x12u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (location)
  {
    v4 = _ACUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v10, "[ACUIDataclassConfigurationViewController viewWillDisappear:]_block_invoke", 234, location);
      _os_log_error_impl(&dword_23DC86000, v4, OS_LOG_TYPE_ERROR, "%s (%d) Error occurred while saving account. Error: %@", v10, 0x1Cu);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_navigationTitle
{
  if ([(ACUIDataclassConfigurationViewController *)self isFirstTimeSetup])
  {
    displayedShortAccountTypeString = [(ACUIDataclassConfigurationViewController *)self displayedShortAccountTypeString];
  }

  else
  {
    account = [(ACUIDataclassConfigurationViewController *)self account];
    displayedShortAccountTypeString = [(ACAccount *)account accountDescription];
    MEMORY[0x277D82BD8](account);
  }

  return displayedShortAccountTypeString;
}

- (void)doneButtonTapped:(id)tapped
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, tapped);
  v43 = _ACUILogSystem();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    log = v43;
    type = v42;
    v20 = selfCopy;
    v23 = NSStringFromSelector(v45);
    v41 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(v47, "[ACUIDataclassConfigurationViewController doneButtonTapped:]", 249, v20, v41, location);
    _os_log_impl(&dword_23DC86000, log, type, "%s (%d) @%{public}@ %{public}@: %{public}@", v47, 0x30u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v41, 0);
  }

  objc_storeStrong(&v43, 0);
  if ([(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __61__ACUIDataclassConfigurationViewController_doneButtonTapped___block_invoke;
    v37 = &unk_278BFA730;
    v38 = MEMORY[0x277D82BE0](selfCopy);
    v39 = MEMORY[0x23EEFC830](&v33);
    forceMailSetup = selfCopy->_forceMailSetup;
    v31 = 0;
    v19 = 0;
    if (forceMailSetup)
    {
      account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v31 = 1;
      v19 = [(ACAccount *)account isProvisionedForDataclass:*MEMORY[0x277CB9150]]== 0;
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](account);
    }

    if (v19)
    {
      v4 = MEMORY[0x277D75110];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"CONTINUE_WITHOUT_MAIL_TITLE" value:? table:?];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v6 localizedStringForKey:@"CONTINUE_WITHOUT_MAIL_MESSAGE" value:&stru_2850054A0 table:@"Localizable"];
      v30 = [v4 alertControllerWithTitle:v7 message:? preferredStyle:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v10 = v30;
      v9 = MEMORY[0x277D750F8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
      v11 = [v9 actionWithTitle:? style:? handler:?];
      [v10 addAction:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      v15 = v30;
      v14 = MEMORY[0x277D750F8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v18 localizedStringForKey:@"CONTINUE" value:&stru_2850054A0 table:@"Localizable"];
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __61__ACUIDataclassConfigurationViewController_doneButtonTapped___block_invoke_2;
      v28 = &unk_278BFAA08;
      v29 = MEMORY[0x277D82BE0](v39);
      v16 = [v14 actionWithTitle:v17 style:0 handler:&v24];
      [v15 addAction:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      [(ACUIDataclassConfigurationViewController *)selfCopy presentViewController:v30 animated:1 completion:0];
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
    }

    else
    {
      (*(v39 + 2))();
    }

    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v38, 0);
    v40 = 0;
  }

  else
  {
    [(ACUIViewController *)selfCopy dismissAnimated:1];
    v40 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __61__ACUIDataclassConfigurationViewController_doneButtonTapped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) shouldVerifyBeforeAccountSave];
  v5 = [*(a1 + 32) accountOperationsHelper];
  v4 = [*(a1 + 32) account];
  v1 = *(*(a1 + 32) + 1544);
  [v5 saveAccount:? withDataclassActions:? requireVerification:?];
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](v5);
}

void __61__ACUIDataclassConfigurationViewController_doneButtonTapped___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)cancelButtonTapped:(id)tapped
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, tapped);
  v12 = _ACUILogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    v5 = selfCopy;
    v8 = NSStringFromSelector(v14);
    v10 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(v16, "[ACUIDataclassConfigurationViewController cancelButtonTapped:]", 279, v5, v10, location);
    _os_log_impl(&dword_23DC86000, log, type, "%s (%d) @%{public}@ %{public}@: %{public}@", v16, 0x30u);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
  rootController = [(ACUIDataclassConfigurationViewController *)selfCopy rootController];
  configurationCompletion = [(ACUIDataclassConfigurationViewController *)selfCopy configurationCompletion];
  MEMORY[0x277D82BD8](configurationCompletion);
  if (configurationCompletion)
  {
    configurationCompletion2 = [(ACUIDataclassConfigurationViewController *)selfCopy configurationCompletion];
    configurationCompletion2[2](configurationCompletion2, 0);
    MEMORY[0x277D82BD8](configurationCompletion2);
    [(ACUIDataclassConfigurationViewController *)selfCopy setConfigurationCompletion:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    [rootController dismiss];
  }

  objc_storeStrong(&rootController, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  selfCopy = self;
  v33 = a2;
  if (!*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    array = [MEMORY[0x277CBEB18] array];
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v26 = account == 0;
    MEMORY[0x277D82BD8](account);
    if (v26)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:v33 object:selfCopy file:@"ACUIDataclassConfigurationViewController.m" lineNumber:314 description:{@"Nil account in %@.", objc_opt_class()}];
      MEMORY[0x277D82BD8](currentHandler);
    }

    if (![(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
    {
      specifierForAccountSummaryCell = [(ACUIDataclassConfigurationViewController *)selfCopy specifierForAccountSummaryCell];
      accountSummaryCellSpecifier = selfCopy->_accountSummaryCellSpecifier;
      selfCopy->_accountSummaryCellSpecifier = specifierForAccountSummaryCell;
      MEMORY[0x277D82BD8](accountSummaryCellSpecifier);
      if (selfCopy->_accountSummaryCellSpecifier)
      {
        displayedAccountTypeString = [(ACUIDataclassConfigurationViewController *)selfCopy displayedAccountTypeString];
        v30 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:displayedAccountTypeString];
        [array addObject:v30];
        [array addObject:selfCopy->_accountSummaryCellSpecifier];
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&displayedAccountTypeString, 0);
      }
    }

    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    provisionedDataclasses = [(ACAccount *)account2 provisionedDataclasses];
    MEMORY[0x277D82BD8](account2);
    if ([provisionedDataclasses count])
    {
      v5 = [(ACUIDataclassConfigurationViewController *)selfCopy _specifiersForDataclasses:provisionedDataclasses];
      dataclassSpecifiers = selfCopy->_dataclassSpecifiers;
      selfCopy->_dataclassSpecifiers = v5;
      MEMORY[0x277D82BD8](dataclassSpecifiers);
      [array addObjectsFromArray:selfCopy->_dataclassSpecifiers];
    }

    if (![(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup]|| [(ACUIDataclassConfigurationViewController *)selfCopy shouldShowOtherSpecifiersDuringFirstSetup])
    {
      otherSpecifiers = [(ACUIDataclassConfigurationViewController *)selfCopy otherSpecifiers];
      otherSpecifiers = selfCopy->_otherSpecifiers;
      selfCopy->_otherSpecifiers = otherSpecifiers;
      MEMORY[0x277D82BD8](otherSpecifiers);
      if ([(NSArray *)selfCopy->_otherSpecifiers count])
      {
        v22 = [(NSArray *)selfCopy->_otherSpecifiers objectAtIndexedSubscript:0];
        cellType = [v22 cellType];
        MEMORY[0x277D82BD8](v22);
        if (cellType)
        {
          v20 = array;
          emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
          [v20 addObject:?];
          MEMORY[0x277D82BD8](emptyGroupSpecifier);
        }

        [array addObjectsFromArray:selfCopy->_otherSpecifiers];
      }
    }

    if (![(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup]&& [(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
    {
      specifierForAccountSettingsCell = [(ACUIDataclassConfigurationViewController *)selfCopy specifierForAccountSettingsCell];
      accountSettingsCellSpecifier = selfCopy->_accountSettingsCellSpecifier;
      selfCopy->_accountSettingsCellSpecifier = specifierForAccountSettingsCell;
      MEMORY[0x277D82BD8](accountSettingsCellSpecifier);
      if (selfCopy->_accountSettingsCellSpecifier)
      {
        v28 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"accountSettingsSpecifier"];
        [array addObject:v28];
        [array addObject:selfCopy->_accountSettingsCellSpecifier];
        objc_storeStrong(&v28, 0);
      }
    }

    if ([(ACUIDataclassConfigurationViewController *)selfCopy shouldShowDeleteAccountButton])
    {
      emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [array addObject:emptyGroupSpecifier2];
      v16 = MEMORY[0x277D3FAD8];
      titleForDeleteButton = [(ACUIDataclassConfigurationViewController *)selfCopy titleForDeleteButton];
      v11 = [v16 deleteButtonSpecifierWithName:? target:? action:?];
      deleteButtonSpecifier = selfCopy->_deleteButtonSpecifier;
      selfCopy->_deleteButtonSpecifier = v11;
      MEMORY[0x277D82BD8](deleteButtonSpecifier);
      MEMORY[0x277D82BD8](titleForDeleteButton);
      [(PSSpecifier *)selfCopy->_deleteButtonSpecifier setProperty:@"ACUIDeleteButtonSpecifierID" forKey:*MEMORY[0x277D3FFB8]];
      v18 = selfCopy->_deleteButtonSpecifier;
      v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableDeleteAccountButton](selfCopy, "shouldEnableDeleteAccountButton")}];
      v13 = *MEMORY[0x277D3FF38];
      [PSSpecifier setProperty:v18 forKey:"setProperty:forKey:"];
      MEMORY[0x277D82BD8](v19);
      [array addObject:selfCopy->_deleteButtonSpecifier];
      objc_storeStrong(&emptyGroupSpecifier2, 0);
    }

    objc_storeStrong((&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), array);
    objc_storeStrong(&provisionedDataclasses, 0);
    objc_storeStrong(&array, 0);
  }

  v14 = *(&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v14;
}

- (id)specifierForAccountSummaryCell
{
  v32[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26[1] = a2;
  v26[0] = 0;
  accountInfoControllerClass = [(ACUIDataclassConfigurationViewController *)self accountInfoControllerClass];
  if (accountInfoControllerClass)
  {
    if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
    {
      v10 = MEMORY[0x277D3FB40];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v12 localizedStringForKey:@"LABEL" value:&stru_2850054A0 table:@"Localizable"];
      v5 = [v10 preferenceSpecifierNamed:v11 target:selfCopy set:sel__setDescription_ get:sel__getDescription_ detail:objc_opt_class() cell:? edit:?];
      v6 = v26[0];
      v26[0] = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      [v26[0] setKeyboardType:0 autoCaps:1 autoCorrection:?];
      v29[0] = @"AccountSettingsAlreadyShowedEnableAndDeleteKey";
      v30[0] = MEMORY[0x277CBEC38];
      v29[1] = @"account";
      account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v30[1] = account;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      MEMORY[0x277D82BD8](account);
      v14 = v26[0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableAccountSummaryCell](selfCopy, "shouldEnableAccountSummaryCell")}];
      v7 = *MEMORY[0x277D3FF38];
      [v14 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v15);
      [v26[0] setUserInfo:v21];
      objc_storeStrong(&v21, 0);
    }

    else
    {
      v23 = 0;
      v23 = [(ACUIViewController *)selfCopy isPresentedAsModalSheet]|| ([(objc_class *)accountInfoControllerClass shouldPresentAsModalSheet]& 1) == 0;
      account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      valueForAccountSummaryCell = [(ACUIDataclassConfigurationViewController *)selfCopy valueForAccountSummaryCell];
      v2 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:valueText:detailControllerClass:presentationStyle:" account:1 valueText:account2 detailControllerClass:? presentationStyle:?];
      v3 = v26[0];
      v26[0] = v2;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](valueForAccountSummaryCell);
      MEMORY[0x277D82BD8](account2);
      v31[0] = @"AccountSettingsAlreadyShowedEnableAndDeleteKey";
      v32[0] = MEMORY[0x277CBEC38];
      v31[1] = @"account";
      account3 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v32[1] = account3;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
      MEMORY[0x277D82BD8](account3);
      [v26[0] setUserInfo:v22];
      v19 = v26[0];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableAccountSummaryCell](selfCopy, "shouldEnableAccountSummaryCell")}];
      v4 = *MEMORY[0x277D3FF38];
      [v19 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v22, 0);
    }

    v28 = MEMORY[0x277D82BE0](v26[0]);
    v24 = 1;
  }

  else
  {
    v28 = 0;
    v24 = 1;
  }

  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];
  v8 = v28;

  return v8;
}

- (id)specifierForAccountSettingsCell
{
  v19[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15[1] = a2;
  v15[0] = 0;
  accountInfoControllerClass = [(ACUIDataclassConfigurationViewController *)self accountInfoControllerClass];
  if (accountInfoControllerClass)
  {
    v12 = 0;
    v12 = [(ACUIViewController *)selfCopy isPresentedAsModalSheet]|| ([(objc_class *)accountInfoControllerClass shouldPresentAsModalSheet]& 1) == 0;
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v2 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:valueText:detailControllerClass:presentationStyle:" account:? valueText:? detailControllerClass:? presentationStyle:?];
    v3 = v15[0];
    v15[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](account);
    v18[0] = @"AccountSettingsAlreadyShowedEnableAndDeleteKey";
    v19[0] = MEMORY[0x277CBEC38];
    v18[1] = @"account";
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v19[1] = account2;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    MEMORY[0x277D82BD8](account2);
    [v15[0] setUserInfo:v11];
    v9 = v15[0];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableAccountSettingsCell](selfCopy, "shouldEnableAccountSettingsCell")}];
    v4 = *MEMORY[0x277D3FF38];
    [v9 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v10);
    v17 = MEMORY[0x277D82BE0](v15[0]);
    v13 = 1;
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v17 = 0;
    v13 = 1;
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
  v5 = v17;

  return v5;
}

- (id)_specifiersForDataclasses:(id)dataclasses
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclasses);
  array = [MEMORY[0x277CBEB18] array];
  v9 = selfCopy;
  allObjects = [location[0] allObjects];
  v18 = [(ACUIDataclassConfigurationViewController *)v9 _orderDataclassList:?];
  MEMORY[0x277D82BD8](allObjects);
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [(ACUIDataclassConfigurationViewController *)selfCopy setDataclassGroupSpecifier:?];
  MEMORY[0x277D82BD8](emptyGroupSpecifier);
  dataclassGroupSpecifier = [(ACUIDataclassConfigurationViewController *)selfCopy dataclassGroupSpecifier];
  [array addObject:?];
  MEMORY[0x277D82BD8](dataclassGroupSpecifier);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v18);
  v14 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v14)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v14;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v7);
      if ([(ACUIDataclassConfigurationViewController *)selfCopy shouldShowSpecifierForDataclass:v17])
      {
        v15 = [(ACUIDataclassConfigurationViewController *)selfCopy specifierForDataclass:v17];
        if (v15)
        {
          [array addObject:v15];
        }

        objc_storeStrong(&v15, 0);
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](array);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&array, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_getDescription:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, description);
  account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  accountDescription = [(ACAccount *)account accountDescription];
  MEMORY[0x277D82BD8](account);
  objc_storeStrong(location, 0);

  return accountDescription;
}

- (void)_setDescription:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, description);
  v12 = 0;
  v10 = 0;
  v8 = 0;
  LOBYTE(v7) = 1;
  if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
  {
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v12 = 1;
    accountType = [(ACAccount *)account accountType];
    v10 = 1;
    identifier = [(ACAccountType *)accountType identifier];
    v8 = 1;
    v7 = ![(NSString *)identifier isEqualToString:*MEMORY[0x277CB8BA0]];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](identifier);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](accountType);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](account);
  }

  if (v7)
  {
    v5 = location[0];
    navigationItem = [(ACUIDataclassConfigurationViewController *)selfCopy navigationItem];
    [navigationItem setTitle:v5];
    MEMORY[0x277D82BD8](navigationItem);
  }

  account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  [(ACAccount *)account2 setAccountDescription:v3];
  MEMORY[0x277D82BD8](account2);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldShowSpecifierForDataclass:(id)dataclass
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)specifierForDataclass:(id)dataclass
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  if ([location[0] isEqualToString:*MEMORY[0x277CB9110]])
  {
    v21 = 0;
    v18 = 1;
  }

  else
  {
    v6 = MEMORY[0x277D3FAD8];
    v5 = location[0];
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v17 = [v6 acui_specifierForDataclass:v5 account:? target:? set:? get:?];
    MEMORY[0x277D82BD8](account);
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v16 = [(ACAccount *)account2 accountPropertyForKey:*MEMORY[0x277CB8AC0]];
    MEMORY[0x277D82BD8](account2);
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    if ([(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
    {
      account3 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v14 = 1;
      accountType = [(ACAccount *)account3 accountType];
      v12 = 1;
      identifier = [(ACAccountType *)accountType identifier];
      v10 = 1;
      v9 = 0;
      if ([(NSString *)identifier isEqualToString:*MEMORY[0x277CB8C40]])
      {
        v9 = v16 != 0;
      }
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](identifier);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](accountType);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](account3);
    }

    if (selfCopy->_forceMailSetup && ([location[0] isEqualToString:*MEMORY[0x277CB9150]] & 1) != 0 || v9 && (objc_msgSend(v16, "containsObject:", location[0]) & 1) == 0 || !-[ACUIDataclassConfigurationViewController _isUserOverridableForDataclass:](selfCopy, "_isUserOverridableForDataclass:", location[0]) || !-[ACUIDataclassConfigurationViewController shouldEnableDataclassSwitches](selfCopy, "shouldEnableDataclassSwitches"))
    {
      [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v21 = MEMORY[0x277D82BE0](v17);
    v18 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v21;

  return v3;
}

- (BOOL)_isUserOverridableForDataclass:(id)dataclass
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  v9 = 0;
  if ([location[0] isEqualToString:*MEMORY[0x277CB9150]])
  {
    objc_storeStrong(&v9, *MEMORY[0x277D26338]);
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CB9108]] & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", *MEMORY[0x277CB9110]))
  {
    objc_storeStrong(&v9, *MEMORY[0x277D26330]);
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CB90F0]])
  {
    objc_storeStrong(&v9, *MEMORY[0x277D26328]);
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CB9190]])
  {
    objc_storeStrong(&v9, *MEMORY[0x277D26350]);
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CB9178]])
  {
    objc_storeStrong(&v9, *MEMORY[0x277D26348]);
  }

  else
  {
    objc_storeStrong(&v9, 0);
  }

  v8 = 0;
  if (v9)
  {
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v7 = [(ACAccount *)account objectForKeyedSubscript:v9];
    MEMORY[0x277D82BD8](account);
    bOOLValue = 1;
    if (v7)
    {
      objc_opt_class();
      bOOLValue = 1;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v7 BOOLValue];
      }
    }

    v8 = bOOLValue & 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v8 = 1;
  }

  v4 = v8;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)reloadDynamicSpecifiersWithAnimation:(BOOL)animation
{
  selfCopy = self;
  v17 = a2;
  animationCopy = animation;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D82BE0](selfCopy->_accountSummaryCellSpecifier);
  if (v13)
  {
    [v15 addObject:v13];
  }

  specifierForAccountSummaryCell = [(ACUIDataclassConfigurationViewController *)selfCopy specifierForAccountSummaryCell];
  if (specifierForAccountSummaryCell)
  {
    [v14 addObject:specifierForAccountSummaryCell];
  }

  v11 = [(NSArray *)selfCopy->_dataclassSpecifiers copy];
  if (v11)
  {
    [v15 addObjectsFromArray:v11];
  }

  account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  provisionedDataclasses = [(ACAccount *)account provisionedDataclasses];
  v10 = [(ACUIDataclassConfigurationViewController *)selfCopy _specifiersForDataclasses:?];
  MEMORY[0x277D82BD8](provisionedDataclasses);
  MEMORY[0x277D82BD8](account);
  if (v10)
  {
    [v14 addObjectsFromArray:v10];
  }

  v9 = [(NSArray *)selfCopy->_otherSpecifiers copy];
  if (v9)
  {
    [v15 addObjectsFromArray:v9];
  }

  otherSpecifiers = [(ACUIDataclassConfigurationViewController *)selfCopy otherSpecifiers];
  v8 = [otherSpecifiers copy];
  MEMORY[0x277D82BD8](otherSpecifiers);
  if (v8)
  {
    [v14 addObjectsFromArray:v8];
  }

  if (![v15 isEqualToArray:v14])
  {
    [(ACUIDataclassConfigurationViewController *)selfCopy replaceContiguousSpecifiers:v15 withSpecifiers:v14 animated:1];
  }

  if ([(ACUIDataclassConfigurationViewController *)selfCopy isAccountDataclassListRedesignFFEnabled])
  {
    v7 = MEMORY[0x277D82BE0](selfCopy->_accountSettingsCellSpecifier);
    if (v7)
    {
      [v15 addObject:v7];
    }

    obj = [(ACUIDataclassConfigurationViewController *)selfCopy specifierForAccountSettingsCell];
    if (obj)
    {
      [v14 addObject:obj];
    }

    objc_storeStrong(&selfCopy->_accountSettingsCellSpecifier, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&selfCopy->_accountSummaryCellSpecifier, specifierForAccountSummaryCell);
  objc_storeStrong(&selfCopy->_dataclassSpecifiers, v10);
  objc_storeStrong(&selfCopy->_otherSpecifiers, v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&specifierForAccountSummaryCell, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
}

- (id)dataclassSwitchStateForSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v3 = [(ACUIDataclassConfigurationViewController *)selfCopy dataclassStateForSpecifier:location[0]];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)dataclassLinkListStateForSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if ([(ACUIDataclassConfigurationViewController *)selfCopy dataclassStateForSpecifier:location[0]])
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = 1;
    v11 = [v13 localizedStringForKey:@"ON" value:&stru_2850054A0 table:@"Localizable"];
    v10 = 1;
    v3 = MEMORY[0x277D82BE0](v11);
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = 1;
    v7 = [v9 localizedStringForKey:@"OFF" value:&stru_2850054A0 table:@"Localizable"];
    v6 = 1;
    v3 = MEMORY[0x277D82BE0](v7);
  }

  v16 = v3;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  objc_storeStrong(location, 0);
  v4 = v16;

  return v4;
}

- (BOOL)dataclassStateForSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  acui_dataclass = [location[0] acui_dataclass];
  v10 = 0;
  if (selfCopy->_forceMailSetup && ([acui_dataclass isEqualToString:*MEMORY[0x277CB9150]] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    if ([(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
    {
      preEnabledDataclasses = [(ACUIDataclassConfigurationViewController *)selfCopy preEnabledDataclasses];
      v8 = 1;
      v6 = [(NSArray *)preEnabledDataclasses containsObject:acui_dataclass];
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](preEnabledDataclasses);
    }

    if (v6)
    {
      v10 = 1;
    }

    else
    {
      account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v10 = [(ACAccount *)account isEnabledForDataclass:acui_dataclass];
      MEMORY[0x277D82BD8](account);
    }
  }

  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_32_4_0_8_66_4_0(v14, "[ACUIDataclassConfigurationViewController dataclassStateForSpecifier:]", 631, acui_dataclass, v10 & 1);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) %{public}@: %d", v14, 0x22u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = v10;
  objc_storeStrong(&acui_dataclass, 0);
  objc_storeStrong(location, HIDWORD(v4));
  *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (void)dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier
{
  v80 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v76 = 0;
  objc_storeStrong(&v76, specifier);
  acui_dataclass = [v76 acui_dataclass];
  if (acui_dataclass)
  {
    account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v71 = [(ACAccount *)account accountPropertyForKey:*MEMORY[0x277CB8AC0]];
    MEMORY[0x277D82BD8](account);
    v68 = 0;
    v66 = 0;
    v64 = 0;
    bOOLValue = 0;
    if (![(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
    {
      account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v68 = 1;
      accountType = [(ACAccount *)account2 accountType];
      v66 = 1;
      identifier = [(ACAccountType *)accountType identifier];
      v64 = 1;
      bOOLValue = 0;
      if ([(NSString *)identifier isEqualToString:*MEMORY[0x277CB8C40]])
      {
        bOOLValue = 0;
        if (v71)
        {
          bOOLValue = [location[0] BOOLValue];
        }
      }
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](identifier);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](accountType);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](account2);
    }

    v70 = bOOLValue & 1;
    if (bOOLValue & 1) == 0 || ([v71 containsObject:acui_dataclass])
    {
      if ([(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
      {
        -[ACUIDataclassConfigurationViewController setDataclass:enabled:](selfCopy, "setDataclass:enabled:", acui_dataclass, [location[0] BOOLValue]);
      }

      else
      {
        objc_initWeak(&v45, selfCopy);
        v11 = objc_loadWeakRetained(&v45);
        account3 = [v11 account];
        v44 = [account3 copy];
        MEMORY[0x277D82BD8](account3);
        MEMORY[0x277D82BD8](v11);
        v4 = MEMORY[0x277D85CD0];
        v9 = MEMORY[0x277D85CD0];
        dispatch_assert_queue_V2(v9);
        MEMORY[0x277D82BD8](v9);
        object = [v76 _switchSpinnerTimer];
        dispatch_resume(object);
        v6 = selfCopy;
        v7 = acui_dataclass;
        bOOLValue2 = [location[0] BOOLValue];
        v5 = v44;
        v33 = MEMORY[0x277D85DD0];
        v34 = -1073741824;
        v35 = 0;
        v36 = __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_3;
        v37 = &unk_278BFAAA8;
        objc_copyWeak(&v42, &v45);
        v38 = MEMORY[0x277D82BE0](acui_dataclass);
        v39 = MEMORY[0x277D82BE0](v44);
        v40 = MEMORY[0x277D82BE0](object);
        v41 = MEMORY[0x277D82BE0](v76);
        [(ACUIDataclassConfigurationViewController *)v6 _setDataclass:v7 enabled:bOOLValue2 onAccount:v5 completion:&v33];
        objc_storeStrong(&v41, 0);
        objc_storeStrong(&v40, 0);
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v38, 0);
        objc_destroyWeak(&v42);
        objc_storeStrong(&object, 0);
        objc_storeStrong(&v44, 0);
        objc_destroyWeak(&v45);
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      account4 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v63 = [ACUILocalization localizedStringForDataclass:acui_dataclass withSuffix:@"LABEL" forAccount:?];
      MEMORY[0x277D82BD8](account4);
      v28 = MEMORY[0x277D75110];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v27 localizedStringForKey:@"GOOGLE_LOGIN_REQUIRED_TITLE" value:&stru_2850054A0 table:@"Localizable"];
      v26 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v24 localizedStringForKey:@"GOOGLE_GRANTED_DATACLASS_LOGIN_MESSAGE" value:&stru_2850054A0 table:@"Localizable"];
      v22 = [v26 localizedStringWithFormat:v63];
      v62 = [v28 alertControllerWithTitle:v25 message:? preferredStyle:?];
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v27);
      objc_initWeak(&from, selfCopy);
      v20 = v62;
      v21 = MEMORY[0x277D750F8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:@"LOGIN" value:&stru_2850054A0 table:@"Localizable"];
      v55 = MEMORY[0x277D85DD0];
      v56 = -1073741824;
      v57 = 0;
      v58 = __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke;
      v59 = &unk_278BFAA30;
      objc_copyWeak(&v60, &from);
      v17 = [v21 actionWithTitle:v18 style:0 handler:&v55];
      [v20 addAction:?];
      v54 = 0;
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v15 = v62;
      v16 = MEMORY[0x277D750F8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v14 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
      v47 = MEMORY[0x277D85DD0];
      v48 = -1073741824;
      v49 = 0;
      v50 = __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_2;
      v51 = &unk_278BFAA58;
      objc_copyWeak(&v53, &from);
      v52 = MEMORY[0x277D82BE0](v76);
      v12 = [v16 actionWithTitle:v13 style:1 handler:&v47];
      [v15 addAction:?];
      v46 = 0;
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      [(ACUIDataclassConfigurationViewController *)selfCopy presentViewController:v62 animated:1 completion:0];
      objc_storeStrong(&v52, 0);
      objc_destroyWeak(&v53);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&from);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v63, 0);
    }

    objc_storeStrong(&v71, 0);
    v72 = 0;
  }

  else
  {
    v74 = _ACUILogSystem();
    v73 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v79, "[ACUIDataclassConfigurationViewController dataclassSwitchStateDidChange:withSpecifier:]", 639);
      _os_log_error_impl(&dword_23DC86000, v74, v73, "%s (%d) sender of dataclassSwitchStateDidChange:withSpecifier: has nil dataclass. Please file a bug!", v79, 0x12u);
    }

    objc_storeStrong(&v74, 0);
    v72 = 1;
  }

  objc_storeStrong(&acui_dataclass, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  if (v3[0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3[0] performSelector:sel__reAuthenticationButtonTapped_ withObject:0];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 40));
  if (v3[0])
  {
    [v3[0] reloadSpecifier:*(a1 + 32) animated:1];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_3(uint64_t a1, char a2, id obj)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24 = a1;
  v23 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v21[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_V2(v8);
  MEMORY[0x277D82BD8](v8);
  v21[0] = objc_loadWeakRetained((a1 + 64));
  if (v21[0])
  {
    if (v23)
    {
      dispatch_source_cancel(*(a1 + 48));
      [v21[0] reloadSpecifier:*(a1 + 56) animated:1];
    }

    else
    {
      v18 = 0;
      if (location)
      {
        v25 = *(a1 + 32);
        v26[0] = location;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v18 = 1;
        v4 = MEMORY[0x277D82BE0](v19);
      }

      else
      {
        v4 = MEMORY[0x277D82BE0](0);
      }

      v20 = v4;
      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }

      v5 = [v21[0] accountOperationsHelper];
      v6 = *(a1 + 40);
      v7 = v20;
      v10 = MEMORY[0x277D85DD0];
      v11 = -1073741824;
      v12 = 0;
      v13 = __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_4;
      v14 = &unk_278BFAA80;
      objc_copyWeak(&v17, (a1 + 64));
      v15 = MEMORY[0x277D82BE0](*(a1 + 48));
      v16 = MEMORY[0x277D82BE0](*(a1 + 56));
      [v5 saveAccount:v6 withDataclassActions:v7 requireVerification:0 completion:&v10];
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      objc_destroyWeak(&v17);
      objc_storeStrong(&v20, 0);
    }
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_4(uint64_t a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v5 = v4;
  dispatch_assert_queue_V2(v5);
  MEMORY[0x277D82BD8](v5);
  v8[0] = objc_loadWeakRetained((a1 + 48));
  v6 = [v8[0] account];
  [v6 refresh];
  MEMORY[0x277D82BD8](v6);
  dispatch_source_cancel(*(a1 + 32));
  [v8[0] reloadSpecifier:*(a1 + 40) animated:1];
  objc_storeStrong(v8, 0);
  objc_storeStrong(&location, 0);
}

- (void)_enableAllProvisionedDataclassesWithoutRequringUserInteraction
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = _ACUILogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v45, "[ACUIDataclassConfigurationViewController _enableAllProvisionedDataclassesWithoutRequringUserInteraction]", 707);
    _os_log_debug_impl(&dword_23DC86000, location[0], type, "%s (%d) Attempting to enable all provisioned dataclasses.", v45, 0x12u);
  }

  objc_storeStrong(location, 0);
  memset(__b, 0, sizeof(__b));
  obj = [(ACAccount *)selfCopy->_account provisionedDataclasses];
  v22 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
  if (v22)
  {
    v18 = *__b[2];
    v19 = 0;
    v20 = v22;
    while (1)
    {
      v17 = v19;
      if (*__b[2] != v18)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(__b[1] + 8 * v19);
      if ([(ACUIDataclassConfigurationViewController *)selfCopy shouldAutomaticallyTryEnablingDataclassDuringSetup:v37])
      {
        [(ACAccount *)selfCopy->_account setEnabled:1 forDataclass:v37];
      }

      else
      {
        v35 = _ACUILogSystem();
        v34 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v16 = v35;
          __os_log_helper_16_2_3_8_32_4_0_8_64(v43, "[ACUIDataclassConfigurationViewController _enableAllProvisionedDataclassesWithoutRequringUserInteraction]", 712, v37);
          _os_log_debug_impl(&dword_23DC86000, v16, v34, "%s (%d) Skipping dataclass %@...", v43, 0x1Cu);
        }

        objc_storeStrong(&v35, 0);
        account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
        accountType = [(ACAccount *)account accountType];
        identifier = [(ACAccountType *)accountType identifier];
        v2 = [(NSString *)identifier isEqualToString:*MEMORY[0x277CB8C40]];
        v32 = 0;
        v30 = 0;
        v15 = 0;
        if (v2)
        {
          account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
          v32 = 1;
          v31 = [(ACAccount *)account2 accountPropertyForKey:*MEMORY[0x277CB8AC0]];
          v30 = 1;
          v15 = v31 != 0;
        }

        if (v30)
        {
          MEMORY[0x277D82BD8](v31);
        }

        if (v32)
        {
          MEMORY[0x277D82BD8](account2);
        }

        MEMORY[0x277D82BD8](identifier);
        MEMORY[0x277D82BD8](accountType);
        MEMORY[0x277D82BD8](account);
        if (v15)
        {
          [(ACAccount *)selfCopy->_account setEnabled:0 forDataclass:v37];
        }
      }

      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (!v20)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  accountStore = [(ACUIViewController *)selfCopy accountStore];
  v29 = [(ACAccountStore *)accountStore dataclassActionsForAccountSave:selfCopy->_account];
  MEMORY[0x277D82BD8](accountStore);
  memset(v27, 0, sizeof(v27));
  provisionedDataclasses = [(ACAccount *)selfCopy->_account provisionedDataclasses];
  v11 = [provisionedDataclasses countByEnumeratingWithState:v27 objects:v42 count:16];
  if (v11)
  {
    v6 = *v27[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*v27[2] != v6)
      {
        objc_enumerationMutation(provisionedDataclasses);
      }

      v28 = *(v27[1] + 8 * v7);
      v26 = [v29 objectForKeyedSubscript:v28];
      if (v26)
      {
        v25 = 1;
        if ([v26 count] == 1)
        {
          lastObject = [v26 lastObject];
          if ([lastObject type])
          {
            oslog = _ACUILogSystem();
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v4 = oslog;
              type = [lastObject type];
              __os_log_helper_16_2_4_8_32_4_0_8_0_8_64(v41, "[ACUIDataclassConfigurationViewController _enableAllProvisionedDataclassesWithoutRequringUserInteraction]", 733, type, v28);
              _os_log_debug_impl(&dword_23DC86000, v4, OS_LOG_TYPE_DEBUG, "%s (%d) Setting action %lu for dataclass %@", v41, 0x26u);
            }

            objc_storeStrong(&oslog, 0);
            [(NSMutableDictionary *)selfCopy->_allDesiredDataclassActions setObject:lastObject forKey:v28];
            v25 = 0;
          }

          objc_storeStrong(&lastObject, 0);
        }

        if (v25)
        {
          [(ACAccount *)selfCopy->_account setEnabled:0 forDataclass:v28];
        }
      }

      objc_storeStrong(&v26, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [provisionedDataclasses countByEnumeratingWithState:v27 objects:v42 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](provisionedDataclasses);
  objc_storeStrong(&v29, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)setup
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setup);
  account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  v10 = [(ACAccount *)account accountPropertyForKey:*MEMORY[0x277CB8AC0]];
  MEMORY[0x277D82BD8](account);
  account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  accountType = [(ACAccount *)account2 accountType];
  identifier = [(ACAccountType *)accountType identifier];
  v8 = 0;
  if ([(NSString *)identifier isEqualToString:*MEMORY[0x277CB8C40]])
  {
    v8 = v10 != 0;
  }

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  MEMORY[0x277D82BD8](account2);
  v9 = 1;
  if (v8)
  {
    v9 = ([v10 containsObject:location[0]] & 1) != 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (void)setDataclass:(id)dataclass enabled:(BOOL)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  enabledCopy = enabled;
  objc_initWeak(&from, selfCopy);
  v6 = selfCopy;
  v7 = location[0];
  v8 = enabledCopy;
  account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __65__ACUIDataclassConfigurationViewController_setDataclass_enabled___block_invoke;
  v13 = &unk_278BFAAD0;
  objc_copyWeak(&v15, &from);
  v16 = enabledCopy;
  v14 = MEMORY[0x277D82BE0](location[0]);
  [(ACUIDataclassConfigurationViewController *)v6 _setDataclass:v7 enabled:v8 onAccount:account completion:&v9];
  MEMORY[0x277D82BD8](account);
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __65__ACUIDataclassConfigurationViewController_setDataclass_enabled___block_invoke(uint64_t a1, char a2, id obj)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v6 = v5;
  dispatch_assert_queue_V2(v6);
  MEMORY[0x277D82BD8](v6);
  if ((v10 & 1) == 0)
  {
    v8[0] = objc_loadWeakRetained((a1 + 40));
    if (v8[0])
    {
      if ([v8[0] isFirstTimeSetup] & 1) == 0 || (*(a1 + 48))
      {
        if (location)
        {
          [*(v8[0] + 193) setObject:location forKey:*(a1 + 32)];
        }

        else
        {
          [*(v8[0] + 193) removeObjectForKey:*(a1 + 32)];
        }
      }

      else
      {
        oslog = _ACUILogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_3_8_32_4_0_8_66(v12, "[ACUIDataclassConfigurationViewController setDataclass:enabled:]_block_invoke", 767, *(a1 + 32));
          _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) ACUIDCVC: Clearing any accumulated actions for dataclass %{public}@", v12, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
        [*(v8[0] + 193) removeObjectForKey:*(a1 + 32)];
      }
    }

    objc_storeStrong(v8, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setDataclass:(id)dataclass enabled:(BOOL)enabled onAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  enabledCopy = enabled;
  v21 = 0;
  objc_storeStrong(&v21, account);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  queue = dispatch_get_global_queue(2, 0);
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __87__ACUIDataclassConfigurationViewController__setDataclass_enabled_onAccount_completion___block_invoke;
  v14 = &unk_278BFA660;
  v19 = enabledCopy;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v21);
  v17 = MEMORY[0x277D82BE0](selfCopy);
  v18 = MEMORY[0x277D82BE0](v20);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __87__ACUIDataclassConfigurationViewController__setDataclass_enabled_onAccount_completion___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _ACUILogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 64))
    {
      v1 = @"Enabling";
    }

    else
    {
      v1 = @"Disabling";
    }

    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_64(v61, "[ACUIDataclassConfigurationViewController _setDataclass:enabled:onAccount:completion:]_block_invoke", 784, v1, *(a1 + 32), *(a1 + 40));
    _os_log_debug_impl(&dword_23DC86000, oslog[0], type, "%s (%d) ACUIDCVC: %{public}@ dataclass toggle %{public}@ for account %@.", v61, 0x30u);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 40) setEnabled:*(a1 + 64) & 1 forDataclass:*(a1 + 32)];
  v54 = 0;
  v53 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  if (([*(a1 + 48) isFirstTimeSetup] & 1) != 0 && (*(a1 + 64) & 1) != 1)
  {
    v51 = _ACUILogSystem();
    v50 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_66(v60, "[ACUIDataclassConfigurationViewController _setDataclass:enabled:onAccount:completion:]_block_invoke", 796, *(a1 + 32));
      _os_log_debug_impl(&dword_23DC86000, v51, v50, "%s (%d) ACUIDCVC: Disabling dataclass %{public}@ during first time setup, skipping requesting actions", v60, 0x1Cu);
    }

    objc_storeStrong(&v51, 0);
  }

  else
  {
    v19 = [*(a1 + 48) accountOperationsHelper];
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    obj = v54;
    v18 = [v19 dataclassActionsForAccountSave:v2 forDataclass:v3 error:&obj];
    objc_storeStrong(&v54, obj);
    v4 = v53;
    v53 = v18;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v19);
  }

  v49 = 0;
  v48 = 1;
  if (v54)
  {
    v47 = _ACUILogSystem();
    v46 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v59, "[ACUIDataclassConfigurationViewController _setDataclass:enabled:onAccount:completion:]_block_invoke", 803, v54);
      _os_log_error_impl(&dword_23DC86000, v47, v46, "%s (%d) ACUIDCVC: Error returned for dataclassActionsForAccountSave: %@", v59, 0x1Cu);
    }

    objc_storeStrong(&v47, 0);
  }

  else if ([v53 count] <= 1)
  {
    if ([v53 count] == 1)
    {
      v8 = [v53 lastObject];
      v9 = v49;
      v49 = v8;
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v48 = [v53 count] != 0;
    }
  }

  else
  {
    v5 = [ACUIDataclassActionPicker alloc];
    v45 = [(ACUIDataclassActionPicker *)v5 initWithActions:v53 affectingAccount:*(a1 + 40)];
    [(ACUIDataclassActionPicker *)v45 addAffectedDataclass:*(a1 + 32)];
    v6 = [(ACUIDataclassActionPicker *)v45 showInViewController:*(a1 + 48)];
    v7 = v49;
    v49 = v6;
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v45, 0);
  }

  if (v49 && [v49 type])
  {
    v44 = _ACUILogSystem();
    v43 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_4_8_32_4_0_8_66_8_66(v58, "[ACUIDataclassConfigurationViewController _setDataclass:enabled:onAccount:completion:]_block_invoke", 816, v49, *(a1 + 32));
      _os_log_debug_impl(&dword_23DC86000, v44, v43, "%s (%d) ACUIDCVC: Setting action %{public}@ for dataclass %{public}@", v58, 0x26u);
    }

    objc_storeStrong(&v44, 0);
    v48 = 0;
  }

  if (v48)
  {
    v42 = (*(a1 + 64) ^ 1) & 1;
    v41 = _ACUILogSystem();
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      if (v42)
      {
        v10 = @"Re-enabling";
      }

      else
      {
        v10 = @"Re-disabling";
      }

      __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_64(v57, "[ACUIDataclassConfigurationViewController _setDataclass:enabled:onAccount:completion:]_block_invoke", 822, v10, *(a1 + 32), *(a1 + 40));
      _os_log_debug_impl(&dword_23DC86000, v41, v40, "%s (%d) ACUIDCVC: %{public}@ dataclass toggle %{public}@ for account %@.", v57, 0x30u);
    }

    objc_storeStrong(&v41, 0);
    [*(a1 + 40) setEnabled:v42 & 1 forDataclass:*(a1 + 32)];
    v38 = 0;
    v36 = 0;
    v17 = 0;
    if ([v53 count] == 1)
    {
      v17 = 0;
      if (v49)
      {
        v39 = [v49 undoAlertTitle];
        v38 = 1;
        v17 = 0;
        if (v39)
        {
          v37 = [v49 undoAlertMessage];
          v36 = 1;
          v17 = v37 != 0;
        }
      }
    }

    if (v36)
    {
      MEMORY[0x277D82BD8](v37);
    }

    if (v38)
    {
      MEMORY[0x277D82BD8](v39);
    }

    if (v17)
    {
      v15 = MEMORY[0x277D85CD0];
      v11 = MEMORY[0x277D85CD0];
      queue = v15;
      v29 = MEMORY[0x277D85DD0];
      v30 = -1073741824;
      v31 = 0;
      v32 = __87__ACUIDataclassConfigurationViewController__setDataclass_enabled_onAccount_completion___block_invoke_151;
      v33 = &unk_278BFA6B0;
      v34 = MEMORY[0x277D82BE0](*(a1 + 48));
      v35 = MEMORY[0x277D82BE0](v49);
      dispatch_async(queue, &v29);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v34, 0);
    }
  }

  if (*(a1 + 56))
  {
    v13 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v14 = v13;
    v21 = MEMORY[0x277D85DD0];
    v22 = -1073741824;
    v23 = 0;
    v24 = __87__ACUIDataclassConfigurationViewController__setDataclass_enabled_onAccount_completion___block_invoke_2;
    v25 = &unk_278BFA598;
    v27 = MEMORY[0x277D82BE0](*(a1 + 56));
    v28 = v48;
    v26 = MEMORY[0x277D82BE0](v49);
    dispatch_async(v14, &v21);
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __87__ACUIDataclassConfigurationViewController__setDataclass_enabled_onAccount_completion___block_invoke_151(uint64_t a1)
{
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) undoAlertTitle];
  v4 = [*(a1 + 40) undoAlertMessage];
  [v3 _presentUndoAlert:v5 reason:?];
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](v5);
}

- (void)_presentUndoAlert:(id)alert reason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v11 = 0;
  objc_storeStrong(&v11, reason);
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:location[0] message:v11 preferredStyle:1];
  v6 = v10;
  v5 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"OK" value:&stru_2850054A0 table:@"Localizable"];
  v7 = [v5 actionWithTitle:? style:? handler:?];
  [v6 addAction:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  [(ACUIDataclassConfigurationViewController *)selfCopy presentViewController:v10 animated:1 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)_orderDataclassList:(id)list
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([location[0] containsObject:*MEMORY[0x277CB91D8]])
  {
    [v5 addObject:*MEMORY[0x277CB91D8]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9158]])
  {
    [v5 addObject:*MEMORY[0x277CB9158]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9150]])
  {
    [v5 addObject:*MEMORY[0x277CB9150]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9108]])
  {
    [v5 addObject:*MEMORY[0x277CB9108]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB90F0]])
  {
    [v5 addObject:*MEMORY[0x277CB90F0]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9190]])
  {
    [v5 addObject:*MEMORY[0x277CB9190]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB90D0]])
  {
    [v5 addObject:*MEMORY[0x277CB90D0]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9138]])
  {
    [v5 addObject:*MEMORY[0x277CB9138]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9178]])
  {
    [v5 addObject:*MEMORY[0x277CB9178]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9170]])
  {
    [v5 addObject:*MEMORY[0x277CB9170]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9130]])
  {
    [v5 addObject:*MEMORY[0x277CB9130]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB91B8]])
  {
    [v5 addObject:*MEMORY[0x277CB91B8]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9140]])
  {
    [v5 addObject:*MEMORY[0x277CB9140]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9148]])
  {
    [v5 addObject:*MEMORY[0x277CB9148]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB90C8]])
  {
    [v5 addObject:*MEMORY[0x277CB90C8]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9128]])
  {
    [v5 addObject:*MEMORY[0x277CB9128]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9168]])
  {
    [v5 addObject:*MEMORY[0x277CB9168]];
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accountIdentifier
{
  selfCopy = self;
  v7[1] = a2;
  if (!self->_accountIdentifier)
  {
    specifier = [(ACUIDataclassConfigurationViewController *)selfCopy specifier];
    v7[0] = [specifier userInfo];
    MEMORY[0x277D82BD8](specifier);
    v2 = [v7[0] objectForKey:@"ACUISpecifierAccountIdentifier"];
    accountIdentifier = selfCopy->_accountIdentifier;
    selfCopy->_accountIdentifier = v2;
    MEMORY[0x277D82BD8](accountIdentifier);
    objc_storeStrong(v7, 0);
  }

  v4 = selfCopy->_accountIdentifier;

  return v4;
}

- (ACAccount)account
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_account)
  {
    specifier = [(ACUIDataclassConfigurationViewController *)selfCopy specifier];
    location[0] = [specifier userInfo];
    MEMORY[0x277D82BD8](specifier);
    v2 = [location[0] objectForKey:@"account"];
    account = selfCopy->_account;
    selfCopy->_account = v2;
    MEMORY[0x277D82BD8](account);
    v11 = 0;
    v10 = 0;
    if (!selfCopy->_account)
    {
      _accountIdentifier = [(ACUIDataclassConfigurationViewController *)selfCopy _accountIdentifier];
      v11 = 1;
      v10 = _accountIdentifier != 0;
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](_accountIdentifier);
    }

    if (v10)
    {
      accountStore = [(ACUIViewController *)selfCopy accountStore];
      v4 = [(ACAccountStore *)accountStore accountWithIdentifier:selfCopy->_accountIdentifier];
      v5 = selfCopy->_account;
      selfCopy->_account = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](accountStore);
    }

    if (selfCopy->_account && [(ACUIDataclassConfigurationViewController *)selfCopy isFirstTimeSetup])
    {
      [(ACUIDataclassConfigurationViewController *)selfCopy _enableAllProvisionedDataclassesWithoutRequringUserInteraction];
    }

    objc_storeStrong(location, 0);
  }

  v6 = selfCopy->_account;

  return v6;
}

- (void)operationsHelper:(id)helper willSaveAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v11 = 0;
  objc_storeStrong(&v11, account);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ACUIDataclassConfigurationViewController_operationsHelper_willSaveAccount___block_invoke;
  v9[3] = &unk_278BFA730;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, v9);
  MEMORY[0x277D82BD8](queue);
  v8.receiver = selfCopy;
  v8.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v8 operationsHelper:location[0] willSaveAccount:v11];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __77__ACUIDataclassConfigurationViewController_operationsHelper_willSaveAccount___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFirstTimeSetup];
  if (result == 1)
  {
    v2 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v4 localizedStringForKey:@"ADDING_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
    [v2 startValidationWithPrompt:?];
    MEMORY[0x277D82BD8](v3);
    return MEMORY[0x277D82BD8](v4);
  }

  return result;
}

- (id)operationsHelper:(id)helper desiredDataclassActionFromPicker:(id)picker
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v27 = 0;
  objc_storeStrong(&v27, picker);
  if ([location[0] isRemovingAccount])
  {
    selfCopy->_didShowDataclassActionPickerDuringRemoval = 1;
  }

  v25.receiver = selfCopy;
  v25.super_class = ACUIDataclassConfigurationViewController;
  v26 = [(ACUIViewController *)&v25 operationsHelper:location[0] desiredDataclassActionFromPicker:v27];
  if ([v26 type])
  {
    if ([v26 type] == 4)
    {
      v18 = selfCopy;
      affectedDataclasses = [v27 affectedDataclasses];
      v20 = [(ACUIDataclassConfigurationViewController *)v18 _confirmKeepLocalDataForDataclasses:?];
      MEMORY[0x277D82BD8](affectedDataclasses);
      if (!v20)
      {
        goto LABEL_6;
      }
    }

    if ([v26 type] == 6)
    {
      v15 = selfCopy;
      affectedDataclasses2 = [v27 affectedDataclasses];
      v17 = [(ACUIDataclassConfigurationViewController *)v15 _confirmDeleteLocalDataForDataclasses:?];
      MEMORY[0x277D82BD8](affectedDataclasses2);
      if (!v17)
      {
LABEL_6:
        v30 = [MEMORY[0x277CB8F70] actionWithType:0];
        v24 = 1;
        goto LABEL_21;
      }
    }

    if ([v26 type] == 2)
    {
      selfCopy->_isMergingSyncData = 1;
    }
  }

  else if (![location[0] isRemovingAccount])
  {
    memset(__b, 0, sizeof(__b));
    affectedDataclasses3 = [v27 affectedDataclasses];
    v14 = [affectedDataclasses3 countByEnumeratingWithState:__b objects:v31 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(affectedDataclasses3);
        }

        v23 = *(__b[1] + 8 * v11);
        affectedAccount = [v27 affectedAccount];
        v7 = [affectedAccount isEnabledForDataclass:v23];
        MEMORY[0x277D82BD8](affectedAccount);
        affectedAccount2 = [v27 affectedAccount];
        [affectedAccount2 setEnabled:(v7 ^ 1) & 1 forDataclass:v23];
        MEMORY[0x277D82BD8](affectedAccount2);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [affectedDataclasses3 countByEnumeratingWithState:__b objects:v31 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](affectedDataclasses3);
  }

  v30 = MEMORY[0x277D82BE0](v26);
  v24 = 1;
LABEL_21:
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v30;

  return v4;
}

- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v17 = 0;
  objc_storeStrong(&v17, account);
  successCopy = success;
  v15 = 0;
  objc_storeStrong(&v15, error);
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ACUIDataclassConfigurationViewController_operationsHelper_didSaveAccount_withSuccess_error___block_invoke;
  v13[3] = &unk_278BFA730;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, v13);
  MEMORY[0x277D82BD8](queue);
  v12.receiver = selfCopy;
  v12.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v12 operationsHelper:location[0] didSaveAccount:v17 withSuccess:successCopy error:v15];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

uint64_t __94__ACUIDataclassConfigurationViewController_operationsHelper_didSaveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isFirstTimeSetup] != 1)
  {
    return [*(a1 + 32) hideActivityInProgressUIWithDelay:0.0];
  }

  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"ACCOUNT_ADDED" value:&stru_2850054A0 table:@"Localizable"];
  [v2 stopValidationWithPrompt:? showButtons:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return [*(a1 + 32) performSelector:sel__notifyOfAccountSetupCompletion withObject:0 afterDelay:1.0];
}

- (void)_notifyOfAccountSetupCompletion
{
  configurationCompletion = [(ACUIDataclassConfigurationViewController *)self configurationCompletion];
  MEMORY[0x277D82BD8](configurationCompletion);
  if (configurationCompletion)
  {
    configurationCompletion2 = [(ACUIDataclassConfigurationViewController *)self configurationCompletion];
    configurationCompletion2[2](configurationCompletion2, 1);
    MEMORY[0x277D82BD8](configurationCompletion2);
    [(ACUIDataclassConfigurationViewController *)self setConfigurationCompletion:0];
  }

  else
  {
    rootController = [(ACUIDataclassConfigurationViewController *)self rootController];
    v5 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](rootController);
    if (v5)
    {
      rootController2 = [(ACUIDataclassConfigurationViewController *)self rootController];
      account = [(ACUIDataclassConfigurationViewController *)self account];
      [rootController2 controller:self didFinishSettingUpAccount:?];
      MEMORY[0x277D82BD8](account);
      MEMORY[0x277D82BD8](rootController2);
    }
  }
}

- (BOOL)_isShowingDeleteAccountButton
{
  v2 = [(ACUIDataclassConfigurationViewController *)self specifierForID:@"ACUIDeleteButtonSpecifierID"];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

- (void)appendDeleteAccountButton
{
  if (![(ACUIDataclassConfigurationViewController *)self _isShowingDeleteAccountButton])
  {
    [(ACUIDataclassConfigurationViewController *)self setShouldShowDeleteAccountButton:1];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [(ACUIDataclassConfigurationViewController *)self addSpecifier:?];
    MEMORY[0x277D82BD8](emptyGroupSpecifier);
    v5 = MEMORY[0x277D3FAD8];
    titleForDeleteButton = [(ACUIDataclassConfigurationViewController *)self titleForDeleteButton];
    v2 = [v5 deleteButtonSpecifierWithName:? target:? action:?];
    deleteButtonSpecifier = self->_deleteButtonSpecifier;
    self->_deleteButtonSpecifier = v2;
    MEMORY[0x277D82BD8](deleteButtonSpecifier);
    MEMORY[0x277D82BD8](titleForDeleteButton);
    [(PSSpecifier *)self->_deleteButtonSpecifier setProperty:@"ACUIDeleteButtonSpecifierID" forKey:*MEMORY[0x277D3FFB8]];
    [(ACUIDataclassConfigurationViewController *)self addSpecifier:self->_deleteButtonSpecifier];
  }
}

- (void)deleteButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  accountOperationsHelper = [(ACUIViewController *)selfCopy accountOperationsHelper];
  account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  [(ACUIAccountOperationsHelper *)accountOperationsHelper removeAccount:?];
  MEMORY[0x277D82BD8](account);
  MEMORY[0x277D82BD8](accountOperationsHelper);
  objc_storeStrong(location, 0);
}

- (BOOL)operationsHelper:(id)helper shouldRemoveAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v12 = 0;
  objc_storeStrong(&v12, account);
  if (selfCopy->_didShowDataclassActionPickerDuringRemoval)
  {
    selfCopy->_didShowDataclassActionPickerDuringRemoval = 0;
    v15 = 1;
  }

  else
  {
    _promptUserToConfirmAccountDeletion = [(ACUIDataclassConfigurationViewController *)selfCopy _promptUserToConfirmAccountDeletion];
    v9 = 0;
    v7 = 0;
    v5 = 0;
    if (_promptUserToConfirmAccountDeletion)
    {
      v5 = 0;
      if (ACDAccountSyncEnabled())
      {
        v10 = ACDAccountSyncDevices();
        v9 = 1;
        v5 = 0;
        if ([v10 count])
        {
          account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
          v7 = 1;
          v5 = 0;
          if (ACDAccountSyncAccountIsSyncable())
          {
            v5 = [(ACUIDataclassConfigurationViewController *)selfCopy isAppleMailAccount:v12];
          }
        }
      }
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](account);
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v5)
    {
      _promptUserToConfirmAccountDeletion = [(ACUIDataclassConfigurationViewController *)selfCopy _confirmSyncDelete];
    }

    v15 = _promptUserToConfirmAccountDeletion;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (int64_t)operationsHelper:(id)helper shouldRemoveOrDisableAccount:(id)account
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v9 = 0;
  objc_storeStrong(&v9, account);
  if (selfCopy->_didShowDataclassActionPickerDuringRemoval)
  {
    selfCopy->_didShowDataclassActionPickerDuringRemoval = 0;
    v12 = &stru_2850054A0;
    v8 = 1;
  }

  else
  {
    _promptUserToConfirmAccountSyncDeletion = [(ACUIDataclassConfigurationViewController *)selfCopy _promptUserToConfirmAccountSyncDeletion];
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_0(v13, "[ACUIDataclassConfigurationViewController operationsHelper:shouldRemoveOrDisableAccount:]", 1100, _promptUserToConfirmAccountSyncDeletion);
      _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) The button index returned was %ld", v13, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    if (_promptUserToConfirmAccountSyncDeletion)
    {
      if (_promptUserToConfirmAccountSyncDeletion != 1)
      {
        goto LABEL_14;
      }

      if (![(ACUIDataclassConfigurationViewController *)selfCopy isAppleMailAccount:v9])
      {
        v12 = 2;
        v8 = 1;
        goto LABEL_15;
      }

      if (![(ACUIDataclassConfigurationViewController *)selfCopy _confirmSyncDelete])
      {
LABEL_14:
        v12 = 0;
        v8 = 1;
        goto LABEL_15;
      }

      v12 = 2;
      v8 = 1;
    }

    else
    {
      v12 = 1;
      v8 = 1;
    }
  }

LABEL_15:
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_promptUserToConfirmAccountDeletion
{
  v44[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v41 = a2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x20000000;
  v39 = 32;
  v40 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v30 = 0;
  IsSyncable = 0;
  if (ACDAccountSyncEnabled())
  {
    v33 = ACDAccountSyncDevices();
    v32 = 1;
    IsSyncable = 0;
    if ([v33 count])
    {
      account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v30 = 1;
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](account);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  if (IsSyncable)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v18 localizedStringForKey:@"DELETE_ACCOUNT_SYNC" value:&stru_2850054A0 table:@"Localizable"];
    v44[0] = v17;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
    v44[1] = v15;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v3 = v35;
    v35 = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    deviceMessage = [(ACUIDataclassConfigurationViewController *)selfCopy deviceMessage];
  }

  else
  {
    titleForDeleteButton = [(ACUIDataclassConfigurationViewController *)selfCopy titleForDeleteButton];
    v43[0] = titleForDeleteButton;
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
    v43[1] = v12;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v7 = v35;
    v35 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](titleForDeleteButton);
    deviceMessage = [(ACUIDataclassConfigurationViewController *)selfCopy messageForAccountDeletionWarning];
  }

  v5 = v34;
  v34 = deviceMessage;
  MEMORY[0x277D82BD8](v5);
  v29 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __79__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountDeletion__block_invoke;
  v24 = &unk_278BFAAF8;
  v25 = MEMORY[0x277D82BE0](selfCopy);
  v26 = MEMORY[0x277D82BE0](v35);
  v27 = MEMORY[0x277D82BE0](v34);
  v28[1] = &v36;
  v28[0] = MEMORY[0x277D82BE0](v29);
  dispatch_async(queue, &v20);
  MEMORY[0x277D82BD8](queue);
  dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v37 + 24);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(&v36, 8);
  *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __79__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountDeletion__block_invoke(uint64_t a1)
{
  v11[3] = a1;
  v11[2] = a1;
  v4 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [v4 titleForDeleteButton];
  v3 = *(a1 + 48);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __79__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountDeletion__block_invoke_2;
  v9 = &unk_278BFA520;
  v11[1] = *(a1 + 64);
  v10 = MEMORY[0x277D82BE0](*(a1 + 40));
  v11[0] = MEMORY[0x277D82BE0](*(a1 + 56));
  [v4 showConfirmationWithButtons:v2 title:v5 message:v3 destructive:1 completion:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
}

- (int64_t)_promptUserToConfirmAccountSyncDeletion
{
  v31[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v29 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x20000000;
  v27 = 32;
  v28 = 0;
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"TURN_OFF" value:&stru_2850054A0 table:@"Localizable"];
  v31[0] = v10;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"DELETE_ACCOUNT_SYNC" value:&stru_2850054A0 table:@"Localizable"];
  v31[1] = v8;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
  v31[2] = v6;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  deviceMessage = [(ACUIDataclassConfigurationViewController *)selfCopy deviceMessage];
  v21 = dispatch_semaphore_create(0);
  v2 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __83__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountSyncDeletion__block_invoke;
  v16 = &unk_278BFAAF8;
  v17 = MEMORY[0x277D82BE0](selfCopy);
  v18 = MEMORY[0x277D82BE0](v23);
  v19 = MEMORY[0x277D82BE0](deviceMessage);
  v20[1] = &v24;
  v20[0] = MEMORY[0x277D82BE0](v21);
  dispatch_async(queue, &v12);
  MEMORY[0x277D82BD8](queue);
  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v25[3];
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&deviceMessage, 0);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  *MEMORY[0x277D85DE8];
  return v4;
}

void __83__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountSyncDeletion__block_invoke(uint64_t a1)
{
  v11[3] = a1;
  v11[2] = a1;
  v4 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
  v3 = *(a1 + 48);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __83__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountSyncDeletion__block_invoke_2;
  v10 = &unk_278BFAB20;
  v11[1] = *(a1 + 64);
  v11[0] = MEMORY[0x277D82BE0](*(a1 + 56));
  [v4 showConfirmationWithButtons:v2 title:v5 message:v3 destructive:1 completion:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v11, 0);
}

- (id)deviceMessage
{
  selfCopy = self;
  v30 = a2;
  v29 = ACDAccountSyncDevices();
  location = [MEMORY[0x277CBEB58] setWithArray:v29];
  if (![location count] && !objc_msgSend(location, "count"))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v30 object:selfCopy file:@"ACUIDataclassConfigurationViewController.m" lineNumber:1181 description:{@"No devices found for Account Sync Delete UI %@.", objc_opt_class()}];
    MEMORY[0x277D82BD8](currentHandler);
  }

  if ([location count] == 1)
  {
    v12 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v18 localizedStringForKey:@"DELETE_ACCOUNT_SYNC_WARNING_FORMAT_ONE_DEVICE" value:? table:?];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
    allObjects = [location allObjects];
    firstObject = [allObjects firstObject];
    v32 = [v12 stringWithFormat:v17, v15, firstObject];
    MEMORY[0x277D82BD8](firstObject);
    MEMORY[0x277D82BD8](allObjects);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    allObjects2 = [location allObjects];
    v3 = v29;
    v29 = allObjects2;
    MEMORY[0x277D82BD8](v3);
    v11 = MEMORY[0x277CCACA8];
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v20 = 0;
    if ([location count] == 2)
    {
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = 1;
      v25 = [v27 localizedStringForKey:@"DELETE_ACCOUNT_SYNC_WARNING_FORMAT_TWO_DEVICES" value:&stru_2850054A0 table:@"Localizable"];
      v24 = 1;
      v10 = v25;
    }

    else
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = 1;
      v21 = [v23 localizedStringForKey:@"DELETE_ACCOUNT_SYNC_WARNING_FORMAT_THREE_OR_MORE_DEVICES" value:&stru_2850054A0 table:@"Localizable"];
      v20 = 1;
      v10 = v21;
    }

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
    v7 = [v29 objectAtIndex:0];
    v6 = [v29 objectAtIndex:1];
    v32 = [v11 stringWithFormat:v10, v8, v7, v6];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](v23);
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    if (v26)
    {
      MEMORY[0x277D82BD8](v27);
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v29, 0);
  v4 = v32;

  return v4;
}

- (BOOL)isAppleMailAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x277CB8C60]];
  v23 = 0;
  v21 = 0;
  v18 = 1;
  if ((v3 & 1) == 0)
  {
    accountType2 = [location[0] accountType];
    v23 = 1;
    identifier2 = [accountType2 identifier];
    v21 = 1;
    v18 = [identifier2 isEqualToString:*MEMORY[0x277CB8C68]];
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](identifier2);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](accountType2);
  }

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  if (v18)
  {
    v20 = MEMORY[0x277D82BE0](&unk_28500B450);
    v19 = 0;
    v14 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CB8AC8]];
    v15 = [v14 length];
    MEMORY[0x277D82BD8](v14);
    if (v15)
    {
      v13 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CB8AC8]];
      lowercaseString = [v13 lowercaseString];
      v5 = v19;
      v19 = lowercaseString;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      v11 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CB8A98]];
      v12 = [v11 length];
      MEMORY[0x277D82BD8](v11);
      if (v12)
      {
        v10 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CB8A98]];
        lowercaseString2 = [v10 lowercaseString];
        v7 = v19;
        v19 = lowercaseString2;
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v10);
      }
    }

    v26 = [v20 containsObject:{v19, &v19}] & 1;
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v26 = 0;
  }

  objc_storeStrong(location, 0);
  return v26 & 1;
}

- (void)operationsHelper:(id)helper willRemoveAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v11 = 0;
  objc_storeStrong(&v11, account);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ACUIDataclassConfigurationViewController_operationsHelper_willRemoveAccount___block_invoke;
  v9[3] = &unk_278BFA730;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, v9);
  MEMORY[0x277D82BD8](queue);
  v8.receiver = selfCopy;
  v8.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v8 operationsHelper:location[0] willRemoveAccount:v11];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __79__ACUIDataclassConfigurationViewController_operationsHelper_willRemoveAccount___block_invoke(id *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  if ((*(a1[4] + 1552) & 1) == 1)
  {
    v1 = a1[4];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v3 localizedStringForKey:@"SAVING" value:&stru_2850054A0 table:@"Localizable"];
    [v1 showActivityInProgressUIWithMessage:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v5[0] = [a1[4] messageForAccountDeletionProgressUI];
    [a1[4] showActivityInProgressUIWithMessage:v5[0]];
    objc_storeStrong(v5, 0);
  }
}

- (void)operationsHelper:(id)helper didRemoveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v18 = 0;
  objc_storeStrong(&v18, account);
  successCopy = success;
  v16 = 0;
  objc_storeStrong(&v16, error);
  selfCopy->_isMergingSyncData = 0;
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__ACUIDataclassConfigurationViewController_operationsHelper_didRemoveAccount_withSuccess_error___block_invoke;
  v13[3] = &unk_278BFA4A0;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = successCopy;
  dispatch_async(queue, v13);
  MEMORY[0x277D82BD8](queue);
  v12.receiver = selfCopy;
  v12.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v12 operationsHelper:location[0] didRemoveAccount:v18 withSuccess:successCopy error:v16];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __96__ACUIDataclassConfigurationViewController_operationsHelper_didRemoveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  [*(a1 + 32) hideActivityInProgressUI];
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = MEMORY[0x277D75110];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"COULDNT_DELETE_ACCOUNT" value:? table:?];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v3 localizedStringForKey:@"COULDNT_DELETE_ACCOUNT_DESCRIPTION" value:&stru_2850054A0 table:@"Localizable"];
    v11[0] = [v1 alertControllerWithTitle:v4 message:? preferredStyle:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v6 = MEMORY[0x277D750F8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"OK" value:&stru_2850054A0 table:@"Localizable"];
    v10 = [v6 actionWithTitle:? style:? handler:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    [v11[0] addAction:v10];
    [*(a1 + 32) presentViewController:v11[0] animated:1 completion:0];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(v11, 0);
  }
}

- (BOOL)_confirmKeepLocalDataForDataclasses:(id)dataclasses
{
  v68[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclasses);
  v60 = 0;
  v61 = &v60;
  v62 = 0x20000000;
  v63 = 32;
  v64 = 0;
  lastObject = [location[0] lastObject];
  v59 = [ACUILocalization localizedTitleForDataclass:?];
  MEMORY[0x277D82BD8](lastObject);
  v34 = MEMORY[0x277CCACA8];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v33 localizedStringForKey:@"REALLY_KEEP_EXISTING_DATA_WARNING_FORMAT_TITLE" value:&stru_2850054A0 table:@"Localizable"];
  v58 = [v34 stringWithFormat:v59];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  v57 = 0;
  v55 = 0;
  v53 = 0;
  IsSyncable = 0;
  if (ACDAccountSyncEnabled())
  {
    v56 = ACDAccountSyncDevices();
    v55 = 1;
    IsSyncable = 0;
    if ([v56 count])
    {
      account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v53 = 1;
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v53)
  {
    MEMORY[0x277D82BD8](account);
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](v56);
  }

  if (IsSyncable)
  {
    v30 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v29 localizedStringForKey:@"REALLY_KEEP_EXISTING_DATA_WARNING_ACCOUNT_SYNC_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v28 = location[0];
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v25 = [ACUILocalization localizedTextForDataclasses:v28 usedAtBeginningOfSentence:0 forAccount:?];
    v3 = [v30 stringWithFormat:v27, v25];
    v4 = v57;
    v57 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](account2);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    v24 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v23 localizedStringForKey:@"REALLY_KEEP_EXISTING_DATA_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v22 = location[0];
    account3 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v19 = [ACUILocalization localizedTextForDataclasses:v22 usedAtBeginningOfSentence:0 forAccount:?];
    v5 = [v24 stringWithFormat:v21, v19];
    v6 = v57;
    v57 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](account3);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v23);
  }

  v50 = 0;
  v48 = 0;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v67 = userInterfaceIdiom;
  v16 = 1;
  if (userInterfaceIdiom != 1)
  {
    v16 = v67 == 5;
  }

  if (v16)
  {
    v7 = MEMORY[0x277D82BE0](@"KEEP");
  }

  else
  {
    v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v50 = 1;
    v49 = [v51 localizedStringForKey:@"KEEP_LOCAL_DATA" value:&stru_2850054A0 table:@"Localizable"];
    v48 = 1;
    v7 = MEMORY[0x277D82BE0](v49);
  }

  v52 = v7;
  if (v48)
  {
    MEMORY[0x277D82BD8](v49);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:v52 value:&stru_2850054A0 table:@"Localizable"];
  v68[0] = v14;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v13 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
  v68[1] = v12;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v46 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v36 = MEMORY[0x277D85DD0];
  v37 = -1073741824;
  v38 = 0;
  v39 = __80__ACUIDataclassConfigurationViewController__confirmKeepLocalDataForDataclasses___block_invoke;
  v40 = &unk_278BFAB70;
  v41 = MEMORY[0x277D82BE0](v47);
  v45[1] = &v60;
  v42 = MEMORY[0x277D82BE0](v46);
  v43 = MEMORY[0x277D82BE0](selfCopy);
  v44 = MEMORY[0x277D82BE0](v58);
  v45[0] = MEMORY[0x277D82BE0](v57);
  dispatch_async(queue, &v36);
  MEMORY[0x277D82BD8](queue);
  dispatch_semaphore_wait(v46, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v61 + 24);
  objc_storeStrong(v45, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  _Block_object_dispose(&v60, 8);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __80__ACUIDataclassConfigurationViewController__confirmKeepLocalDataForDataclasses___block_invoke(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __80__ACUIDataclassConfigurationViewController__confirmKeepLocalDataForDataclasses___block_invoke_2;
  v6 = &unk_278BFAB48;
  v7 = MEMORY[0x277D82BE0](*(a1 + 32));
  v8[1] = *(a1 + 72);
  v8[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v9[0] = MEMORY[0x23EEFC830]();
  [*(a1 + 48) showConfirmationWithButtons:*(a1 + 32) title:*(a1 + 56) message:*(a1 + 64) destructive:0 completion:v9[0]];
  objc_storeStrong(v9, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v7, 0);
}

intptr_t __80__ACUIDataclassConfigurationViewController__confirmKeepLocalDataForDataclasses___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 != [*(a1 + 32) count] - 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_confirmDeleteLocalDataForDataclasses:(id)dataclasses
{
  v58[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclasses);
  v51 = 0;
  v52 = &v51;
  v53 = 0x20000000;
  v54 = 32;
  v55 = 0;
  lastObject = [location[0] lastObject];
  v50 = [ACUILocalization localizedTitleForDataclass:?];
  MEMORY[0x277D82BD8](lastObject);
  v30 = MEMORY[0x277CCACA8];
  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v29 localizedStringForKey:@"REALLY_DELETE_EXISTING_DATA_WARNING_FORMAT_TITLE" value:&stru_2850054A0 table:@"Localizable"];
  v49 = [v30 stringWithFormat:v50];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v48 = 0;
  v46 = 0;
  v44 = 0;
  IsSyncable = 0;
  if (ACDAccountSyncEnabled())
  {
    v47 = ACDAccountSyncDevices();
    v46 = 1;
    IsSyncable = 0;
    if ([v47 count])
    {
      account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
      v44 = 1;
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](account);
  }

  if (v46)
  {
    MEMORY[0x277D82BD8](v47);
  }

  if (IsSyncable)
  {
    v26 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v25 localizedStringForKey:@"REALLY_DELETE_EXISTING_DATA_WARNING_FORMAT_ACCOUNT_SYNC" value:&stru_2850054A0 table:@"Localizable"];
    v24 = location[0];
    account2 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v21 = [ACUILocalization localizedTextForDataclasses:v24 usedAtBeginningOfSentence:0 forAccount:?];
    v3 = [v26 stringWithFormat:v23, v21];
    v4 = v48;
    v48 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](account2);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v25);
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v19 localizedStringForKey:@"REALLY_DELETE_EXISTING_DATA_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v18 = location[0];
    account3 = [(ACUIDataclassConfigurationViewController *)selfCopy account];
    v15 = [ACUILocalization localizedTextForDataclasses:v18 usedAtBeginningOfSentence:0 forAccount:?];
    v5 = [v20 stringWithFormat:v17, v15];
    v6 = v48;
    v48 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](account3);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v19);
  }

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"DELETE" value:&stru_2850054A0 table:@"Localizable"];
  v58[0] = v13;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
  v58[1] = v11;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v42 = dispatch_semaphore_create(0);
  v7 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __82__ACUIDataclassConfigurationViewController__confirmDeleteLocalDataForDataclasses___block_invoke;
  v36 = &unk_278BFAB70;
  v37 = MEMORY[0x277D82BE0](v43);
  v41[1] = &v51;
  v38 = MEMORY[0x277D82BE0](v42);
  v39 = MEMORY[0x277D82BE0](selfCopy);
  v40 = MEMORY[0x277D82BE0](v49);
  v41[0] = MEMORY[0x277D82BE0](v48);
  dispatch_async(queue, &v32);
  MEMORY[0x277D82BD8](queue);
  dispatch_semaphore_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(v52 + 24);
  objc_storeStrong(v41, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  _Block_object_dispose(&v51, 8);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void __82__ACUIDataclassConfigurationViewController__confirmDeleteLocalDataForDataclasses___block_invoke(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __82__ACUIDataclassConfigurationViewController__confirmDeleteLocalDataForDataclasses___block_invoke_2;
  v6 = &unk_278BFAB48;
  v7 = MEMORY[0x277D82BE0](*(a1 + 32));
  v8[1] = *(a1 + 72);
  v8[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v9[0] = MEMORY[0x23EEFC830]();
  [*(a1 + 48) showConfirmationWithButtons:*(a1 + 32) title:*(a1 + 56) message:*(a1 + 64) destructive:1 completion:v9[0]];
  objc_storeStrong(v9, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v7, 0);
}

intptr_t __82__ACUIDataclassConfigurationViewController__confirmDeleteLocalDataForDataclasses___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 != [*(a1 + 32) count] - 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_confirmSyncDelete
{
  selfCopy = self;
  v26 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  v20 = MEMORY[0x277D82BE0](@"(AppleInternal) Are you sure you want to delete your Apple Mail account EVERYWHERE?");
  deviceMessage = [(ACUIDataclassConfigurationViewController *)selfCopy deviceMessage];
  v18 = MEMORY[0x277D82BE0](&unk_28500B468);
  v17 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __62__ACUIDataclassConfigurationViewController__confirmSyncDelete__block_invoke;
  v11 = &unk_278BFAB70;
  v12 = MEMORY[0x277D82BE0](v18);
  v16[1] = &v21;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](v20);
  v16[0] = MEMORY[0x277D82BE0](deviceMessage);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *(v22 + 24);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&deviceMessage, 0);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(&v21, 8);
  return v6 & 1;
}

void __62__ACUIDataclassConfigurationViewController__confirmSyncDelete__block_invoke(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __62__ACUIDataclassConfigurationViewController__confirmSyncDelete__block_invoke_2;
  v6 = &unk_278BFAB48;
  v7 = MEMORY[0x277D82BE0](*(a1 + 32));
  v8[1] = *(a1 + 72);
  v8[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v9[0] = MEMORY[0x23EEFC830]();
  [*(a1 + 48) showConfirmationWithButtons:*(a1 + 32) title:*(a1 + 56) message:*(a1 + 64) destructive:1 completion:v9[0]];
  objc_storeStrong(v9, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v7, 0);
}

intptr_t __62__ACUIDataclassConfigurationViewController__confirmSyncDelete__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 != [*(a1 + 32) count] - 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v25 = 0;
  objc_storeStrong(&v25, path);
  v24 = 0;
  v23.receiver = selfCopy;
  v23.super_class = ACUIDataclassConfigurationViewController;
  v4 = [(ACUIDataclassConfigurationViewController *)&v23 tableView:location[0] cellForRowAtIndexPath:v25];
  v5 = v24;
  v24 = v4;
  MEMORY[0x277D82BD8](v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v24 textField];
    if (textField)
    {
      if (selfCopy->_textFieldTextDidChangeObserver)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:selfCopy->_textFieldTextDidChangeObserver name:*MEMORY[0x277D770B0] object:textField];
        MEMORY[0x277D82BD8](defaultCenter);
      }

      objc_initWeak(&from, selfCopy);
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = *MEMORY[0x277D770B0];
      v12 = textField;
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __76__ACUIDataclassConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v19 = &unk_278BFAB98;
      objc_copyWeak(&v20, &from);
      v6 = [defaultCenter2 addObserverForName:v11 object:v12 queue:0 usingBlock:&v15];
      textFieldTextDidChangeObserver = selfCopy->_textFieldTextDidChangeObserver;
      selfCopy->_textFieldTextDidChangeObserver = v6;
      MEMORY[0x277D82BD8](textFieldTextDidChangeObserver);
      MEMORY[0x277D82BD8](defaultCenter2);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&from);
    }

    [textField setDelegate:selfCopy];
    objc_storeStrong(&textField, 0);
  }

  v9 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);

  return v9;
}

void __76__ACUIDataclassConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  [v3[0] _textFieldValueDidChange:location[0]];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_textFieldValueDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  for (i = 0; ; ++i)
  {
    v11 = i;
    if (v11 >= [*(&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count])
    {
      break;
    }

    v14 = [(ACUIDataclassConfigurationViewController *)selfCopy indexPathForIndex:i];
    v9 = [*(&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v14];
    isEditing = [v9 isEditing];
    MEMORY[0x277D82BD8](v9);
    if (isEditing)
    {
      v13 = [*(&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        textField = [v13 textField];
        text = [textField text];
        MEMORY[0x277D82BD8](textField);
        [(ACUIDataclassConfigurationViewController *)selfCopy _setDescription:text];
        objc_storeStrong(&text, 0);
      }

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  account = [(ACUIDataclassConfigurationViewController *)selfCopy account];
  accountDescription = [(ACAccount *)account accountDescription];
  v7 = [(NSString *)accountDescription isEqualToString:selfCopy->_initialAccountDescription];
  MEMORY[0x277D82BD8](accountDescription);
  MEMORY[0x277D82BD8](account);
  if (v7)
  {
    navigationItem = [(ACUIDataclassConfigurationViewController *)selfCopy navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setHidden:1];
    MEMORY[0x277D82BD8](rightBarButtonItem);
    MEMORY[0x277D82BD8](navigationItem);
  }

  else
  {
    [(ACUIDataclassConfigurationViewController *)selfCopy _updateDoneButton];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateDoneButton
{
  navigationItem = [(ACUIDataclassConfigurationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setHidden:0];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  [location[0] resignFirstResponder];
  v4 = selfCopy;
  text = [location[0] text];
  [(ACUIDataclassConfigurationViewController *)v4 _setDescription:?];
  MEMORY[0x277D82BD8](text);
  navigationItem = [(ACUIDataclassConfigurationViewController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setHidden:1];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem);
  objc_storeStrong(location, 0);
  return 1;
}

@end