@interface ASSettingsAccountsUIController
+ (id)usernameFromAccessToken:(id)token;
- (BOOL)_isNetworkOfflineError:(id)error;
- (BOOL)_isSSLError:(id)error;
- (BOOL)_storeHasDuplicateForUsername:(id)username;
- (BOOL)autodiscoverAccount;
- (BOOL)haveEnoughValues;
- (BOOL)validateAccount;
- (BOOL)verifyAccountPassword;
- (id)_configureNewAccountWithInfo:(id)info;
- (id)_defaultAccountDescription;
- (id)_specifiersForCompletedAutodiscovery;
- (id)_specifiersForMinimalAutodiscoveryRemovingIDs:(id)ds;
- (id)_specifiersForOptionalServerAutodiscovery;
- (id)account;
- (id)accountFromSpecifier;
- (id)accountFromSpecifier:(id)specifier;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)accountSpecifiers;
- (id)localizedAccountSetupTitleString;
- (id)localizedAccountTitleString;
- (id)localizedConfirmSaveUnvalidatedAccountMessageString;
- (id)localizedValidationFailureTitleString;
- (id)newDefaultAccount;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)OAuthAccount:(id)account authorizationURI:(id)i error:(id)error;
- (void)_autodiscoverOAuthAccountAfterInitialRedirect;
- (void)_fallBackToAutoDiscoverV1;
- (void)_reallyStartAutoDiscoverAccount;
- (void)_setViewsEnabled;
- (void)_showAlertWithTitle:(id)title body:(id)body completion:(id)completion;
- (void)_transitionToCompletedAutodiscovery;
- (void)_transitionToOptionalServerAutodiscovery;
- (void)_tryUpdatingCompositeValueWithId:(id)id fromValue:(id)value forKey:(id)key;
- (void)_validateUniquenessAndAddAccount:(id)account username:(id)username token:(id)token refreshToken:(id)refreshToken completion:(id)completion;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)account:(id)account wasAutoDiscovered:(BOOL)discovered error:(id)error;
- (void)dealloc;
- (void)doneButtonTapped:(id)tapped;
- (void)handleRedirectURL:(id)l;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
@end

@implementation ASSettingsAccountsUIController

- (id)account
{
  if (!self->super._account)
  {
    [(ASSettingsAccountsUIController *)self setAutodiscoveryState:4];
  }

  v5.receiver = self;
  v5.super_class = ASSettingsAccountsUIController;
  account = [(ESSettingsAccountsUIController *)&v5 account];

  return account;
}

- (id)accountFromSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v5 = [userInfo objectForKeyedSubscript:ACUIAccountKey];

  if (v5)
  {
    if ([(ESSettingsAccountsUIController *)self backingAccountIsNewAccountForAutoDiscovery])
    {
      [v5 setAuthenticated:1];
      username = [v5 username];
      v7 = ACAccountPropertyIdentityEmailAddress;
      [v5 setObject:username forKeyedSubscript:ACAccountPropertyIdentityEmailAddress];

      v8 = [v5 objectForKeyedSubscript:v7];
      v9 = ACUIDescriptionFromEmailAddress();
      [v5 setAccountDescription:v9];

      v10 = [(ASSettingsAccountsUIController *)self _configureNewAccountWithInfo:v5];
      username2 = [v5 username];
      [v10 setEmailAddress:username2];

      [(ESSettingsAccountsUIController *)self setAddingAccountFromEmailField:1];
    }

    else
    {
      v12 = +[ESAccountLoader sharedInstance];
      v13 = [v12 daemonAppropriateAccountClassForACAccount:v5];

      v10 = [[v13 alloc] initWithBackingAccountInfo:v5];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)accountFromSpecifier
{
  specifier = [(ASSettingsAccountsUIController *)self specifier];
  v4 = [(ASSettingsAccountsUIController *)self accountFromSpecifier:specifier];

  return v4;
}

- (id)newDefaultAccount
{
  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  accountStore = [(ASSettingsAccountsUIController *)self accountStore];
  v5 = accountStore;
  v6 = &ACAccountTypeIdentifierHotmail;
  if (!isHotmailAccount)
  {
    v6 = &ACAccountTypeIdentifierExchange;
  }

  v7 = [accountStore accountTypeWithAccountTypeIdentifier:*v6];

  v8 = [[ACAccount alloc] initWithAccountType:v7];
  v9 = [(ASSettingsAccountsUIController *)self _configureNewAccountWithInfo:v8];

  return v9;
}

- (id)_configureNewAccountWithInfo:(id)info
{
  infoCopy = info;
  accountType = [infoCopy accountType];
  supportedDataclasses = [accountType supportedDataclasses];
  v7 = [supportedDataclasses mutableCopy];

  [v7 removeObject:kAccountDataclassNotes];
  [infoCopy setProvisionedDataclasses:v7];
  v8 = [ESAccount esAccountSubclassWithBackingAccountInfo:infoCopy];

  [v8 setUseSSL:1];
  [v8 setEnabled:1 forDADataclass:1];
  if ([objc_opt_class() isHotmailAccount])
  {
    [v8 setHost:@"m.hotmail.com"];
  }

  else
  {
    *(&self->_remotedManaged + 2) = 0;
  }

  return v8;
}

- (id)_specifiersForMinimalAutodiscoveryRemovingIDs:(id)ds
{
  dsCopy = ds;
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BD1C();
  }

  v5 = [(ASSettingsAccountsUIController *)self loadSpecifiersFromPlistName:@"ASAccountSetup" target:self];
  v6 = [NSMutableArray arrayWithArray:v5];

  v7 = &off_327F0;
  if (dsCopy)
  {
    v7 = [&off_327F0 arrayByAddingObjectsFromArray:dsCopy];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v6 specifierForID:{*(*(&v26 + 1) + 8 * i), v26}];
        [v6 removeObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [PSSpecifier groupSpecifierWithName:0];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"DEVICE_WARNING_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
  [v14 setProperty:v16 forKey:PSFooterTextGroupKey];

  [v6 addObject:v14];
  v17 = [PSSpecifier groupSpecifierWithName:0];
  exchangeIdView = [(ASSettingsAccountsUIController *)self exchangeIdView];

  if (!exchangeIdView)
  {
    v19 = +[ESDConnection sharedConnection];
    activeSyncDeviceIdentifier = [v19 activeSyncDeviceIdentifier];

    [v17 setProperty:activeSyncDeviceIdentifier forKey:@"ASExchangeIdKey"];
    v21 = [[ASExchangeIdView alloc] initWithSpecifier:v17];
    [(ASSettingsAccountsUIController *)self setExchangeIdView:v21];
  }

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [v17 setProperty:v23 forKey:PSFooterCellClassGroupKey];

  exchangeIdView2 = [(ASSettingsAccountsUIController *)self exchangeIdView];
  [v17 setProperty:exchangeIdView2 forKey:PSFooterViewKey];

  [v6 addObject:v17];

  return v6;
}

- (id)_specifiersForOptionalServerAutodiscovery
{
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BD88();
  }

  v3 = [(ASSettingsAccountsUIController *)self loadSpecifiersFromPlistName:@"ASAccountSetup" target:self];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [v4 specifierForID:@"HOST"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OPTIONAL" value:&stru_30C98 table:@"ASAccountSetup"];
  [v5 setPlaceholder:v7];

  v8 = [PSSpecifier groupSpecifierWithName:0];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DEVICE_WARNING_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
  [v8 setProperty:v10 forKey:PSFooterTextGroupKey];

  [v4 addObject:v8];
  v11 = [PSSpecifier groupSpecifierWithName:0];
  exchangeIdView = [(ASSettingsAccountsUIController *)self exchangeIdView];

  if (!exchangeIdView)
  {
    v13 = +[ESDConnection sharedConnection];
    activeSyncDeviceIdentifier = [v13 activeSyncDeviceIdentifier];

    [v11 setProperty:activeSyncDeviceIdentifier forKey:@"ASExchangeIdKey"];
    v15 = [[ASExchangeIdView alloc] initWithSpecifier:v11];
    [(ASSettingsAccountsUIController *)self setExchangeIdView:v15];
  }

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v11 setProperty:v17 forKey:PSFooterCellClassGroupKey];

  exchangeIdView2 = [(ASSettingsAccountsUIController *)self exchangeIdView];
  [v11 setProperty:exchangeIdView2 forKey:PSFooterViewKey];

  [v4 addObject:v11];

  return v4;
}

- (id)_specifiersForCompletedAutodiscovery
{
  v3 = @"ASHotmailAccountSetup";
  if (([objc_opt_class() isHotmailAccount] & 1) == 0)
  {
    account = [(ASSettingsAccountsUIController *)self account];
    v5 = [account objectForKeyedSubscript:kESExchangeOAuthSupportedKey];
    bOOLValue = [v5 BOOLValue];

    if (!bOOLValue)
    {
      v3 = @"ASAccountSetup";
    }
  }

  v7 = [(ASSettingsAccountsUIController *)self loadSpecifiersFromPlistName:v3 target:self];
  v8 = [NSMutableArray arrayWithArray:v7];

  if (![(ESSettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    v9 = [PSSpecifier groupSpecifierWithName:0];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"ADVANCED_SETTINGS" value:&stru_30C98 table:@"Localizable"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    account2 = [(ASSettingsAccountsUIController *)self account];
    [v12 setProperty:account2 forKey:@"ASAdvancedControllerAccountKey"];

    [v12 setIdentifier:@"ADVANCED_SETTINGS"];
    v54 = v9;
    [v8 addObject:v9];
    v53 = v12;
    [v8 addObject:v12];
    account3 = [(ASSettingsAccountsUIController *)self account];
    backingAccountInfo = [account3 backingAccountInfo];
    mcBackingProfile = [backingAccountInfo mcBackingProfile];

    v55 = mcBackingProfile;
    if (mcBackingProfile)
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
      friendlyName = [mcBackingProfile friendlyName];
      v52 = [NSString stringWithFormat:v18, friendlyName];

      account4 = [(ASSettingsAccountsUIController *)self account];
      identityPersist = [account4 identityPersist];

      if (identityPersist)
      {
        account5 = [(ASSettingsAccountsUIController *)self account];
        username = [account5 username];

        if (username)
        {
          v24 = [v8 specifierForID:@"PASSWORD"];
          v25 = [NSBundle bundleForClass:objc_opt_class()];
          v26 = [v25 localizedStringForKey:@"OPTIONAL" value:&stru_30C98 table:@"ASAccountSetup"];
          [v24 setPlaceholder:v26];
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v27 = [&off_32808 countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v65;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v65 != v29)
                {
                  objc_enumerationMutation(&off_32808);
                }

                v31 = [v8 specifierForID:*(*(&v64 + 1) + 8 * i)];
                if (v31)
                {
                  [v8 removeObject:v31];
                }
              }

              v28 = [&off_32808 countByEnumeratingWithState:&v64 objects:v72 count:16];
            }

            while (v28);
          }
        }
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v32 = v8;
      v33 = [v32 countByEnumeratingWithState:&v60 objects:v71 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v61;
        v36 = PSEnabledKey;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v61 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v60 + 1) + 8 * j);
            identifier = [v38 identifier];
            if (([&off_32820 containsObject:identifier] & 1) == 0)
            {
              [v38 setProperty:&__kCFBooleanFalse forKey:v36];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v34);
      }

      v40 = [(ESSettingsAccountsUIController *)self lastGroupSpecifierInSpecifiers:v32];
      mcBackingProfile = v55;
      if (!v40)
      {
        v41 = DALoggingwithCategory();
        v42 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v41, v42))
        {
          *buf = 138412290;
          v70 = v32;
          _os_log_impl(&dword_0, v41, v42, "No group found, not setting the profile text.  Specifiers: %@", buf, 0xCu);
        }
      }

      [v40 setProperty:v52 forKey:PSFooterTextGroupKey];
    }

    if ([(ASSettingsAccountsUIController *)self remotedManaged])
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v43 = v8;
      v44 = [v43 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v57;
        v47 = PSEnabledKey;
        do
        {
          for (k = 0; k != v45; k = k + 1)
          {
            if (*v57 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v49 = *(*(&v56 + 1) + 8 * k);
            identifier2 = [v49 identifier];
            if ([&off_32838 containsObject:identifier2])
            {
              [v49 setProperty:&__kCFBooleanFalse forKey:v47];
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v56 objects:v68 count:16];
        }

        while (v45);
      }

      mcBackingProfile = v55;
    }
  }

  return v8;
}

- (id)accountSpecifiers
{
  account = [(ASSettingsAccountsUIController *)self account];
  account2 = [(ASSettingsAccountsUIController *)self account];
  backingAccountInfo = [account2 backingAccountInfo];
  managingOwnerIdentifier = [backingAccountInfo managingOwnerIdentifier];
  v7 = managingOwnerIdentifier;
  if (managingOwnerIdentifier)
  {
    v8 = managingOwnerIdentifier;
  }

  else
  {
    account3 = [(ASSettingsAccountsUIController *)self account];
    v8 = [account3 objectForKeyedSubscript:ACAccountPropertyConfigurationProfileIdentifier];
  }

  if (v8)
  {
    account2 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(account2, v10))
    {
      account4 = [(ASSettingsAccountsUIController *)self account];
      v20 = 138412546;
      v21 = account4;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_0, account2, v10, "Disable editing for %@, account is managed by %@", &v20, 0x16u);
    }

    selfCopy2 = self;
    v13 = 1;
  }

  else
  {
    selfCopy2 = self;
    v13 = 0;
  }

  [(ASSettingsAccountsUIController *)selfCopy2 setRemotedManaged:v13];
  v14 = *(&self->_remotedManaged + 2);
  if (v14 <= 2)
  {
    if (v14 >= 2)
    {
      if (v14 != 2)
      {
        goto LABEL_20;
      }

      selfCopy4 = self;
      v15 = 0;
    }

    else
    {
      v15 = &off_32850;
      selfCopy4 = self;
    }

    _specifiersForOptionalServerAutodiscovery = [(ASSettingsAccountsUIController *)selfCopy4 _specifiersForMinimalAutodiscoveryRemovingIDs:v15];
    goto LABEL_19;
  }

  if (v14 == 3)
  {
    _specifiersForOptionalServerAutodiscovery = [(ASSettingsAccountsUIController *)self _specifiersForOptionalServerAutodiscovery];
LABEL_19:
    account2 = _specifiersForOptionalServerAutodiscovery;
    goto LABEL_20;
  }

  if (v14 == 4)
  {
    account2 = [(ASSettingsAccountsUIController *)self _specifiersForCompletedAutodiscovery];
    localizedAccountTitleString = [(ASSettingsAccountsUIController *)self localizedAccountTitleString];
    [(ASSettingsAccountsUIController *)self setTitle:localizedAccountTitleString];
  }

LABEL_20:

  return account2;
}

- (void)_transitionToOptionalServerAutodiscovery
{
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BDF4();
  }

  v3 = [(ASSettingsAccountsUIController *)self specifierForID:@"HOST"];

  if (!v3)
  {
    v4 = [(ASSettingsAccountsUIController *)self loadSpecifiersFromPlistName:@"ASAccountSetup" target:self];
    v5 = [NSMutableArray arrayWithArray:v4];

    v6 = [v5 specifierForID:@"HOST"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OPTIONAL" value:&stru_30C98 table:@"ASAccountSetup"];
    [v6 setPlaceholder:v8];

    v9 = [v5 specifierForID:@"DESCRIPTION_GROUP"];
    v22 = v9;
    v10 = [NSArray arrayWithObjects:&v22 count:1];

    [(ASSettingsAccountsUIController *)self insertContiguousSpecifiers:v10 afterSpecifierID:@"PASSWORD" animated:1];
    v11 = [v5 specifierForID:@"USER_INFO_GROUP"];
    v21[0] = v11;
    v12 = [v5 specifierForID:@"DOMAIN"];
    v21[1] = v12;
    v13 = [v5 specifierForID:@"USERNAME"];
    v21[2] = v13;
    v14 = [NSArray arrayWithObjects:v21 count:3];

    [(ASSettingsAccountsUIController *)self insertContiguousSpecifiers:v14 afterSpecifierID:@"EMAIL" animated:1];
    v15 = [v5 specifierForID:@"HOST_GROUP"];
    v20[0] = v15;
    v16 = [v5 specifierForID:@"HOST"];
    v20[1] = v16;
    v17 = [NSArray arrayWithObjects:v20 count:2];

    [(ASSettingsAccountsUIController *)self insertContiguousSpecifiers:v17 afterSpecifierID:@"EMAIL" animated:1];
  }

  [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"EMAIL"];
  account = [(ASSettingsAccountsUIController *)self account];
  [account setUsername:&stru_30C98];

  account2 = [(ASSettingsAccountsUIController *)self account];
  [account2 setHost:&stru_30C98];

  [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"DOMAIN"];
  [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"USERNAME"];
  [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"HOST"];
}

- (void)_transitionToCompletedAutodiscovery
{
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BE60();
  }

  specifiers = [(ESSettingsAccountsUIController *)self specifiers];
  v6 = [specifiers specifierForID:@"HOST"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"REQUIRED" value:&stru_30C98 table:@"ASAccountSetup"];
  [v6 setPlaceholder:v5];

  [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"HOST"];
}

- (BOOL)validateAccount
{
  firstResponder = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VERIFYING" value:&stru_30C98 table:@"Localizable"];
  [(ASSettingsAccountsUIController *)self startValidationWithPrompt:v5];

  account = [(ASSettingsAccountsUIController *)self account];
  accountStore = [(ASSettingsAccountsUIController *)self accountStore];
  [account checkValidityOnAccountStore:accountStore withConsumer:self inQueue:&_dispatch_main_q];

  return 1;
}

- (void)_showAlertWithTitle:(id)title body:(id)body completion:(id)completion
{
  completionCopy = completion;
  v12 = [UIAlertController alertControllerWithTitle:title message:body preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_30C98 table:@"ASAccountSetup"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:completionCopy];

  [v12 addAction:v11];
  [(ASSettingsAccountsUIController *)self presentViewController:v12 animated:1 completion:0];
  [(ASSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:0];
}

- (BOOL)verifyAccountPassword
{
  v3 = OBJC_IVAR___PSListController__table;
  firstResponder = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  account = [(ASSettingsAccountsUIController *)self account];
  emailAddress = [account emailAddress];
  mf_isLegalEmailAddress = [emailAddress mf_isLegalEmailAddress];

  if (!mf_isLegalEmailAddress)
  {
    account3 = [(ASSettingsAccountsUIController *)self specifierForID:@"EMAIL"];
    v12 = [account3 propertyForKey:PSTableCellKey];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_TITLE" value:&stru_30C98 table:@"ASAccountSetup"];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_BODY" value:&stru_30C98 table:@"ASAccountSetup"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_FBB0;
    v21[3] = &unk_30948;
    v22 = v12;
    v17 = v12;
    [(ASSettingsAccountsUIController *)self _showAlertWithTitle:v14 body:v16 completion:v21];

    v18 = *&self->super.ACUIViewController_opaque[v3];
    v19 = [v18 indexPathForCell:v17];
    [v18 scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:1];

    [(ASSettingsAccountsUIController *)self _setViewsEnabled];
LABEL_6:

    return mf_isLegalEmailAddress;
  }

  account2 = [(ASSettingsAccountsUIController *)self account];
  emailAddress2 = [account2 emailAddress];
  v10 = [(ASSettingsAccountsUIController *)self _storeHasDuplicateForUsername:emailAddress2];

  if (!v10)
  {
    account3 = [(ASSettingsAccountsUIController *)self account];
    [(ASSettingsAccountsUIController *)self account:account3 wasAutoDiscovered:1 error:0];
    goto LABEL_6;
  }

  [(ESSettingsAccountsUIController *)self showIdenticalAccountFailureView];
  [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:1];
  return mf_isLegalEmailAddress;
}

- (BOOL)autodiscoverAccount
{
  v3 = OBJC_IVAR___PSListController__table;
  firstResponder = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  account = [(ASSettingsAccountsUIController *)self account];
  emailAddress = [account emailAddress];
  mf_isLegalEmailAddress = [emailAddress mf_isLegalEmailAddress];

  if (!mf_isLegalEmailAddress)
  {
    v11 = [(ASSettingsAccountsUIController *)self specifierForID:@"EMAIL"];
    v12 = [v11 propertyForKey:PSTableCellKey];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_TITLE" value:&stru_30C98 table:@"ASAccountSetup"];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_BODY" value:&stru_30C98 table:@"ASAccountSetup"];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_101FC;
    v35[3] = &unk_30948;
    v36 = v12;
    v17 = v12;
    [(ASSettingsAccountsUIController *)self _showAlertWithTitle:v14 body:v16 completion:v35];

    v18 = *&self->super.ACUIViewController_opaque[v3];
    v19 = [v18 indexPathForCell:v17];
    [v18 scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:1];

    [(ASSettingsAccountsUIController *)self _setViewsEnabled];
LABEL_5:

    return mf_isLegalEmailAddress;
  }

  account2 = [(ASSettingsAccountsUIController *)self account];
  emailAddress2 = [account2 emailAddress];
  v10 = [(ASSettingsAccountsUIController *)self _storeHasDuplicateForUsername:emailAddress2];

  if (!v10)
  {
    if (*(&self->_remotedManaged + 2))
    {
      [(ASSettingsAccountsUIController *)self _reallyStartAutoDiscoverAccount];
      return mf_isLegalEmailAddress;
    }

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"ALLOW_MODERN_AUTHENTICATION" value:&stru_30C98 table:@"ASAccountSetup"];
    account3 = [(ASSettingsAccountsUIController *)self account];
    emailAddress3 = [account3 emailAddress];
    mf_addressDomain = [emailAddress3 mf_addressDomain];
    v11 = [NSString stringWithFormat:v22, mf_addressDomain];

    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"ALLOW_MODERN_AUTHENTICATION_ALERT_BODY" value:&stru_30C98 table:@"ASAccountSetup"];
    v28 = [UIAlertController alertControllerWithTitle:v11 message:v27 preferredStyle:1];

    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"MANUAL_ACCOUNT_SETUP" value:&stru_30C98 table:@"ASAccountSetup"];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100F4;
    v38[3] = &unk_30948;
    v38[4] = self;
    v31 = [UIAlertAction actionWithTitle:v30 style:0 handler:v38];
    [v28 addAction:v31];

    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"SIGN_IN" value:&stru_30C98 table:@"ASAccountSetup"];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_101B8;
    v37[3] = &unk_30948;
    v37[4] = self;
    v34 = [UIAlertAction actionWithTitle:v33 style:0 handler:v37];
    [v28 addAction:v34];

    [(ASSettingsAccountsUIController *)self presentViewController:v28 animated:0 completion:0];
    goto LABEL_5;
  }

  [(ESSettingsAccountsUIController *)self showIdenticalAccountFailureView];
  [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:1];
  return mf_isLegalEmailAddress;
}

- (void)_reallyStartAutoDiscoverAccount
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VERIFYING" value:&stru_30C98 table:@"Localizable"];
  [(ASSettingsAccountsUIController *)self startValidationWithPrompt:v4];

  if (*(&self->_remotedManaged + 2) > 1uLL)
  {
    account = [(ASSettingsAccountsUIController *)self account];
    [account autodiscoverAccountConfigurationWithConsumer:self];
  }

  else
  {

    [(ASSettingsAccountsUIController *)self _autodiscoverOAuthAccountAfterInitialRedirect];
  }
}

- (void)_setViewsEnabled
{
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] setUserInteractionEnabled:1];
  v4 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = *&self->super.ACUIViewController_opaque[v3];
      v8 = [(ASSettingsAccountsUIController *)self indexPathForIndex:i];
      v9 = [v7 cellForRowAtIndexPath:v8];

      if (v9)
      {
        [v9 setUserInteractionEnabled:1];
      }
    }
  }
}

- (void)_autodiscoverOAuthAccountAfterInitialRedirect
{
  v3 = objc_opt_new();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10440;
  v4[3] = &unk_30998;
  v4[4] = self;
  [v3 sendRequestForRedirectWithCompletionHandler:v4];
}

- (void)account:(id)account wasAutoDiscovered:(BOOL)discovered error:(id)error
{
  discoveredCopy = discovered;
  errorCopy = error;
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BECC();
    if (discoveredCopy)
    {
      goto LABEL_3;
    }
  }

  else if (discoveredCopy)
  {
LABEL_3:
    ADClientAddValueForScalarKey();
    *(&self->_remotedManaged + 2) = 4;
    account = [(ASSettingsAccountsUIController *)self account];
    accountStore = [(ASSettingsAccountsUIController *)self accountStore];
    [account checkValidityOnAccountStore:accountStore withConsumer:self inQueue:&_dispatch_main_q];

    goto LABEL_17;
  }

  v11 = *(&self->_remotedManaged + 2);
  if (v11 == 3)
  {
    *(&self->_remotedManaged + 2) = 4;
    [(ASSettingsAccountsUIController *)self _transitionToCompletedAutodiscovery];
  }

  else if (v11 == 2)
  {
    ADClientAddValueForScalarKey();
    *(&self->_remotedManaged + 2) = 3;
    [(ASSettingsAccountsUIController *)self _transitionToOptionalServerAutodiscovery];
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ASSettingsAccountsUIController.m" lineNumber:527 description:{@"If we were in state ASAccountSetupAutodiscoverStateComplete, we shouldn't have gotten an autodiscovery response"}];
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:ASHTTPConnectionErrorDomain])
  {
    code = [errorCopy code];

    if (code == &stru_158.reloff + 1)
    {
      v15 = DALoggingwithCategory();
      v16 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v15, v16))
      {
        *v18 = 0;
        _os_log_impl(&dword_0, v15, v16, "Autodiscovery encounters 401 error. Wiping password box.", v18, 2u);
      }

      account2 = [(ASSettingsAccountsUIController *)self account];
      [account2 setPassword:&stru_30C98];

      [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"PASSWORD"];
    }
  }

  else
  {
  }

  [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:1];
  [(ESSettingsAccountsUIController *)self updateDoneButton];
LABEL_17:
  [(ASSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:0];
}

- (BOOL)_isNetworkOfflineError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:NSURLErrorDomain];

  if (!v5)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  code = [errorCopy code];
  v7 = 1;
  if (code != -1009 && code != -1000)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      domain2 = [errorCopy domain];
      v12 = 138543618;
      v13 = domain2;
      v14 = 2048;
      code2 = [errorCopy code];
      _os_log_impl(&dword_0, v8, v9, "AutoDV2 Discovery Failed With Fatal Network Error %{public}@:%ld ", &v12, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (BOOL)_isSSLError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:NSURLErrorDomain];

  if (v5)
  {
    v6 = [errorCopy code] + 1204 < 5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)OAuthAccount:(id)account authorizationURI:(id)i error:(id)error
{
  accountCopy = account;
  iCopy = i;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      domain = [errorCopy domain];
      v32 = 138543618;
      v33 = domain;
      v34 = 2048;
      code = [errorCopy code];
      _os_log_impl(&dword_0, v11, v12, "AutoDV2 Discovery Failed With Error %{public}@:%ld ", &v32, 0x16u);
    }

    if ([(ASSettingsAccountsUIController *)self _isNetworkOfflineError:errorCopy])
    {
      v14 = DALoggingwithCategory();
      if (os_log_type_enabled(v14, v12))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_0, v14, v12, "Received an Internet Offline Error duing AutoDV2. Presenting Internet Offline Alert", &v32, 2u);
      }

      +[DAEASOAuthWebViewController presentInternetOfflineError];
      [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:1];
      goto LABEL_41;
    }

    if (![(ASSettingsAccountsUIController *)self _isSSLError:errorCopy]|| *(&self->_remotedManaged + 2) == 1)
    {
      v18 = iCopy != 0;
      goto LABEL_17;
    }

    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v30, v31))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_0, v30, v31, "Received an SSL Error during auto discover. Canceling", &v32, 2u);
    }

    +[DAEASOAuthWebViewController presentSSLError];
    [(ESSettingsAccountsUIController *)self cancelButtonTapped:0];
  }

  else
  {
    if (!iCopy)
    {
      v18 = 0;
LABEL_17:
      v19 = *(&self->_remotedManaged + 2);
      v20 = DALoggingwithCategory();
      account = v20;
      if (v19 == 1)
      {
        v24 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v20, v24))
        {
          v25 = @"Not Valid";
          if (v18)
          {
            v25 = iCopy;
          }

          v32 = 138543618;
          v33 = v25;
          v34 = 2114;
          code = errorCopy;
          _os_log_impl(&dword_0, account, v24, "OAuthURI %{public}@ : Error %{public}@ Falling Back to AutoDiscvoer-V1", &v32, 0x16u);
        }

        [(ASSettingsAccountsUIController *)self _fallBackToAutoDiscoverV1];
      }

      else
      {
        if (v19)
        {
          v26 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v20, v26))
          {
            v27 = *(&self->_remotedManaged + 2);
            v32 = 134217984;
            v33 = v27;
            _os_log_impl(&dword_0, account, v26, "OAuth autodiscover failed with inconsistent state %ld", &v32, 0xCu);
          }
        }

        else
        {
          v22 = _CPLog_to_os_log_type[6];
          if (os_log_type_enabled(v20, _CPLog_to_os_log_type[6]))
          {
            v23 = @"Not Valid";
            if (v18)
            {
              v23 = iCopy;
            }

            v32 = 138543618;
            v33 = v23;
            v34 = 2114;
            code = errorCopy;
            _os_log_impl(&dword_0, account, v22, "OAuthURI %{public}@ : Error %{public}@ Trying on-prem AutoDiscvoer-V2", &v32, 0x16u);
          }

          *(&self->_remotedManaged + 2) = 1;
          account = [(ASSettingsAccountsUIController *)self account];
          [account autodiscoverOnPremOAuthAccountWithConsumer:self];
        }
      }

      goto LABEL_41;
    }

    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v15, v16))
    {
      v32 = 138543362;
      v33 = iCopy;
      _os_log_impl(&dword_0, v15, v16, "AutoDiscover succeeded with OAuthURI : %{public}@", &v32, 0xCu);
    }

    [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:0];
    if (*(&self->_remotedManaged + 2) == 1)
    {
      bOOLValue = &dword_0 + 1;
    }

    else
    {
      backingAccountInfo = [accountCopy backingAccountInfo];
      v29 = [backingAccountInfo objectForKeyedSubscript:kESExchangeOAuthOnPremKey];

      if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        bOOLValue = [v29 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    [(ASSettingsAccountsUIController *)self _bringUpOAuthEndPointWithURL:iCopy isOnPrem:bOOLValue];
  }

LABEL_41:
}

- (void)_fallBackToAutoDiscoverV1
{
  *(&self->_remotedManaged + 2) = 2;
  [(ASSettingsAccountsUIController *)self reloadSpecifiers];
  [(ESSettingsAccountsUIController *)self setAttemptedValidation:0];
  [(ESSettingsAccountsUIController *)self updateDoneButton];

  [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:1];
}

- (BOOL)_storeHasDuplicateForUsername:(id)username
{
  usernameCopy = username;
  accountStore = [(ASSettingsAccountsUIController *)self accountStore];
  account = [(ASSettingsAccountsUIController *)self account];
  accountTypeIdentifier = [account accountTypeIdentifier];
  v8 = [accountStore accountTypeWithAccountTypeIdentifier:accountTypeIdentifier];

  accountStore2 = [(ASSettingsAccountsUIController *)self accountStore];
  v10 = [accountStore2 accountsWithAccountType:v8];
  v11 = [v10 mutableCopy];

  account2 = [(ASSettingsAccountsUIController *)self account];
  accountTypeIdentifier2 = [account2 accountTypeIdentifier];
  v14 = ACAccountTypeIdentifierExchange;
  v15 = [accountTypeIdentifier2 isEqualToString:ACAccountTypeIdentifierExchange];

  if (v15)
  {
    accountStore3 = [(ASSettingsAccountsUIController *)self accountStore];
    v17 = accountStore3;
    v18 = ACAccountTypeIdentifierHotmail;
  }

  else
  {
    account3 = [(ASSettingsAccountsUIController *)self account];
    accountTypeIdentifier3 = [account3 accountTypeIdentifier];
    v21 = [accountTypeIdentifier3 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (!v21)
    {
      goto LABEL_7;
    }

    accountStore3 = [(ASSettingsAccountsUIController *)self accountStore];
    v17 = accountStore3;
    v18 = v14;
  }

  v22 = [accountStore3 accountTypeWithAccountTypeIdentifier:v18];

  if (v22)
  {
    accountStore4 = [(ASSettingsAccountsUIController *)self accountStore];
    v24 = [accountStore4 accountsWithAccountType:v22];
    [v11 addObjectsFromArray:v24];
  }

LABEL_7:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v38;
    v29 = kDAAccountEmailAddress;
    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v37 + 1) + 8 * i);
        username = [v31 username];
        if (![usernameCopy compare:username options:1])
        {

          v34 = 1;
          goto LABEL_19;
        }

        v33 = [v31 objectForKeyedSubscript:v29];
        v34 = 1;
        v35 = [usernameCopy compare:v33 options:1];

        if (!v35)
        {
          goto LABEL_19;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v34 = 0;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_19:

  return v34;
}

- (void)handleRedirectURL:(id)l
{
  v47 = a2;
  lCopy = l;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VERIFYING" value:&stru_30C98 table:@"Localizable"];
  [(ASSettingsAccountsUIController *)self startValidationWithPrompt:v4];

  oauthFlowController = [(ASSettingsAccountsUIController *)self oauthFlowController];
  oauthType = [oauthFlowController oauthType];

  v6 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
  queryItems = [v6 queryItems];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = queryItems;
  v8 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (!v8)
  {

    v52 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  v51 = 0uLL;
  v52 = 0;
  v9 = 0;
  v10 = *v57;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v57 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v56 + 1) + 8 * i);
      name = [v12 name];
      v14 = [name caseInsensitiveCompare:@"code"] == 0;

      if (v14)
      {
        value = [v12 value];
        v22 = v9;
        v9 = value;
      }

      else
      {
        name2 = [v12 name];
        v16 = [name2 caseInsensitiveCompare:@"state"] == 0;

        if (v16)
        {
          value2 = [v12 value];
          v22 = v52;
          v52 = value2;
        }

        else
        {
          name3 = [v12 name];
          v18 = [name3 caseInsensitiveCompare:@"error"] == 0;

          if (v18)
          {
            value3 = [v12 value];
            v22 = *(&v51 + 1);
            *(&v51 + 1) = value3;
          }

          else
          {
            name4 = [v12 name];
            v20 = [name4 caseInsensitiveCompare:@"error_description"] == 0;

            if (!v20)
            {
              continue;
            }

            value4 = [v12 value];
            v22 = v51;
            *&v51 = value4;
          }
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  }

  while (v8);

  if (v51 == 0)
  {
    if (v9)
    {
      oauthFlowController2 = [(ASSettingsAccountsUIController *)self oauthFlowController];
      state = [oauthFlowController2 state];
      v31 = [v52 isEqualToString:state];

      if (v31)
      {
        objc_initWeak(buf, self);
        oauthFlowController3 = [(ASSettingsAccountsUIController *)self oauthFlowController];
        oauthFlowController4 = [(ASSettingsAccountsUIController *)self oauthFlowController];
        challenge = [oauthFlowController4 challenge];
        codeVerifier = [challenge codeVerifier];
        account = [(ASSettingsAccountsUIController *)self account];
        backingAccountInfo = [account backingAccountInfo];
        v38 = [backingAccountInfo objectForKeyedSubscript:kESExchangePendingClaimsChallenge];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1198C;
        v54[3] = &unk_309E8;
        objc_copyWeak(v55, buf);
        v54[4] = self;
        v55[1] = v47;
        v55[2] = oauthType;
        [oauthFlowController3 exchangeAuthCode:v9 codeVerifier:codeVerifier claims:v38 withCompletion:v54];

        objc_destroyWeak(v55);
        objc_destroyWeak(buf);
LABEL_28:
        v51 = 0uLL;
        goto LABEL_29;
      }
    }

LABEL_25:
    v39 = DALoggingwithCategory();
    v40 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v39, v40))
    {
      oauthFlowController5 = [(ASSettingsAccountsUIController *)self oauthFlowController];
      state2 = [oauthFlowController5 state];
      *buf = 138412802;
      v61 = v9;
      v62 = 2112;
      v63 = v52;
      v64 = 2112;
      v65 = state2;
      _os_log_impl(&dword_0, v39, v40, "Error retrieving an OAuth identity. Params: authCode %@, state %@ [self.oauthFlowController state] %@", buf, 0x20u);
    }

    v43 = [NSError errorWithDomain:DAAccountValidationDomain code:102 userInfo:0];
    account2 = [(ASSettingsAccountsUIController *)self account];
    [(ASSettingsAccountsUIController *)self account:account2 isValid:0 validationError:v43];

    [(ASSettingsAccountsUIController *)self _fallBackToAutoDiscoverV1];
    goto LABEL_28;
  }

  v26 = DALoggingwithCategory();
  v27 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v26, v27))
  {
    *buf = 138412546;
    v61 = *(&v51 + 1);
    v62 = 2112;
    v63 = v51;
    _os_log_impl(&dword_0, v26, v27, "Error retrieving an OAuth identity. Failed with error %@, error_description %@", buf, 0x16u);
  }

  account3 = [(ASSettingsAccountsUIController *)self account];
  [(ASSettingsAccountsUIController *)self account:account3 isValid:0 validationError:0];

  [(ASSettingsAccountsUIController *)self _fallBackToAutoDiscoverV1];
LABEL_29:
  v45 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v46 = [DAEASOAuthClient clientRedirectForOAuthType:oauthType];
  [v45 unRegisterOAuthClientForRedirectURL:v46];
}

+ (id)usernameFromAccessToken:(id)token
{
  v3 = [token componentsSeparatedByString:@"."];
  if ([v3 count] >= 3)
  {
    v5 = [v3 objectAtIndexedSubscript:1];
    v6 = [DAEASOAuthJWTValidator base64URLDecode:v5];
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:0];
    v8 = [v7 objectForKeyedSubscript:@"upn"];
    v9 = v8;
    if (v8 && [v8 mf_isLegalEmailAddress])
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)doneButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = *(&self->_remotedManaged + 2);
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (v5 != 3 || (-[ASSettingsAccountsUIController account](self, "account"), v20 = objc_claimAutoreleasedReturnValue(), [v20 host], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, v20, v22))
    {
      v23.receiver = self;
      v23.super_class = ASSettingsAccountsUIController;
      [(ESSettingsAccountsUIController *)&v23 doneButtonTapped:tappedCopy];
      goto LABEL_19;
    }
  }

  account = [(ASSettingsAccountsUIController *)self account];
  v8 = kESEASEndPointFQDN;
  v9 = [account objectForKeyedSubscript:kESEASEndPointFQDN];
  if (!v9 || *(&self->_remotedManaged + 2) == 2)
  {
    goto LABEL_17;
  }

  account2 = [(ASSettingsAccountsUIController *)self account];
  v11 = [account2 objectForKeyedSubscript:kDAAccountHost];
  if (!v11)
  {

LABEL_17:
    goto LABEL_18;
  }

  v12 = v11;
  account3 = [(ASSettingsAccountsUIController *)self account];
  host = [account3 host];
  v15 = [host length];

  if (!v15)
  {
LABEL_18:
    [(ASSettingsAccountsUIController *)self autodiscoverAccount];
    goto LABEL_19;
  }

  v16 = DALoggingwithCategory();
  v17 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v16, v17))
  {
    account4 = [(ASSettingsAccountsUIController *)self account];
    v19 = [account4 objectForKeyedSubscript:v8];
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&dword_0, v16, v17, "Not performing autodiscover. EAS endpoint : %@", buf, 0xCu);
  }

  [(ASSettingsAccountsUIController *)self verifyAccountPassword];
LABEL_19:
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  if (validCopy)
  {
    if ([(ESSettingsAccountsUIController *)self accountNeedsAdd])
    {
      account = [(ASSettingsAccountsUIController *)self account];
      [account setEnabled:1 forDADataclass:1];

      account2 = [(ASSettingsAccountsUIController *)self account];
      [account2 setEnabled:0 forDADataclass:2];

      account3 = [(ASSettingsAccountsUIController *)self account];
      [account3 setEnabled:0 forDADataclass:4];

      account4 = [(ASSettingsAccountsUIController *)self account];
      [account4 setEnabled:0 forDADataclass:16];

      account5 = [(ASSettingsAccountsUIController *)self account];
      [account5 setEnabled:0 forDADataclass:32];

      v15 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 1;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      accountStore = [(ASSettingsAccountsUIController *)self accountStore];
      account6 = [(ASSettingsAccountsUIController *)self account];
      backingAccountInfo = [account6 backingAccountInfo];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_13270;
      v26[3] = &unk_30A88;
      v28 = &v30;
      p_buf = &buf;
      v19 = v15;
      v27 = v19;
      [accountStore canSaveAccount:backingAccountInfo withCompletionHandler:v26];

      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v20 = *(*(&buf + 1) + 24);
      if (v20)
      {
        [(ESSettingsAccountsUIController *)self setAccountNeedsAdd:0];
        [(ESSettingsAccountsUIController *)self setValidatedSuccessfully:1];
      }

      else
      {
        if (*(v31 + 24) == 1)
        {
          [(ESSettingsAccountsUIController *)self showIdenticalAccountFailureView];
        }

        else
        {
          [(ESSettingsAccountsUIController *)self showCanSaveAccountFailureView];
        }

        [(ESSettingsAccountsUIController *)self setAttemptedValidation:0];
      }

      ADClientAddValueForScalarKey();

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v20 = 1;
      ADClientAddValueForScalarKey();
      [(ESSettingsAccountsUIController *)self setValidatedSuccessfully:1];
    }

    v22 = 0;
  }

  else
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_30C98 table:@"ASAccountSetup"];

    [(ESSettingsAccountsUIController *)self setValidatedSuccessfully:0];
    [(ESSettingsAccountsUIController *)self setAttemptedValidation:1];
    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v23, v24))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = errorCopy;
      _os_log_impl(&dword_0, v23, v24, "validation failed with error %@", &buf, 0xCu);
    }

    ADClientAddValueForScalarKey();
    v20 = 1;
  }

  [(ESSettingsAccountsUIController *)self hideProgressWithPrompt:v22];
  v25.receiver = self;
  v25.super_class = ASSettingsAccountsUIController;
  [(ESSettingsAccountsUIController *)&v25 account:accountCopy isValid:v20 & validCopy validationError:errorCopy];
}

- (BOOL)haveEnoughValues
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (!qword_3A2E0)
  {
    v5 = [[NSSet alloc] initWithObjects:{@"USERNAME", @"EMAIL", 0}];
    v6 = qword_3A2E0;
    qword_3A2E0 = v5;
  }

  if (!qword_3A2E8)
  {
    v7 = [[NSSet alloc] initWithObjects:{@"PASSWORD", @"EMAIL", 0}];
    v8 = qword_3A2E8;
    qword_3A2E8 = v7;
  }

  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  v10 = &qword_3A2E8;
  if (!isHotmailAccount)
  {
    v10 = &qword_3A2E0;
  }

  v11 = *v10;
  if (v4)
  {
    v12 = 0;
    v24 = v4;
    while (1)
    {
      v13 = [*&self->super.ACUIViewController_opaque[v3] objectAtIndexedSubscript:v12];
      if (v12 == [(ESSettingsAccountsUIController *)self indexOfCurrentlyEditingCell])
      {
        currentlyEditingCell = [(ESSettingsAccountsUIController *)self currentlyEditingCell];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v13 identifier];
          if ([v11 containsObject:identifier])
          {
            textField = [currentlyEditingCell textField];
            [textField text];
            v17 = v3;
            v19 = v18 = v11;
            v20 = [v19 length];

            v11 = v18;
            v3 = v17;
            v4 = v24;
            goto LABEL_21;
          }

          v22 = 1;
LABEL_22:

          goto LABEL_27;
        }
      }

      else
      {
        currentlyEditingCell = [v13 identifier];
        if ([currentlyEditingCell isEqualToString:@"USERNAME"])
        {
          identifier = [(ASSettingsAccountsUIController *)self account];
          usernameWithoutDomain = [identifier usernameWithoutDomain];
          goto LABEL_20;
        }

        if ([currentlyEditingCell isEqualToString:@"PASSWORD"])
        {
          identifier = [(ASSettingsAccountsUIController *)self account];
          usernameWithoutDomain = [identifier passwordWithExpected:0];
          goto LABEL_20;
        }

        if ([currentlyEditingCell isEqualToString:@"EMAIL"])
        {
          identifier = [(ASSettingsAccountsUIController *)self account];
          usernameWithoutDomain = [identifier emailAddress];
          goto LABEL_20;
        }

        if ([currentlyEditingCell isEqualToString:@"HOST"] && *(&self->_remotedManaged + 2) == 4)
        {
          identifier = [(ASSettingsAccountsUIController *)self account];
          usernameWithoutDomain = [identifier host];
LABEL_20:
          textField = usernameWithoutDomain;
          v20 = [usernameWithoutDomain length];
LABEL_21:
          v22 = v20 != 0;

          goto LABEL_22;
        }
      }

      v22 = 1;
LABEL_27:

      if (++v12 >= v4 || (v22 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v22 = 0;
LABEL_31:

  return v22;
}

- (void)_tryUpdatingCompositeValueWithId:(id)id fromValue:(id)value forKey:(id)key
{
  idCopy = id;
  valueCopy = value;
  keyCopy = key;
  if ([idCopy isEqualToString:@"EMAIL"])
  {
    account = [(ASSettingsAccountsUIController *)self account];
    emailAddress = [account emailAddress];
LABEL_5:
    v12 = emailAddress;

    goto LABEL_7;
  }

  if ([idCopy isEqualToString:@"DESCRIPTION"])
  {
    account = [(ASSettingsAccountsUIController *)self account];
    emailAddress = [account accountDescription];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = [v12 componentsSeparatedByString:@"@"];
  if ([v13 count] == &dword_0 + 2)
  {
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v13 objectAtIndexedSubscript:1];
    if ([keyCopy isEqualToString:@"HOST"])
    {
      if (v15)
      {
        account2 = [(ASSettingsAccountsUIController *)self account];
        host = [account2 host];
        v18 = host;
        v19 = v15;
LABEL_18:
        v20 = [host isEqualToString:v19];

        goto LABEL_19;
      }
    }

    else if (([keyCopy isEqualToString:@"USERNAME"] & 1) != 0 && v14)
    {
      account2 = [(ASSettingsAccountsUIController *)self account];
      host = [account2 username];
      v18 = host;
      v19 = v14;
      goto LABEL_18;
    }
  }

  else
  {
    if (([keyCopy isEqualToString:@"HOST"] & 1) == 0)
    {
      [keyCopy isEqualToString:@"USERNAME"];
    }

    v15 = 0;
    v14 = 0;
  }

  v20 = 0;
LABEL_19:
  if ([v12 length] && !v20)
  {
    goto LABEL_45;
  }

  if ([keyCopy isEqualToString:@"HOST"])
  {
    v21 = v14;
    if (v21)
    {
      usernameWithoutDomain = v21;
LABEL_28:
      [NSString stringWithFormat:@"%@@%@", usernameWithoutDomain, valueCopy];
      v26 = LABEL_31:;

      goto LABEL_33;
    }

    account3 = [(ASSettingsAccountsUIController *)self account];
    usernameWithoutDomain = [account3 usernameWithoutDomain];

    if (usernameWithoutDomain)
    {
      goto LABEL_28;
    }
  }

  else if ([keyCopy isEqualToString:@"USERNAME"])
  {
    v23 = v15;
    if (v23)
    {
      usernameWithoutDomain = v23;
    }

    else
    {
      account4 = [(ASSettingsAccountsUIController *)self account];
      usernameWithoutDomain = [account4 host];

      if (!usernameWithoutDomain)
      {
        goto LABEL_32;
      }
    }

    [NSString stringWithFormat:@"%@@%@", valueCopy, usernameWithoutDomain];
    goto LABEL_31;
  }

LABEL_32:
  v26 = 0;
LABEL_33:
  v37 = v15;
  v38 = v14;
  v39 = valueCopy;
  if ([idCopy isEqualToString:@"EMAIL"])
  {
    account5 = [(ASSettingsAccountsUIController *)self account];
    [account5 setEmailAddress:v26];
LABEL_37:

    goto LABEL_38;
  }

  if ([idCopy isEqualToString:@"DESCRIPTION"])
  {
    account5 = [(ASSettingsAccountsUIController *)self account];
    [account5 setAccountDescription:v26];
    goto LABEL_37;
  }

LABEL_38:
  v28 = OBJC_IVAR___PSListController__specifiers;
  v29 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    while (1)
    {
      v32 = [*&self->super.ACUIViewController_opaque[v28] objectAtIndexedSubscript:v31];
      identifier = [v32 identifier];

      if ([identifier isEqualToString:idCopy])
      {
        break;
      }

      if (v30 == ++v31)
      {
        goto LABEL_44;
      }
    }

    table = [(ASSettingsAccountsUIController *)self table];
    v35 = [(ASSettingsAccountsUIController *)self indexPathForIndex:v31];
    v36 = [table cellForRowAtIndexPath:v35];

    [v36 setValue:v26];
  }

LABEL_44:

  v14 = v38;
  valueCopy = v39;
  v15 = v37;
LABEL_45:
}

- (id)_defaultAccountDescription
{
  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isHotmailAccount)
  {
    v5 = @"HOTMAIL";
  }

  else
  {
    v5 = @"EXCHANGE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_30C98 table:@"ASAccountSetup"];

  return v6;
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v9 = [(ASSettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];
  v10 = [propertyCopy isEqualToString:v9];

  if ([identifier isEqualToString:@"HOST"])
  {
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"EMAIL" fromValue:propertyCopy forKey:identifier];
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"DESCRIPTION" fromValue:propertyCopy forKey:identifier];
    account = [(ASSettingsAccountsUIController *)self account];
    [account setHost:propertyCopy];
LABEL_3:

    goto LABEL_29;
  }

  if ([identifier isEqualToString:@"DOMAIN"])
  {
    account2 = [(ASSettingsAccountsUIController *)self account];
    usernameWithoutDomain = [account2 usernameWithoutDomain];

    if (usernameWithoutDomain)
    {
      v14 = usernameWithoutDomain;
    }

    else
    {
      v14 = &stru_30C98;
    }

    propertyCopy = propertyCopy;
    if ([propertyCopy length])
    {
      v15 = [propertyCopy stringByAppendingFormat:@"\\%@", v14];
    }

    else
    {
      v15 = v14;
    }

    v20 = v15;

    account3 = [(ASSettingsAccountsUIController *)self account];
    [account3 setUsername:v20];
  }

  else if ([identifier isEqualToString:@"USERNAME"])
  {
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"EMAIL" fromValue:propertyCopy forKey:identifier];
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"DESCRIPTION" fromValue:propertyCopy forKey:identifier];
    account4 = [(ASSettingsAccountsUIController *)self account];
    domainOnly = [account4 domainOnly];

    if ([domainOnly length])
    {
      propertyCopy = [domainOnly stringByAppendingFormat:@"\\%@", propertyCopy];
    }

    else
    {
      propertyCopy = propertyCopy;
    }

    v27 = propertyCopy;

    account5 = [(ASSettingsAccountsUIController *)self account];
    [account5 setUsername:v27];
  }

  else
  {
    if (!(v10 & 1 | (([identifier isEqualToString:@"DESCRIPTION"] & 1) == 0)))
    {
      if (![propertyCopy length])
      {
        isHotmailAccount = [objc_opt_class() isHotmailAccount];
        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = v23;
        if (isHotmailAccount)
        {
          v25 = @"HOTMAIL_DESCRIPTION";
        }

        else
        {
          v25 = @"EXCHANGE_DESCRIPTION";
        }

        v26 = [v23 localizedStringForKey:v25 value:&stru_30C98 table:@"ASAccountSetup"];

        propertyCopy = v26;
      }

      account = [(ASSettingsAccountsUIController *)self account];
      [account setAccountDescription:propertyCopy];
      goto LABEL_3;
    }

    if ([identifier isEqualToString:@"EMAIL"])
    {
      if ([objc_opt_class() isHotmailAccount])
      {
        account6 = [(ASSettingsAccountsUIController *)self account];
        [account6 setUsername:propertyCopy];
      }

      v30.receiver = self;
      v30.super_class = ASSettingsAccountsUIController;
      [(ESSettingsAccountsUIController *)&v30 setAccountProperty:propertyCopy withSpecifier:specifierCopy];
    }

    else
    {
      v29.receiver = self;
      v29.super_class = ASSettingsAccountsUIController;
      [(ESSettingsAccountsUIController *)&v29 setAccountProperty:propertyCopy withSpecifier:specifierCopy];
    }
  }

LABEL_29:
  [(ESSettingsAccountsUIController *)self setNeedsSave:1];
  [(ESSettingsAccountsUIController *)self updateDoneButton];
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"DOMAIN"])
  {
    account = [(ASSettingsAccountsUIController *)self account];
    domainOnly = [account domainOnly];
LABEL_5:
    v8 = domainOnly;

    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"USERNAME"])
  {
    account = [(ASSettingsAccountsUIController *)self account];
    domainOnly = [account usernameWithoutDomain];
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = ASSettingsAccountsUIController;
  v8 = [(ESSettingsAccountsUIController *)&v12 accountPropertyWithSpecifier:specifierCopy];
LABEL_7:
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_30C98;
  }

  v10 = v9;

  return v9;
}

- (id)localizedValidationFailureTitleString
{
  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isHotmailAccount)
  {
    v5 = @"HOTMAIL_ACCOUNT";
  }

  else
  {
    v5 = @"EXCHANGE_ACCOUNT";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_30C98 table:@"ASAccountSetup"];

  return v6;
}

- (id)localizedConfirmSaveUnvalidatedAccountMessageString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONFIRM_SAVE_ACCOUNT_ANYWAYS_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];

  return v3;
}

- (id)localizedAccountSetupTitleString
{
  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isHotmailAccount)
  {
    v5 = @"HOTMAIL";
  }

  else
  {
    v5 = @"EXCHANGE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_30C98 table:@"ASAccountSetup"];

  return v6;
}

- (id)localizedAccountTitleString
{
  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  isSettingUpNewAccount = [(ESSettingsAccountsUIController *)self isSettingUpNewAccount];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = @"NEW_ACCOUNT_SETTINGS";
  if (isHotmailAccount)
  {
    v7 = @"NEW_HOTMAIL_ACCOUNT_SETTINGS";
  }

  if (isSettingUpNewAccount)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"ACCOUNT";
  }

  v9 = [v5 localizedStringForKey:v8 value:&stru_30C98 table:@"ASAccountSetup"];

  return v9;
}

- (void)dealloc
{
  v3 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v4 = [DAEASOAuthClient clientRedirectForOAuthType:1];
  [v3 unRegisterOAuthClientForRedirectURL:v4];

  v5 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v6 = [DAEASOAuthClient clientRedirectForOAuthType:2];
  [v5 unRegisterOAuthClientForRedirectURL:v6];

  v7 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v8 = [DAEASOAuthClient clientRedirectForOAuthType:3];
  [v7 unRegisterOAuthClientForRedirectURL:v8];

  v9.receiver = self;
  v9.super_class = ASSettingsAccountsUIController;
  [(ESSettingsAccountsUIController *)&v9 dealloc];
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  view = [(ASSettingsAccountsUIController *)self view];
  window = [view window];

  return window;
}

- (void)_validateUniquenessAndAddAccount:(id)account username:(id)username token:(id)token refreshToken:(id)refreshToken completion:(id)completion
{
  accountCopy = account;
  usernameCopy = username;
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_147B4;
  v22[3] = &unk_30AB0;
  objc_copyWeak(&v29, &location);
  v23 = tokenCopy;
  selfCopy = self;
  v25 = usernameCopy;
  v26 = accountCopy;
  v27 = refreshTokenCopy;
  v28 = completionCopy;
  v17 = refreshTokenCopy;
  v18 = accountCopy;
  v19 = completionCopy;
  v20 = usernameCopy;
  v21 = tokenCopy;
  dispatch_async(&_dispatch_main_q, v22);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

@end