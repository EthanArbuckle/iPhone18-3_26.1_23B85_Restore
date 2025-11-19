@interface SubCalSettingsAccountsUIController
- (BOOL)haveEnoughValues;
- (BOOL)validateAccount;
- (NSArray)plistSpecifiers;
- (id)_primarySpecifiers;
- (id)_secondarySpecifiers;
- (id)accountBooleanPropertyWithSpecifier:(id)a3;
- (id)accountSpecifiers;
- (id)localizedAccountSetupTitleString;
- (id)localizedConfirmSaveUnvalidatedAccountMessageString;
- (id)localizedValidationFailureTitleString;
- (id)newDefaultAccount;
- (void)_insertSecondarySpecifiers;
- (void)_reloadHostDependentSepcifiers;
- (void)_setHostKeyboardForLoneSpecifierOnTraits:(id)a3;
- (void)_setHostKeyboardToDefaultOnTraits:(id)a3;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)cancelButtonTapped:(id)a3;
- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
@end

@implementation SubCalSettingsAccountsUIController

- (void)_setHostKeyboardForLoneSpecifierOnTraits:(id)a3
{
  v3 = a3;
  [v3 setReturnKeyType:4];
  [v3 setEnablesReturnKeyAutomatically:1];
}

- (void)_setHostKeyboardToDefaultOnTraits:(id)a3
{
  v3 = a3;
  [v3 setReturnKeyType:0];
  [v3 setEnablesReturnKeyAutomatically:0];
}

- (NSArray)plistSpecifiers
{
  plistSpecifiers = self->_plistSpecifiers;
  if (!plistSpecifiers)
  {
    v4 = [(SubCalSettingsAccountsUIController *)self loadSpecifiersFromPlistName:@"SubCalAccountSetup" target:self];
    v5 = self->_plistSpecifiers;
    self->_plistSpecifiers = v4;

    plistSpecifiers = self->_plistSpecifiers;
  }

  return plistSpecifiers;
}

- (id)_primarySpecifiers
{
  v2 = [(SubCalSettingsAccountsUIController *)self plistSpecifiers];
  v3 = [v2 subarrayWithRange:{2, 2}];

  return v3;
}

- (id)_secondarySpecifiers
{
  v3 = [(SubCalSettingsAccountsUIController *)self plistSpecifiers];
  v4 = [v3 count] - 4;

  v5 = [(SubCalSettingsAccountsUIController *)self plistSpecifiers];
  v6 = [v5 subarrayWithRange:{4, v4}];

  return v6;
}

- (void)_insertSecondarySpecifiers
{
  v3 = [(SubCalSettingsAccountsUIController *)self specifierForID:@"HOST"];
  v17 = [v3 properties];

  v4 = [v17 objectForKeyedSubscript:PSTableCellKey];
  v5 = [v4 textField];

  [(SubCalSettingsAccountsUIController *)self _setHostKeyboardToDefaultOnTraits:v5];
  v6 = [(SubCalSettingsAccountsUIController *)self account];
  v7 = [v6 accountDescription];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = [(SubCalSettingsAccountsUIController *)self account];
    v10 = [v9 host];

    v11 = DAAccountDescriptionFromHostname();
    v12 = [(SubCalSettingsAccountsUIController *)self accountStore];
    v13 = [v12 hasAccountWithDescription:v11];

    if (v13)
    {
      v14 = v10;

      v11 = v14;
    }

    v15 = [(SubCalSettingsAccountsUIController *)self account];
    [v15 setAccountDescription:v11];
  }

  v16 = [(SubCalSettingsAccountsUIController *)self _secondarySpecifiers];
  [(SubCalSettingsAccountsUIController *)self insertContiguousSpecifiers:v16 afterSpecifierID:@"HOST" animated:1];
}

- (id)newDefaultAccount
{
  v2 = [(SubCalSettingsAccountsUIController *)self accountStore];
  v3 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierSubscribedCalendar];

  v4 = [[ACAccount alloc] initWithAccountType:v3];
  v5 = [v3 supportedDataclasses];
  v6 = [v5 mutableCopy];

  [v4 setProvisionedDataclasses:v6];
  v7 = [DAAccount daAccountSubclassWithBackingAccountInfo:v4];
  [v7 setEnabled:1 forDADataclass:4];

  return v7;
}

- (id)accountSpecifiers
{
  v3 = [(SubCalSettingsAccountsUIController *)self plistSpecifiers];
  if (([(SubCalSettingsAccountsUIController *)self isSettingUpNewAccount]& 1) != 0)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    [v4 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_82D0 table:@"SubCalAccountSetup"];
  }

  else
  {
    v4 = [(SubCalSettingsAccountsUIController *)self account];
    [v4 accountDescription];
  }
  v5 = ;
  [(SubCalSettingsAccountsUIController *)self setTitle:v5];

  if ([(SubCalSettingsAccountsUIController *)self isSettingUpNewAccount]&& ([(SubCalSettingsAccountsUIController *)self attemptedValidation]& 1) == 0)
  {
    v36 = [(SubCalSettingsAccountsUIController *)self _primarySpecifiers];
  }

  else
  {
    v6 = [(SubCalSettingsAccountsUIController *)self plistSpecifiers];
    v7 = [v6 mutableCopy];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SUBCAL_INFO" value:&stru_82D0 table:@"SubCalAccountSetup"];
    v10 = [PSSpecifier groupSpecifierWithName:v9];
    [v7 setObject:v10 atIndexedSubscript:2];

    if ([(SubCalSettingsAccountsUIController *)self isSettingUpNewAccount])
    {
      v11 = [v7 subarrayWithRange:{3, objc_msgSend(v7, "count") - 3}];
    }

    else
    {
      v12 = [(SubCalSettingsAccountsUIController *)self account];
      v13 = [v12 accountDescription];
      [(SubCalSettingsAccountsUIController *)self setTitle:v13];

      v14 = +[DADiagnosticsPSController linkSpecifier];
      if (v14)
      {
        v15 = +[PSSpecifier emptyGroupSpecifier];
        [v7 addObject:v15];

        [v7 addObject:v14];
      }

      if ([(SubCalSettingsAccountsUIController *)self accountIsManaged])
      {
        v43 = v14;
        v16 = [(SubCalSettingsAccountsUIController *)self account];
        v17 = [v16 backingAccountInfo];
        v18 = [v17 mcBackingProfile];

        if (v18)
        {
          v19 = [NSBundle bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_82D0 table:@"SubCalAccountSetup"];
          v21 = [v18 friendlyName];
          v22 = [NSString stringWithFormat:v20, v21];

          v23 = [(SubCalSettingsAccountsUIController *)self lastGroupSpecifierInSpecifiers:v7];
          if (!v23)
          {
            v24 = DALoggingwithCategory();
            v25 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v24, v25))
            {
              *buf = 138412290;
              v51 = v7;
              _os_log_impl(&dword_0, v24, v25, "No group found, not setting the profile text.  Specifiers: %@", buf, 0xCu);
            }
          }

          [v23 setProperty:v22 forKey:PSFooterTextGroupKey];
        }

        v42 = v18;
        v26 = [NSSet setWithObjects:@"HOST", @"USERNAME", @"PASSWORD", @"DESCRIPTION", @"USE_SSL", 0];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v44 = v7;
        v27 = v7;
        v28 = [v27 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v46;
          v31 = PSEnabledKey;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v46 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v45 + 1) + 8 * i);
              v34 = [v33 identifier];
              v35 = [v26 containsObject:v34];

              if (v35)
              {
                [v33 setProperty:&__kCFBooleanFalse forKey:v31];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v29);
        }

        v14 = v43;
        v7 = v44;
      }

      else
      {
        v37 = +[PSSpecifier emptyGroupSpecifier];
        [v7 addObject:v37];

        v38 = [NSBundle bundleForClass:objc_opt_class()];
        v39 = [v38 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_82D0 table:@"Localizable"];
        v40 = [PSSpecifier deleteButtonSpecifierWithName:v39 target:self action:"deleteAccountButtonTapped"];

        [v7 addObject:v40];
      }

      v11 = v7;
    }

    v36 = v11;
  }

  return v36;
}

- (BOOL)validateAccount
{
  v3 = [*&self->DASettingsAccountsUIController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v3 resignFirstResponder];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VERIFYING" value:&stru_82D0 table:@"Localizable"];
  [(SubCalSettingsAccountsUIController *)self startValidationWithPrompt:v5];

  v6 = [(SubCalSettingsAccountsUIController *)self account];
  if (([v6 useSSL] & 1) == 0)
  {
    if ([(SubCalSettingsAccountsUIController *)self _showingSecondarySpecifiers])
    {
      [v6 setAllowInsecureConnection:1];
    }

    else
    {
      [v6 setUseSSL:1];
    }
  }

  v7 = [(SubCalSettingsAccountsUIController *)self accountStore];
  [v6 checkValidityOnAccountStore:v7 withConsumer:self inQueue:&_dispatch_main_q];

  return 1;
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v41 = v6;
  if (!v6)
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_0, v10, v11, "validation failed with error %@", &buf, 0xCu);
    }

    [(SubCalSettingsAccountsUIController *)self setValidatedSuccessfully:0];
    if ([v9 isSubCalAuthError])
    {
      v12 = [v8 username];
      if ([v12 length])
      {
        v13 = [v8 passwordWithExpected:0];
        v14 = [v13 length] == 0;

        if (v14)
        {
          v15 = @"ACCOUNT_VERIFICATION_AUTH_CHALLENGE";
        }

        else
        {
          v15 = @"ACCOUNT_VERIFICATION_FAILED";
        }
      }

      else
      {

        v15 = @"ACCOUNT_VERIFICATION_AUTH_CHALLENGE";
      }

      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v28 localizedStringForKey:v15 value:&stru_82D0 table:@"SubCalAccountSetup"];

      if (![(SubCalSettingsAccountsUIController *)self _showingSecondarySpecifiers])
      {
        v29 = [(SubCalSettingsAccountsUIController *)self account];
        [v29 setUseSSL:1];

        [(SubCalSettingsAccountsUIController *)self _insertSecondarySpecifiers];
      }
    }

    else
    {
      v17 = [(SubCalSettingsAccountsUIController *)self account];
      v18 = [v17 useSSL];

      if (v18)
      {
        [(SubCalSettingsAccountsUIController *)self showSSLFailureView];
        v19 = 0;
      }

      else
      {
        v27 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v27 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_82D0 table:@"SubCalAccountSetup"];
      }
    }

    if (![(SubCalSettingsAccountsUIController *)self _showingSecondarySpecifiers])
    {
      [(SubCalSettingsAccountsUIController *)self _insertSecondarySpecifiers];
    }

    goto LABEL_26;
  }

  if ([(SubCalSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    if ([(SubCalSettingsAccountsUIController *)self _showingSecondarySpecifiers])
    {
      [(SubCalSettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION" animated:1];
      [(SubCalSettingsAccountsUIController *)self reloadSpecifierID:@"USE_SSL" animated:1];
    }

    else
    {
      [(SubCalSettingsAccountsUIController *)self _insertSecondarySpecifiers];
    }

    if ([(SubCalSettingsAccountsUIController *)self accountNeedsAdd])
    {
      v20 = [(SubCalSettingsAccountsUIController *)self account];
      [v20 setEnabled:1 forDADataclass:4];

      v21 = [(SubCalSettingsAccountsUIController *)self account];
      [v21 saveTmpICSData];

      v22 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v48 = 0x2020000000;
      v49 = 1;
      v23 = [(SubCalSettingsAccountsUIController *)self accountStore];
      v24 = [(SubCalSettingsAccountsUIController *)self account];
      v25 = [v24 backingAccountInfo];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_224C;
      v43[3] = &unk_8210;
      p_buf = &buf;
      v26 = v22;
      v44 = v26;
      [v23 canSaveAccount:v25 withCompletionHandler:v43];

      dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
      v16 = *(*(&buf + 1) + 24);
      if (v16)
      {
        [(SubCalSettingsAccountsUIController *)self setAccountNeedsAdd:0];
        [(SubCalSettingsAccountsUIController *)self setValidatedSuccessfully:1];
      }

      else
      {
        [(SubCalSettingsAccountsUIController *)self showIdenticalAccountFailureView];
        [(SubCalSettingsAccountsUIController *)self setAttemptedValidation:0];
      }

      _Block_object_dispose(&buf, 8);
      goto LABEL_29;
    }

    v19 = 0;
LABEL_26:
    v16 = 1;
    goto LABEL_30;
  }

  v16 = 1;
  [(SubCalSettingsAccountsUIController *)self setValidatedSuccessfully:1];
LABEL_29:
  v19 = 0;
LABEL_30:
  if ([v19 length])
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"OK" value:&stru_82D0 table:@"Localizable"];
    v46 = v31;
    v32 = [NSArray arrayWithObjects:&v46 count:1];
    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"SUBCAL_ACCOUNT" value:&stru_82D0 table:@"SubCalAccountSetup"];
    [(SubCalSettingsAccountsUIController *)self showAlertWithButtons:v32 title:v34 message:v19 completion:0];
  }

  v35 = [NSBundle bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_82D0 table:@"SubCalAccountSetup"];
  [(SubCalSettingsAccountsUIController *)self stopValidationWithPrompt:v36 showButtons:1];

  v37 = [(SubCalSettingsAccountsUIController *)self specifierForID:@"HOST"];
  v38 = [v37 properties];

  v39 = [v38 objectForKeyedSubscript:PSTableCellKey];
  v40 = [v39 textField];
  [v40 setEnabled:1];

  v42.receiver = self;
  v42.super_class = SubCalSettingsAccountsUIController;
  [(SubCalSettingsAccountsUIController *)&v42 account:v8 isValid:v16 & v41 validationError:v9];
}

- (BOOL)haveEnoughValues
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = [*&self->DASettingsAccountsUIController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  v5 = v4;
  if (qword_C940 == -1)
  {
    if (v4)
    {
LABEL_3:
      v6 = 0;
      v7 = &DALoggingwithCategory_ptr;
      v20 = v5;
      while (1)
      {
        v8 = [*&self->DASettingsAccountsUIController_opaque[v3] objectAtIndexedSubscript:v6];
        if (v6 == [(SubCalSettingsAccountsUIController *)self indexOfCurrentlyEditingCell])
        {
          v9 = [(SubCalSettingsAccountsUIController *)self currentlyEditingCell];
          v10 = v7[47];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v11 = qword_C938;
          v12 = [v8 identifier];
          if (![v11 containsObject:v12])
          {
            v18 = 1;
            goto LABEL_13;
          }

          v13 = [v9 textField];
          [v13 text];
          v14 = v3;
          v16 = v15 = v7;
          v17 = [v16 length];

          v7 = v15;
          v3 = v14;
          v5 = v20;
        }

        else
        {
          v9 = [v8 identifier];
          if (![v9 isEqualToString:@"HOST"])
          {
LABEL_11:
            v18 = 1;
            goto LABEL_14;
          }

          v12 = [(SubCalSettingsAccountsUIController *)self account];
          v13 = [v12 host];
          v17 = [v13 length];
        }

        v18 = v17 != 0;

LABEL_13:
LABEL_14:

        if (++v6 >= v5 || (v18 & 1) == 0)
        {
          return v18;
        }
      }
    }
  }

  else
  {
    sub_2B88();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

- (void)_reloadHostDependentSepcifiers
{
  [(SubCalSettingsAccountsUIController *)self reloadSpecifierID:@"HOST" animated:1];
  v3 = [(SubCalSettingsAccountsUIController *)self account];
  v4 = [v3 username];

  if (!v4)
  {
LABEL_4:

    [(SubCalSettingsAccountsUIController *)self reloadSpecifierID:@"USE_SSL" animated:1];
    return;
  }

  if ([(SubCalSettingsAccountsUIController *)self _showingSecondarySpecifiers])
  {
    [(SubCalSettingsAccountsUIController *)self reloadSpecifierID:@"USERNAME" animated:1];
    [(SubCalSettingsAccountsUIController *)self reloadSpecifierID:@"PASSWORD" animated:1];
    goto LABEL_4;
  }

  [(SubCalSettingsAccountsUIController *)self _insertSecondarySpecifiers];
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [(SubCalSettingsAccountsUIController *)self accountPropertyWithSpecifier:v7];
  v10 = [v6 isEqualToString:v9];

  if ([v8 isEqualToString:@"HOST"])
  {
    v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v12 = [v6 stringByTrimmingCharactersInSet:v11];

    v13 = [(SubCalSettingsAccountsUIController *)self account];
    [v13 setHost:v12];

    if (v12)
    {
      v14 = [(SubCalSettingsAccountsUIController *)self account];
      v15 = [v14 host];
      v16 = [v12 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        [(SubCalSettingsAccountsUIController *)self _reloadHostDependentSepcifiers];
      }
    }

    [(SubCalSettingsAccountsUIController *)self updateDoneButton];
LABEL_11:

    goto LABEL_12;
  }

  if (!(v10 & 1 | (([v8 isEqualToString:@"DESCRIPTION"] & 1) == 0)))
  {
    if (![v6 length])
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"DESCRIPTION_PLACEHOLDER" value:&stru_82D0 table:@"SubCalAccountSetup"];

      v6 = v18;
    }

    v12 = [(SubCalSettingsAccountsUIController *)self account];
    [v12 setAccountDescription:v6];
    goto LABEL_11;
  }

  v19.receiver = self;
  v19.super_class = SubCalSettingsAccountsUIController;
  [(SubCalSettingsAccountsUIController *)&v19 setAccountProperty:v6 withSpecifier:v7];
LABEL_12:
  [(SubCalSettingsAccountsUIController *)self setNeedsSave:1];
}

- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = [v7 identifier];
  [(SubCalSettingsAccountsUIController *)self setNeedsSave:1];
  if ([v9 isEqualToString:@"REMOVE_ALARMS"])
  {
    v10 = [(SubCalSettingsAccountsUIController *)self account];
    [v10 setShouldRemoveAlarms:v8];
  }

  else
  {
    if (![v9 isEqualToString:@"ENABLED"])
    {
      v11.receiver = self;
      v11.super_class = SubCalSettingsAccountsUIController;
      [(SubCalSettingsAccountsUIController *)&v11 setAccountBooleanProperty:v6 withSpecifier:v7];
      goto LABEL_7;
    }

    v10 = [(SubCalSettingsAccountsUIController *)self account];
    [v10 setEnabled:v8 forDADataclass:4];
  }

LABEL_7:
}

- (id)accountBooleanPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"REMOVE_ALARMS"])
  {
    v6 = [(SubCalSettingsAccountsUIController *)self account];
    v7 = [v6 shouldRemoveAlarms];
LABEL_5:
    v8 = v7;

    v9 = [NSNumber numberWithBool:v8];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"ENABLED"])
  {
    v6 = [(SubCalSettingsAccountsUIController *)self account];
    v7 = [v6 enabledForDADataclass:4];
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = SubCalSettingsAccountsUIController;
  v9 = [(SubCalSettingsAccountsUIController *)&v12 accountBooleanPropertyWithSpecifier:v4];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(SubCalSettingsAccountsUIController *)self account];
  [v5 clearTmpICSData];

  v6.receiver = self;
  v6.super_class = SubCalSettingsAccountsUIController;
  [(SubCalSettingsAccountsUIController *)&v6 cancelButtonTapped:v4];
}

- (id)localizedValidationFailureTitleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SUBCAL_ACCOUNT" value:&stru_82D0 table:@"SubCalAccountSetup"];

  return v3;
}

- (id)localizedConfirmSaveUnvalidatedAccountMessageString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONFIRM_SAVE_ACCOUNT_ANYWAYS_MESSAGE" value:&stru_82D0 table:@"SubCalAccountSetup"];

  return v3;
}

- (id)localizedAccountSetupTitleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_82D0 table:@"SubCalAccountSetup"];

  return v3;
}

@end