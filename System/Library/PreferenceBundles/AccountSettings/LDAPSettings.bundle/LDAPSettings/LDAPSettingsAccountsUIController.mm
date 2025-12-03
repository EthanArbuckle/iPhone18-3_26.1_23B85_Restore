@interface LDAPSettingsAccountsUIController
- (BOOL)haveEnoughValues;
- (BOOL)validateAccount;
- (id)_searchBaseSpecifiers;
- (id)accountBooleanPropertyWithSpecifier:(id)specifier;
- (id)accountSpecifiers;
- (id)localizedAccountSetupTitleString;
- (id)localizedConfirmSaveUnvalidatedAccountMessageString;
- (id)localizedValidationFailureTitleString;
- (id)newDefaultAccount;
- (void)_updateDescriptionFromServer:(id)server;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
- (void)showConfirmationForDeletingAccount:(id)account completion:(id)completion;
@end

@implementation LDAPSettingsAccountsUIController

- (id)newDefaultAccount
{
  accountStore = [(LDAPSettingsAccountsUIController *)self accountStore];
  v3 = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierLDAP];

  v4 = [[ACAccount alloc] initWithAccountType:v3];
  supportedDataclasses = [v3 supportedDataclasses];
  v6 = [supportedDataclasses mutableCopy];

  [v4 setProvisionedDataclasses:v6];
  v7 = [DAAccount daAccountSubclassWithBackingAccountInfo:v4];
  [v7 setUseSSL:1];
  [v7 setEnabled:1 forDADataclass:8];

  return v7;
}

- (id)_searchBaseSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SEARCH_BASE_SETTINGS" value:&stru_8300 table:@"LDAPAccountSetup"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];
  [v3 addObject:v6];

  account = [(LDAPSettingsAccountsUIController *)self account];
  searchSettings = [account searchSettings];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = searchSettings;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        searchDescription = [v13 searchDescription];
        if (!searchDescription)
        {
          v15 = [NSBundle bundleForClass:objc_opt_class()];
          searchDescription = [v15 localizedStringForKey:@"EMPTY_SEARCH_BASE" value:&stru_8300 table:@"LDAPAccountSetup"];
        }

        v16 = [PSSpecifier preferenceSpecifierNamed:searchDescription target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
        [v16 setProperty:v13 forKey:@"LDAPSettingsSearchSettingsKey"];
        account2 = [(LDAPSettingsAccountsUIController *)self account];
        [v16 setProperty:account2 forKey:@"LDAPSettingsAccountKey"];

        [v3 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"ADD_SEARCH_SETTINGS" value:&stru_8300 table:@"LDAPAccountSetup"];
  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  account3 = [(LDAPSettingsAccountsUIController *)self account];
  [v20 setProperty:account3 forKey:@"LDAPSettingsAccountKey"];

  [v3 addObject:v20];

  return v3;
}

- (id)accountSpecifiers
{
  v3 = [(LDAPSettingsAccountsUIController *)self loadSpecifiersFromPlistName:@"LDAPAccountSetup" target:self];
  v4 = [NSMutableArray arrayWithArray:v3];

  if ([(LDAPSettingsAccountsUIController *)self isSettingUpNewAccount]&& [(LDAPSettingsAccountsUIController *)self accountNeedsAdd])
  {
    v5 = objc_opt_new();
    [(LDAPSettingsAccountsUIController *)self setSpecifiersToInsert:v5];

    specifiersToInsert = [(LDAPSettingsAccountsUIController *)self specifiersToInsert];
    v7 = [v4 specifierForID:@"USE_SSL"];
    [specifiersToInsert addObject:v7];

    specifiersToInsert2 = [(LDAPSettingsAccountsUIController *)self specifiersToInsert];
    [v4 removeObjectsInArray:specifiersToInsert2];
  }

  else
  {
    specifiersToInsert2 = [(LDAPSettingsAccountsUIController *)self _searchBaseSpecifiers];
    [v4 addObjectsFromArray:specifiersToInsert2];
  }

  v9 = &DAAccountDescriptionFromHostname_ptr;
  if (([(LDAPSettingsAccountsUIController *)self isSettingUpNewAccount]& 1) == 0)
  {
    v10 = +[DADiagnosticsPSController linkSpecifier];
    if (v10)
    {
      v11 = +[PSSpecifier emptyGroupSpecifier];
      [v4 addObject:v11];

      [v4 addObject:v10];
    }

    accountIsManaged = [(LDAPSettingsAccountsUIController *)self accountIsManaged];
    account = [(LDAPSettingsAccountsUIController *)self account];
    v14 = account;
    if (accountIsManaged)
    {
      backingAccountInfo = [account backingAccountInfo];
      mcBackingProfile = [backingAccountInfo mcBackingProfile];

      if (mcBackingProfile)
      {
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_8300 table:@"LDAPAccountSetup"];
        friendlyName = [mcBackingProfile friendlyName];
        v20 = [NSString stringWithFormat:v18, friendlyName];

        v21 = [(LDAPSettingsAccountsUIController *)self lastGroupSpecifierInSpecifiers:v4];
        if (!v21)
        {
          v22 = DALoggingwithCategory();
          v23 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v22, v23))
          {
            *buf = 138412290;
            v53 = v4;
            _os_log_impl(&dword_0, v22, v23, "No group found, not setting the profile text.  Specifiers: %@", buf, 0xCu);
          }
        }

        [v21 setProperty:v20 forKey:PSFooterTextGroupKey];
      }

      v45 = mcBackingProfile;
      v46 = v10;
      identifier = [v10 identifier];
      v25 = [NSSet setWithObjects:@"PASSWORD", @"DESCRIPTION", @"ENABLED", identifier, 0];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v26 = v4;
      v27 = [v26 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v48;
        v30 = PSEnabledKey;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v48 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v47 + 1) + 8 * i);
            identifier2 = [v32 identifier];
            if (([v25 containsObject:identifier2] & 1) == 0 && *&v32[OBJC_IVAR___PSSpecifier_cellType] != 1)
            {
              [v32 setProperty:&__kCFBooleanFalse forKey:v30];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v28);
      }

      v9 = &DAAccountDescriptionFromHostname_ptr;
      v10 = v46;
    }

    else
    {
      accountDescription = [account accountDescription];
      [(LDAPSettingsAccountsUIController *)self setTitle:accountDescription];

      v35 = +[PSSpecifier emptyGroupSpecifier];
      [v4 addObject:v35];

      v36 = [NSBundle bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_8300 table:@"Localizable"];
      v38 = [PSSpecifier deleteButtonSpecifierWithName:v37 target:self action:"deleteAccountButtonTapped"];

      [v4 addObject:v38];
    }
  }

  if ([(LDAPSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    v39 = [v4 specifierForID:@"ENABLED"];
    [v4 removeObject:v39];

    v40 = [v4 specifierForID:@"LDAP_INFO"];
    [v4 removeObject:v40];
  }

  else
  {
    v41 = v9[53];
    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = [v40 localizedStringForKey:@"LDAP_INFO" value:&stru_8300 table:@"LDAPAccountSetup"];
    v43 = [v41 groupSpecifierWithName:v42];
    [v4 setObject:v43 atIndexedSubscript:2];
  }

  return v4;
}

- (BOOL)validateAccount
{
  table = [(LDAPSettingsAccountsUIController *)self table];
  firstResponder = [table firstResponder];
  [firstResponder resignFirstResponder];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"VERIFYING" value:&stru_8300 table:@"Localizable"];
  [(LDAPSettingsAccountsUIController *)self startValidationWithPrompt:v6];

  account = [(LDAPSettingsAccountsUIController *)self account];
  accountStore = [(LDAPSettingsAccountsUIController *)self accountStore];
  [account checkValidityOnAccountStore:accountStore withConsumer:self inQueue:&_dispatch_main_q];

  return 1;
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  if (validCopy)
  {
    if ([(LDAPSettingsAccountsUIController *)self accountNeedsAdd])
    {
      account = [(LDAPSettingsAccountsUIController *)self account];
      [account setEnabled:0 forDADataclass:1];

      account2 = [(LDAPSettingsAccountsUIController *)self account];
      [account2 setEnabled:0 forDADataclass:2];

      account3 = [(LDAPSettingsAccountsUIController *)self account];
      [account3 setEnabled:0 forDADataclass:4];

      account4 = [(LDAPSettingsAccountsUIController *)self account];
      [account4 setEnabled:0 forDADataclass:16];

      account5 = [(LDAPSettingsAccountsUIController *)self account];
      [account5 setEnabled:0 forDADataclass:32];

      account6 = [(LDAPSettingsAccountsUIController *)self account];
      [account6 setEnabled:1 forDADataclass:8];

      v16 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 1;
      accountStore = [(LDAPSettingsAccountsUIController *)self accountStore];
      account7 = [(LDAPSettingsAccountsUIController *)self account];
      backingAccountInfo = [account7 backingAccountInfo];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1F24;
      v31[3] = &unk_8280;
      p_buf = &buf;
      v20 = v16;
      v32 = v20;
      [accountStore canSaveAccount:backingAccountInfo withCompletionHandler:v31];

      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      v21 = *(*(&buf + 1) + 24);
      if (v21)
      {
        [(LDAPSettingsAccountsUIController *)self setAccountNeedsAdd:0];
        [(LDAPSettingsAccountsUIController *)self setValidatedSuccessfully:1];
        specifiersToInsert = [(LDAPSettingsAccountsUIController *)self specifiersToInsert];
        [(LDAPSettingsAccountsUIController *)self insertContiguousSpecifiers:specifiersToInsert afterSpecifierID:@"PASSWORD" animated:1];

        _searchBaseSpecifiers = [(LDAPSettingsAccountsUIController *)self _searchBaseSpecifiers];
        [(LDAPSettingsAccountsUIController *)self insertContiguousSpecifiers:_searchBaseSpecifiers afterSpecifierID:@"DESCRIPTION" animated:1];
      }

      else
      {
        [(LDAPSettingsAccountsUIController *)self showIdenticalAccountFailureView];
        [(LDAPSettingsAccountsUIController *)self setAttemptedValidation:0];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v21 = 1;
      [(LDAPSettingsAccountsUIController *)self setValidatedSuccessfully:1];
    }

    v28 = 0;
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v24, v25))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = errorCopy;
      _os_log_impl(&dword_0, v24, v25, "validation failed with error %@", &buf, 0xCu);
    }

    account8 = [(LDAPSettingsAccountsUIController *)self account];
    useSSL = [account8 useSSL];

    if (useSSL)
    {
      [(LDAPSettingsAccountsUIController *)self showSSLFailureView];
      v28 = 0;
    }

    else
    {
      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [v29 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_8300 table:@"LDAPAccountSetup"];
    }

    [(LDAPSettingsAccountsUIController *)self setValidatedSuccessfully:0];
    v21 = 1;
  }

  [(LDAPSettingsAccountsUIController *)self hideProgressWithPrompt:v28];
  v30.receiver = self;
  v30.super_class = LDAPSettingsAccountsUIController;
  [(LDAPSettingsAccountsUIController *)&v30 account:accountCopy isValid:v21 & validCopy validationError:errorCopy];
}

- (BOOL)haveEnoughValues
{
  specifiers = [(LDAPSettingsAccountsUIController *)self specifiers];
  v4 = [specifiers count];

  if (qword_D0F8 == -1)
  {
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = &DAAccountDescriptionFromHostname_ptr;
      p_opt_class_meths = &OBJC_PROTOCOL___ACUIAccountViewsProviderProtocol.opt_class_meths;
      v21 = v4;
      while (1)
      {
        specifiers2 = [(LDAPSettingsAccountsUIController *)self specifiers];
        v9 = [specifiers2 objectAtIndexedSubscript:v5];

        if (v5 == [(LDAPSettingsAccountsUIController *)self indexOfCurrentlyEditingCell])
        {
          currentlyEditingCell = [(LDAPSettingsAccountsUIController *)self currentlyEditingCell];
          v11 = v6[52];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v12 = p_opt_class_meths[30];
          identifier = [v9 identifier];
          if (![(__objc2_meth_list *)v12 containsObject:identifier])
          {
            v19 = 1;
            goto LABEL_13;
          }

          textField = [currentlyEditingCell textField];
          [textField text];
          v15 = p_opt_class_meths;
          v17 = v16 = v6;
          v18 = [v17 length];

          v6 = v16;
          p_opt_class_meths = v15;
          v4 = v21;
        }

        else
        {
          currentlyEditingCell = [v9 identifier];
          if (![currentlyEditingCell isEqualToString:@"HOST"])
          {
LABEL_11:
            v19 = 1;
            goto LABEL_14;
          }

          identifier = [(LDAPSettingsAccountsUIController *)self account];
          textField = [identifier host];
          v18 = [textField length];
        }

        v19 = v18 != 0;

LABEL_13:
LABEL_14:

        if (++v5 >= v4 || (v19 & 1) == 0)
        {
          return v19;
        }
      }
    }
  }

  else
  {
    sub_3CC4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

- (void)_updateDescriptionFromServer:(id)server
{
  serverCopy = server;
  account = [(LDAPSettingsAccountsUIController *)self account];
  accountDescription = [account accountDescription];
  if (accountDescription)
  {
    v6 = accountDescription;
    account2 = [(LDAPSettingsAccountsUIController *)self account];
    accountDescription2 = [account2 accountDescription];
    account3 = [(LDAPSettingsAccountsUIController *)self account];
    host = [account3 host];
    v11 = [accountDescription2 isEqualToString:host];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12 = DAAccountDescriptionFromHostname();
  accountStore = [(LDAPSettingsAccountsUIController *)self accountStore];
  v14 = [accountStore hasAccountWithDescription:v12];

  if (v14)
  {
    v15 = serverCopy;

    v12 = v15;
  }

  account4 = [(LDAPSettingsAccountsUIController *)self account];
  [account4 setAccountDescription:v12];

  specifiers = [(LDAPSettingsAccountsUIController *)self specifiers];
  v18 = [specifiers count];

  if (v18)
  {
    v19 = 0;
    while (1)
    {
      specifiers2 = [(LDAPSettingsAccountsUIController *)self specifiers];
      v21 = [specifiers2 objectAtIndexedSubscript:v19];
      identifier = [v21 identifier];

      if ([identifier isEqualToString:@"DESCRIPTION"])
      {
        break;
      }

      if (v18 == ++v19)
      {
        goto LABEL_13;
      }
    }

    table = [(LDAPSettingsAccountsUIController *)self table];
    v24 = [(LDAPSettingsAccountsUIController *)self indexPathForIndex:v19];
    v25 = [table cellForRowAtIndexPath:v24];

    [v25 setValue:v12];
  }

LABEL_13:

LABEL_14:
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v9 = [(LDAPSettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];
  v10 = [propertyCopy isEqualToString:v9];

  if ([identifier isEqualToString:@"HOST"])
  {
    [(LDAPSettingsAccountsUIController *)self _updateDescriptionFromServer:propertyCopy];
    account = [(LDAPSettingsAccountsUIController *)self account];
    [account setHost:propertyCopy];
LABEL_8:

    goto LABEL_9;
  }

  if (!(v10 & 1 | (([identifier isEqualToString:@"DESCRIPTION"] & 1) == 0)))
  {
    if (![propertyCopy length])
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"DESCRIPTION_PLACEHOLDER" value:&stru_8300 table:@"LDAPAccountSetup"];

      propertyCopy = v13;
    }

    account = [(LDAPSettingsAccountsUIController *)self account];
    [account setAccountDescription:propertyCopy];
    goto LABEL_8;
  }

  v14.receiver = self;
  v14.super_class = LDAPSettingsAccountsUIController;
  [(LDAPSettingsAccountsUIController *)&v14 setAccountProperty:propertyCopy withSpecifier:specifierCopy];
LABEL_9:
  [(LDAPSettingsAccountsUIController *)self updateDoneButton];
  [(LDAPSettingsAccountsUIController *)self setNeedsSave:1];
}

- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  bOOLValue = [propertyCopy BOOLValue];
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"ENABLED"])
  {
    account = [(LDAPSettingsAccountsUIController *)self account];
    [account setEnabled:bOOLValue forDADataclass:8];
  }

  else if ([identifier isEqualToString:@"USE_SSL"])
  {
    account2 = [(LDAPSettingsAccountsUIController *)self account];
    [account2 setUseSSL:bOOLValue];

    [(LDAPSettingsAccountsUIController *)self updateDoneButton];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = LDAPSettingsAccountsUIController;
    [(LDAPSettingsAccountsUIController *)&v12 setAccountBooleanProperty:propertyCopy withSpecifier:specifierCopy];
  }

  [(LDAPSettingsAccountsUIController *)self setNeedsSave:1];
}

- (id)accountBooleanPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"ENABLED"])
  {
    account = [(LDAPSettingsAccountsUIController *)self account];
    useSSL = [account enabledForDADataclass:8];
LABEL_5:
    v8 = useSSL;

    v9 = [NSNumber numberWithBool:v8];
    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"USE_SSL"])
  {
    account = [(LDAPSettingsAccountsUIController *)self account];
    useSSL = [account useSSL];
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = LDAPSettingsAccountsUIController;
  v9 = [(LDAPSettingsAccountsUIController *)&v12 accountBooleanPropertyWithSpecifier:specifierCopy];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)showConfirmationForDeletingAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DELETE_ACCOUNT_WARNING"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_8300 table:@"LDAPAccountSetup"];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  v11 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = v12;
  if (v11 == 1)
  {
    v14 = @"DELETE";
  }

  else
  {
    v14 = @"DELETE_ACCOUNT";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_8300 table:@"LDAPAccountSetup"];
  v21[0] = v15;
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_8300 table:@"LDAPAccountSetup"];
  v21[1] = v17;
  v18 = [NSArray arrayWithObjects:v21 count:2];

  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_8300 table:@"LDAPAccountSetup"];
  [(LDAPSettingsAccountsUIController *)self showConfirmationWithButtons:v18 title:v20 message:v8 destructive:1 completion:completionCopy];
}

- (id)localizedValidationFailureTitleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"LDAP_ACCOUNT" value:&stru_8300 table:@"LDAPAccountSetup"];

  return v3;
}

- (id)localizedConfirmSaveUnvalidatedAccountMessageString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONFIRM_SAVE_ACCOUNT_ANYWAYS_MESSAGE" value:&stru_8300 table:@"LDAPAccountSetup"];

  return v3;
}

- (id)localizedAccountSetupTitleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_8300 table:@"LDAPAccountSetup"];

  return v3;
}

@end