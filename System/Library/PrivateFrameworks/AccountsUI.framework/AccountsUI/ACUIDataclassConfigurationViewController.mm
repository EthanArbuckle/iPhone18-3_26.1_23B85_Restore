@interface ACUIDataclassConfigurationViewController
+ (BOOL)shouldPresentAsModalSheet;
- (ACAccount)account;
- (ACUIDataclassConfigurationViewController)init;
- (BOOL)_confirmDeleteLocalDataForDataclasses:(id)a3;
- (BOOL)_confirmKeepLocalDataForDataclasses:(id)a3;
- (BOOL)_confirmSyncDelete;
- (BOOL)_isShowingDeleteAccountButton;
- (BOOL)_isUserOverridableForDataclass:(id)a3;
- (BOOL)_promptUserToConfirmAccountDeletion;
- (BOOL)dataclassStateForSpecifier:(id)a3;
- (BOOL)isAppleMailAccount:(id)a3;
- (BOOL)operationsHelper:(id)a3 shouldRemoveAccount:(id)a4;
- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)a3;
- (BOOL)shouldShowSpecifierForDataclass:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)_accountIdentifier;
- (id)_getDescription:(id)a3;
- (id)_navigationTitle;
- (id)_orderDataclassList:(id)a3;
- (id)_specifiersForDataclasses:(id)a3;
- (id)dataclassLinkListStateForSpecifier:(id)a3;
- (id)dataclassSwitchStateForSpecifier:(id)a3;
- (id)deviceMessage;
- (id)displayedAccountTypeString;
- (id)displayedShortAccountTypeString;
- (id)messageForAccountDeletionProgressUI;
- (id)messageForAccountDeletionWarning;
- (id)operationsHelper:(id)a3 desiredDataclassActionFromPicker:(id)a4;
- (id)specifierForAccountSettingsCell;
- (id)specifierForAccountSummaryCell;
- (id)specifierForDataclass:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForDeleteButton;
- (id)valueForAccountSummaryCell;
- (int64_t)_promptUserToConfirmAccountSyncDeletion;
- (int64_t)operationsHelper:(id)a3 shouldRemoveOrDisableAccount:(id)a4;
- (void)_enableAllProvisionedDataclassesWithoutRequringUserInteraction;
- (void)_notifyOfAccountSetupCompletion;
- (void)_presentUndoAlert:(id)a3 reason:(id)a4;
- (void)_setDataclass:(id)a3 enabled:(BOOL)a4 onAccount:(id)a5 completion:(id)a6;
- (void)_setDescription:(id)a3;
- (void)_textFieldValueDidChange:(id)a3;
- (void)_updateDoneButton;
- (void)appendDeleteAccountButton;
- (void)cancelButtonTapped:(id)a3;
- (void)dataclassSwitchStateDidChange:(id)a3 withSpecifier:(id)a4;
- (void)dealloc;
- (void)deleteButtonTapped:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)operationsHelper:(id)a3 didRemoveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6;
- (void)operationsHelper:(id)a3 didSaveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6;
- (void)operationsHelper:(id)a3 willRemoveAccount:(id)a4;
- (void)operationsHelper:(id)a3 willSaveAccount:(id)a4;
- (void)reloadDynamicSpecifiersWithAnimation:(BOOL)a3;
- (void)setDataclass:(id)a3 enabled:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ACUIDataclassConfigurationViewController

+ (BOOL)shouldPresentAsModalSheet
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v3);
  v5 = 1;
  if (v4 != 1)
  {
    return v4 == 5;
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
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;
    [(ACUIDataclassConfigurationViewController *)v10 setIsAccountModificationDisabled:v4];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:v5];
  MEMORY[0x277D82BD8](v2);
  v3.receiver = v5;
  v3.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v3 dealloc];
}

- (id)displayedAccountTypeString
{
  v4 = [(ACUIDataclassConfigurationViewController *)self account];
  v3 = [(ACAccount *)v4 accountType];
  v5 = [(ACAccountType *)v3 accountTypeDescription];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)displayedShortAccountTypeString
{
  v4 = [(ACUIDataclassConfigurationViewController *)self account];
  v3 = [(ACAccount *)v4 accountType];
  v5 = [(ACAccountType *)v3 accountTypeDescription];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)valueForAccountSummaryCell
{
  v3 = [(ACUIDataclassConfigurationViewController *)self account];
  v4 = [(ACAccount *)v3 displayUsername];
  MEMORY[0x277D82BD8](v3);

  return v4;
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
  v36 = self;
  v35[1] = a2;
  v23 = [(ACUIDataclassConfigurationViewController *)self account];
  v24 = [(ACAccount *)v23 managingOwnerIdentifier];
  v33 = 0;
  v31 = 0;
  if (v24)
  {
    v2 = MEMORY[0x277D82BE0](v24);
  }

  else
  {
    v34 = [(ACUIDataclassConfigurationViewController *)v36 account];
    v33 = 1;
    v32 = [(ACAccount *)v34 objectForKeyedSubscript:*MEMORY[0x277CB8A90]];
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
    MEMORY[0x277D82BD8](v34);
  }

  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v23);
  if (v35[0])
  {
    location = _ACUILogSystem();
    v29 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(ACUIDataclassConfigurationViewController *)v36 account];
      __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v38, "[ACUIDataclassConfigurationViewController viewDidLoad]", 154, v22, v35[0]);
      _os_log_debug_impl(&dword_23DC86000, location, v29, "%s (%d) Hiding delete button for %@, account is managed by %@", v38, 0x26u);
      MEMORY[0x277D82BD8](v22);
    }

    objc_storeStrong(&location, 0);
    [(ACUIDataclassConfigurationViewController *)v36 setShouldShowDeleteAccountButton:0];
  }

  if ([(ACUIDataclassConfigurationViewController *)v36 isAccountModificationDisabled])
  {
    v28 = _ACUILogSystem();
    v27 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(ACUIDataclassConfigurationViewController *)v36 account];
      __os_log_helper_16_2_3_8_32_4_0_8_64(v37, "[ACUIDataclassConfigurationViewController viewDidLoad]", 159, v21);
      _os_log_debug_impl(&dword_23DC86000, v28, v27, "%s (%d) Hiding delete button for %@, account modification is disabled", v37, 0x1Cu);
      MEMORY[0x277D82BD8](v21);
    }

    objc_storeStrong(&v28, 0);
    [(ACUIDataclassConfigurationViewController *)v36 setShouldShowDeleteAccountButton:0];
    [(ACUIDataclassConfigurationViewController *)v36 setShouldEnableAccountSummaryCell:0];
    [(ACUIDataclassConfigurationViewController *)v36 setShouldEnableAccountSettingsCell:0];
    [(ACUIDataclassConfigurationViewController *)v36 setShouldEnableDataclassSwitches:0];
  }

  v26.receiver = v36;
  v26.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v26 viewDidLoad];
  v25 = [(ACUIDataclassConfigurationViewController *)v36 navigationItem];
  if ([(ACUIDataclassConfigurationViewController *)v36 isAccountDataclassListRedesignFFEnabled])
  {
    v20 = [(ACUIViewController *)v36 doneButton];
    MEMORY[0x277D82BD8](v20);
    if (!v20)
    {
      v16 = objc_alloc(MEMORY[0x277D751E0]);
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:@"DONE" value:&stru_2850054A0 table:@"Localizable"];
      v17 = [v16 initWithTitle:? style:? target:? action:?];
      [(ACUIViewController *)v36 setDoneButton:?];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    v15 = [(ACUIViewController *)v36 doneButton];
    [v25 setRightBarButtonItem:?];
    MEMORY[0x277D82BD8](v15);
  }

  if ([(ACUIDataclassConfigurationViewController *)v36 isFirstTimeSetup])
  {
    [v25 setHidesBackButton:1];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"SAVE" value:&stru_2850054A0 table:@"Localizable"];
    v11 = [v25 rightBarButtonItem];
    [v11 setTitle:v12];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    if (![(ACUIViewController *)v36 isPresentedAsModalSheet])
    {
      if ([(ACUIDataclassConfigurationViewController *)v36 isAccountDataclassListRedesignFFEnabled])
      {
        v14 = [v25 rightBarButtonItem];
        [v14 setHidden:1];
        MEMORY[0x277D82BD8](v14);
      }

      else
      {
        [v25 setRightBarButtonItem:0];
      }
    }

    [v25 setLeftBarButtonItem:?];
    [(ACUIViewController *)v36 setCancelButton:0];
    [v25 setHidesBackButton:0];
  }

  v5 = [(ACUIDataclassConfigurationViewController *)v36 _navigationTitle];
  [v25 setTitle:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [(ACUIDataclassConfigurationViewController *)v36 account];
  v3 = [(ACAccount *)v6 accountDescription];
  initialAccountDescription = v36->_initialAccountDescription;
  v36->_initialAccountDescription = v3;
  MEMORY[0x277D82BD8](initialAccountDescription);
  MEMORY[0x277D82BD8](v6);
  v9 = [(ACUIDataclassConfigurationViewController *)v36 table];
  v7 = objc_opt_class();
  v8 = +[(PSTableCell *)ACUIAccountSummaryCell];
  [v9 registerClass:v7 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [(ACUIDataclassConfigurationViewController *)v36 table];
  [v10 setAccessibilityIdentifier:@"DATACLASS_CONFIGURATION_TABLE"];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v35, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v10 viewWillAppear:a3];
  location = [(ACUIDataclassConfigurationViewController *)v13 navigationItem];
  v7 = [(ACUIDataclassConfigurationViewController *)v13 _navigationTitle];
  [location setTitle:?];
  MEMORY[0x277D82BD8](v7);
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v3 = [(ACUIDataclassConfigurationViewController *)v13 isFirstTimeSetup];
    v4 = @"First-time-setup";
    if (!v3)
    {
      v4 = @"existing-setup";
    }

    v5 = v4;
    v6 = [(ACUIDataclassConfigurationViewController *)v13 account];
    __os_log_helper_16_2_4_8_32_4_0_8_66_8_64(v14, "[ACUIDataclassConfigurationViewController viewWillAppear:]", 210, v5, v6);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) Presenting %{public}@ for %@", v14, 0x26u);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v9 viewDidAppear:a3];
  if (![(ACUIDataclassConfigurationViewController *)v12 isFirstTimeSetup])
  {
    v3 = [(ACUIDataclassConfigurationViewController *)v12 specifier];
    v8 = [v3 propertyForKey:*MEMORY[0x277D3FD90]];
    MEMORY[0x277D82BD8](v3);
    v4 = v12;
    v7 = [(ACUIDataclassConfigurationViewController *)v12 account];
    v6 = [(ACAccount *)v7 identifier];
    v5 = [(ACUIDataclassConfigurationViewController *)v12 account];
    [ACUIUtils emitNavigationEventForSubPane:"emitNavigationEventForSubPane:subPath:account:inHostAppBundleID:" subPath:v4 account:v6 inHostAppBundleID:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v8, 0);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v8 viewWillDisappear:a3];
  v6 = 0;
  v5 = 0;
  if ([(ACUIDataclassConfigurationViewController *)v11 isAccountDataclassListRedesignFFEnabled])
  {
    v7 = [(ACUIDataclassConfigurationViewController *)v11 account];
    v6 = 1;
    v5 = v7 != 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v5)
  {
    v4 = [(ACUIViewController *)v11 accountStore];
    v3 = [(ACUIDataclassConfigurationViewController *)v11 account];
    [ACAccountStore saveAccount:v4 withCompletionHandler:"saveAccount:withCompletionHandler:"];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
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
    v5 = [(ACUIDataclassConfigurationViewController *)self displayedShortAccountTypeString];
  }

  else
  {
    v3 = [(ACUIDataclassConfigurationViewController *)self account];
    v5 = [(ACAccount *)v3 accountDescription];
    MEMORY[0x277D82BD8](v3);
  }

  return v5;
}

- (void)doneButtonTapped:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v43 = _ACUILogSystem();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    log = v43;
    type = v42;
    v20 = v46;
    v23 = NSStringFromSelector(v45);
    v41 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(v47, "[ACUIDataclassConfigurationViewController doneButtonTapped:]", 249, v20, v41, location);
    _os_log_impl(&dword_23DC86000, log, type, "%s (%d) @%{public}@ %{public}@: %{public}@", v47, 0x30u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v41, 0);
  }

  objc_storeStrong(&v43, 0);
  if ([(ACUIDataclassConfigurationViewController *)v46 isFirstTimeSetup])
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __61__ACUIDataclassConfigurationViewController_doneButtonTapped___block_invoke;
    v37 = &unk_278BFA730;
    v38 = MEMORY[0x277D82BE0](v46);
    v39 = MEMORY[0x23EEFC830](&v33);
    forceMailSetup = v46->_forceMailSetup;
    v31 = 0;
    v19 = 0;
    if (forceMailSetup)
    {
      v32 = [(ACUIDataclassConfigurationViewController *)v46 account];
      v31 = 1;
      v19 = [(ACAccount *)v32 isProvisionedForDataclass:*MEMORY[0x277CB9150]]== 0;
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
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
      [(ACUIDataclassConfigurationViewController *)v46 presentViewController:v30 animated:1 completion:0];
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
    [(ACUIViewController *)v46 dismissAnimated:1];
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

- (void)cancelButtonTapped:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v12 = _ACUILogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    v5 = v15;
    v8 = NSStringFromSelector(v14);
    v10 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(v16, "[ACUIDataclassConfigurationViewController cancelButtonTapped:]", 279, v5, v10, location);
    _os_log_impl(&dword_23DC86000, log, type, "%s (%d) @%{public}@ %{public}@: %{public}@", v16, 0x30u);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
  v9 = [(ACUIDataclassConfigurationViewController *)v15 rootController];
  v4 = [(ACUIDataclassConfigurationViewController *)v15 configurationCompletion];
  MEMORY[0x277D82BD8](v4);
  if (v4)
  {
    v3 = [(ACUIDataclassConfigurationViewController *)v15 configurationCompletion];
    v3[2](v3, 0);
    MEMORY[0x277D82BD8](v3);
    [(ACUIDataclassConfigurationViewController *)v15 setConfigurationCompletion:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v9 dismiss];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v34 = self;
  v33 = a2;
  if (!*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v32 = [MEMORY[0x277CBEB18] array];
    v2 = [(ACUIDataclassConfigurationViewController *)v34 account];
    v26 = v2 == 0;
    MEMORY[0x277D82BD8](v2);
    if (v26)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:v33 object:v34 file:@"ACUIDataclassConfigurationViewController.m" lineNumber:314 description:{@"Nil account in %@.", objc_opt_class()}];
      MEMORY[0x277D82BD8](v25);
    }

    if (![(ACUIDataclassConfigurationViewController *)v34 isFirstTimeSetup])
    {
      v3 = [(ACUIDataclassConfigurationViewController *)v34 specifierForAccountSummaryCell];
      accountSummaryCellSpecifier = v34->_accountSummaryCellSpecifier;
      v34->_accountSummaryCellSpecifier = v3;
      MEMORY[0x277D82BD8](accountSummaryCellSpecifier);
      if (v34->_accountSummaryCellSpecifier)
      {
        v31 = [(ACUIDataclassConfigurationViewController *)v34 displayedAccountTypeString];
        v30 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v31];
        [v32 addObject:v30];
        [v32 addObject:v34->_accountSummaryCellSpecifier];
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }
    }

    v24 = [(ACUIDataclassConfigurationViewController *)v34 account];
    v29 = [(ACAccount *)v24 provisionedDataclasses];
    MEMORY[0x277D82BD8](v24);
    if ([v29 count])
    {
      v5 = [(ACUIDataclassConfigurationViewController *)v34 _specifiersForDataclasses:v29];
      dataclassSpecifiers = v34->_dataclassSpecifiers;
      v34->_dataclassSpecifiers = v5;
      MEMORY[0x277D82BD8](dataclassSpecifiers);
      [v32 addObjectsFromArray:v34->_dataclassSpecifiers];
    }

    if (![(ACUIDataclassConfigurationViewController *)v34 isFirstTimeSetup]|| [(ACUIDataclassConfigurationViewController *)v34 shouldShowOtherSpecifiersDuringFirstSetup])
    {
      v7 = [(ACUIDataclassConfigurationViewController *)v34 otherSpecifiers];
      otherSpecifiers = v34->_otherSpecifiers;
      v34->_otherSpecifiers = v7;
      MEMORY[0x277D82BD8](otherSpecifiers);
      if ([(NSArray *)v34->_otherSpecifiers count])
      {
        v22 = [(NSArray *)v34->_otherSpecifiers objectAtIndexedSubscript:0];
        v23 = [v22 cellType];
        MEMORY[0x277D82BD8](v22);
        if (v23)
        {
          v20 = v32;
          v21 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
          [v20 addObject:?];
          MEMORY[0x277D82BD8](v21);
        }

        [v32 addObjectsFromArray:v34->_otherSpecifiers];
      }
    }

    if (![(ACUIDataclassConfigurationViewController *)v34 isFirstTimeSetup]&& [(ACUIDataclassConfigurationViewController *)v34 isAccountDataclassListRedesignFFEnabled])
    {
      v9 = [(ACUIDataclassConfigurationViewController *)v34 specifierForAccountSettingsCell];
      accountSettingsCellSpecifier = v34->_accountSettingsCellSpecifier;
      v34->_accountSettingsCellSpecifier = v9;
      MEMORY[0x277D82BD8](accountSettingsCellSpecifier);
      if (v34->_accountSettingsCellSpecifier)
      {
        v28 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"accountSettingsSpecifier"];
        [v32 addObject:v28];
        [v32 addObject:v34->_accountSettingsCellSpecifier];
        objc_storeStrong(&v28, 0);
      }
    }

    if ([(ACUIDataclassConfigurationViewController *)v34 shouldShowDeleteAccountButton])
    {
      v27 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v32 addObject:v27];
      v16 = MEMORY[0x277D3FAD8];
      v17 = [(ACUIDataclassConfigurationViewController *)v34 titleForDeleteButton];
      v11 = [v16 deleteButtonSpecifierWithName:? target:? action:?];
      deleteButtonSpecifier = v34->_deleteButtonSpecifier;
      v34->_deleteButtonSpecifier = v11;
      MEMORY[0x277D82BD8](deleteButtonSpecifier);
      MEMORY[0x277D82BD8](v17);
      [(PSSpecifier *)v34->_deleteButtonSpecifier setProperty:@"ACUIDeleteButtonSpecifierID" forKey:*MEMORY[0x277D3FFB8]];
      v18 = v34->_deleteButtonSpecifier;
      v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableDeleteAccountButton](v34, "shouldEnableDeleteAccountButton")}];
      v13 = *MEMORY[0x277D3FF38];
      [PSSpecifier setProperty:v18 forKey:"setProperty:forKey:"];
      MEMORY[0x277D82BD8](v19);
      [v32 addObject:v34->_deleteButtonSpecifier];
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong((&v34->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v32);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v32, 0);
  }

  v14 = *(&v34->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v14;
}

- (id)specifierForAccountSummaryCell
{
  v32[2] = *MEMORY[0x277D85DE8];
  v27 = self;
  v26[1] = a2;
  v26[0] = 0;
  v25 = [(ACUIDataclassConfigurationViewController *)self accountInfoControllerClass];
  if (v25)
  {
    if ([(ACUIDataclassConfigurationViewController *)v27 isAccountDataclassListRedesignFFEnabled])
    {
      v10 = MEMORY[0x277D3FB40];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v12 localizedStringForKey:@"LABEL" value:&stru_2850054A0 table:@"Localizable"];
      v5 = [v10 preferenceSpecifierNamed:v11 target:v27 set:sel__setDescription_ get:sel__getDescription_ detail:objc_opt_class() cell:? edit:?];
      v6 = v26[0];
      v26[0] = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      [v26[0] setKeyboardType:0 autoCaps:1 autoCorrection:?];
      v29[0] = @"AccountSettingsAlreadyShowedEnableAndDeleteKey";
      v30[0] = MEMORY[0x277CBEC38];
      v29[1] = @"account";
      v13 = [(ACUIDataclassConfigurationViewController *)v27 account];
      v30[1] = v13;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      MEMORY[0x277D82BD8](v13);
      v14 = v26[0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableAccountSummaryCell](v27, "shouldEnableAccountSummaryCell")}];
      v7 = *MEMORY[0x277D3FF38];
      [v14 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v15);
      [v26[0] setUserInfo:v21];
      objc_storeStrong(&v21, 0);
    }

    else
    {
      v23 = 0;
      v23 = [(ACUIViewController *)v27 isPresentedAsModalSheet]|| ([(objc_class *)v25 shouldPresentAsModalSheet]& 1) == 0;
      v17 = [(ACUIDataclassConfigurationViewController *)v27 account];
      v16 = [(ACUIDataclassConfigurationViewController *)v27 valueForAccountSummaryCell];
      v2 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:valueText:detailControllerClass:presentationStyle:" account:1 valueText:v17 detailControllerClass:? presentationStyle:?];
      v3 = v26[0];
      v26[0] = v2;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      v31[0] = @"AccountSettingsAlreadyShowedEnableAndDeleteKey";
      v32[0] = MEMORY[0x277CBEC38];
      v31[1] = @"account";
      v18 = [(ACUIDataclassConfigurationViewController *)v27 account];
      v32[1] = v18;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
      MEMORY[0x277D82BD8](v18);
      [v26[0] setUserInfo:v22];
      v19 = v26[0];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableAccountSummaryCell](v27, "shouldEnableAccountSummaryCell")}];
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
  v16 = self;
  v15[1] = a2;
  v15[0] = 0;
  v14 = [(ACUIDataclassConfigurationViewController *)self accountInfoControllerClass];
  if (v14)
  {
    v12 = 0;
    v12 = [(ACUIViewController *)v16 isPresentedAsModalSheet]|| ([(objc_class *)v14 shouldPresentAsModalSheet]& 1) == 0;
    v7 = [(ACUIDataclassConfigurationViewController *)v16 account];
    v2 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:valueText:detailControllerClass:presentationStyle:" account:? valueText:? detailControllerClass:? presentationStyle:?];
    v3 = v15[0];
    v15[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v7);
    v18[0] = @"AccountSettingsAlreadyShowedEnableAndDeleteKey";
    v19[0] = MEMORY[0x277CBEC38];
    v18[1] = @"account";
    v8 = [(ACUIDataclassConfigurationViewController *)v16 account];
    v19[1] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    MEMORY[0x277D82BD8](v8);
    [v15[0] setUserInfo:v11];
    v9 = v15[0];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIDataclassConfigurationViewController shouldEnableAccountSettingsCell](v16, "shouldEnableAccountSettingsCell")}];
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

- (id)_specifiersForDataclasses:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = [MEMORY[0x277CBEB18] array];
  v9 = v21;
  v10 = [location[0] allObjects];
  v18 = [(ACUIDataclassConfigurationViewController *)v9 _orderDataclassList:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [(ACUIDataclassConfigurationViewController *)v21 setDataclassGroupSpecifier:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [(ACUIDataclassConfigurationViewController *)v21 dataclassGroupSpecifier];
  [v19 addObject:?];
  MEMORY[0x277D82BD8](v12);
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
      if ([(ACUIDataclassConfigurationViewController *)v21 shouldShowSpecifierForDataclass:v17])
      {
        v15 = [(ACUIDataclassConfigurationViewController *)v21 specifierForDataclass:v17];
        if (v15)
        {
          [v19 addObject:v15];
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
  v4 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_getDescription:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(ACUIDataclassConfigurationViewController *)v7 account];
  v5 = [(ACAccount *)v4 accountDescription];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_setDescription:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  v10 = 0;
  v8 = 0;
  LOBYTE(v7) = 1;
  if ([(ACUIDataclassConfigurationViewController *)v15 isAccountDataclassListRedesignFFEnabled])
  {
    v13 = [(ACUIDataclassConfigurationViewController *)v15 account];
    v12 = 1;
    v11 = [(ACAccount *)v13 accountType];
    v10 = 1;
    v9 = [(ACAccountType *)v11 identifier];
    v8 = 1;
    v7 = ![(NSString *)v9 isEqualToString:*MEMORY[0x277CB8BA0]];
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

  if (v7)
  {
    v5 = location[0];
    v6 = [(ACUIDataclassConfigurationViewController *)v15 navigationItem];
    [v6 setTitle:v5];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = [(ACUIDataclassConfigurationViewController *)v15 account];
  [(ACAccount *)v4 setAccountDescription:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldShowSpecifierForDataclass:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)specifierForDataclass:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:*MEMORY[0x277CB9110]])
  {
    v21 = 0;
    v18 = 1;
  }

  else
  {
    v6 = MEMORY[0x277D3FAD8];
    v5 = location[0];
    v7 = [(ACUIDataclassConfigurationViewController *)v20 account];
    v17 = [v6 acui_specifierForDataclass:v5 account:? target:? set:? get:?];
    MEMORY[0x277D82BD8](v7);
    v8 = [(ACUIDataclassConfigurationViewController *)v20 account];
    v16 = [(ACAccount *)v8 accountPropertyForKey:*MEMORY[0x277CB8AC0]];
    MEMORY[0x277D82BD8](v8);
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    if ([(ACUIDataclassConfigurationViewController *)v20 isFirstTimeSetup])
    {
      v15 = [(ACUIDataclassConfigurationViewController *)v20 account];
      v14 = 1;
      v13 = [(ACAccount *)v15 accountType];
      v12 = 1;
      v11 = [(ACAccountType *)v13 identifier];
      v10 = 1;
      v9 = 0;
      if ([(NSString *)v11 isEqualToString:*MEMORY[0x277CB8C40]])
      {
        v9 = v16 != 0;
      }
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v20->_forceMailSetup && ([location[0] isEqualToString:*MEMORY[0x277CB9150]] & 1) != 0 || v9 && (objc_msgSend(v16, "containsObject:", location[0]) & 1) == 0 || !-[ACUIDataclassConfigurationViewController _isUserOverridableForDataclass:](v20, "_isUserOverridableForDataclass:", location[0]) || !-[ACUIDataclassConfigurationViewController shouldEnableDataclassSwitches](v20, "shouldEnableDataclassSwitches"))
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

- (BOOL)_isUserOverridableForDataclass:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v5 = [(ACUIDataclassConfigurationViewController *)v11 account];
    v7 = [(ACAccount *)v5 objectForKeyedSubscript:v9];
    MEMORY[0x277D82BD8](v5);
    v6 = 1;
    if (v7)
    {
      objc_opt_class();
      v6 = 1;
      if (objc_opt_isKindOfClass())
      {
        v6 = [v7 BOOLValue];
      }
    }

    v8 = v6 & 1;
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

- (void)reloadDynamicSpecifiersWithAnimation:(BOOL)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D82BE0](v18->_accountSummaryCellSpecifier);
  if (v13)
  {
    [v15 addObject:v13];
  }

  v12 = [(ACUIDataclassConfigurationViewController *)v18 specifierForAccountSummaryCell];
  if (v12)
  {
    [v14 addObject:v12];
  }

  v11 = [(NSArray *)v18->_dataclassSpecifiers copy];
  if (v11)
  {
    [v15 addObjectsFromArray:v11];
  }

  v5 = [(ACUIDataclassConfigurationViewController *)v18 account];
  v4 = [(ACAccount *)v5 provisionedDataclasses];
  v10 = [(ACUIDataclassConfigurationViewController *)v18 _specifiersForDataclasses:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  if (v10)
  {
    [v14 addObjectsFromArray:v10];
  }

  v9 = [(NSArray *)v18->_otherSpecifiers copy];
  if (v9)
  {
    [v15 addObjectsFromArray:v9];
  }

  v3 = [(ACUIDataclassConfigurationViewController *)v18 otherSpecifiers];
  v8 = [v3 copy];
  MEMORY[0x277D82BD8](v3);
  if (v8)
  {
    [v14 addObjectsFromArray:v8];
  }

  if (![v15 isEqualToArray:v14])
  {
    [(ACUIDataclassConfigurationViewController *)v18 replaceContiguousSpecifiers:v15 withSpecifiers:v14 animated:1];
  }

  if ([(ACUIDataclassConfigurationViewController *)v18 isAccountDataclassListRedesignFFEnabled])
  {
    v7 = MEMORY[0x277D82BE0](v18->_accountSettingsCellSpecifier);
    if (v7)
    {
      [v15 addObject:v7];
    }

    obj = [(ACUIDataclassConfigurationViewController *)v18 specifierForAccountSettingsCell];
    if (obj)
    {
      [v14 addObject:obj];
    }

    objc_storeStrong(&v18->_accountSettingsCellSpecifier, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v18->_accountSummaryCellSpecifier, v12);
  objc_storeStrong(&v18->_dataclassSpecifiers, v10);
  objc_storeStrong(&v18->_otherSpecifiers, v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
}

- (id)dataclassSwitchStateForSpecifier:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ACUIDataclassConfigurationViewController *)v7 dataclassStateForSpecifier:location[0]];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)dataclassLinkListStateForSpecifier:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if ([(ACUIDataclassConfigurationViewController *)v15 dataclassStateForSpecifier:location[0]])
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

- (BOOL)dataclassStateForSpecifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] acui_dataclass];
  v10 = 0;
  if (v13->_forceMailSetup && ([v11 isEqualToString:*MEMORY[0x277CB9150]] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    if ([(ACUIDataclassConfigurationViewController *)v13 isFirstTimeSetup])
    {
      v9 = [(ACUIDataclassConfigurationViewController *)v13 preEnabledDataclasses];
      v8 = 1;
      v6 = [(NSArray *)v9 containsObject:v11];
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }

    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v5 = [(ACUIDataclassConfigurationViewController *)v13 account];
      v10 = [(ACAccount *)v5 isEnabledForDataclass:v11];
      MEMORY[0x277D82BD8](v5);
    }
  }

  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_32_4_0_8_66_4_0(v14, "[ACUIDataclassConfigurationViewController dataclassStateForSpecifier:]", 631, v11, v10 & 1);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) %{public}@: %d", v14, 0x22u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = v10;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, HIDWORD(v4));
  *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (void)dataclassSwitchStateDidChange:(id)a3 withSpecifier:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v78 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v76 = 0;
  objc_storeStrong(&v76, a4);
  v75 = [v76 acui_dataclass];
  if (v75)
  {
    v31 = [(ACUIDataclassConfigurationViewController *)v78 account];
    v71 = [(ACAccount *)v31 accountPropertyForKey:*MEMORY[0x277CB8AC0]];
    MEMORY[0x277D82BD8](v31);
    v68 = 0;
    v66 = 0;
    v64 = 0;
    v30 = 0;
    if (![(ACUIDataclassConfigurationViewController *)v78 isFirstTimeSetup])
    {
      v69 = [(ACUIDataclassConfigurationViewController *)v78 account];
      v68 = 1;
      v67 = [(ACAccount *)v69 accountType];
      v66 = 1;
      v65 = [(ACAccountType *)v67 identifier];
      v64 = 1;
      v30 = 0;
      if ([(NSString *)v65 isEqualToString:*MEMORY[0x277CB8C40]])
      {
        v30 = 0;
        if (v71)
        {
          v30 = [location[0] BOOLValue];
        }
      }
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    v70 = v30 & 1;
    if (v30 & 1) == 0 || ([v71 containsObject:v75])
    {
      if ([(ACUIDataclassConfigurationViewController *)v78 isFirstTimeSetup])
      {
        -[ACUIDataclassConfigurationViewController setDataclass:enabled:](v78, "setDataclass:enabled:", v75, [location[0] BOOLValue]);
      }

      else
      {
        objc_initWeak(&v45, v78);
        v11 = objc_loadWeakRetained(&v45);
        v10 = [v11 account];
        v44 = [v10 copy];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        v4 = MEMORY[0x277D85CD0];
        v9 = MEMORY[0x277D85CD0];
        dispatch_assert_queue_V2(v9);
        MEMORY[0x277D82BD8](v9);
        object = [v76 _switchSpinnerTimer];
        dispatch_resume(object);
        v6 = v78;
        v7 = v75;
        v8 = [location[0] BOOLValue];
        v5 = v44;
        v33 = MEMORY[0x277D85DD0];
        v34 = -1073741824;
        v35 = 0;
        v36 = __88__ACUIDataclassConfigurationViewController_dataclassSwitchStateDidChange_withSpecifier___block_invoke_3;
        v37 = &unk_278BFAAA8;
        objc_copyWeak(&v42, &v45);
        v38 = MEMORY[0x277D82BE0](v75);
        v39 = MEMORY[0x277D82BE0](v44);
        v40 = MEMORY[0x277D82BE0](object);
        v41 = MEMORY[0x277D82BE0](v76);
        [(ACUIDataclassConfigurationViewController *)v6 _setDataclass:v7 enabled:v8 onAccount:v5 completion:&v33];
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
      v29 = [(ACUIDataclassConfigurationViewController *)v78 account];
      v63 = [ACUILocalization localizedStringForDataclass:v75 withSuffix:@"LABEL" forAccount:?];
      MEMORY[0x277D82BD8](v29);
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
      objc_initWeak(&from, v78);
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
      [(ACUIDataclassConfigurationViewController *)v78 presentViewController:v62 animated:1 completion:0];
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

  objc_storeStrong(&v75, 0);
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
  v40 = self;
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
  obj = [(ACAccount *)v40->_account provisionedDataclasses];
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
      if ([(ACUIDataclassConfigurationViewController *)v40 shouldAutomaticallyTryEnablingDataclassDuringSetup:v37])
      {
        [(ACAccount *)v40->_account setEnabled:1 forDataclass:v37];
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
        v12 = [(ACUIDataclassConfigurationViewController *)v40 account];
        v13 = [(ACAccount *)v12 accountType];
        v14 = [(ACAccountType *)v13 identifier];
        v2 = [(NSString *)v14 isEqualToString:*MEMORY[0x277CB8C40]];
        v32 = 0;
        v30 = 0;
        v15 = 0;
        if (v2)
        {
          v33 = [(ACUIDataclassConfigurationViewController *)v40 account];
          v32 = 1;
          v31 = [(ACAccount *)v33 accountPropertyForKey:*MEMORY[0x277CB8AC0]];
          v30 = 1;
          v15 = v31 != 0;
        }

        if (v30)
        {
          MEMORY[0x277D82BD8](v31);
        }

        if (v32)
        {
          MEMORY[0x277D82BD8](v33);
        }

        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v12);
        if (v15)
        {
          [(ACAccount *)v40->_account setEnabled:0 forDataclass:v37];
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
  v9 = [(ACUIViewController *)v40 accountStore];
  v29 = [(ACAccountStore *)v9 dataclassActionsForAccountSave:v40->_account];
  MEMORY[0x277D82BD8](v9);
  memset(v27, 0, sizeof(v27));
  v10 = [(ACAccount *)v40->_account provisionedDataclasses];
  v11 = [v10 countByEnumeratingWithState:v27 objects:v42 count:16];
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
        objc_enumerationMutation(v10);
      }

      v28 = *(v27[1] + 8 * v7);
      v26 = [v29 objectForKeyedSubscript:v28];
      if (v26)
      {
        v25 = 1;
        if ([v26 count] == 1)
        {
          v24 = [v26 lastObject];
          if ([v24 type])
          {
            oslog = _ACUILogSystem();
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v4 = oslog;
              v3 = [v24 type];
              __os_log_helper_16_2_4_8_32_4_0_8_0_8_64(v41, "[ACUIDataclassConfigurationViewController _enableAllProvisionedDataclassesWithoutRequringUserInteraction]", 733, v3, v28);
              _os_log_debug_impl(&dword_23DC86000, v4, OS_LOG_TYPE_DEBUG, "%s (%d) Setting action %lu for dataclass %@", v41, 0x26u);
            }

            objc_storeStrong(&oslog, 0);
            [(NSMutableDictionary *)v40->_allDesiredDataclassActions setObject:v24 forKey:v28];
            v25 = 0;
          }

          objc_storeStrong(&v24, 0);
        }

        if (v25)
        {
          [(ACAccount *)v40->_account setEnabled:0 forDataclass:v28];
        }
      }

      objc_storeStrong(&v26, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [v10 countByEnumeratingWithState:v27 objects:v42 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v29, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(ACUIDataclassConfigurationViewController *)v12 account];
  v10 = [(ACAccount *)v4 accountPropertyForKey:*MEMORY[0x277CB8AC0]];
  MEMORY[0x277D82BD8](v4);
  v5 = [(ACUIDataclassConfigurationViewController *)v12 account];
  v6 = [(ACAccount *)v5 accountType];
  v7 = [(ACAccountType *)v6 identifier];
  v8 = 0;
  if ([(NSString *)v7 isEqualToString:*MEMORY[0x277CB8C40]])
  {
    v8 = v10 != 0;
  }

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v5);
  v9 = 1;
  if (v8)
  {
    v9 = ([v10 containsObject:location[0]] & 1) != 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (void)setDataclass:(id)a3 enabled:(BOOL)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  objc_initWeak(&from, v20);
  v6 = v20;
  v7 = location[0];
  v8 = v18;
  v4 = [(ACUIDataclassConfigurationViewController *)v20 account];
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __65__ACUIDataclassConfigurationViewController_setDataclass_enabled___block_invoke;
  v13 = &unk_278BFAAD0;
  objc_copyWeak(&v15, &from);
  v16 = v18;
  v14 = MEMORY[0x277D82BE0](location[0]);
  [(ACUIDataclassConfigurationViewController *)v6 _setDataclass:v7 enabled:v8 onAccount:v4 completion:&v9];
  MEMORY[0x277D82BD8](v4);
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

- (void)_setDataclass:(id)a3 enabled:(BOOL)a4 onAccount:(id)a5 completion:(id)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  queue = dispatch_get_global_queue(2, 0);
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __87__ACUIDataclassConfigurationViewController__setDataclass_enabled_onAccount_completion___block_invoke;
  v14 = &unk_278BFA660;
  v19 = v22;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v21);
  v17 = MEMORY[0x277D82BE0](v24);
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

- (void)_presentUndoAlert:(id)a3 reason:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
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
  [(ACUIDataclassConfigurationViewController *)v13 presentViewController:v10 animated:1 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)_orderDataclassList:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v8 = self;
  v7[1] = a2;
  if (!self->_accountIdentifier)
  {
    v6 = [(ACUIDataclassConfigurationViewController *)v8 specifier];
    v7[0] = [v6 userInfo];
    MEMORY[0x277D82BD8](v6);
    v2 = [v7[0] objectForKey:@"ACUISpecifierAccountIdentifier"];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v2;
    MEMORY[0x277D82BD8](accountIdentifier);
    objc_storeStrong(v7, 0);
  }

  v4 = v8->_accountIdentifier;

  return v4;
}

- (ACAccount)account
{
  v14 = self;
  location[1] = a2;
  if (!self->_account)
  {
    v9 = [(ACUIDataclassConfigurationViewController *)v14 specifier];
    location[0] = [v9 userInfo];
    MEMORY[0x277D82BD8](v9);
    v2 = [location[0] objectForKey:@"account"];
    account = v14->_account;
    v14->_account = v2;
    MEMORY[0x277D82BD8](account);
    v11 = 0;
    v10 = 0;
    if (!v14->_account)
    {
      v12 = [(ACUIDataclassConfigurationViewController *)v14 _accountIdentifier];
      v11 = 1;
      v10 = v12 != 0;
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v10)
    {
      v8 = [(ACUIViewController *)v14 accountStore];
      v4 = [(ACAccountStore *)v8 accountWithIdentifier:v14->_accountIdentifier];
      v5 = v14->_account;
      v14->_account = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v8);
    }

    if (v14->_account && [(ACUIDataclassConfigurationViewController *)v14 isFirstTimeSetup])
    {
      [(ACUIDataclassConfigurationViewController *)v14 _enableAllProvisionedDataclassesWithoutRequringUserInteraction];
    }

    objc_storeStrong(location, 0);
  }

  v6 = v14->_account;

  return v6;
}

- (void)operationsHelper:(id)a3 willSaveAccount:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ACUIDataclassConfigurationViewController_operationsHelper_willSaveAccount___block_invoke;
  v9[3] = &unk_278BFA730;
  v10 = MEMORY[0x277D82BE0](v13);
  dispatch_async(queue, v9);
  MEMORY[0x277D82BD8](queue);
  v8.receiver = v13;
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

- (id)operationsHelper:(id)a3 desiredDataclassActionFromPicker:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  if ([location[0] isRemovingAccount])
  {
    v29->_didShowDataclassActionPickerDuringRemoval = 1;
  }

  v25.receiver = v29;
  v25.super_class = ACUIDataclassConfigurationViewController;
  v26 = [(ACUIViewController *)&v25 operationsHelper:location[0] desiredDataclassActionFromPicker:v27];
  if ([v26 type])
  {
    if ([v26 type] == 4)
    {
      v18 = v29;
      v19 = [v27 affectedDataclasses];
      v20 = [(ACUIDataclassConfigurationViewController *)v18 _confirmKeepLocalDataForDataclasses:?];
      MEMORY[0x277D82BD8](v19);
      if (!v20)
      {
        goto LABEL_6;
      }
    }

    if ([v26 type] == 6)
    {
      v15 = v29;
      v16 = [v27 affectedDataclasses];
      v17 = [(ACUIDataclassConfigurationViewController *)v15 _confirmDeleteLocalDataForDataclasses:?];
      MEMORY[0x277D82BD8](v16);
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
      v29->_isMergingSyncData = 1;
    }
  }

  else if (![location[0] isRemovingAccount])
  {
    memset(__b, 0, sizeof(__b));
    v13 = [v27 affectedDataclasses];
    v14 = [v13 countByEnumeratingWithState:__b objects:v31 count:16];
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
          objc_enumerationMutation(v13);
        }

        v23 = *(__b[1] + 8 * v11);
        v6 = [v27 affectedAccount];
        v7 = [v6 isEnabledForDataclass:v23];
        MEMORY[0x277D82BD8](v6);
        v8 = [v27 affectedAccount];
        [v8 setEnabled:(v7 ^ 1) & 1 forDataclass:v23];
        MEMORY[0x277D82BD8](v8);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:__b objects:v31 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v13);
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

- (void)operationsHelper:(id)a3 didSaveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a5;
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ACUIDataclassConfigurationViewController_operationsHelper_didSaveAccount_withSuccess_error___block_invoke;
  v13[3] = &unk_278BFA730;
  v14 = MEMORY[0x277D82BE0](v19);
  dispatch_async(queue, v13);
  MEMORY[0x277D82BD8](queue);
  v12.receiver = v19;
  v12.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v12 operationsHelper:location[0] didSaveAccount:v17 withSuccess:v16 error:v15];
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
  v7 = [(ACUIDataclassConfigurationViewController *)self configurationCompletion];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    v6 = [(ACUIDataclassConfigurationViewController *)self configurationCompletion];
    v6[2](v6, 1);
    MEMORY[0x277D82BD8](v6);
    [(ACUIDataclassConfigurationViewController *)self setConfigurationCompletion:0];
  }

  else
  {
    v4 = [(ACUIDataclassConfigurationViewController *)self rootController];
    v5 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      v3 = [(ACUIDataclassConfigurationViewController *)self rootController];
      v2 = [(ACUIDataclassConfigurationViewController *)self account];
      [v3 controller:self didFinishSettingUpAccount:?];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
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
    v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [(ACUIDataclassConfigurationViewController *)self addSpecifier:?];
    MEMORY[0x277D82BD8](v4);
    v5 = MEMORY[0x277D3FAD8];
    v6 = [(ACUIDataclassConfigurationViewController *)self titleForDeleteButton];
    v2 = [v5 deleteButtonSpecifierWithName:? target:? action:?];
    deleteButtonSpecifier = self->_deleteButtonSpecifier;
    self->_deleteButtonSpecifier = v2;
    MEMORY[0x277D82BD8](deleteButtonSpecifier);
    MEMORY[0x277D82BD8](v6);
    [(PSSpecifier *)self->_deleteButtonSpecifier setProperty:@"ACUIDeleteButtonSpecifierID" forKey:*MEMORY[0x277D3FFB8]];
    [(ACUIDataclassConfigurationViewController *)self addSpecifier:self->_deleteButtonSpecifier];
  }
}

- (void)deleteButtonTapped:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(ACUIViewController *)v6 accountOperationsHelper];
  v3 = [(ACUIDataclassConfigurationViewController *)v6 account];
  [(ACUIAccountOperationsHelper *)v4 removeAccount:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (BOOL)operationsHelper:(id)a3 shouldRemoveAccount:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if (v14->_didShowDataclassActionPickerDuringRemoval)
  {
    v14->_didShowDataclassActionPickerDuringRemoval = 0;
    v15 = 1;
  }

  else
  {
    v11 = [(ACUIDataclassConfigurationViewController *)v14 _promptUserToConfirmAccountDeletion];
    v9 = 0;
    v7 = 0;
    v5 = 0;
    if (v11)
    {
      v5 = 0;
      if (ACDAccountSyncEnabled())
      {
        v10 = ACDAccountSyncDevices();
        v9 = 1;
        v5 = 0;
        if ([v10 count])
        {
          v8 = [(ACUIDataclassConfigurationViewController *)v14 account];
          v7 = 1;
          v5 = 0;
          if (ACDAccountSyncAccountIsSyncable())
          {
            v5 = [(ACUIDataclassConfigurationViewController *)v14 isAppleMailAccount:v12];
          }
        }
      }
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](v8);
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v5)
    {
      v11 = [(ACUIDataclassConfigurationViewController *)v14 _confirmSyncDelete];
    }

    v15 = v11;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (int64_t)operationsHelper:(id)a3 shouldRemoveOrDisableAccount:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  if (v11->_didShowDataclassActionPickerDuringRemoval)
  {
    v11->_didShowDataclassActionPickerDuringRemoval = 0;
    v12 = &stru_2850054A0;
    v8 = 1;
  }

  else
  {
    v7 = [(ACUIDataclassConfigurationViewController *)v11 _promptUserToConfirmAccountSyncDeletion];
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_0(v13, "[ACUIDataclassConfigurationViewController operationsHelper:shouldRemoveOrDisableAccount:]", 1100, v7);
      _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) The button index returned was %ld", v13, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_14;
      }

      if (![(ACUIDataclassConfigurationViewController *)v11 isAppleMailAccount:v9])
      {
        v12 = 2;
        v8 = 1;
        goto LABEL_15;
      }

      if (![(ACUIDataclassConfigurationViewController *)v11 _confirmSyncDelete])
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
  v42 = self;
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
      v31 = [(ACUIDataclassConfigurationViewController *)v42 account];
      v30 = 1;
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
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
    v4 = [(ACUIDataclassConfigurationViewController *)v42 deviceMessage];
  }

  else
  {
    v14 = [(ACUIDataclassConfigurationViewController *)v42 titleForDeleteButton];
    v43[0] = v14;
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
    v43[1] = v12;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v7 = v35;
    v35 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v4 = [(ACUIDataclassConfigurationViewController *)v42 messageForAccountDeletionWarning];
  }

  v5 = v34;
  v34 = v4;
  MEMORY[0x277D82BD8](v5);
  v29 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __79__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountDeletion__block_invoke;
  v24 = &unk_278BFAAF8;
  v25 = MEMORY[0x277D82BE0](v42);
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
  v30 = self;
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
  v22 = [(ACUIDataclassConfigurationViewController *)v30 deviceMessage];
  v21 = dispatch_semaphore_create(0);
  v2 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __83__ACUIDataclassConfigurationViewController__promptUserToConfirmAccountSyncDeletion__block_invoke;
  v16 = &unk_278BFAAF8;
  v17 = MEMORY[0x277D82BE0](v30);
  v18 = MEMORY[0x277D82BE0](v23);
  v19 = MEMORY[0x277D82BE0](v22);
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
  objc_storeStrong(&v22, 0);
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
  v31 = self;
  v30 = a2;
  v29 = ACDAccountSyncDevices();
  location = [MEMORY[0x277CBEB58] setWithArray:v29];
  if (![location count] && !objc_msgSend(location, "count"))
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:v30 object:v31 file:@"ACUIDataclassConfigurationViewController.m" lineNumber:1181 description:{@"No devices found for Account Sync Delete UI %@.", objc_opt_class()}];
    MEMORY[0x277D82BD8](v19);
  }

  if ([location count] == 1)
  {
    v12 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v18 localizedStringForKey:@"DELETE_ACCOUNT_SYNC_WARNING_FORMAT_ONE_DEVICE" value:? table:?];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
    v14 = [location allObjects];
    v13 = [v14 firstObject];
    v32 = [v12 stringWithFormat:v17, v15, v13];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    v2 = [location allObjects];
    v3 = v29;
    v29 = v2;
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

- (BOOL)isAppleMailAccount:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [location[0] accountType];
  v17 = [v16 identifier];
  v3 = [v17 isEqualToString:*MEMORY[0x277CB8C60]];
  v23 = 0;
  v21 = 0;
  v18 = 1;
  if ((v3 & 1) == 0)
  {
    v24 = [location[0] accountType];
    v23 = 1;
    v22 = [v24 identifier];
    v21 = 1;
    v18 = [v22 isEqualToString:*MEMORY[0x277CB8C68]];
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v16);
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
      v4 = [v13 lowercaseString];
      v5 = v19;
      v19 = v4;
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
        v6 = [v10 lowercaseString];
        v7 = v19;
        v19 = v6;
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

- (void)operationsHelper:(id)a3 willRemoveAccount:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ACUIDataclassConfigurationViewController_operationsHelper_willRemoveAccount___block_invoke;
  v9[3] = &unk_278BFA730;
  v10 = MEMORY[0x277D82BE0](v13);
  dispatch_async(queue, v9);
  MEMORY[0x277D82BD8](queue);
  v8.receiver = v13;
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

- (void)operationsHelper:(id)a3 didRemoveAccount:(id)a4 withSuccess:(BOOL)a5 error:(id)a6
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a5;
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v20->_isMergingSyncData = 0;
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__ACUIDataclassConfigurationViewController_operationsHelper_didRemoveAccount_withSuccess_error___block_invoke;
  v13[3] = &unk_278BFA4A0;
  v14 = MEMORY[0x277D82BE0](v20);
  v15 = v17;
  dispatch_async(queue, v13);
  MEMORY[0x277D82BD8](queue);
  v12.receiver = v20;
  v12.super_class = ACUIDataclassConfigurationViewController;
  [(ACUIViewController *)&v12 operationsHelper:location[0] didRemoveAccount:v18 withSuccess:v17 error:v16];
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

- (BOOL)_confirmKeepLocalDataForDataclasses:(id)a3
{
  v68[2] = *MEMORY[0x277D85DE8];
  v66 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v60 = 0;
  v61 = &v60;
  v62 = 0x20000000;
  v63 = 32;
  v64 = 0;
  v35 = [location[0] lastObject];
  v59 = [ACUILocalization localizedTitleForDataclass:?];
  MEMORY[0x277D82BD8](v35);
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
      v54 = [(ACUIDataclassConfigurationViewController *)v66 account];
      v53 = 1;
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v53)
  {
    MEMORY[0x277D82BD8](v54);
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
    v26 = [(ACUIDataclassConfigurationViewController *)v66 account];
    v25 = [ACUILocalization localizedTextForDataclasses:v28 usedAtBeginningOfSentence:0 forAccount:?];
    v3 = [v30 stringWithFormat:v27, v25];
    v4 = v57;
    v57 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    v24 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v23 localizedStringForKey:@"REALLY_KEEP_EXISTING_DATA_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v22 = location[0];
    v20 = [(ACUIDataclassConfigurationViewController *)v66 account];
    v19 = [ACUILocalization localizedTextForDataclasses:v22 usedAtBeginningOfSentence:0 forAccount:?];
    v5 = [v24 stringWithFormat:v21, v19];
    v6 = v57;
    v57 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v23);
  }

  v50 = 0;
  v48 = 0;
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v17);
  v67 = v18;
  v16 = 1;
  if (v18 != 1)
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
  v43 = MEMORY[0x277D82BE0](v66);
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

- (BOOL)_confirmDeleteLocalDataForDataclasses:(id)a3
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = 0;
  v52 = &v51;
  v53 = 0x20000000;
  v54 = 32;
  v55 = 0;
  v31 = [location[0] lastObject];
  v50 = [ACUILocalization localizedTitleForDataclass:?];
  MEMORY[0x277D82BD8](v31);
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
      v45 = [(ACUIDataclassConfigurationViewController *)v57 account];
      v44 = 1;
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](v45);
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
    v22 = [(ACUIDataclassConfigurationViewController *)v57 account];
    v21 = [ACUILocalization localizedTextForDataclasses:v24 usedAtBeginningOfSentence:0 forAccount:?];
    v3 = [v26 stringWithFormat:v23, v21];
    v4 = v48;
    v48 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v25);
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v19 localizedStringForKey:@"REALLY_DELETE_EXISTING_DATA_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v18 = location[0];
    v16 = [(ACUIDataclassConfigurationViewController *)v57 account];
    v15 = [ACUILocalization localizedTextForDataclasses:v18 usedAtBeginningOfSentence:0 forAccount:?];
    v5 = [v20 stringWithFormat:v17, v15];
    v6 = v48;
    v48 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
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
  v39 = MEMORY[0x277D82BE0](v57);
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
  v27 = self;
  v26 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  v20 = MEMORY[0x277D82BE0](@"(AppleInternal) Are you sure you want to delete your Apple Mail account EVERYWHERE?");
  v19 = [(ACUIDataclassConfigurationViewController *)v27 deviceMessage];
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
  v14 = MEMORY[0x277D82BE0](v27);
  v15 = MEMORY[0x277D82BE0](v20);
  v16[0] = MEMORY[0x277D82BE0](v19);
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
  objc_storeStrong(&v19, 0);
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  v23.receiver = v27;
  v23.super_class = ACUIDataclassConfigurationViewController;
  v4 = [(ACUIDataclassConfigurationViewController *)&v23 tableView:location[0] cellForRowAtIndexPath:v25];
  v5 = v24;
  v24 = v4;
  MEMORY[0x277D82BD8](v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v24 textField];
    if (v22)
    {
      if (v27->_textFieldTextDidChangeObserver)
      {
        v13 = [MEMORY[0x277CCAB98] defaultCenter];
        [v13 removeObserver:v27->_textFieldTextDidChangeObserver name:*MEMORY[0x277D770B0] object:v22];
        MEMORY[0x277D82BD8](v13);
      }

      objc_initWeak(&from, v27);
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = *MEMORY[0x277D770B0];
      v12 = v22;
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __76__ACUIDataclassConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v19 = &unk_278BFAB98;
      objc_copyWeak(&v20, &from);
      v6 = [v10 addObserverForName:v11 object:v12 queue:0 usingBlock:&v15];
      textFieldTextDidChangeObserver = v27->_textFieldTextDidChangeObserver;
      v27->_textFieldTextDidChangeObserver = v6;
      MEMORY[0x277D82BD8](textFieldTextDidChangeObserver);
      MEMORY[0x277D82BD8](v10);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&from);
    }

    [v22 setDelegate:v27];
    objc_storeStrong(&v22, 0);
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

- (void)_textFieldValueDidChange:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  for (i = 0; ; ++i)
  {
    v11 = i;
    if (v11 >= [*(&v17->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count])
    {
      break;
    }

    v14 = [(ACUIDataclassConfigurationViewController *)v17 indexPathForIndex:i];
    v9 = [*(&v17->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v14];
    v10 = [v9 isEditing];
    MEMORY[0x277D82BD8](v9);
    if (v10)
    {
      v13 = [*(&v17->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v13 textField];
        v12 = [v8 text];
        MEMORY[0x277D82BD8](v8);
        [(ACUIDataclassConfigurationViewController *)v17 _setDescription:v12];
        objc_storeStrong(&v12, 0);
      }

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  v6 = [(ACUIDataclassConfigurationViewController *)v17 account];
  v5 = [(ACAccount *)v6 accountDescription];
  v7 = [(NSString *)v5 isEqualToString:v17->_initialAccountDescription];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v4 = [(ACUIDataclassConfigurationViewController *)v17 navigationItem];
    v3 = [v4 rightBarButtonItem];
    [v3 setHidden:1];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    [(ACUIDataclassConfigurationViewController *)v17 _updateDoneButton];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateDoneButton
{
  v3 = [(ACUIDataclassConfigurationViewController *)self navigationItem];
  v2 = [v3 rightBarButtonItem];
  [v2 setHidden:0];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] resignFirstResponder];
  v4 = v9;
  v5 = [location[0] text];
  [(ACUIDataclassConfigurationViewController *)v4 _setDescription:?];
  MEMORY[0x277D82BD8](v5);
  v7 = [(ACUIDataclassConfigurationViewController *)v9 navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setHidden:1];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
  return 1;
}

@end