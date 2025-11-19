@interface LDAPSettingsAccountsUIController
- (BOOL)haveEnoughValues;
- (BOOL)validateAccount;
- (id)_searchBaseSpecifiers;
- (id)accountBooleanPropertyWithSpecifier:(id)a3;
- (id)accountSpecifiers;
- (id)localizedAccountSetupTitleString;
- (id)localizedConfirmSaveUnvalidatedAccountMessageString;
- (id)localizedValidationFailureTitleString;
- (id)newDefaultAccount;
- (void)_updateDescriptionFromServer:(id)a3;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
- (void)showConfirmationForDeletingAccount:(id)a3 completion:(id)a4;
@end

@implementation LDAPSettingsAccountsUIController

- (id)newDefaultAccount
{
  v2 = [(LDAPSettingsAccountsUIController *)self accountStore];
  v3 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierLDAP];

  v4 = [[ACAccount alloc] initWithAccountType:v3];
  v5 = [v3 supportedDataclasses];
  v6 = [v5 mutableCopy];

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

  v7 = [(LDAPSettingsAccountsUIController *)self account];
  v8 = [v7 searchSettings];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
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
        v14 = [v13 searchDescription];
        if (!v14)
        {
          v15 = [NSBundle bundleForClass:objc_opt_class()];
          v14 = [v15 localizedStringForKey:@"EMPTY_SEARCH_BASE" value:&stru_8300 table:@"LDAPAccountSetup"];
        }

        v16 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
        [v16 setProperty:v13 forKey:@"LDAPSettingsSearchSettingsKey"];
        v17 = [(LDAPSettingsAccountsUIController *)self account];
        [v16 setProperty:v17 forKey:@"LDAPSettingsAccountKey"];

        [v3 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"ADD_SEARCH_SETTINGS" value:&stru_8300 table:@"LDAPAccountSetup"];
  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  v21 = [(LDAPSettingsAccountsUIController *)self account];
  [v20 setProperty:v21 forKey:@"LDAPSettingsAccountKey"];

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

    v6 = [(LDAPSettingsAccountsUIController *)self specifiersToInsert];
    v7 = [v4 specifierForID:@"USE_SSL"];
    [v6 addObject:v7];

    v8 = [(LDAPSettingsAccountsUIController *)self specifiersToInsert];
    [v4 removeObjectsInArray:v8];
  }

  else
  {
    v8 = [(LDAPSettingsAccountsUIController *)self _searchBaseSpecifiers];
    [v4 addObjectsFromArray:v8];
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

    v12 = [(LDAPSettingsAccountsUIController *)self accountIsManaged];
    v13 = [(LDAPSettingsAccountsUIController *)self account];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 backingAccountInfo];
      v16 = [v15 mcBackingProfile];

      if (v16)
      {
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_8300 table:@"LDAPAccountSetup"];
        v19 = [v16 friendlyName];
        v20 = [NSString stringWithFormat:v18, v19];

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

      v45 = v16;
      v46 = v10;
      v24 = [v10 identifier];
      v25 = [NSSet setWithObjects:@"PASSWORD", @"DESCRIPTION", @"ENABLED", v24, 0];

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
            v33 = [v32 identifier];
            if (([v25 containsObject:v33] & 1) == 0 && *&v32[OBJC_IVAR___PSSpecifier_cellType] != 1)
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
      v34 = [v13 accountDescription];
      [(LDAPSettingsAccountsUIController *)self setTitle:v34];

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
  v3 = [(LDAPSettingsAccountsUIController *)self table];
  v4 = [v3 firstResponder];
  [v4 resignFirstResponder];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"VERIFYING" value:&stru_8300 table:@"Localizable"];
  [(LDAPSettingsAccountsUIController *)self startValidationWithPrompt:v6];

  v7 = [(LDAPSettingsAccountsUIController *)self account];
  v8 = [(LDAPSettingsAccountsUIController *)self accountStore];
  [v7 checkValidityOnAccountStore:v8 withConsumer:self inQueue:&_dispatch_main_q];

  return 1;
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    if ([(LDAPSettingsAccountsUIController *)self accountNeedsAdd])
    {
      v10 = [(LDAPSettingsAccountsUIController *)self account];
      [v10 setEnabled:0 forDADataclass:1];

      v11 = [(LDAPSettingsAccountsUIController *)self account];
      [v11 setEnabled:0 forDADataclass:2];

      v12 = [(LDAPSettingsAccountsUIController *)self account];
      [v12 setEnabled:0 forDADataclass:4];

      v13 = [(LDAPSettingsAccountsUIController *)self account];
      [v13 setEnabled:0 forDADataclass:16];

      v14 = [(LDAPSettingsAccountsUIController *)self account];
      [v14 setEnabled:0 forDADataclass:32];

      v15 = [(LDAPSettingsAccountsUIController *)self account];
      [v15 setEnabled:1 forDADataclass:8];

      v16 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 1;
      v17 = [(LDAPSettingsAccountsUIController *)self accountStore];
      v18 = [(LDAPSettingsAccountsUIController *)self account];
      v19 = [v18 backingAccountInfo];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1F24;
      v31[3] = &unk_8280;
      p_buf = &buf;
      v20 = v16;
      v32 = v20;
      [v17 canSaveAccount:v19 withCompletionHandler:v31];

      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      v21 = *(*(&buf + 1) + 24);
      if (v21)
      {
        [(LDAPSettingsAccountsUIController *)self setAccountNeedsAdd:0];
        [(LDAPSettingsAccountsUIController *)self setValidatedSuccessfully:1];
        v22 = [(LDAPSettingsAccountsUIController *)self specifiersToInsert];
        [(LDAPSettingsAccountsUIController *)self insertContiguousSpecifiers:v22 afterSpecifierID:@"PASSWORD" animated:1];

        v23 = [(LDAPSettingsAccountsUIController *)self _searchBaseSpecifiers];
        [(LDAPSettingsAccountsUIController *)self insertContiguousSpecifiers:v23 afterSpecifierID:@"DESCRIPTION" animated:1];
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
      *(&buf + 4) = v9;
      _os_log_impl(&dword_0, v24, v25, "validation failed with error %@", &buf, 0xCu);
    }

    v26 = [(LDAPSettingsAccountsUIController *)self account];
    v27 = [v26 useSSL];

    if (v27)
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
  [(LDAPSettingsAccountsUIController *)&v30 account:v8 isValid:v21 & v6 validationError:v9];
}

- (BOOL)haveEnoughValues
{
  v3 = [(LDAPSettingsAccountsUIController *)self specifiers];
  v4 = [v3 count];

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
        v8 = [(LDAPSettingsAccountsUIController *)self specifiers];
        v9 = [v8 objectAtIndexedSubscript:v5];

        if (v5 == [(LDAPSettingsAccountsUIController *)self indexOfCurrentlyEditingCell])
        {
          v10 = [(LDAPSettingsAccountsUIController *)self currentlyEditingCell];
          v11 = v6[52];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v12 = p_opt_class_meths[30];
          v13 = [v9 identifier];
          if (![(__objc2_meth_list *)v12 containsObject:v13])
          {
            v19 = 1;
            goto LABEL_13;
          }

          v14 = [v10 textField];
          [v14 text];
          v15 = p_opt_class_meths;
          v17 = v16 = v6;
          v18 = [v17 length];

          v6 = v16;
          p_opt_class_meths = v15;
          v4 = v21;
        }

        else
        {
          v10 = [v9 identifier];
          if (![v10 isEqualToString:@"HOST"])
          {
LABEL_11:
            v19 = 1;
            goto LABEL_14;
          }

          v13 = [(LDAPSettingsAccountsUIController *)self account];
          v14 = [v13 host];
          v18 = [v14 length];
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

- (void)_updateDescriptionFromServer:(id)a3
{
  v26 = a3;
  v4 = [(LDAPSettingsAccountsUIController *)self account];
  v5 = [v4 accountDescription];
  if (v5)
  {
    v6 = v5;
    v7 = [(LDAPSettingsAccountsUIController *)self account];
    v8 = [v7 accountDescription];
    v9 = [(LDAPSettingsAccountsUIController *)self account];
    v10 = [v9 host];
    v11 = [v8 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12 = DAAccountDescriptionFromHostname();
  v13 = [(LDAPSettingsAccountsUIController *)self accountStore];
  v14 = [v13 hasAccountWithDescription:v12];

  if (v14)
  {
    v15 = v26;

    v12 = v15;
  }

  v16 = [(LDAPSettingsAccountsUIController *)self account];
  [v16 setAccountDescription:v12];

  v17 = [(LDAPSettingsAccountsUIController *)self specifiers];
  v18 = [v17 count];

  if (v18)
  {
    v19 = 0;
    while (1)
    {
      v20 = [(LDAPSettingsAccountsUIController *)self specifiers];
      v21 = [v20 objectAtIndexedSubscript:v19];
      v22 = [v21 identifier];

      if ([v22 isEqualToString:@"DESCRIPTION"])
      {
        break;
      }

      if (v18 == ++v19)
      {
        goto LABEL_13;
      }
    }

    v23 = [(LDAPSettingsAccountsUIController *)self table];
    v24 = [(LDAPSettingsAccountsUIController *)self indexPathForIndex:v19];
    v25 = [v23 cellForRowAtIndexPath:v24];

    [v25 setValue:v12];
  }

LABEL_13:

LABEL_14:
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [(LDAPSettingsAccountsUIController *)self accountPropertyWithSpecifier:v7];
  v10 = [v6 isEqualToString:v9];

  if ([v8 isEqualToString:@"HOST"])
  {
    [(LDAPSettingsAccountsUIController *)self _updateDescriptionFromServer:v6];
    v11 = [(LDAPSettingsAccountsUIController *)self account];
    [v11 setHost:v6];
LABEL_8:

    goto LABEL_9;
  }

  if (!(v10 & 1 | (([v8 isEqualToString:@"DESCRIPTION"] & 1) == 0)))
  {
    if (![v6 length])
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"DESCRIPTION_PLACEHOLDER" value:&stru_8300 table:@"LDAPAccountSetup"];

      v6 = v13;
    }

    v11 = [(LDAPSettingsAccountsUIController *)self account];
    [v11 setAccountDescription:v6];
    goto LABEL_8;
  }

  v14.receiver = self;
  v14.super_class = LDAPSettingsAccountsUIController;
  [(LDAPSettingsAccountsUIController *)&v14 setAccountProperty:v6 withSpecifier:v7];
LABEL_9:
  [(LDAPSettingsAccountsUIController *)self updateDoneButton];
  [(LDAPSettingsAccountsUIController *)self setNeedsSave:1];
}

- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = [v7 identifier];
  if ([v9 isEqualToString:@"ENABLED"])
  {
    v10 = [(LDAPSettingsAccountsUIController *)self account];
    [v10 setEnabled:v8 forDADataclass:8];
  }

  else if ([v9 isEqualToString:@"USE_SSL"])
  {
    v11 = [(LDAPSettingsAccountsUIController *)self account];
    [v11 setUseSSL:v8];

    [(LDAPSettingsAccountsUIController *)self updateDoneButton];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = LDAPSettingsAccountsUIController;
    [(LDAPSettingsAccountsUIController *)&v12 setAccountBooleanProperty:v6 withSpecifier:v7];
  }

  [(LDAPSettingsAccountsUIController *)self setNeedsSave:1];
}

- (id)accountBooleanPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"ENABLED"])
  {
    v6 = [(LDAPSettingsAccountsUIController *)self account];
    v7 = [v6 enabledForDADataclass:8];
LABEL_5:
    v8 = v7;

    v9 = [NSNumber numberWithBool:v8];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"USE_SSL"])
  {
    v6 = [(LDAPSettingsAccountsUIController *)self account];
    v7 = [v6 useSSL];
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = LDAPSettingsAccountsUIController;
  v9 = [(LDAPSettingsAccountsUIController *)&v12 accountBooleanPropertyWithSpecifier:v4];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)showConfirmationForDeletingAccount:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DELETE_ACCOUNT_WARNING"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_8300 table:@"LDAPAccountSetup"];

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = v10 & 0xFFFFFFFFFFFFFFFBLL;
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
  [(LDAPSettingsAccountsUIController *)self showConfirmationWithButtons:v18 title:v20 message:v8 destructive:1 completion:v5];
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