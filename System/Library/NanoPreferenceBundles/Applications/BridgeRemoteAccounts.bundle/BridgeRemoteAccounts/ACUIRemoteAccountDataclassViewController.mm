@interface ACUIRemoteAccountDataclassViewController
- (ACUIRemoteAccountDataclassViewController)init;
- (BOOL)_isPresentedAsModalSheet;
- (BOOL)shouldShowSpecifierForDataclass:(id)dataclass;
- (id)_navigationTitle;
- (id)dataclassSwitchStateForSpecifier:(id)specifier;
- (id)specifierForDataclass:(id)dataclass;
- (id)specifiers;
- (id)specifiersForDataclasses:(id)dataclasses;
- (void)_dismiss;
- (void)_displayFailedToDeleteAlert;
- (void)_displayFailedToSaveAlertShouldDismiss:(BOOL)dismiss;
- (void)cancelButtonTapped:(id)tapped;
- (void)dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier;
- (void)deleteButtonTapped:(id)tapped;
- (void)doneButtonTapped:(id)tapped;
- (void)setDeleting:(BOOL)deleting;
- (void)setSaving:(BOOL)saving;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ACUIRemoteAccountDataclassViewController

- (ACUIRemoteAccountDataclassViewController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = ACUIRemoteAccountDataclassViewController;
  v6 = [(ACUIRemoteAccountDataclassViewController *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(ACUIRemoteAccountDataclassViewController *)v6 setIsFirstTimeSetup:0];
    [(ACUIRemoteAccountDataclassViewController *)v6 setShowDeleteButton:1];
    [(ACUIRemoteAccountDataclassViewController *)v6 setSaving:0];
    [(ACUIRemoteAccountDataclassViewController *)v6 setDeleting:0];
    [(ACUIRemoteAccountDataclassViewController *)v6 setDidModifyAccount:0];
    [(ACUIRemoteAccountDataclassViewController *)v6 setDidDeleteAccount:0];
  }

  v3 = v6;
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v33[1] = a2;
  specifier = [(ACUIRemoteAccountDataclassViewController *)self specifier];
  userInfo = [specifier userInfo];
  v33[0] = [userInfo objectForKeyedSubscript:ACUIAccountKey];

  if (v33[0])
  {
    location = _ACUILogSystem();
    v31 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      sub_936C(v35, "[ACUIRemoteAccountDataclassViewController viewDidLoad]", 68, v33[0]);
      _os_log_debug_impl(&dword_0, location, v31, "%s (%d) Set account: %@", v35, 0x1Cu);
    }

    objc_storeStrong(&location, 0);
    [(ACUIRemoteAccountDataclassViewController *)selfCopy setAccount:v33[0]];
  }

  specifier2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy specifier];
  userInfo2 = [specifier2 userInfo];
  v30 = [userInfo2 objectForKeyedSubscript:ACUIRemoteSyncControllerKey];

  if (v30)
  {
    [(ACUIRemoteAccountDataclassViewController *)selfCopy setSyncController:v30];
  }

  specifier3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy specifier];
  userInfo3 = [specifier3 userInfo];
  v23 = [userInfo3 objectForKeyedSubscript:ACUIShowDeleteButtonKey];

  if (v23)
  {
    specifier4 = [(ACUIRemoteAccountDataclassViewController *)selfCopy specifier];
    userInfo4 = [specifier4 userInfo];
    v18 = [userInfo4 objectForKeyedSubscript:ACUIShowDeleteButtonKey];
    bOOLValue = [v18 BOOLValue];
    [(ACUIRemoteAccountDataclassViewController *)selfCopy setShowDeleteButton:bOOLValue];
  }

  else
  {
    [(ACUIRemoteAccountDataclassViewController *)selfCopy setShowDeleteButton:0];
  }

  v11 = [UIBarButtonItem alloc];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [NSBundle localizedStringForKey:v13 value:"localizedStringForKey:value:table:" table:@"CANCEL"];
  v3 = [v11 initWithTitle:? style:? target:? action:?];
  cancelButton = selfCopy->_cancelButton;
  selfCopy->_cancelButton = v3;

  v14 = [UIBarButtonItem alloc];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [(NSBundle *)v16 localizedStringForKey:@"DONE" value:&stru_1C810 table:@"Localizable"];
  v5 = [v14 initWithTitle:? style:? target:? action:?];
  doneButton = selfCopy->_doneButton;
  selfCopy->_doneButton = v5;

  navigationItem = [(ACUIRemoteAccountDataclassViewController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:selfCopy->_cancelButton];
  [navigationItem setRightBarButtonItem:selfCopy->_doneButton];
  _navigationTitle = [(ACUIRemoteAccountDataclassViewController *)selfCopy _navigationTitle];
  [navigationItem setTitle:?];

  if ([(ACUIRemoteAccountDataclassViewController *)selfCopy isFirstTimeSetup])
  {
    [navigationItem setHidesBackButton:1];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [(NSBundle *)v10 localizedStringForKey:@"SAVE" value:&stru_1C810 table:@"Localizable"];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setTitle:v9];
  }

  else
  {
    if (![(ACUIRemoteAccountDataclassViewController *)selfCopy _isPresentedAsModalSheet])
    {
      [navigationItem setRightBarButtonItem:0];
    }

    [navigationItem setLeftBarButtonItem:?];
    [(ACUIRemoteAccountDataclassViewController *)selfCopy setCancelButton:0];
    [navigationItem setHidesBackButton:0];
  }

  table = [(ACUIRemoteAccountDataclassViewController *)selfCopy table];
  [table setAccessibilityIdentifier:@"DATACLASS_CONFIGURATION_TABLE"];

  v28.receiver = selfCopy;
  v28.super_class = ACUIRemoteAccountDataclassViewController;
  [(ACUIRemoteAccountDataclassViewController *)&v28 viewDidLoad];
  objc_storeStrong(&navigationItem, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v33, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = ACUIRemoteAccountDataclassViewController;
  [(ACUIRemoteAccountDataclassViewController *)&v6 viewWillAppear:appear];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    identifier = [(ACAccount *)account identifier];
    sub_1C78(v10, "[ACUIRemoteAccountDataclassViewController viewWillAppear:]", 120, identifier);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) Presenting dataclass view for %{public}@", v10, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v10 = a2;
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = ACUIRemoteAccountDataclassViewController;
  [(ACUIRemoteAccountDataclassViewController *)&v8 viewWillDisappear:disappear];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    identifier = [(ACAccount *)account identifier];
    sub_1C78(v12, "[ACUIRemoteAccountDataclassViewController viewWillDisappear:]", 125, identifier);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) Dismissing dataclass view for %{public}@", v12, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if ([(ACUIRemoteAccountDataclassViewController *)selfCopy didModifyAccount]&& ![(ACUIRemoteAccountDataclassViewController *)selfCopy isFirstTimeSetup]&& ![(ACUIRemoteAccountDataclassViewController *)selfCopy didDeleteAccount])
  {
    account = selfCopy->_account;
    topLevelAccounts = [(ACUIRemoteAccountSyncController *)selfCopy->_syncController topLevelAccounts];
    +[ACUIRemoteAccountsAnalytics reportAccountActionForAccount:action:numberOfAccounts:](ACUIRemoteAccountsAnalytics, "reportAccountActionForAccount:action:numberOfAccounts:", account, 3, [topLevelAccounts count]);
  }
}

- (id)_navigationTitle
{
  if ([(ACUIRemoteAccountDataclassViewController *)self isFirstTimeSetup])
  {
    account = [(ACUIRemoteAccountDataclassViewController *)self account];
    accountType = [(ACAccount *)account accountType];
    accountTypeDescription = [(ACAccountType *)accountType accountTypeDescription];
  }

  else
  {
    account2 = [(ACUIRemoteAccountDataclassViewController *)self account];
    accountTypeDescription = [(ACAccount *)account2 accountDescription];
  }

  return accountTypeDescription;
}

- (BOOL)_isPresentedAsModalSheet
{
  navigationController = [(ACUIRemoteAccountDataclassViewController *)self navigationController];
  v4 = navigationController == 0;

  return v4;
}

- (id)specifiers
{
  v40 = "[ACUIRemoteAccountDataclassViewController specifiers]";
  selfCopy = self;
  v51[1] = a2;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v51[0] = objc_opt_new();
    if (!selfCopy->_isFirstTimeSetup)
    {
      v38 = &v50;
      v50 = [PSSpecifier groupSpecifierWithID:@"ACUIRemoteAcountDetailAccountNameGroupID"];
      [v51[0] addObject:v50];
      v33 = ACUIAccountSummaryCell;
      account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
      account2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
      displayUsername = [account2 displayUsername];
      v39 = 0;
      v37 = &v49;
      v49 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:valueText:detailControllerClass:presentationStyle:" account:1 valueText:account detailControllerClass:? presentationStyle:?];

      [v51[0] addObject:v49];
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v50, 0);
    }

    v30 = selfCopy;
    account3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    provisionedDataclasses = [account3 provisionedDataclasses];
    v48 = [(ACUIRemoteAccountDataclassViewController *)v30 specifiersForDataclasses:?];

    [v51[0] addObjectsFromArray:v48];
    location = _ACUILogSystem();
    v46 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      *type = v46;
      account4 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
      provisionedDataclasses2 = [account4 provisionedDataclasses];
      buf = v54;
      sub_A7C8(v54, v40, 167, [provisionedDataclasses2 count]);
      _os_log_debug_impl(&dword_0, location, v46, "%s (%d) Number of provisioned data classes: %ld", v54, 0x1Cu);
    }

    objc_storeStrong(&location, 0);
    v45 = _ACUILogSystem();
    v44 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v22 = v45;
      *v23 = v44;
      v24 = v53;
      sub_A7C8(v53, v40, 168, [v48 count]);
      _os_log_debug_impl(&dword_0, v45, v44, "%s (%d) Presenting data classes for configuration: %ld", v53, 0x1Cu);
    }

    objc_storeStrong(&v45, 0);
    if ([(ACUIRemoteAccountDataclassViewController *)selfCopy showDeleteButton]&& ![(ACUIRemoteAccountDataclassViewController *)selfCopy isFirstTimeSetup])
    {
      v43 = [PSSpecifier groupSpecifierWithID:@"ACUIRemoteAcountDetailDeleteGroupID"];
      [v51[0] addObject:v43];
      if ([(ACUIRemoteAccountDataclassViewController *)selfCopy isDeleting])
      {
        v17 = PSSpecifier;
        v16 = NSBundle;
        v19 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v19 localizedStringForKey:@"DELETING_ACCOUNT" value:&stru_1C810 table:@"Localizable"];
        obj = 0;
        v2 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];
        v20 = &v42;
        v42 = v2;

        [v51[0] addObject:v42];
        objc_storeStrong(v20, obj);
      }

      else
      {
        v12 = PSSpecifier;
        v11 = NSBundle;
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v13 = [v14 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_1C810 table:@"Localizable"];
        v15 = &v41;
        v41 = [PSSpecifier deleteButtonSpecifierWithName:"deleteButtonSpecifierWithName:target:action:" target:? action:?];

        [v51[0] addObject:v41];
        objc_storeStrong(&v41, 0);
      }

      objc_storeStrong(&v43, 0);
    }

    v9 = v51;
    v3 = [v51[0] copy];
    v4 = &selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v5 = *v4;
    *v4 = v3;

    v10 = 0;
    objc_storeStrong(&v48, 0);
    objc_storeStrong(v9, v10);
  }

  v8 = *&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = v8;

  return v6;
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

- (id)specifiersForDataclasses:(id)dataclasses
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclasses);
  v22 = +[NSMutableArray array];
  v21 = ACUIOrderedDataClassList();
  v20 = [PSSpecifier groupSpecifierWithID:@"ACUIRemoteAcountDetailDataClassGroupID"];
  [v22 addObject:v20];
  memset(__b, 0, sizeof(__b));
  obj = v21;
  v12 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v9);
      v3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy shouldShowSpecifierForDataclass:v19];
      v16 = 0;
      v14 = 0;
      v6 = 0;
      if (v3)
      {
        account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
        v16 = 1;
        provisionedDataclasses = [account provisionedDataclasses];
        v14 = 1;
        v6 = [provisionedDataclasses containsObject:v19];
      }

      if (v14)
      {
      }

      if (v16)
      {
      }

      if (v6)
      {
        v13 = [(ACUIRemoteAccountDataclassViewController *)selfCopy specifierForDataclass:v19];
        if (v13)
        {
          [v22 addObject:v13];
        }

        objc_storeStrong(&v13, 0);
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  v5 = v22;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)specifierForDataclass:(id)dataclass
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  if ([location[0] isEqualToString:kAccountDataclassContactsSearch])
  {
    v21 = 0;
    v18 = 1;
  }

  else
  {
    v5 = location[0];
    account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    v17 = [PSSpecifier acui_specifierForDataclass:"acui_specifierForDataclass:account:target:set:get:" account:v5 target:? set:? get:?];

    v22 = @"ACUIRemoteAcountDetailDataclassKey";
    v23 = location[0];
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v17 setUserInfo:?];

    account2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    v16 = [(ACAccount *)account2 accountPropertyForKey:ACAccountPropertyGrantedDataclasses];

    v14 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    if ([(ACUIRemoteAccountDataclassViewController *)selfCopy isFirstTimeSetup])
    {
      account3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
      v14 = 1;
      accountType = [(ACAccount *)account3 accountType];
      v12 = 1;
      identifier = [(ACAccountType *)accountType identifier];
      v10 = 1;
      v9 = 0;
      if ([(NSString *)identifier isEqualToString:ACAccountTypeIdentifierGmail])
      {
        v9 = v16 != 0;
      }
    }

    if (v10)
    {
    }

    if (v12)
    {
    }

    if (v14)
    {
    }

    if (v9 && ([v16 containsObject:location[0]] & 1) == 0)
    {
      [v17 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    v21 = v17;
    v18 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v21;

  return v3;
}

- (id)dataclassSwitchStateForSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  acui_dataclass = [location[0] acui_dataclass];
  account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
  v6 = [(ACAccount *)account isEnabledForDataclass:acui_dataclass];

  v8 = v6;
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_B1B8(v12, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateForSpecifier:]", 247, acui_dataclass, v8 & 1);
    _os_log_debug_impl(&dword_0, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) %{public}@: %d", v12, 0x22u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [NSNumber numberWithBool:v8 & 1];
  objc_storeStrong(&acui_dataclass, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v63 = 0;
  objc_storeStrong(&v63, specifier);
  acui_dataclass = [v63 acui_dataclass];
  v61 = _ACUILogSystem();
  v60 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    sub_B1B8(v67, "-[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]", 253, acui_dataclass, [location[0] BOOLValue]);
    _os_log_impl(&dword_0, v61, v60, "%s (%d) Recieved data class state change for class %{public}@, value %d", v67, 0x22u);
  }

  objc_storeStrong(&v61, 0);
  account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
  v59 = [(ACAccount *)account accountPropertyForKey:ACAccountPropertyGrantedDataclasses];

  v56 = 0;
  v54 = 0;
  v52 = 0;
  bOOLValue = 0;
  if (![(ACUIRemoteAccountDataclassViewController *)selfCopy isFirstTimeSetup])
  {
    account2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    v56 = 1;
    accountType = [(ACAccount *)account2 accountType];
    v54 = 1;
    identifier = [(ACAccountType *)accountType identifier];
    v52 = 1;
    bOOLValue = 0;
    if ([(NSString *)identifier isEqualToString:ACAccountTypeIdentifierGmail])
    {
      bOOLValue = 0;
      if (v59)
      {
        bOOLValue = [location[0] BOOLValue];
      }
    }
  }

  if (v52)
  {
  }

  if (v54)
  {
  }

  if (v56)
  {
  }

  v58 = bOOLValue & 1;
  if (bOOLValue & 1) == 0 || ([v59 containsObject:acui_dataclass])
  {
    if ([(ACUIRemoteAccountDataclassViewController *)selfCopy isFirstTimeSetup])
    {
      account3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
      bOOLValue2 = [location[0] BOOLValue];
      [(ACAccount *)account3 setEnabled:bOOLValue2 forDataclass:acui_dataclass];
    }

    else
    {
      account4 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
      v40 = [(ACAccount *)account4 copy];

      bOOLValue3 = [location[0] BOOLValue];
      [v40 setEnabled:bOOLValue3 forDataclass:acui_dataclass];
      object = [v63 _switchSpinnerTimer];
      dispatch_resume(object);
      oslog = _ACUILogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        account5 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
        identifier2 = [(ACAccount *)account5 identifier];
        sub_1C78(v66, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]", 279, identifier2);
        _os_log_impl(&dword_0, oslog, v37, "%s (%d) Beginning update on remote device for account: %{public}@", v66, 0x1Cu);
      }

      objc_storeStrong(&oslog, 0);
      objc_initWeak(&v36, selfCopy);
      syncController = [(ACUIRemoteAccountDataclassViewController *)selfCopy syncController];
      v5 = v40;
      v26 = _NSConcreteStackBlock;
      v27 = -1073741824;
      v28 = 0;
      v29 = sub_C0D4;
      v30 = &unk_1C530;
      objc_copyWeak(&v35, &v36);
      v31 = selfCopy;
      v32 = location[0];
      v33 = acui_dataclass;
      v34 = object;
      [(ACUIRemoteAccountSyncController *)syncController updateRemoteAccount:v5 completion:&v26];

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v31, 0);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v36);
      objc_storeStrong(&object, 0);
      objc_storeStrong(&v40, 0);
    }
  }

  else
  {
    v22 = acui_dataclass;
    account6 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    v51 = [ACUILocalization localizedStringForDataclass:v22 withSuffix:@"LABEL" forAccount:?];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [(NSBundle *)v20 localizedStringForKey:@"GOOGLE_BRIDGE_UNGRANTED_SCOPE_ALERT_TITLE" value:&stru_1C810 table:@"Localizable"];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [(NSBundle *)v18 localizedStringForKey:@"GOOGLE_BRIDGE_UNGRANTED_SCOPE_ALERT_MESSAGE" value:&stru_1C810 table:@"Localizable"];
    v16 = [NSString localizedStringWithFormat:v51, v51];
    v50 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v19 preferredStyle:?];

    objc_initWeak(&from, selfCopy);
    v15 = v50;
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [(NSBundle *)v14 localizedStringForKey:@"OK" value:&stru_1C810 table:@"Localizable"];
    v42 = _NSConcreteStackBlock;
    v43 = -1073741824;
    v44 = 0;
    v45 = sub_C044;
    v46 = &unk_1C508;
    objc_copyWeak(&v48, &from);
    v47 = v63;
    v12 = [UIAlertAction actionWithTitle:v13 style:1 handler:&v42];
    [v15 addAction:?];
    v41 = 0;

    [(ACUIRemoteAccountDataclassViewController *)selfCopy presentViewController:v50 animated:1 completion:0];
    objc_storeStrong(&v47, 0);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&from);
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(&acui_dataclass, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:@"REMOTE_DELETE_CONFIRMATION_MESSAGE"];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [(NSBundle *)v9 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_1C810 table:@"Localizable"];
  v20 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:? preferredStyle:?];

  objc_initWeak(&v19, selfCopy);
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_C9D4;
  v16 = &unk_1C580;
  objc_copyWeak(&v17, &v19);
  v18 = objc_retainBlock(&v12);
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v6 localizedStringForKey:@"DELETE" value:&stru_1C810 table:@"Localizable"];
  v11 = [UIAlertAction actionWithTitle:"actionWithTitle:style:handler:" style:? handler:?];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v4 localizedStringForKey:@"CANCEL" value:&stru_1C810 table:@"Localizable"];
  v10 = [UIAlertAction actionWithTitle:"actionWithTitle:style:handler:" style:? handler:?];

  [v20 addAction:v11];
  [v20 addAction:v10];
  [(ACUIRemoteAccountDataclassViewController *)selfCopy presentViewController:v20 animated:1 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v18, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)setDeleting:(BOOL)deleting
{
  selfCopy = self;
  v14 = a2;
  deletingCopy = deleting;
  if (self->_deleting != deleting)
  {
    selfCopy->_deleting = deletingCopy;
    cancelButton = [(ACUIRemoteAccountDataclassViewController *)selfCopy cancelButton];
    [(UIBarButtonItem *)cancelButton setEnabled:!selfCopy->_deleting];

    doneButton = [(ACUIRemoteAccountDataclassViewController *)selfCopy doneButton];
    [(UIBarButtonItem *)doneButton setEnabled:!selfCopy->_deleting];

    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_D378;
    v11 = &unk_1C410;
    v12 = selfCopy;
    dispatch_async(queue, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (void)setSaving:(BOOL)saving
{
  selfCopy = self;
  v12 = a2;
  savingCopy = saving;
  if (self->_saving != saving)
  {
    selfCopy->_saving = savingCopy;
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_D4D8;
    v9 = &unk_1C410;
    v10 = selfCopy;
    dispatch_async(queue, &v5);

    objc_storeStrong(&v10, 0);
  }
}

- (void)cancelButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  [(ACUIRemoteAccountDataclassViewController *)selfCopy _dismiss];
  objc_storeStrong(location, 0);
}

- (void)doneButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  objc_initWeak(&from, selfCopy);
  [(ACUIRemoteAccountDataclassViewController *)selfCopy setSaving:1];
  v18 = _ACUILogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    identifier = [(ACAccount *)account identifier];
    sub_1C78(v22, "[ACUIRemoteAccountDataclassViewController doneButtonTapped:]", 379, identifier);
    _os_log_impl(&dword_0, v18, v17, "%s (%d) Beginning saving to remote device for account: %{public}@", v22, 0x1Cu);
  }

  objc_storeStrong(&v18, 0);
  account2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
  supportsPush = [(ACAccount *)account2 supportsPush];

  if ((supportsPush & 1) == 0)
  {
    settingsController = [(ACUIRemoteAccountDataclassViewController *)selfCopy settingsController];
    [(ACUIRemoteDeviceSettingsController *)settingsController setDefaultPollIntervalIfNeeded];
  }

  syncController = [(ACUIRemoteAccountDataclassViewController *)selfCopy syncController];
  account3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_DB10;
  v14 = &unk_1C5F8;
  objc_copyWeak(&v16, &from);
  v15 = selfCopy;
  [(ACUIRemoteAccountSyncController *)syncController saveRemoteAccount:account3 completion:&v10];

  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)_dismiss
{
  selfCopy = self;
  v21 = a2;
  presentingViewController = [(ACUIRemoteAccountDataclassViewController *)self presentingViewController];

  if (presentingViewController)
  {
    navigationController = [(ACUIRemoteAccountDataclassViewController *)selfCopy navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    navigationController2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy navigationController];
    obj = [navigationController2 viewControllers];

    v15 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
    if (v15)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v15;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(__b[1] + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
          if (!v12)
          {
            goto LABEL_11;
          }
        }
      }

      navigationController3 = [(ACUIRemoteAccountDataclassViewController *)selfCopy navigationController];
      v2 = [navigationController3 popToViewController:v20 animated:1];

      v18 = 1;
    }

    else
    {
LABEL_11:
      v18 = 0;
    }

    if (!v18)
    {
      traitCollection = [(ACUIRemoteAccountDataclassViewController *)selfCopy traitCollection];
      v7 = [ACUIStatefulNavigation acui_statefulNavigation:?];

      if (v7)
      {
        traitCollection2 = [(ACUIRemoteAccountDataclassViewController *)selfCopy traitCollection];
        [ACUIStatefulNavigation acui_popLastItemFromStack:?];
      }

      else
      {
        navigationController4 = [(ACUIRemoteAccountDataclassViewController *)selfCopy navigationController];
        v3 = [navigationController4 popViewControllerAnimated:1];
      }
    }
  }
}

- (void)_displayFailedToSaveAlertShouldDismiss:(BOOL)dismiss
{
  selfCopy = self;
  v26 = a2;
  dismissCopy = dismiss;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [(NSBundle *)v12 localizedStringForKey:@"FAILED_TO_SAVE" value:&stru_1C810 table:@"Localizable"];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [(NSBundle *)v10 localizedStringForKey:@"PLEASE_TRY_AGAIN" value:&stru_1C810 table:@"Localizable"];
  v24 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v11 preferredStyle:?];

  objc_initWeak(&location, selfCopy);
  v8 = v24;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(NSBundle *)v7 localizedStringForKey:@"OK" value:&stru_1C810 table:@"Localizable"];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_F0E0;
  v19 = &unk_1C648;
  v20 = v24;
  objc_copyWeak(&v21, &location);
  v22 = dismissCopy;
  v5 = [UIAlertAction actionWithTitle:v6 style:0 handler:&v15];
  [v8 addAction:?];
  v14 = 0;

  v13 = _ACUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    identifier = [(ACAccount *)account identifier];
    sub_1C78(v28, "[ACUIRemoteAccountDataclassViewController _displayFailedToSaveAlertShouldDismiss:]", 454, identifier);
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s (%d) Displaying failed to save alert for account: %{public}@", v28, 0x1Cu);
  }

  objc_storeStrong(&v13, 0);
  [(ACUIRemoteAccountDataclassViewController *)selfCopy presentViewController:v24 animated:1 completion:0];
  objc_destroyWeak(&v21);
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(&v24, 0);
}

- (void)_displayFailedToDeleteAlert
{
  selfCopy = self;
  v12[1] = a2;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:@"FAILED_TO_DELETE"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v5 localizedStringForKey:@"PLEASE_TRY_AGAIN" value:&stru_1C810 table:@"Localizable"];
  v12[0] = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v6 preferredStyle:?];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [(NSBundle *)v10 localizedStringForKey:@"OK" value:&stru_1C810 table:@"Localizable"];
  v8 = [UIAlertAction actionWithTitle:"actionWithTitle:style:handler:" style:? handler:?];
  [v12[0] addAction:?];

  location = _ACUILogSystem();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    account = [(ACUIRemoteAccountDataclassViewController *)selfCopy account];
    identifier = [(ACAccount *)account identifier];
    sub_1C78(v14, "[ACUIRemoteAccountDataclassViewController _displayFailedToDeleteAlert]", 463, identifier);
    _os_log_impl(&dword_0, location, OS_LOG_TYPE_DEFAULT, "%s (%d) Displaying failed to delete alert for account: %{public}@", v14, 0x1Cu);
  }

  objc_storeStrong(&location, 0);
  [(ACUIRemoteAccountDataclassViewController *)selfCopy presentViewController:v12[0] animated:1 completion:0];
  objc_storeStrong(v12, 0);
}

@end