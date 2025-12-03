@interface ESSettingsAccountsUIController
- (BOOL)backingAccountIsNewAccountForAutoDiscovery;
- (BOOL)haveEnoughValues;
- (BOOL)isRunningFromMobileMailApp;
- (BOOL)validateAccount;
- (DAAccount)account;
- (id)accountBooleanPropertyWithSpecifier:(id)specifier;
- (id)accountFromSpecifier;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)currentlyEditingCell;
- (id)daAccountWithBackingAccountInfo:(id)info;
- (id)lastGroupSpecifierInSpecifiers:(id)specifiers;
- (id)localizedAccountTitleString;
- (id)newDefaultAccount;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int)indexOfCurrentlyEditingCell;
- (void)_beginAccountValidation;
- (void)_confirmSaveUnvalidatedAccount;
- (void)_deleteAccount;
- (void)_dismissAndUpdateParent;
- (void)_finishSaveAccountDismissWhenDone:(BOOL)done;
- (void)_saveAccountDismissWhenDone:(BOOL)done;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)deleteAccountButtonTapped;
- (void)didConfirmSaveUnvalidatedAccount:(BOOL)account;
- (void)didConfirmTryWithoutSSL:(BOOL)l;
- (void)doneButtonTapped:(id)tapped;
- (void)finishedAccountSetup;
- (void)hideProgressWithPrompt:(id)prompt;
- (void)propertyValueChanged:(id)changed;
- (void)reloadAccount;
- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
- (void)setHostString:(id)string;
- (void)setNeedsSaveAndValidation:(BOOL)validation;
- (void)showAlertWithButtons:(id)buttons title:(id)title message:(id)message completion:(id)completion;
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
    accountFromSpecifier = [(ESSettingsAccountsUIController *)self accountFromSpecifier];
    account = self->_account;
    self->_account = accountFromSpecifier;

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
      newDefaultAccount = [(ESSettingsAccountsUIController *)self newDefaultAccount];
      v8 = self->_account;
      self->_account = newDefaultAccount;

      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v9, v10))
      {
        backingAccountInfo = [(DAAccount *)self->_account backingAccountInfo];
        identifier = [backingAccountInfo identifier];
        backingAccountInfo2 = [(DAAccount *)self->_account backingAccountInfo];
        username = [backingAccountInfo2 username];
        v16 = 138412546;
        v17 = identifier;
        v18 = 2112;
        v19 = username;
        _os_log_impl(&dword_0, v9, v10, "Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v16, 0x16u);
      }

      backingAccountInfo3 = [(DAAccount *)self->_account backingAccountInfo];
      [backingAccountInfo3 setAuthenticated:1];
    }
  }

  v3 = self->_account;

  return v3;
}

- (BOOL)backingAccountIsNewAccountForAutoDiscovery
{
  if (_os_feature_enabled_impl())
  {
    specifier = [(ESSettingsAccountsUIController *)self specifier];
    userInfo = [specifier userInfo];
    v5 = [userInfo objectForKeyedSubscript:ACUIAccountKey];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:ACAccountPropertyIdentityEmailAddress];
      if (v6)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        username = [v5 username];
        if (username)
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
  account = [(ESSettingsAccountsUIController *)self account];
  [account reload];

  account2 = [(ESSettingsAccountsUIController *)self account];
  backingAccountInfo = [account2 backingAccountInfo];
  [backingAccountInfo setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  specifier = [(ESSettingsAccountsUIController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:ACUIAccountKey];

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

- (id)daAccountWithBackingAccountInfo:(id)info
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
    accountSpecifiers = [(ESSettingsAccountsUIController *)self accountSpecifiers];
    v7 = *&self->ACUIViewController_opaque[v4];
    *&self->ACUIViewController_opaque[v4] = accountSpecifiers;

    v5 = *&self->ACUIViewController_opaque[v4];
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = ESSettingsAccountsUIController;
  pathCopy = path;
  v7 = [(ESSettingsAccountsUIController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ESSettingsAccountsUIController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];

  v9 = [(ESSettingsAccountsUIController *)self specifierAtIndex:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [v9 identifier];
    v11 = [identifier isEqualToString:@"DESCRIPTION"];

    if ((v11 & 1) == 0)
    {
      textField = [v7 textField];
      if (textField)
      {
        v13 = +[NSNotificationCenter defaultCenter];
        [v13 removeObserver:self name:0 object:textField];

        v14 = +[NSNotificationCenter defaultCenter];
        [v14 addObserver:self selector:"propertyValueChanged:" name:UITextFieldTextDidChangeNotification object:textField];
      }
    }
  }

  return v7;
}

- (void)showAlertWithButtons:(id)buttons title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  buttonsCopy = buttons;
  completionCopy = completion;
  v10 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = buttonsCopy;
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
        v24 = completionCopy;
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

  [(ESSettingsAccountsUIController *)selfCopy presentViewController:v10 animated:1 completion:0];
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
  account = [(ESSettingsAccountsUIController *)self account];
  localizedIdenticalAccountFailureMessage = [account localizedIdenticalAccountFailureMessage];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v3, localizedIdenticalAccountFailureMessage, [v6 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Localizable"]);
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

- (void)didConfirmTryWithoutSSL:(BOOL)l
{
  if (l)
  {
    v4 = [(ESSettingsAccountsUIController *)self specifierForID:@"USE_SSL"];
    properties = [v4 properties];

    v5 = [properties objectForKeyedSubscript:PSTableCellKey];
    control = [v5 control];
    [control setOn:0 animated:1];

    account = [(ESSettingsAccountsUIController *)self account];
    [account setUseSSL:0];

    [(ESSettingsAccountsUIController *)self _beginAccountValidation];
  }

  else
  {
    properties = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [properties localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_30C98 table:@"Localizable"];
    [(ESSettingsAccountsUIController *)self hideProgressWithPrompt:v8];
  }
}

- (void)didConfirmSaveUnvalidatedAccount:(BOOL)account
{
  if (account)
  {
    [(ESSettingsAccountsUIController *)self setConfirmedUnvalidatedAccount:1];
    account = [(ESSettingsAccountsUIController *)self account];
    [(ESSettingsAccountsUIController *)self account:account isValid:1 validationError:0];
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
  localizedConfirmSaveUnvalidatedAccountTitleString = [(ESSettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountTitleString];
  localizedConfirmSaveUnvalidatedAccountMessageString = [(ESSettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountMessageString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3A18;
  v10[3] = &unk_30848;
  v10[4] = self;
  [(ESSettingsAccountsUIController *)self showConfirmationWithButtons:v7 title:localizedConfirmSaveUnvalidatedAccountTitleString message:localizedConfirmSaveUnvalidatedAccountMessageString destructive:0 completion:v10];
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
      parentController = [(ESSettingsAccountsUIController *)self parentController];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        parentController2 = [(ESSettingsAccountsUIController *)self parentController];
        account = [(ESSettingsAccountsUIController *)self account];
        backingAccountInfo = [account backingAccountInfo];
        [parentController2 controller:self didFinishSettingUpAccount:backingAccountInfo];
      }
    }
  }

  else
  {

    [(ESSettingsAccountsUIController *)self doneButtonTapped:self];
  }
}

- (void)doneButtonTapped:(id)tapped
{
  table = [(ESSettingsAccountsUIController *)self table];
  firstResponder = [table firstResponder];
  [firstResponder resignFirstResponder];

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

- (void)cancelButtonTapped:(id)tapped
{
  if ([(ESSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    account = [(ESSettingsAccountsUIController *)self account];
    [account cleanupAccountFiles];
  }

  firstResponder = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  account2 = [(ESSettingsAccountsUIController *)self account];
  [account2 reload];

  [(ESSettingsAccountsUIController *)self dismissAnimated:1];
}

- (void)setNeedsSaveAndValidation:(BOOL)validation
{
  if (validation)
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
  doneButton = [(ESSettingsAccountsUIController *)self doneButton];
  [doneButton setTitle:v8];

  doneButton2 = [(ESSettingsAccountsUIController *)self doneButton];
  [doneButton2 setEnabled:v3];
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

- (void)propertyValueChanged:(id)changed
{
  [(ESSettingsAccountsUIController *)self setAttemptedValidation:0];

  [(ESSettingsAccountsUIController *)self updateDoneButton];
}

- (void)setHostString:(id)string
{
  stringCopy = string;
  [(ESSettingsAccountsUIController *)self setDidSetFullHostURL:0];
  v5 = [stringCopy rangeOfString:@"/"];
  v6 = [stringCopy rangeOfString:@":"];
  if (![stringCopy length] || v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v7 = [NSURL URLWithString:stringCopy];
  host = [v7 host];
  if (host)
  {
    goto LABEL_7;
  }

  if (([stringCopy hasPrefix:@"http"] & 1) == 0)
  {
    host = [NSString stringWithFormat:@"https://%@", stringCopy];
    v9 = [NSURL URLWithString:host];

    v7 = v9;
LABEL_7:
  }

  host2 = [v7 host];

  if (host2)
  {
    account = [(ESSettingsAccountsUIController *)self account];
    [account setPrincipalURL:v7];

    [(ESSettingsAccountsUIController *)self setDidSetFullHostURL:1];
    account2 = [(ESSettingsAccountsUIController *)self account];
    [account2 setShouldDoInitialAutodiscovery:0];
  }

LABEL_11:
  if (![(ESSettingsAccountsUIController *)self didSetFullHostURL])
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v18 = stringCopy;
      _os_log_impl(&dword_0, v13, v14, "Couldn't parse host string %@ into a URL. Using it directly", buf, 0xCu);
    }

    account3 = [(ESSettingsAccountsUIController *)self account];
    [account3 setHost:stringCopy];

    account4 = [(ESSettingsAccountsUIController *)self account];
    [account4 setShouldDoInitialAutodiscovery:0];
  }
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v8 = [(ESSettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];

  if ([propertyCopy isEqualToString:v8])
  {
    [identifier isEqualToString:@"EMAIL"];
  }

  else
  {
    if ([propertyCopy length])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 length] == 0;
    }

    if ([identifier isEqualToString:@"EMAIL"] && !v9)
    {
      account = [(ESSettingsAccountsUIController *)self account];
      [account setEmailAddress:propertyCopy];

      account2 = [(ESSettingsAccountsUIController *)self account];
      accountDescription = [account2 accountDescription];
      v14 = [accountDescription length];

      if (v14)
      {
        goto LABEL_19;
      }

      _defaultAccountDescription = [(ESSettingsAccountsUIController *)self _defaultAccountDescription];
      accountStore = [(ESSettingsAccountsUIController *)self accountStore];
      v16 = [accountStore hasAccountWithDescription:_defaultAccountDescription];

      if (v16)
      {
        v17 = propertyCopy;

        _defaultAccountDescription = v17;
      }

      account3 = [(ESSettingsAccountsUIController *)self account];
      [account3 setAccountDescription:_defaultAccountDescription];

      [(ESSettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION"];
      goto LABEL_18;
    }
  }

  if ([identifier isEqualToString:@"HOST"])
  {
    [(ESSettingsAccountsUIController *)self setHostString:propertyCopy];
    goto LABEL_19;
  }

  if ([identifier isEqualToString:@"USERNAME"])
  {
    _defaultAccountDescription = [(ESSettingsAccountsUIController *)self account];
    [_defaultAccountDescription setUsername:propertyCopy];
LABEL_18:

    goto LABEL_19;
  }

  if ([identifier isEqualToString:@"PASSWORD"])
  {
    _defaultAccountDescription = [(ESSettingsAccountsUIController *)self account];
    [_defaultAccountDescription setPassword:propertyCopy];
    goto LABEL_18;
  }

  if ([identifier isEqualToString:@"DESCRIPTION"])
  {
    account4 = [(ESSettingsAccountsUIController *)self account];
    accountDescription2 = [account4 accountDescription];
    v21 = [propertyCopy isEqualToString:accountDescription2];

    if ((v21 & 1) == 0)
    {
      account5 = [(ESSettingsAccountsUIController *)self account];
      [account5 setAccountDescription:propertyCopy];

      _defaultAccountDescription = [(ESSettingsAccountsUIController *)self rootController];
      topViewController = [_defaultAccountDescription topViewController];
      if (topViewController != self)
      {
LABEL_27:

        goto LABEL_18;
      }

      isSettingUpNewAccount = [(ESSettingsAccountsUIController *)self isSettingUpNewAccount];

      if ((isSettingUpNewAccount & 1) == 0)
      {
        _defaultAccountDescription = [(ESSettingsAccountsUIController *)self navigationItem];
        topViewController = [(ESSettingsAccountsUIController *)self localizedAccountTitleString];
        [_defaultAccountDescription setTitle:topViewController];
        goto LABEL_27;
      }
    }
  }

LABEL_19:
  [(ESSettingsAccountsUIController *)self setNeedsSaveAndValidation:0];
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"EMAIL"])
  {
    account = [(ESSettingsAccountsUIController *)self account];
    emailAddress = [account emailAddress];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"HOST"])
  {
    didSetFullHostURL = [(ESSettingsAccountsUIController *)self didSetFullHostURL];
    account2 = [(ESSettingsAccountsUIController *)self account];
    account = account2;
    if (didSetFullHostURL)
    {
      principalURL = [account2 principalURL];
      absoluteString = [principalURL absoluteString];

      goto LABEL_4;
    }

    emailAddress = [account2 host];
LABEL_3:
    absoluteString = emailAddress;
LABEL_4:

    goto LABEL_5;
  }

  if ([identifier isEqualToString:@"USERNAME"])
  {
    account = [(ESSettingsAccountsUIController *)self account];
    emailAddress = [account username];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"PASSWORD"])
  {
    account = [(ESSettingsAccountsUIController *)self account];
    emailAddress = [account passwordWithExpected:0];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"DESCRIPTION"])
  {
    account = [(ESSettingsAccountsUIController *)self account];
    emailAddress = [account accountDescription];
    goto LABEL_3;
  }

  absoluteString = 0;
LABEL_5:
  if (absoluteString)
  {
    v8 = absoluteString;
  }

  else
  {
    v8 = &stru_30C98;
  }

  v9 = v8;

  return v8;
}

- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [property BOOLValue];
  identifier = [specifierCopy identifier];

  v8 = [identifier isEqualToString:@"USE_SSL"];
  if (v8)
  {
    account = [(ESSettingsAccountsUIController *)self account];
    [account setUseSSL:bOOLValue];
  }

  [(ESSettingsAccountsUIController *)self setNeedsSaveAndValidation:v8];
}

- (id)accountBooleanPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"USE_SSL"])
  {
    account = [(ESSettingsAccountsUIController *)self account];
    useSSL = [account useSSL];
  }

  else
  {
    useSSL = 0;
  }

  v7 = [NSNumber numberWithBool:useSSL];

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

  accountOperationsHelper = [(ESSettingsAccountsUIController *)self accountOperationsHelper];
  account = [(ESSettingsAccountsUIController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  [accountOperationsHelper removeAccount:backingAccountInfo];
}

- (void)_finishSaveAccountDismissWhenDone:(BOOL)done
{
  doneCopy = done;
  [(ESSettingsAccountsUIController *)self reloadParentSpecifier];
  [(ESSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:0];
  if (doneCopy)
  {
    parentController = [(ESSettingsAccountsUIController *)self parentController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      parentController2 = [(ESSettingsAccountsUIController *)self parentController];
      account = [(ESSettingsAccountsUIController *)self account];
      backingAccountInfo = [account backingAccountInfo];
      [parentController2 controller:self didFinishSettingUpAccount:backingAccountInfo];
    }

    else
    {

      [(ESSettingsAccountsUIController *)self dismissAnimated:1];
    }
  }
}

- (void)_saveAccountDismissWhenDone:(BOOL)done
{
  doneCopy = done;
  [(ESSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:1];
  if (doneCopy)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v5, v6, "Requesting account save from ACAccountStore", v11, 2u);
    }

    account = [(ESSettingsAccountsUIController *)self account];
    [account saveModifiedPropertiesOnBackingAccount];

    accountOperationsHelper = [(ESSettingsAccountsUIController *)self accountOperationsHelper];
    account2 = [(ESSettingsAccountsUIController *)self account];
    backingAccountInfo = [account2 backingAccountInfo];
    [accountOperationsHelper saveAccount:backingAccountInfo requireVerification:0];
  }
}

- (BOOL)isRunningFromMobileMailApp
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilemail"];

  return v4;
}

- (void)hideProgressWithPrompt:(id)prompt
{
  alertMessage = prompt;
  localizedAccountSetupTitleString = [(ESSettingsAccountsUIController *)self localizedAccountSetupTitleString];
  [(ESSettingsAccountsUIController *)self stopValidationWithPrompt:localizedAccountSetupTitleString showButtons:1];

  [(ESSettingsAccountsUIController *)self updateDoneButton];
  if (![(ESSettingsAccountsUIController *)self isRunningFromMobileMailApp])
  {
    [UIApp setStatusBarShowsProgress:0];
  }

  v5 = alertMessage;
  if (alertMessage)
  {
    localizedValidationFailureTitleString = [(ESSettingsAccountsUIController *)self localizedValidationFailureTitleString];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, localizedValidationFailureTitleString, alertMessage, [v7 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Localizable"]);

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
  currentlyEditingCell = [(ESSettingsAccountsUIController *)self currentlyEditingCell];
  if (currentlyEditingCell && ([*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] indexPathForCell:currentlyEditingCell], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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
  view = [(ESSettingsAccountsUIController *)self view];
  window = [view window];
  firstResponder = [window firstResponder];

  v5 = firstResponder;
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

      superview = [v7 superview];

      v7 = superview;
    }

    while (superview);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)lastGroupSpecifierInSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [specifiersCopy count];
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
      v6 = [specifiersCopy objectAtIndexedSubscript:v5 - 2];
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
  account = [(ESSettingsAccountsUIController *)self account];
  accountDescription = [account accountDescription];

  if ([accountDescription length])
  {
    localizedAccountSetupTitleString = accountDescription;
  }

  else
  {
    localizedAccountSetupTitleString = [(ESSettingsAccountsUIController *)self localizedAccountSetupTitleString];
  }

  v6 = localizedAccountSetupTitleString;

  return v6;
}

- (void)deleteAccountButtonTapped
{
  account = [(ESSettingsAccountsUIController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_56AC;
  v5[3] = &unk_30848;
  v5[4] = self;
  [(ESSettingsAccountsUIController *)self showConfirmationForDeletingAccount:backingAccountInfo completion:v5];
}

@end