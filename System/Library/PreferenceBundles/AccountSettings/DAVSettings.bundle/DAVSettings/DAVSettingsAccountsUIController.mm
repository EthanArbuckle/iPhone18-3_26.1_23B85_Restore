@interface DAVSettingsAccountsUIController
- (BOOL)haveEnoughValues;
- (BOOL)showDeleteButton;
- (BOOL)validateAccount;
- (id)acAccountTypeString;
- (id)accountBooleanPropertyWithSpecifier:(id)specifier;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)accountSpecifiers;
- (id)localizedAccountSetupTitleString;
- (id)localizedConfirmSaveUnvalidatedAccountMessageString;
- (id)localizedValidationFailureTitleString;
- (id)newDefaultAccount;
- (id)settingsPlistName;
- (int64_t)defaultDADataclassesToEnable;
- (void)_updateDescriptionFromServer:(id)server;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
@end

@implementation DAVSettingsAccountsUIController

- (BOOL)showDeleteButton
{
  account = [(DAVSettingsAccountsUIController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  managingOwnerIdentifier = [backingAccountInfo managingOwnerIdentifier];
  v5 = managingOwnerIdentifier == 0;

  return v5;
}

- (id)newDefaultAccount
{
  accountStore = [(DAVSettingsAccountsUIController *)self accountStore];
  acAccountTypeString = [(DAVSettingsAccountsUIController *)self acAccountTypeString];
  v5 = [accountStore accountTypeWithAccountTypeIdentifier:acAccountTypeString];

  v6 = [[ACAccount alloc] initWithAccountType:v5];
  supportedDataclasses = [v5 supportedDataclasses];
  v8 = [supportedDataclasses mutableCopy];

  [v6 setProvisionedDataclasses:v8];
  v9 = [DAAccount daAccountSubclassWithBackingAccountInfo:v6];
  [v9 setUseSSL:1];
  defaultDADataclassesToEnable = [(DAVSettingsAccountsUIController *)self defaultDADataclassesToEnable];
  [v9 setEnabled:(defaultDADataclassesToEnable >> 1) & 1 forDADataclass:2];
  [v9 setEnabled:(defaultDADataclassesToEnable >> 3) & 1 forDADataclass:8];
  [v9 setEnabled:(defaultDADataclassesToEnable >> 2) & 1 forDADataclass:4];
  [v9 setEnabled:(defaultDADataclassesToEnable >> 4) & 1 forDADataclass:16];

  return v9;
}

- (id)accountSpecifiers
{
  settingsPlistName = [(DAVSettingsAccountsUIController *)self settingsPlistName];
  v4 = [(DAVSettingsAccountsUIController *)self loadSpecifiersFromPlistName:settingsPlistName target:self];
  v5 = [NSMutableArray arrayWithArray:v4];

  if (([(DAVSettingsAccountsUIController *)self isSettingUpNewAccount]& 1) == 0)
  {
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ADVANCED_SETTINGS" value:&stru_8298 table:@"Localizable"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    account = [(DAVSettingsAccountsUIController *)self account];
    [v9 setProperty:account forKey:@"DAVAdvancedControllerAccountKey"];

    [v5 addObject:v9];
    v11 = +[DADiagnosticsPSController linkSpecifier];
    if (v11)
    {
      v12 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v12];

      [v5 addObject:v11];
    }

    if ([(DAVSettingsAccountsUIController *)self accountIsManaged])
    {
      v49 = v9;
      account2 = [(DAVSettingsAccountsUIController *)self account];
      backingAccountInfo = [account2 backingAccountInfo];
      mcBackingProfile = [backingAccountInfo mcBackingProfile];

      if (mcBackingProfile)
      {
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_8298 table:@"Localizable"];
        friendlyName = [mcBackingProfile friendlyName];
        v19 = [NSString stringWithFormat:v17, friendlyName];

        v20 = [(DAVSettingsAccountsUIController *)self lastGroupSpecifierInSpecifiers:v5];
        if (!v20)
        {
          v21 = DALoggingwithCategory();
          v22 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v21, v22))
          {
            *buf = 138412290;
            v56 = v5;
            _os_log_impl(&dword_0, v21, v22, "No group found, not setting the profile text.  Specifiers: %@", buf, 0xCu);
          }
        }

        [v20 setProperty:v19 forKey:PSFooterTextGroupKey];
      }

      v47 = mcBackingProfile;
      v48 = v11;
      identifier = [v11 identifier];
      v24 = [NSSet setWithObjects:@"PASSWORD", @"DESCRIPTION", @"ENABLED", identifier, 0];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = v5;
      v26 = [v25 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v51;
        v29 = PSEnabledKey;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v51 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v50 + 1) + 8 * i);
            identifier2 = [v31 identifier];
            if (([v24 containsObject:identifier2] & 1) == 0)
            {
              [v31 setProperty:&__kCFBooleanFalse forKey:v29];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v27);
      }

      v9 = v49;
      v11 = v48;
    }

    else if ([(DAVSettingsAccountsUIController *)self showDeleteButton])
    {
      account3 = [(DAVSettingsAccountsUIController *)self account];
      accountDescription = [account3 accountDescription];
      [(DAVSettingsAccountsUIController *)self setTitle:accountDescription];

      v35 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v35];

      v36 = [NSBundle bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_8298 table:@"Localizable"];
      v38 = [PSSpecifier deleteButtonSpecifierWithName:v37 target:self action:"deleteAccountButtonTapped"];

      [v5 addObject:v38];
    }
  }

  if ([(DAVSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    v39 = [v5 specifierForID:@"ENABLED"];
    [v5 removeObject:v39];

    v40 = [v5 specifierForID:@"DAV_INFO"];
    [v5 removeObject:v40];

    if ([(DAVSettingsAccountsUIController *)self attemptedValidation])
    {
      if (([(DAVSettingsAccountsUIController *)self validatedSuccessfully]& 1) == 0 && ([(DAVSettingsAccountsUIController *)self validationInProgress]& 1) != 0)
      {
        goto LABEL_29;
      }
    }

    if ([(DAVSettingsAccountsUIController *)self attemptedInitialValidation])
    {
LABEL_29:
      v41 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v41];

      v42 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"ADVANCED_SETTINGS" value:&stru_8298 table:@"Localizable"];
      v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      account4 = [(DAVSettingsAccountsUIController *)self account];
      [v44 setProperty:account4 forKey:@"DAVAdvancedControllerAccountKey"];

      [v5 addObject:v44];
    }
  }

  return v5;
}

- (BOOL)validateAccount
{
  firstResponder = [*&self->DASettingsAccountsUIController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VERIFYING" value:&stru_8298 table:@"Localizable"];
  [(DAVSettingsAccountsUIController *)self startValidationWithPrompt:v5];

  account = [(DAVSettingsAccountsUIController *)self account];
  [account saveModifiedPropertiesOnBackingAccount];

  account2 = [(DAVSettingsAccountsUIController *)self account];
  accountStore = [(DAVSettingsAccountsUIController *)self accountStore];
  [account2 checkValidityOnAccountStore:accountStore withConsumer:self inQueue:&_dispatch_main_q];

  return 1;
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  if (!validCopy)
  {
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v17, v18))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = errorCopy;
      _os_log_impl(&dword_0, v17, v18, "validation failed with error %@", &buf, 0xCu);
    }

    account = [(DAVSettingsAccountsUIController *)self account];
    if ([account useSSL])
    {
      domain = [errorCopy domain];
      if (([domain isEqualToString:DAAccountValidationDomain] & 1) == 0)
      {

LABEL_15:
        [(DAVSettingsAccountsUIController *)self showSSLFailureView];
        v29 = 0;
        v23 = 0;
LABEL_16:
        [(DAVSettingsAccountsUIController *)self setAttemptedValidation:1];
        [(DAVSettingsAccountsUIController *)self setValidatedSuccessfully:0];
        [(DAVSettingsAccountsUIController *)self hideProgressWithPrompt:v23];
        if (!v29)
        {
LABEL_20:
          v22 = 1;
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v21 = [errorCopy code] == &stru_20.flags + 2;

      if (!v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED_FORMAT" value:&stru_8298 table:@"Localizable"];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    settingsPlistName = [(DAVSettingsAccountsUIController *)self settingsPlistName];
    v28 = [v26 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_8298 table:settingsPlistName];
    v23 = [NSString stringWithFormat:v25, v28];

    v29 = 1;
    goto LABEL_16;
  }

  if ([(DAVSettingsAccountsUIController *)self accountNeedsAdd])
  {
    defaultDADataclassesToEnable = [(DAVSettingsAccountsUIController *)self defaultDADataclassesToEnable];
    [accountCopy setEnabled:(defaultDADataclassesToEnable >> 1) & 1 forDADataclass:2];
    [accountCopy setEnabled:(defaultDADataclassesToEnable >> 3) & 1 forDADataclass:8];
    [accountCopy setEnabled:(defaultDADataclassesToEnable >> 2) & 1 forDADataclass:4];
    [accountCopy setEnabled:(defaultDADataclassesToEnable >> 4) & 1 forDADataclass:16];
    v11 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 1;
    accountStore = [(DAVSettingsAccountsUIController *)self accountStore];
    account2 = [(DAVSettingsAccountsUIController *)self account];
    backingAccountInfo = [account2 backingAccountInfo];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1E40;
    v31[3] = &unk_8258;
    p_buf = &buf;
    v15 = v11;
    v32 = v15;
    [accountStore canSaveAccount:backingAccountInfo withCompletionHandler:v31];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(*(&buf + 1) + 24);
    if (v16)
    {
      [(DAVSettingsAccountsUIController *)self setAccountNeedsAdd:0];
      [(DAVSettingsAccountsUIController *)self setValidatedSuccessfully:1];
    }

    else
    {
      [(DAVSettingsAccountsUIController *)self showIdenticalAccountFailureView];
      [(DAVSettingsAccountsUIController *)self setAttemptedValidation:0];
    }

    _Block_object_dispose(&buf, 8);
    [(DAVSettingsAccountsUIController *)self hideProgressWithPrompt:0];
    v23 = 0;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_17:
    [(DAVSettingsAccountsUIController *)self reloadSpecifiers];
    v22 = !validCopy;
    goto LABEL_21;
  }

  v22 = 1;
  [(DAVSettingsAccountsUIController *)self setValidatedSuccessfully:1];
  [(DAVSettingsAccountsUIController *)self hideProgressWithPrompt:0];
  v23 = 0;
LABEL_21:
  [(DAVSettingsAccountsUIController *)self setAttemptedInitialValidation:v22];
  v30.receiver = self;
  v30.super_class = DAVSettingsAccountsUIController;
  [(DAVSettingsAccountsUIController *)&v30 account:accountCopy isValid:v22 & validCopy validationError:errorCopy];
}

- (BOOL)haveEnoughValues
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = [*&self->DASettingsAccountsUIController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  v5 = v4;
  v6 = &DAVSettingsAccountsUIController__metaData;
  if (qword_CF28)
  {
    if (v4)
    {
LABEL_3:
      v7 = 0;
      while (1)
      {
        v8 = [*&self->DASettingsAccountsUIController_opaque[v3] objectAtIndexedSubscript:v7];
        if (v7 == [(DAVSettingsAccountsUIController *)self indexOfCurrentlyEditingCell])
        {
          currentlyEditingCell = [(DAVSettingsAccountsUIController *)self currentlyEditingCell];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            base_props = v6[53].base_props;
            identifier = [v8 identifier];
            if ([(__objc2_prop_list *)base_props containsObject:identifier])
            {
              textField = [currentlyEditingCell textField];
              text = [textField text];
              v14 = [text length];

              v6 = &DAVSettingsAccountsUIController__metaData;
              goto LABEL_16;
            }

            v16 = 1;
LABEL_17:

            goto LABEL_19;
          }
        }

        else
        {
          currentlyEditingCell = [v8 identifier];
          if ([currentlyEditingCell isEqualToString:@"USERNAME"])
          {
            identifier = [(DAVSettingsAccountsUIController *)self account];
            usernameWithoutDomain = [identifier usernameWithoutDomain];
            goto LABEL_15;
          }

          if ([currentlyEditingCell isEqualToString:@"PASSWORD"])
          {
            identifier = [(DAVSettingsAccountsUIController *)self account];
            usernameWithoutDomain = [identifier passwordWithExpected:0];
            goto LABEL_15;
          }

          if ([currentlyEditingCell isEqualToString:@"HOST"])
          {
            identifier = [(DAVSettingsAccountsUIController *)self account];
            usernameWithoutDomain = [identifier host];
LABEL_15:
            textField = usernameWithoutDomain;
            v14 = [usernameWithoutDomain length];
LABEL_16:
            v16 = v14 != 0;

            goto LABEL_17;
          }
        }

        v16 = 1;
LABEL_19:

        if (++v7 >= v5 || (v16 & 1) == 0)
        {
          return v16;
        }
      }
    }
  }

  else
  {
    v6 = &DAVSettingsAccountsUIController__metaData;
    v17 = [[NSSet alloc] initWithObjects:{@"HOST", @"USERNAME", @"PASSWORD", 0}];
    v18 = qword_CF28;
    qword_CF28 = v17;

    if (v5)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

- (void)_updateDescriptionFromServer:(id)server
{
  serverCopy = server;
  account = [(DAVSettingsAccountsUIController *)self account];
  accountDescription = [account accountDescription];
  if (accountDescription)
  {
    v6 = accountDescription;
    account2 = [(DAVSettingsAccountsUIController *)self account];
    accountDescription2 = [account2 accountDescription];
    account3 = [(DAVSettingsAccountsUIController *)self account];
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
  accountStore = [(DAVSettingsAccountsUIController *)self accountStore];
  v14 = [accountStore hasAccountWithDescription:v12];

  if (v14)
  {
    v15 = serverCopy;

    v12 = v15;
  }

  account4 = [(DAVSettingsAccountsUIController *)self account];
  [account4 setAccountDescription:v12];

  v17 = OBJC_IVAR___PSListController__specifiers;
  v18 = [*&self->DASettingsAccountsUIController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    while (1)
    {
      v21 = [*&self->DASettingsAccountsUIController_opaque[v17] objectAtIndexedSubscript:v20];
      identifier = [v21 identifier];

      if ([identifier isEqualToString:@"DESCRIPTION"])
      {
        break;
      }

      if (v19 == ++v20)
      {
        goto LABEL_13;
      }
    }

    table = [(DAVSettingsAccountsUIController *)self table];
    v24 = [(DAVSettingsAccountsUIController *)self indexPathForIndex:v20];
    v25 = [table cellForRowAtIndexPath:v24];

    [v25 setValue:serverCopy];
  }

LABEL_13:

LABEL_14:
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v9 = [(DAVSettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];
  v10 = [propertyCopy isEqualToString:v9];

  if (![identifier isEqualToString:@"HOST"] || (v10 & 1) != 0)
  {
    if (v10 & 1 | (([identifier isEqualToString:@"USERNAME"] & 1) == 0))
    {
      if (v10 & 1 | (([identifier isEqualToString:@"DESCRIPTION"] & 1) == 0))
      {
        v20.receiver = self;
        v20.super_class = DAVSettingsAccountsUIController;
        [(DAVSettingsAccountsUIController *)&v20 setAccountProperty:propertyCopy withSpecifier:specifierCopy];
        goto LABEL_16;
      }

      if (![propertyCopy length])
      {
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        settingsPlistName = [(DAVSettingsAccountsUIController *)self settingsPlistName];
        v19 = [v17 localizedStringForKey:@"DESCRIPTION_PLACEHOLDER" value:&stru_8298 table:settingsPlistName];

        propertyCopy = v19;
      }

      account = [(DAVSettingsAccountsUIController *)self account];
      [account setAccountDescription:propertyCopy];
    }

    else
    {
      account = [propertyCopy da_stringByAddingPercentEscapesForUsername];
      account2 = [(DAVSettingsAccountsUIController *)self account];
      [account2 setUsername:account];

      if (!self->_isReloadingProperties)
      {
        self->_isReloadingProperties = 1;
        currentlyEditingCell = [(DAVSettingsAccountsUIController *)self currentlyEditingCell];
        v16 = [(DAVSettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];
        [currentlyEditingCell setValue:v16];

        [(DAVSettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION"];
        self->_isReloadingProperties = 0;
      }

      [(DAVSettingsAccountsUIController *)self setAttemptedValidation:0];
      [(DAVSettingsAccountsUIController *)self updateDoneButton];
    }

    goto LABEL_16;
  }

  [(DAVSettingsAccountsUIController *)self setHostString:propertyCopy];
  [(DAVSettingsAccountsUIController *)self _updateDescriptionFromServer:propertyCopy];
  if (!self->_isReloadingProperties)
  {
    self->_isReloadingProperties = 1;
    currentlyEditingCell2 = [(DAVSettingsAccountsUIController *)self currentlyEditingCell];
    v12 = [(DAVSettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];
    [currentlyEditingCell2 setValue:v12];

    [(DAVSettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION"];
    self->_isReloadingProperties = 0;
  }

  [(DAVSettingsAccountsUIController *)self setAttemptedValidation:0];
  [(DAVSettingsAccountsUIController *)self updateDoneButton];
LABEL_16:
  [(DAVSettingsAccountsUIController *)self setNeedsSave:1];
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"USERNAME"])
  {
    account = [(DAVSettingsAccountsUIController *)self account];
    username = [account username];

    da_stringByRemovingPercentEscapesForUsername = [username da_stringByRemovingPercentEscapesForUsername];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DAVSettingsAccountsUIController;
    da_stringByRemovingPercentEscapesForUsername = [(DAVSettingsAccountsUIController *)&v10 accountPropertyWithSpecifier:specifierCopy];
  }

  return da_stringByRemovingPercentEscapesForUsername;
}

- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  bOOLValue = [propertyCopy BOOLValue];
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"ENABLED"])
  {
    defaultDADataclassesToEnable = [(DAVSettingsAccountsUIController *)self defaultDADataclassesToEnable];
    account = [(DAVSettingsAccountsUIController *)self account];
    [account setEnabled:bOOLValue & ((defaultDADataclassesToEnable & 2) != 0) forDADataclass:2];

    account2 = [(DAVSettingsAccountsUIController *)self account];
    [account2 setEnabled:bOOLValue & ((defaultDADataclassesToEnable & 8) != 0) forDADataclass:8];

    account3 = [(DAVSettingsAccountsUIController *)self account];
    [account3 setEnabled:bOOLValue & ((defaultDADataclassesToEnable & 4) != 0) forDADataclass:4];

    account4 = [(DAVSettingsAccountsUIController *)self account];
    [account4 setEnabled:bOOLValue & ((defaultDADataclassesToEnable & 0x10) != 0) forDADataclass:16];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DAVSettingsAccountsUIController;
    [(DAVSettingsAccountsUIController *)&v15 setAccountBooleanProperty:propertyCopy withSpecifier:specifierCopy];
  }

  [(DAVSettingsAccountsUIController *)self setNeedsSave:1];
}

- (id)accountBooleanPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if (![identifier isEqualToString:@"ENABLED"])
  {
    v16.receiver = self;
    v16.super_class = DAVSettingsAccountsUIController;
    v9 = [(DAVSettingsAccountsUIController *)&v16 accountBooleanPropertyWithSpecifier:specifierCopy];
    goto LABEL_12;
  }

  defaultDADataclassesToEnable = [(DAVSettingsAccountsUIController *)self defaultDADataclassesToEnable];
  v7 = defaultDADataclassesToEnable;
  if ((defaultDADataclassesToEnable & 2) != 0)
  {
    account = [(DAVSettingsAccountsUIController *)self account];
    v8 = [account enabledForDADataclass:2];

    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  if ((defaultDADataclassesToEnable & 8) != 0)
  {
LABEL_7:
    account2 = [(DAVSettingsAccountsUIController *)self account];
    v8 = (v8 | [account2 enabledForDADataclass:8]);
  }

LABEL_8:
  if ((v7 & 4) != 0)
  {
    account3 = [(DAVSettingsAccountsUIController *)self account];
    v8 = (v8 | [account3 enabledForDADataclass:4]);

    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v7 & 0x10) != 0)
  {
LABEL_10:
    account4 = [(DAVSettingsAccountsUIController *)self account];
    v8 = (v8 | [account4 enabledForDADataclass:16]);
  }

LABEL_11:
  v9 = [NSNumber numberWithBool:v8];
LABEL_12:
  v13 = v9;

  return v13;
}

- (id)localizedValidationFailureTitleString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  settingsPlistName = [(DAVSettingsAccountsUIController *)self settingsPlistName];
  v5 = [v3 localizedStringForKey:@"DAV_ACCOUNT" value:&stru_8298 table:settingsPlistName];

  return v5;
}

- (id)localizedConfirmSaveUnvalidatedAccountMessageString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  settingsPlistName = [(DAVSettingsAccountsUIController *)self settingsPlistName];
  v5 = [v3 localizedStringForKey:@"CONFIRM_SAVE_ACCOUNT_ANYWAYS_MESSAGE" value:&stru_8298 table:settingsPlistName];

  return v5;
}

- (id)localizedAccountSetupTitleString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  settingsPlistName = [(DAVSettingsAccountsUIController *)self settingsPlistName];
  v5 = [v3 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_8298 table:settingsPlistName];

  return v5;
}

- (id)acAccountTypeString
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DAVSettingsAccountsUIController.m" lineNumber:391 description:@"MUST be overridden in subclass"];

  return 0;
}

- (int64_t)defaultDADataclassesToEnable
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DAVSettingsAccountsUIController.m" lineNumber:392 description:@"MUST be overridden in subclass"];

  return 0;
}

- (id)settingsPlistName
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DAVSettingsAccountsUIController.m" lineNumber:393 description:@"MUST be overridden in subclass"];

  return 0;
}

@end