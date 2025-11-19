@interface ESSettingsAccountsUIController
- (BOOL)backingAccountIsNewAccountForAutoDiscovery;
- (BOOL)haveEnoughValues;
- (BOOL)isRunningFromMobileMailApp;
- (BOOL)validateAccount;
- (DAAccount)account;
- (id)accountBooleanPropertyWithSpecifier:(id)a3;
- (id)accountFromSpecifier;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)currentlyEditingCell;
- (id)daAccountWithBackingAccountInfo:(id)a3;
- (id)lastGroupSpecifierInSpecifiers:(id)a3;
- (id)localizedAccountTitleString;
- (id)newDefaultAccount;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int)indexOfCurrentlyEditingCell;
- (void)_beginAccountValidation;
- (void)_confirmSaveUnvalidatedAccount;
- (void)_deleteAccount;
- (void)_dismissAndUpdateParent;
- (void)_finishSaveAccountDismissWhenDone:(BOOL)a3;
- (void)_saveAccountDismissWhenDone:(BOOL)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)deleteAccountButtonTapped;
- (void)didConfirmSaveUnvalidatedAccount:(BOOL)a3;
- (void)didConfirmTryWithoutSSL:(BOOL)a3;
- (void)doneButtonTapped:(id)a3;
- (void)finishedAccountSetup;
- (void)hideProgressWithPrompt:(id)a3;
- (void)propertyValueChanged:(id)a3;
- (void)reloadAccount;
- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
- (void)setHostString:(id)a3;
- (void)setNeedsSaveAndValidation:(BOOL)a3;
- (void)showAlertWithButtons:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)showCanSaveAccountFailureView;
- (void)showIdenticalAccountFailureView;
- (void)showSSLFailureView;
- (void)updateDoneButton;
@end

@implementation ESSettingsAccountsUIController

- (DAAccount)account
{
  if (!self->_account)
  {
    v5 = [(ESSettingsAccountsUIController *)self accountFromSpecifier];
    account = self->_account;
    self->_account = v5;

    if (self->_account)
    {
      if (self->_addingAccountFromEmailField)
      {
        [(ESSettingsAccountsUIController *)self setIsSettingUpNewAccount:1];
        [(ESSettingsAccountsUIController *)self setAccountNeedsAdd:1];
      }

      else
      {
        [(ESSettingsAccountsUIController *)self setAttemptedValidation:1];
        [(ESSettingsAccountsUIController *)self setValidatedSuccessfully:1];
      }
    }

    else
    {
      [(ESSettingsAccountsUIController *)self setIsSettingUpNewAccount:1];
      [(ESSettingsAccountsUIController *)self setAccountNeedsAdd:1];
      v7 = [(ESSettingsAccountsUIController *)self newDefaultAccount];
      v8 = self->_account;
      self->_account = v7;

      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [(DAAccount *)self->_account backingAccountInfo];
        v12 = [v11 identifier];
        v13 = [(DAAccount *)self->_account backingAccountInfo];
        v14 = [v13 username];
        v16 = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_0, v9, v10, "Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v16, 0x16u);
      }

      v15 = [(DAAccount *)self->_account backingAccountInfo];
      [v15 setAuthenticated:1];
    }
  }

  v3 = self->_account;

  return v3;
}

- (BOOL)backingAccountIsNewAccountForAutoDiscovery
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(ESSettingsAccountsUIController *)self specifier];
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:ACUIAccountKey];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:ACAccountPropertyIdentityEmailAddress];
      if (v6)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v8 = [v5 username];
        if (v8)
        {
          v7 = [v5 isAuthenticated] ^ 1;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)reloadAccount
{
  v3 = [(ESSettingsAccountsUIController *)self account];
  [v3 reload];

  v5 = [(ESSettingsAccountsUIController *)self account];
  v4 = [v5 backingAccountInfo];
  [v4 setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  v2 = [(ESSettingsAccountsUIController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:ACUIAccountKey];

  if (v4)
  {
    v5 = +[DAAccountLoader sharedInstance];
    v6 = [v5 daemonAppropriateAccountClassForACAccount:v4];

    v7 = [[v6 alloc] initWithBackingAccountInfo:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)daAccountWithBackingAccountInfo:(id)a3
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, v4, "Individual Settings Bundles MUST create their own da accounts", v6, 2u);
  }

  return 0;
}

- (id)newDefaultAccount
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "Individual Settings Bundles MUST create their own default accounts", v5, 2u);
  }

  return 0;
}

- (id)specifiers
{
  if (![(ESSettingsAccountsUIController *)self haveRegisteredForAccountsChanged])
  {
    [(ESSettingsAccountsUIController *)self setHaveRegisteredForAccountsChanged:1];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_accountsChanged:" name:ACAccountStoreDidChangeNotification object:0];
  }

  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = [(ESSettingsAccountsUIController *)self accountSpecifiers];
    v7 = *&self->ACUIViewController_opaque[v4];
    *&self->ACUIViewController_opaque[v4] = v6;

    v5 = *&self->ACUIViewController_opaque[v4];
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = ESSettingsAccountsUIController;
  v6 = a4;
  v7 = [(ESSettingsAccountsUIController *)&v16 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ESSettingsAccountsUIController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];

  v9 = [(ESSettingsAccountsUIController *)self specifierAtIndex:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 identifier];
    v11 = [v10 isEqualToString:@"DESCRIPTION"];

    if ((v11 & 1) == 0)
    {
      v12 = [v7 textField];
      if (v12)
      {
        v13 = +[NSNotificationCenter defaultCenter];
        [v13 removeObserver:self name:0 object:v12];

        v14 = +[NSNotificationCenter defaultCenter];
        [v14 addObserver:self selector:"propertyValueChanged:" name:UITextFieldTextDidChangeNotification object:v12];
      }
    }
  }

  return v7;
}

- (void)showAlertWithButtons:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v21 = self;
  v9 = a3;
  v22 = a6;
  v10 = [UIAlertController alertControllerWithTitle:a4 message:a5 preferredStyle:1];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * v16);
        v19 = [v11 count] > 1 && v14 == 0;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_312C;
        v23[3] = &unk_30820;
        v24 = v22;
        v25 = v14;
        v20 = [UIAlertAction actionWithTitle:v17 style:v19 handler:v23];
        ++v14;
        [v10 addAction:v20];

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  [(ESSettingsAccountsUIController *)v21 presentViewController:v10 animated:1 completion:0];
}

- (BOOL)validateAccount
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "Individual Settings Bundles should handle account validation", v5, 2u);
  }

  return 0;
}

- (void)showIdenticalAccountFailureView
{
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v7 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_TITLE" value:&stru_30C98 table:@"DataAccess"];
  v4 = [(ESSettingsAccountsUIController *)self account];
  v5 = [v4 localizedIdenticalAccountFailureMessage];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v3, v5, [v6 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Localizable"]);
}

- (void)showCanSaveAccountFailureView
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Localizable"];
  v10 = v4;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ACCOUNT_CANSAVE_FAILED_TITLE" value:&stru_30C98 table:@"DataAccess"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACCOUNT_CANSAVE_FAILED_BODY_FORMAT_EXCHANGE" value:&stru_30C98 table:@"DataAccess"];
  [(ESSettingsAccountsUIController *)self showAlertWithButtons:v5 title:v7 message:v9 completion:0];
}

- (void)showSSLFailureView
{
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"CANCEL" value:&stru_30C98 table:@"Localizable"];
  v13[0] = v10;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONTINUE" value:&stru_30C98 table:@"Localizable"];
  v13[1] = v3;
  v4 = [NSArray arrayWithObjects:v13 count:2];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SETUP_WITHOUT_SSL_TITLE" value:&stru_30C98 table:@"Localizable"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SETUP_WITHOUT_SSL_BODY" value:&stru_30C98 table:@"Localizable"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_36A8;
  v12[3] = &unk_30848;
  v12[4] = self;
  [(ESSettingsAccountsUIController *)self showAlertWithButtons:v4 title:v6 message:v8 completion:v12];
}

- (void)didConfirmTryWithoutSSL:(BOOL)a3
{
  if (a3)
  {
    v4 = [(ESSettingsAccountsUIController *)self specifierForID:@"USE_SSL"];
    v9 = [v4 properties];

    v5 = [v9 objectForKeyedSubscript:PSTableCellKey];
    v6 = [v5 control];
    [v6 setOn:0 animated:1];

    v7 = [(ESSettingsAccountsUIController *)self account];
    [v7 setUseSSL:0];

    [(ESSettingsAccountsUIController *)self _beginAccountValidation];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_30C98 table:@"Localizable"];
    [(ESSettingsAccountsUIController *)self hideProgressWithPrompt:v8];
  }
}

- (void)didConfirmSaveUnvalidatedAccount:(BOOL)a3
{
  if (a3)
  {
    [(ESSettingsAccountsUIController *)self setConfirmedUnvalidatedAccount:1];
    v4 = [(ESSettingsAccountsUIController *)self account];
    [(ESSettingsAccountsUIController *)self account:v4 isValid:1 validationError:0];
  }
}

- (void)_confirmSaveUnvalidatedAccount
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SAVE" value:&stru_30C98 table:@"Localizable"];
  v11[0] = v4;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"EDIT" value:&stru_30C98 table:@"Localizable"];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [(ESSettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountTitleString];
  v9 = [(ESSettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountMessageString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3A18;
  v10[3] = &unk_30848;
  v10[4] = self;
  [(ESSettingsAccountsUIController *)self showConfirmationWithButtons:v7 title:v8 message:v9 destructive:0 completion:v10];
}

- (void)_beginAccountValidation
{
  if ([(ESSettingsAccountsUIController *)self validateAccount])
  {

    [(ESSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:1];
  }
}

- (void)finishedAccountSetup
{
  [(ESSettingsAccountsUIController *)self setTransitioningToFinishedAccountSetup:0];
  +[DAAggDReporter reportActiveExchangeOAuthAccountsCount];
  if ([(ESSettingsAccountsUIController *)self isSettingUpNewAccount]&& ![(ESSettingsAccountsUIController *)self dismissesAfterInitialSetup])
  {
    if ([(ESSettingsAccountsUIController *)self isSettingUpNewAccount]&& ![(ESSettingsAccountsUIController *)self transitionsAfterInitialSetup])
    {

      [(ESSettingsAccountsUIController *)self updateDoneButton];
    }

    else if ([(ESSettingsAccountsUIController *)self transitionsAfterInitialSetup])
    {
      v3 = [(ESSettingsAccountsUIController *)self parentController];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v7 = [(ESSettingsAccountsUIController *)self parentController];
        v5 = [(ESSettingsAccountsUIController *)self account];
        v6 = [v5 backingAccountInfo];
        [v7 controller:self didFinishSettingUpAccount:v6];
      }
    }
  }

  else
  {

    [(ESSettingsAccountsUIController *)self doneButtonTapped:self];
  }
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(ESSettingsAccountsUIController *)self table];
  v5 = [v4 firstResponder];
  [v5 resignFirstResponder];

  if ([(ESSettingsAccountsUIController *)self attemptedValidation])
  {
    if ([(ESSettingsAccountsUIController *)self validatedSuccessfully])
    {
      if (self->_needsSave)
      {

        [(ESSettingsAccountsUIController *)self _saveAccountDismissWhenDone:?];
      }

      else
      {

        [(ESSettingsAccountsUIController *)self dismissAnimated:1];
      }
    }

    else
    {

      [(ESSettingsAccountsUIController *)self _confirmSaveUnvalidatedAccount];
    }
  }

  else
  {
    [(ESSettingsAccountsUIController *)self setAttemptedValidation:1];

    [(ESSettingsAccountsUIController *)self _beginAccountValidation];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  if ([(ESSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    v4 = [(ESSettingsAccountsUIController *)self account];
    [v4 cleanupAccountFiles];
  }

  v5 = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v5 resignFirstResponder];

  v6 = [(ESSettingsAccountsUIController *)self account];
  [v6 reload];

  [(ESSettingsAccountsUIController *)self dismissAnimated:1];
}

- (void)setNeedsSaveAndValidation:(BOOL)a3
{
  if (a3)
  {
    self->_attemptedValidation = 0;
  }

  self->_needsSave = 1;
  [(ESSettingsAccountsUIController *)self updateDoneButton];
}

- (void)updateDoneButton
{
  if (self->_attemptedValidation || [(ESSettingsAccountsUIController *)self haveEnoughValues])
  {
    v3 = [(ESSettingsAccountsUIController *)self transitioningToFinishedAccountSetup]^ 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(ESSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    attemptedValidation = self->_attemptedValidation;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (attemptedValidation)
    {
      v7 = @"SAVE";
    }

    else
    {
      v7 = @"NEXT";
    }
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"DONE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_30C98 table:@"Localizable"];
  v9 = [(ESSettingsAccountsUIController *)self doneButton];
  [v9 setTitle:v8];

  v10 = [(ESSettingsAccountsUIController *)self doneButton];
  [v10 setEnabled:v3];
}

- (BOOL)haveEnoughValues
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "Individual Settings Bundles should know if they have enough values", v5, 2u);
  }

  return 0;
}

- (void)propertyValueChanged:(id)a3
{
  [(ESSettingsAccountsUIController *)self setAttemptedValidation:0];

  [(ESSettingsAccountsUIController *)self updateDoneButton];
}

- (void)setHostString:(id)a3
{
  v4 = a3;
  [(ESSettingsAccountsUIController *)self setDidSetFullHostURL:0];
  v5 = [v4 rangeOfString:@"/"];
  v6 = [v4 rangeOfString:@":"];
  if (![v4 length] || v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v7 = [NSURL URLWithString:v4];
  v8 = [v7 host];
  if (v8)
  {
    goto LABEL_7;
  }

  if (([v4 hasPrefix:@"http"] & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"https://%@", v4];
    v9 = [NSURL URLWithString:v8];

    v7 = v9;
LABEL_7:
  }

  v10 = [v7 host];

  if (v10)
  {
    v11 = [(ESSettingsAccountsUIController *)self account];
    [v11 setPrincipalURL:v7];

    [(ESSettingsAccountsUIController *)self setDidSetFullHostURL:1];
    v12 = [(ESSettingsAccountsUIController *)self account];
    [v12 setShouldDoInitialAutodiscovery:0];
  }

LABEL_11:
  if (![(ESSettingsAccountsUIController *)self didSetFullHostURL])
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_0, v13, v14, "Couldn't parse host string %@ into a URL. Using it directly", buf, 0xCu);
    }

    v15 = [(ESSettingsAccountsUIController *)self account];
    [v15 setHost:v4];

    v16 = [(ESSettingsAccountsUIController *)self account];
    [v16 setShouldDoInitialAutodiscovery:0];
  }
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [v6 identifier];
  v8 = [(ESSettingsAccountsUIController *)self accountPropertyWithSpecifier:v6];

  if ([v25 isEqualToString:v8])
  {
    [v7 isEqualToString:@"EMAIL"];
  }

  else
  {
    if ([v25 length])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 length] == 0;
    }

    if ([v7 isEqualToString:@"EMAIL"] && !v9)
    {
      v11 = [(ESSettingsAccountsUIController *)self account];
      [v11 setEmailAddress:v25];

      v12 = [(ESSettingsAccountsUIController *)self account];
      v13 = [v12 accountDescription];
      v14 = [v13 length];

      if (v14)
      {
        goto LABEL_19;
      }

      v10 = [(ESSettingsAccountsUIController *)self _defaultAccountDescription];
      v15 = [(ESSettingsAccountsUIController *)self accountStore];
      v16 = [v15 hasAccountWithDescription:v10];

      if (v16)
      {
        v17 = v25;

        v10 = v17;
      }

      v18 = [(ESSettingsAccountsUIController *)self account];
      [v18 setAccountDescription:v10];

      [(ESSettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION"];
      goto LABEL_18;
    }
  }

  if ([v7 isEqualToString:@"HOST"])
  {
    [(ESSettingsAccountsUIController *)self setHostString:v25];
    goto LABEL_19;
  }

  if ([v7 isEqualToString:@"USERNAME"])
  {
    v10 = [(ESSettingsAccountsUIController *)self account];
    [v10 setUsername:v25];
LABEL_18:

    goto LABEL_19;
  }

  if ([v7 isEqualToString:@"PASSWORD"])
  {
    v10 = [(ESSettingsAccountsUIController *)self account];
    [v10 setPassword:v25];
    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"DESCRIPTION"])
  {
    v19 = [(ESSettingsAccountsUIController *)self account];
    v20 = [v19 accountDescription];
    v21 = [v25 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [(ESSettingsAccountsUIController *)self account];
      [v22 setAccountDescription:v25];

      v10 = [(ESSettingsAccountsUIController *)self rootController];
      v23 = [v10 topViewController];
      if (v23 != self)
      {
LABEL_27:

        goto LABEL_18;
      }

      v24 = [(ESSettingsAccountsUIController *)self isSettingUpNewAccount];

      if ((v24 & 1) == 0)
      {
        v10 = [(ESSettingsAccountsUIController *)self navigationItem];
        v23 = [(ESSettingsAccountsUIController *)self localizedAccountTitleString];
        [v10 setTitle:v23];
        goto LABEL_27;
      }
    }
  }

LABEL_19:
  [(ESSettingsAccountsUIController *)self setNeedsSaveAndValidation:0];
}

- (id)accountPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"EMAIL"])
  {
    v5 = [(ESSettingsAccountsUIController *)self account];
    v6 = [v5 emailAddress];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HOST"])
  {
    v11 = [(ESSettingsAccountsUIController *)self didSetFullHostURL];
    v12 = [(ESSettingsAccountsUIController *)self account];
    v5 = v12;
    if (v11)
    {
      v13 = [v12 principalURL];
      v7 = [v13 absoluteString];

      goto LABEL_4;
    }

    v6 = [v12 host];
LABEL_3:
    v7 = v6;
LABEL_4:

    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"USERNAME"])
  {
    v5 = [(ESSettingsAccountsUIController *)self account];
    v6 = [v5 username];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"PASSWORD"])
  {
    v5 = [(ESSettingsAccountsUIController *)self account];
    v6 = [v5 passwordWithExpected:0];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"DESCRIPTION"])
  {
    v5 = [(ESSettingsAccountsUIController *)self account];
    v6 = [v5 accountDescription];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_5:
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_30C98;
  }

  v9 = v8;

  return v8;
}

- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  v10 = [v6 identifier];

  v8 = [v10 isEqualToString:@"USE_SSL"];
  if (v8)
  {
    v9 = [(ESSettingsAccountsUIController *)self account];
    [v9 setUseSSL:v7];
  }

  [(ESSettingsAccountsUIController *)self setNeedsSaveAndValidation:v8];
}

- (id)accountBooleanPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"USE_SSL"])
  {
    v5 = [(ESSettingsAccountsUIController *)self account];
    v6 = [v5 useSSL];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithBool:v6];

  return v7;
}

- (void)_dismissAndUpdateParent
{
  [(ESSettingsAccountsUIController *)self removeParentSpecifier];

  [(ESSettingsAccountsUIController *)self dismissAnimated:1];
}

- (void)_deleteAccount
{
  [(ESSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:1];
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, v4, "Requesting delete from ACAccountStore", v8, 2u);
  }

  v5 = [(ESSettingsAccountsUIController *)self accountOperationsHelper];
  v6 = [(ESSettingsAccountsUIController *)self account];
  v7 = [v6 backingAccountInfo];
  [v5 removeAccount:v7];
}

- (void)_finishSaveAccountDismissWhenDone:(BOOL)a3
{
  v3 = a3;
  [(ESSettingsAccountsUIController *)self reloadParentSpecifier];
  [(ESSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:0];
  if (v3)
  {
    v5 = [(ESSettingsAccountsUIController *)self parentController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [(ESSettingsAccountsUIController *)self parentController];
      v7 = [(ESSettingsAccountsUIController *)self account];
      v8 = [v7 backingAccountInfo];
      [v9 controller:self didFinishSettingUpAccount:v8];
    }

    else
    {

      [(ESSettingsAccountsUIController *)self dismissAnimated:1];
    }
  }
}

- (void)_saveAccountDismissWhenDone:(BOOL)a3
{
  v3 = a3;
  [(ESSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:1];
  if (v3)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v5, v6, "Requesting account save from ACAccountStore", v11, 2u);
    }

    v7 = [(ESSettingsAccountsUIController *)self account];
    [v7 saveModifiedPropertiesOnBackingAccount];

    v8 = [(ESSettingsAccountsUIController *)self accountOperationsHelper];
    v9 = [(ESSettingsAccountsUIController *)self account];
    v10 = [v9 backingAccountInfo];
    [v8 saveAccount:v10 requireVerification:0];
  }
}

- (BOOL)isRunningFromMobileMailApp
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilemail"];

  return v4;
}

- (void)hideProgressWithPrompt:(id)a3
{
  alertMessage = a3;
  v4 = [(ESSettingsAccountsUIController *)self localizedAccountSetupTitleString];
  [(ESSettingsAccountsUIController *)self stopValidationWithPrompt:v4 showButtons:1];

  [(ESSettingsAccountsUIController *)self updateDoneButton];
  if (![(ESSettingsAccountsUIController *)self isRunningFromMobileMailApp])
  {
    [UIApp setStatusBarShowsProgress:0];
  }

  v5 = alertMessage;
  if (alertMessage)
  {
    v6 = [(ESSettingsAccountsUIController *)self localizedValidationFailureTitleString];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v6, alertMessage, [v7 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Localizable"]);

    v5 = alertMessage;
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ESSettingsAccountsUIController;
  [(ESSettingsAccountsUIController *)&v4 dealloc];
}

- (int)indexOfCurrentlyEditingCell
{
  v3 = [(ESSettingsAccountsUIController *)self currentlyEditingCell];
  if (v3 && ([*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] indexPathForCell:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(ESSettingsAccountsUIController *)self indexForIndexPath:v4];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)currentlyEditingCell
{
  v2 = [(ESSettingsAccountsUIController *)self view];
  v3 = [v2 window];
  v4 = [v3 firstResponder];

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      v8 = [v7 superview];

      v7 = v8;
    }

    while (v8);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)lastGroupSpecifierInSpecifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 < 1)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v5 = (v4 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v6 = [v3 objectAtIndexedSubscript:v5 - 2];
      v7 = v6;
      if (!*&v6[OBJC_IVAR___PSSpecifier_cellType])
      {
        break;
      }

      if (--v5 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v7;
}

- (id)localizedAccountTitleString
{
  v3 = [(ESSettingsAccountsUIController *)self account];
  v4 = [v3 accountDescription];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(ESSettingsAccountsUIController *)self localizedAccountSetupTitleString];
  }

  v6 = v5;

  return v6;
}

- (void)deleteAccountButtonTapped
{
  v3 = [(ESSettingsAccountsUIController *)self account];
  v4 = [v3 backingAccountInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_56AC;
  v5[3] = &unk_30848;
  v5[4] = self;
  [(ESSettingsAccountsUIController *)self showConfirmationForDeletingAccount:v4 completion:v5];
}

@end