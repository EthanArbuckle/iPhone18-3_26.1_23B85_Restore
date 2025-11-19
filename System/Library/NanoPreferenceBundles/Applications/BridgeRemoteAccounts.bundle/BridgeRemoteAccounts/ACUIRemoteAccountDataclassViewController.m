@interface ACUIRemoteAccountDataclassViewController
- (ACUIRemoteAccountDataclassViewController)init;
- (BOOL)_isPresentedAsModalSheet;
- (BOOL)shouldShowSpecifierForDataclass:(id)a3;
- (id)_navigationTitle;
- (id)dataclassSwitchStateForSpecifier:(id)a3;
- (id)specifierForDataclass:(id)a3;
- (id)specifiers;
- (id)specifiersForDataclasses:(id)a3;
- (void)_dismiss;
- (void)_displayFailedToDeleteAlert;
- (void)_displayFailedToSaveAlertShouldDismiss:(BOOL)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)dataclassSwitchStateDidChange:(id)a3 withSpecifier:(id)a4;
- (void)deleteButtonTapped:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)setDeleting:(BOOL)a3;
- (void)setSaving:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v34 = self;
  v33[1] = a2;
  v27 = [(ACUIRemoteAccountDataclassViewController *)self specifier];
  v26 = [v27 userInfo];
  v33[0] = [v26 objectForKeyedSubscript:ACUIAccountKey];

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
    [(ACUIRemoteAccountDataclassViewController *)v34 setAccount:v33[0]];
  }

  v25 = [(ACUIRemoteAccountDataclassViewController *)v34 specifier];
  v24 = [v25 userInfo];
  v30 = [v24 objectForKeyedSubscript:ACUIRemoteSyncControllerKey];

  if (v30)
  {
    [(ACUIRemoteAccountDataclassViewController *)v34 setSyncController:v30];
  }

  v22 = [(ACUIRemoteAccountDataclassViewController *)v34 specifier];
  v21 = [v22 userInfo];
  v23 = [v21 objectForKeyedSubscript:ACUIShowDeleteButtonKey];

  if (v23)
  {
    v20 = [(ACUIRemoteAccountDataclassViewController *)v34 specifier];
    v19 = [v20 userInfo];
    v18 = [v19 objectForKeyedSubscript:ACUIShowDeleteButtonKey];
    v2 = [v18 BOOLValue];
    [(ACUIRemoteAccountDataclassViewController *)v34 setShowDeleteButton:v2];
  }

  else
  {
    [(ACUIRemoteAccountDataclassViewController *)v34 setShowDeleteButton:0];
  }

  v11 = [UIBarButtonItem alloc];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [NSBundle localizedStringForKey:v13 value:"localizedStringForKey:value:table:" table:@"CANCEL"];
  v3 = [v11 initWithTitle:? style:? target:? action:?];
  cancelButton = v34->_cancelButton;
  v34->_cancelButton = v3;

  v14 = [UIBarButtonItem alloc];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [(NSBundle *)v16 localizedStringForKey:@"DONE" value:&stru_1C810 table:@"Localizable"];
  v5 = [v14 initWithTitle:? style:? target:? action:?];
  doneButton = v34->_doneButton;
  v34->_doneButton = v5;

  v29 = [(ACUIRemoteAccountDataclassViewController *)v34 navigationItem];
  [v29 setLeftBarButtonItem:v34->_cancelButton];
  [v29 setRightBarButtonItem:v34->_doneButton];
  v17 = [(ACUIRemoteAccountDataclassViewController *)v34 _navigationTitle];
  [v29 setTitle:?];

  if ([(ACUIRemoteAccountDataclassViewController *)v34 isFirstTimeSetup])
  {
    [v29 setHidesBackButton:1];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [(NSBundle *)v10 localizedStringForKey:@"SAVE" value:&stru_1C810 table:@"Localizable"];
    v8 = [v29 rightBarButtonItem];
    [v8 setTitle:v9];
  }

  else
  {
    if (![(ACUIRemoteAccountDataclassViewController *)v34 _isPresentedAsModalSheet])
    {
      [v29 setRightBarButtonItem:0];
    }

    [v29 setLeftBarButtonItem:?];
    [(ACUIRemoteAccountDataclassViewController *)v34 setCancelButton:0];
    [v29 setHidesBackButton:0];
  }

  v7 = [(ACUIRemoteAccountDataclassViewController *)v34 table];
  [v7 setAccessibilityIdentifier:@"DATACLASS_CONFIGURATION_TABLE"];

  v28.receiver = v34;
  v28.super_class = ACUIRemoteAccountDataclassViewController;
  [(ACUIRemoteAccountDataclassViewController *)&v28 viewDidLoad];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v33, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = ACUIRemoteAccountDataclassViewController;
  [(ACUIRemoteAccountDataclassViewController *)&v6 viewWillAppear:a3];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ACUIRemoteAccountDataclassViewController *)v9 account];
    v3 = [(ACAccount *)v4 identifier];
    sub_1C78(v10, "[ACUIRemoteAccountDataclassViewController viewWillAppear:]", 120, v3);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) Presenting dataclass view for %{public}@", v10, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = ACUIRemoteAccountDataclassViewController;
  [(ACUIRemoteAccountDataclassViewController *)&v8 viewWillDisappear:a3];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ACUIRemoteAccountDataclassViewController *)v11 account];
    v5 = [(ACAccount *)v6 identifier];
    sub_1C78(v12, "[ACUIRemoteAccountDataclassViewController viewWillDisappear:]", 125, v5);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) Dismissing dataclass view for %{public}@", v12, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if ([(ACUIRemoteAccountDataclassViewController *)v11 didModifyAccount]&& ![(ACUIRemoteAccountDataclassViewController *)v11 isFirstTimeSetup]&& ![(ACUIRemoteAccountDataclassViewController *)v11 didDeleteAccount])
  {
    account = v11->_account;
    v4 = [(ACUIRemoteAccountSyncController *)v11->_syncController topLevelAccounts];
    +[ACUIRemoteAccountsAnalytics reportAccountActionForAccount:action:numberOfAccounts:](ACUIRemoteAccountsAnalytics, "reportAccountActionForAccount:action:numberOfAccounts:", account, 3, [v4 count]);
  }
}

- (id)_navigationTitle
{
  if ([(ACUIRemoteAccountDataclassViewController *)self isFirstTimeSetup])
  {
    v5 = [(ACUIRemoteAccountDataclassViewController *)self account];
    v4 = [(ACAccount *)v5 accountType];
    v7 = [(ACAccountType *)v4 accountTypeDescription];
  }

  else
  {
    v3 = [(ACUIRemoteAccountDataclassViewController *)self account];
    v7 = [(ACAccount *)v3 accountDescription];
  }

  return v7;
}

- (BOOL)_isPresentedAsModalSheet
{
  v2 = [(ACUIRemoteAccountDataclassViewController *)self navigationController];
  v4 = v2 == 0;

  return v4;
}

- (id)specifiers
{
  v40 = "[ACUIRemoteAccountDataclassViewController specifiers]";
  v52 = self;
  v51[1] = a2;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v51[0] = objc_opt_new();
    if (!v52->_isFirstTimeSetup)
    {
      v38 = &v50;
      v50 = [PSSpecifier groupSpecifierWithID:@"ACUIRemoteAcountDetailAccountNameGroupID"];
      [v51[0] addObject:v50];
      v33 = ACUIAccountSummaryCell;
      v36 = [(ACUIRemoteAccountDataclassViewController *)v52 account];
      v35 = [(ACUIRemoteAccountDataclassViewController *)v52 account];
      v34 = [v35 displayUsername];
      v39 = 0;
      v37 = &v49;
      v49 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:valueText:detailControllerClass:presentationStyle:" account:1 valueText:v36 detailControllerClass:? presentationStyle:?];

      [v51[0] addObject:v49];
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v50, 0);
    }

    v30 = v52;
    v32 = [(ACUIRemoteAccountDataclassViewController *)v52 account];
    v31 = [v32 provisionedDataclasses];
    v48 = [(ACUIRemoteAccountDataclassViewController *)v30 specifiersForDataclasses:?];

    [v51[0] addObjectsFromArray:v48];
    location = _ACUILogSystem();
    v46 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      *type = v46;
      v29 = [(ACUIRemoteAccountDataclassViewController *)v52 account];
      v28 = [v29 provisionedDataclasses];
      buf = v54;
      sub_A7C8(v54, v40, 167, [v28 count]);
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
    if ([(ACUIRemoteAccountDataclassViewController *)v52 showDeleteButton]&& ![(ACUIRemoteAccountDataclassViewController *)v52 isFirstTimeSetup])
    {
      v43 = [PSSpecifier groupSpecifierWithID:@"ACUIRemoteAcountDetailDeleteGroupID"];
      [v51[0] addObject:v43];
      if ([(ACUIRemoteAccountDataclassViewController *)v52 isDeleting])
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
    v4 = &v52->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v5 = *v4;
    *v4 = v3;

    v10 = 0;
    objc_storeStrong(&v48, 0);
    objc_storeStrong(v9, v10);
  }

  v8 = *&v52->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = v8;

  return v6;
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

- (id)specifiersForDataclasses:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
      v3 = [(ACUIRemoteAccountDataclassViewController *)v24 shouldShowSpecifierForDataclass:v19];
      v16 = 0;
      v14 = 0;
      v6 = 0;
      if (v3)
      {
        v17 = [(ACUIRemoteAccountDataclassViewController *)v24 account];
        v16 = 1;
        v15 = [v17 provisionedDataclasses];
        v14 = 1;
        v6 = [v15 containsObject:v19];
      }

      if (v14)
      {
      }

      if (v16)
      {
      }

      if (v6)
      {
        v13 = [(ACUIRemoteAccountDataclassViewController *)v24 specifierForDataclass:v19];
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

- (id)specifierForDataclass:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:kAccountDataclassContactsSearch])
  {
    v21 = 0;
    v18 = 1;
  }

  else
  {
    v5 = location[0];
    v6 = [(ACUIRemoteAccountDataclassViewController *)v20 account];
    v17 = [PSSpecifier acui_specifierForDataclass:"acui_specifierForDataclass:account:target:set:get:" account:v5 target:? set:? get:?];

    v22 = @"ACUIRemoteAcountDetailDataclassKey";
    v23 = location[0];
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v17 setUserInfo:?];

    v8 = [(ACUIRemoteAccountDataclassViewController *)v20 account];
    v16 = [(ACAccount *)v8 accountPropertyForKey:ACAccountPropertyGrantedDataclasses];

    v14 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    if ([(ACUIRemoteAccountDataclassViewController *)v20 isFirstTimeSetup])
    {
      v15 = [(ACUIRemoteAccountDataclassViewController *)v20 account];
      v14 = 1;
      v13 = [(ACAccount *)v15 accountType];
      v12 = 1;
      v11 = [(ACAccountType *)v13 identifier];
      v10 = 1;
      v9 = 0;
      if ([(NSString *)v11 isEqualToString:ACAccountTypeIdentifierGmail])
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

- (id)dataclassSwitchStateForSpecifier:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] acui_dataclass];
  v5 = [(ACUIRemoteAccountDataclassViewController *)v11 account];
  v6 = [(ACAccount *)v5 isEnabledForDataclass:v9];

  v8 = v6;
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_B1B8(v12, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateForSpecifier:]", 247, v9, v8 & 1);
    _os_log_debug_impl(&dword_0, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) %{public}@: %d", v12, 0x22u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [NSNumber numberWithBool:v8 & 1];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)dataclassSwitchStateDidChange:(id)a3 withSpecifier:(id)a4
{
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, a4);
  v62 = [v63 acui_dataclass];
  v61 = _ACUILogSystem();
  v60 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    sub_B1B8(v67, "-[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]", 253, v62, [location[0] BOOLValue]);
    _os_log_impl(&dword_0, v61, v60, "%s (%d) Recieved data class state change for class %{public}@, value %d", v67, 0x22u);
  }

  objc_storeStrong(&v61, 0);
  v24 = [(ACUIRemoteAccountDataclassViewController *)v65 account];
  v59 = [(ACAccount *)v24 accountPropertyForKey:ACAccountPropertyGrantedDataclasses];

  v56 = 0;
  v54 = 0;
  v52 = 0;
  v23 = 0;
  if (![(ACUIRemoteAccountDataclassViewController *)v65 isFirstTimeSetup])
  {
    v57 = [(ACUIRemoteAccountDataclassViewController *)v65 account];
    v56 = 1;
    v55 = [(ACAccount *)v57 accountType];
    v54 = 1;
    v53 = [(ACAccountType *)v55 identifier];
    v52 = 1;
    v23 = 0;
    if ([(NSString *)v53 isEqualToString:ACAccountTypeIdentifierGmail])
    {
      v23 = 0;
      if (v59)
      {
        v23 = [location[0] BOOLValue];
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

  v58 = v23 & 1;
  if (v23 & 1) == 0 || ([v59 containsObject:v62])
  {
    if ([(ACUIRemoteAccountDataclassViewController *)v65 isFirstTimeSetup])
    {
      v10 = [(ACUIRemoteAccountDataclassViewController *)v65 account];
      v11 = [location[0] BOOLValue];
      [(ACAccount *)v10 setEnabled:v11 forDataclass:v62];
    }

    else
    {
      v9 = [(ACUIRemoteAccountDataclassViewController *)v65 account];
      v40 = [(ACAccount *)v9 copy];

      v8 = [location[0] BOOLValue];
      [v40 setEnabled:v8 forDataclass:v62];
      object = [v63 _switchSpinnerTimer];
      dispatch_resume(object);
      oslog = _ACUILogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(ACUIRemoteAccountDataclassViewController *)v65 account];
        v6 = [(ACAccount *)v7 identifier];
        sub_1C78(v66, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]", 279, v6);
        _os_log_impl(&dword_0, oslog, v37, "%s (%d) Beginning update on remote device for account: %{public}@", v66, 0x1Cu);
      }

      objc_storeStrong(&oslog, 0);
      objc_initWeak(&v36, v65);
      v4 = [(ACUIRemoteAccountDataclassViewController *)v65 syncController];
      v5 = v40;
      v26 = _NSConcreteStackBlock;
      v27 = -1073741824;
      v28 = 0;
      v29 = sub_C0D4;
      v30 = &unk_1C530;
      objc_copyWeak(&v35, &v36);
      v31 = v65;
      v32 = location[0];
      v33 = v62;
      v34 = object;
      [(ACUIRemoteAccountSyncController *)v4 updateRemoteAccount:v5 completion:&v26];

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
    v22 = v62;
    v21 = [(ACUIRemoteAccountDataclassViewController *)v65 account];
    v51 = [ACUILocalization localizedStringForDataclass:v22 withSuffix:@"LABEL" forAccount:?];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [(NSBundle *)v20 localizedStringForKey:@"GOOGLE_BRIDGE_UNGRANTED_SCOPE_ALERT_TITLE" value:&stru_1C810 table:@"Localizable"];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [(NSBundle *)v18 localizedStringForKey:@"GOOGLE_BRIDGE_UNGRANTED_SCOPE_ALERT_MESSAGE" value:&stru_1C810 table:@"Localizable"];
    v16 = [NSString localizedStringWithFormat:v51, v51];
    v50 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v19 preferredStyle:?];

    objc_initWeak(&from, v65);
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

    [(ACUIRemoteAccountDataclassViewController *)v65 presentViewController:v50 animated:1 completion:0];
    objc_storeStrong(&v47, 0);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&from);
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteButtonTapped:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:@"REMOTE_DELETE_CONFIRMATION_MESSAGE"];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [(NSBundle *)v9 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_1C810 table:@"Localizable"];
  v20 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:? preferredStyle:?];

  objc_initWeak(&v19, v23);
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
  [(ACUIRemoteAccountDataclassViewController *)v23 presentViewController:v20 animated:1 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v18, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)setDeleting:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  if (self->_deleting != a3)
  {
    v15->_deleting = v13;
    v4 = [(ACUIRemoteAccountDataclassViewController *)v15 cancelButton];
    [(UIBarButtonItem *)v4 setEnabled:!v15->_deleting];

    v5 = [(ACUIRemoteAccountDataclassViewController *)v15 doneButton];
    [(UIBarButtonItem *)v5 setEnabled:!v15->_deleting];

    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_D378;
    v11 = &unk_1C410;
    v12 = v15;
    dispatch_async(queue, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (void)setSaving:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (self->_saving != a3)
  {
    v13->_saving = v11;
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_D4D8;
    v9 = &unk_1C410;
    v10 = v13;
    dispatch_async(queue, &v5);

    objc_storeStrong(&v10, 0);
  }
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUIRemoteAccountDataclassViewController *)v4 _dismiss];
  objc_storeStrong(location, 0);
}

- (void)doneButtonTapped:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v21);
  [(ACUIRemoteAccountDataclassViewController *)v21 setSaving:1];
  v18 = _ACUILogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ACUIRemoteAccountDataclassViewController *)v21 account];
    v8 = [(ACAccount *)v9 identifier];
    sub_1C78(v22, "[ACUIRemoteAccountDataclassViewController doneButtonTapped:]", 379, v8);
    _os_log_impl(&dword_0, v18, v17, "%s (%d) Beginning saving to remote device for account: %{public}@", v22, 0x1Cu);
  }

  objc_storeStrong(&v18, 0);
  v6 = [(ACUIRemoteAccountDataclassViewController *)v21 account];
  v7 = [(ACAccount *)v6 supportsPush];

  if ((v7 & 1) == 0)
  {
    v5 = [(ACUIRemoteAccountDataclassViewController *)v21 settingsController];
    [(ACUIRemoteDeviceSettingsController *)v5 setDefaultPollIntervalIfNeeded];
  }

  v4 = [(ACUIRemoteAccountDataclassViewController *)v21 syncController];
  v3 = [(ACUIRemoteAccountDataclassViewController *)v21 account];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_DB10;
  v14 = &unk_1C5F8;
  objc_copyWeak(&v16, &from);
  v15 = v21;
  [(ACUIRemoteAccountSyncController *)v4 saveRemoteAccount:v3 completion:&v10];

  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)_dismiss
{
  v22 = self;
  v21 = a2;
  v17 = [(ACUIRemoteAccountDataclassViewController *)self presentingViewController];

  if (v17)
  {
    v16 = [(ACUIRemoteAccountDataclassViewController *)v22 navigationController];
    [v16 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v13 = [(ACUIRemoteAccountDataclassViewController *)v22 navigationController];
    obj = [v13 viewControllers];

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

      v8 = [(ACUIRemoteAccountDataclassViewController *)v22 navigationController];
      v2 = [v8 popToViewController:v20 animated:1];

      v18 = 1;
    }

    else
    {
LABEL_11:
      v18 = 0;
    }

    if (!v18)
    {
      v6 = [(ACUIRemoteAccountDataclassViewController *)v22 traitCollection];
      v7 = [ACUIStatefulNavigation acui_statefulNavigation:?];

      if (v7)
      {
        v5 = [(ACUIRemoteAccountDataclassViewController *)v22 traitCollection];
        [ACUIStatefulNavigation acui_popLastItemFromStack:?];
      }

      else
      {
        v4 = [(ACUIRemoteAccountDataclassViewController *)v22 navigationController];
        v3 = [v4 popViewControllerAnimated:1];
      }
    }
  }
}

- (void)_displayFailedToSaveAlertShouldDismiss:(BOOL)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [(NSBundle *)v12 localizedStringForKey:@"FAILED_TO_SAVE" value:&stru_1C810 table:@"Localizable"];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [(NSBundle *)v10 localizedStringForKey:@"PLEASE_TRY_AGAIN" value:&stru_1C810 table:@"Localizable"];
  v24 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v11 preferredStyle:?];

  objc_initWeak(&location, v27);
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
  v22 = v25;
  v5 = [UIAlertAction actionWithTitle:v6 style:0 handler:&v15];
  [v8 addAction:?];
  v14 = 0;

  v13 = _ACUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ACUIRemoteAccountDataclassViewController *)v27 account];
    v3 = [(ACAccount *)v4 identifier];
    sub_1C78(v28, "[ACUIRemoteAccountDataclassViewController _displayFailedToSaveAlertShouldDismiss:]", 454, v3);
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s (%d) Displaying failed to save alert for account: %{public}@", v28, 0x1Cu);
  }

  objc_storeStrong(&v13, 0);
  [(ACUIRemoteAccountDataclassViewController *)v27 presentViewController:v24 animated:1 completion:0];
  objc_destroyWeak(&v21);
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(&v24, 0);
}

- (void)_displayFailedToDeleteAlert
{
  v13 = self;
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
    v3 = [(ACUIRemoteAccountDataclassViewController *)v13 account];
    v2 = [(ACAccount *)v3 identifier];
    sub_1C78(v14, "[ACUIRemoteAccountDataclassViewController _displayFailedToDeleteAlert]", 463, v2);
    _os_log_impl(&dword_0, location, OS_LOG_TYPE_DEFAULT, "%s (%d) Displaying failed to delete alert for account: %{public}@", v14, 0x1Cu);
  }

  objc_storeStrong(&location, 0);
  [(ACUIRemoteAccountDataclassViewController *)v13 presentViewController:v12[0] animated:1 completion:0];
  objc_storeStrong(v12, 0);
}

@end