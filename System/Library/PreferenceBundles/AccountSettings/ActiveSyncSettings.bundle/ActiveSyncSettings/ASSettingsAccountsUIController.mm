@interface ASSettingsAccountsUIController
+ (id)usernameFromAccessToken:(id)a3;
- (BOOL)_isNetworkOfflineError:(id)a3;
- (BOOL)_isSSLError:(id)a3;
- (BOOL)_storeHasDuplicateForUsername:(id)a3;
- (BOOL)autodiscoverAccount;
- (BOOL)haveEnoughValues;
- (BOOL)validateAccount;
- (BOOL)verifyAccountPassword;
- (id)_configureNewAccountWithInfo:(id)a3;
- (id)_defaultAccountDescription;
- (id)_specifiersForCompletedAutodiscovery;
- (id)_specifiersForMinimalAutodiscoveryRemovingIDs:(id)a3;
- (id)_specifiersForOptionalServerAutodiscovery;
- (id)account;
- (id)accountFromSpecifier;
- (id)accountFromSpecifier:(id)a3;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)accountSpecifiers;
- (id)localizedAccountSetupTitleString;
- (id)localizedAccountTitleString;
- (id)localizedConfirmSaveUnvalidatedAccountMessageString;
- (id)localizedValidationFailureTitleString;
- (id)newDefaultAccount;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)OAuthAccount:(id)a3 authorizationURI:(id)a4 error:(id)a5;
- (void)_autodiscoverOAuthAccountAfterInitialRedirect;
- (void)_fallBackToAutoDiscoverV1;
- (void)_reallyStartAutoDiscoverAccount;
- (void)_setViewsEnabled;
- (void)_showAlertWithTitle:(id)a3 body:(id)a4 completion:(id)a5;
- (void)_transitionToCompletedAutodiscovery;
- (void)_transitionToOptionalServerAutodiscovery;
- (void)_tryUpdatingCompositeValueWithId:(id)a3 fromValue:(id)a4 forKey:(id)a5;
- (void)_validateUniquenessAndAddAccount:(id)a3 username:(id)a4 token:(id)a5 refreshToken:(id)a6 completion:(id)a7;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)account:(id)a3 wasAutoDiscovered:(BOOL)a4 error:(id)a5;
- (void)dealloc;
- (void)doneButtonTapped:(id)a3;
- (void)handleRedirectURL:(id)a3;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
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
  v3 = [(ESSettingsAccountsUIController *)&v5 account];

  return v3;
}

- (id)accountFromSpecifier:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:ACUIAccountKey];

  if (v5)
  {
    if ([(ESSettingsAccountsUIController *)self backingAccountIsNewAccountForAutoDiscovery])
    {
      [v5 setAuthenticated:1];
      v6 = [v5 username];
      v7 = ACAccountPropertyIdentityEmailAddress;
      [v5 setObject:v6 forKeyedSubscript:ACAccountPropertyIdentityEmailAddress];

      v8 = [v5 objectForKeyedSubscript:v7];
      v9 = ACUIDescriptionFromEmailAddress();
      [v5 setAccountDescription:v9];

      v10 = [(ASSettingsAccountsUIController *)self _configureNewAccountWithInfo:v5];
      v11 = [v5 username];
      [v10 setEmailAddress:v11];

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
  v3 = [(ASSettingsAccountsUIController *)self specifier];
  v4 = [(ASSettingsAccountsUIController *)self accountFromSpecifier:v3];

  return v4;
}

- (id)newDefaultAccount
{
  v3 = [objc_opt_class() isHotmailAccount];
  v4 = [(ASSettingsAccountsUIController *)self accountStore];
  v5 = v4;
  v6 = &ACAccountTypeIdentifierHotmail;
  if (!v3)
  {
    v6 = &ACAccountTypeIdentifierExchange;
  }

  v7 = [v4 accountTypeWithAccountTypeIdentifier:*v6];

  v8 = [[ACAccount alloc] initWithAccountType:v7];
  v9 = [(ASSettingsAccountsUIController *)self _configureNewAccountWithInfo:v8];

  return v9;
}

- (id)_configureNewAccountWithInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 accountType];
  v6 = [v5 supportedDataclasses];
  v7 = [v6 mutableCopy];

  [v7 removeObject:kAccountDataclassNotes];
  [v4 setProvisionedDataclasses:v7];
  v8 = [ESAccount esAccountSubclassWithBackingAccountInfo:v4];

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

- (id)_specifiersForMinimalAutodiscoveryRemovingIDs:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BD1C();
  }

  v5 = [(ASSettingsAccountsUIController *)self loadSpecifiersFromPlistName:@"ASAccountSetup" target:self];
  v6 = [NSMutableArray arrayWithArray:v5];

  v7 = &off_327F0;
  if (v4)
  {
    v7 = [&off_327F0 arrayByAddingObjectsFromArray:v4];
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
  v18 = [(ASSettingsAccountsUIController *)self exchangeIdView];

  if (!v18)
  {
    v19 = +[ESDConnection sharedConnection];
    v20 = [v19 activeSyncDeviceIdentifier];

    [v17 setProperty:v20 forKey:@"ASExchangeIdKey"];
    v21 = [[ASExchangeIdView alloc] initWithSpecifier:v17];
    [(ASSettingsAccountsUIController *)self setExchangeIdView:v21];
  }

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [v17 setProperty:v23 forKey:PSFooterCellClassGroupKey];

  v24 = [(ASSettingsAccountsUIController *)self exchangeIdView];
  [v17 setProperty:v24 forKey:PSFooterViewKey];

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
  v12 = [(ASSettingsAccountsUIController *)self exchangeIdView];

  if (!v12)
  {
    v13 = +[ESDConnection sharedConnection];
    v14 = [v13 activeSyncDeviceIdentifier];

    [v11 setProperty:v14 forKey:@"ASExchangeIdKey"];
    v15 = [[ASExchangeIdView alloc] initWithSpecifier:v11];
    [(ASSettingsAccountsUIController *)self setExchangeIdView:v15];
  }

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v11 setProperty:v17 forKey:PSFooterCellClassGroupKey];

  v18 = [(ASSettingsAccountsUIController *)self exchangeIdView];
  [v11 setProperty:v18 forKey:PSFooterViewKey];

  [v4 addObject:v11];

  return v4;
}

- (id)_specifiersForCompletedAutodiscovery
{
  v3 = @"ASHotmailAccountSetup";
  if (([objc_opt_class() isHotmailAccount] & 1) == 0)
  {
    v4 = [(ASSettingsAccountsUIController *)self account];
    v5 = [v4 objectForKeyedSubscript:kESExchangeOAuthSupportedKey];
    v6 = [v5 BOOLValue];

    if (!v6)
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

    v13 = [(ASSettingsAccountsUIController *)self account];
    [v12 setProperty:v13 forKey:@"ASAdvancedControllerAccountKey"];

    [v12 setIdentifier:@"ADVANCED_SETTINGS"];
    v54 = v9;
    [v8 addObject:v9];
    v53 = v12;
    [v8 addObject:v12];
    v14 = [(ASSettingsAccountsUIController *)self account];
    v15 = [v14 backingAccountInfo];
    v16 = [v15 mcBackingProfile];

    v55 = v16;
    if (v16)
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
      v19 = [v16 friendlyName];
      v52 = [NSString stringWithFormat:v18, v19];

      v20 = [(ASSettingsAccountsUIController *)self account];
      v21 = [v20 identityPersist];

      if (v21)
      {
        v22 = [(ASSettingsAccountsUIController *)self account];
        v23 = [v22 username];

        if (v23)
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
            v39 = [v38 identifier];
            if (([&off_32820 containsObject:v39] & 1) == 0)
            {
              [v38 setProperty:&__kCFBooleanFalse forKey:v36];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v34);
      }

      v40 = [(ESSettingsAccountsUIController *)self lastGroupSpecifierInSpecifiers:v32];
      v16 = v55;
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
            v50 = [v49 identifier];
            if ([&off_32838 containsObject:v50])
            {
              [v49 setProperty:&__kCFBooleanFalse forKey:v47];
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v56 objects:v68 count:16];
        }

        while (v45);
      }

      v16 = v55;
    }
  }

  return v8;
}

- (id)accountSpecifiers
{
  v3 = [(ASSettingsAccountsUIController *)self account];
  v4 = [(ASSettingsAccountsUIController *)self account];
  v5 = [v4 backingAccountInfo];
  v6 = [v5 managingOwnerIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(ASSettingsAccountsUIController *)self account];
    v8 = [v9 objectForKeyedSubscript:ACAccountPropertyConfigurationProfileIdentifier];
  }

  if (v8)
  {
    v4 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v4, v10))
    {
      v11 = [(ASSettingsAccountsUIController *)self account];
      v20 = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_0, v4, v10, "Disable editing for %@, account is managed by %@", &v20, 0x16u);
    }

    v12 = self;
    v13 = 1;
  }

  else
  {
    v12 = self;
    v13 = 0;
  }

  [(ASSettingsAccountsUIController *)v12 setRemotedManaged:v13];
  v14 = *(&self->_remotedManaged + 2);
  if (v14 <= 2)
  {
    if (v14 >= 2)
    {
      if (v14 != 2)
      {
        goto LABEL_20;
      }

      v16 = self;
      v15 = 0;
    }

    else
    {
      v15 = &off_32850;
      v16 = self;
    }

    v18 = [(ASSettingsAccountsUIController *)v16 _specifiersForMinimalAutodiscoveryRemovingIDs:v15];
    goto LABEL_19;
  }

  if (v14 == 3)
  {
    v18 = [(ASSettingsAccountsUIController *)self _specifiersForOptionalServerAutodiscovery];
LABEL_19:
    v4 = v18;
    goto LABEL_20;
  }

  if (v14 == 4)
  {
    v4 = [(ASSettingsAccountsUIController *)self _specifiersForCompletedAutodiscovery];
    v17 = [(ASSettingsAccountsUIController *)self localizedAccountTitleString];
    [(ASSettingsAccountsUIController *)self setTitle:v17];
  }

LABEL_20:

  return v4;
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
  v18 = [(ASSettingsAccountsUIController *)self account];
  [v18 setUsername:&stru_30C98];

  v19 = [(ASSettingsAccountsUIController *)self account];
  [v19 setHost:&stru_30C98];

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

  v3 = [(ESSettingsAccountsUIController *)self specifiers];
  v6 = [v3 specifierForID:@"HOST"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"REQUIRED" value:&stru_30C98 table:@"ASAccountSetup"];
  [v6 setPlaceholder:v5];

  [(ASSettingsAccountsUIController *)self reloadSpecifierID:@"HOST"];
}

- (BOOL)validateAccount
{
  v3 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v3 resignFirstResponder];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VERIFYING" value:&stru_30C98 table:@"Localizable"];
  [(ASSettingsAccountsUIController *)self startValidationWithPrompt:v5];

  v6 = [(ASSettingsAccountsUIController *)self account];
  v7 = [(ASSettingsAccountsUIController *)self accountStore];
  [v6 checkValidityOnAccountStore:v7 withConsumer:self inQueue:&_dispatch_main_q];

  return 1;
}

- (void)_showAlertWithTitle:(id)a3 body:(id)a4 completion:(id)a5
{
  v8 = a5;
  v12 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_30C98 table:@"ASAccountSetup"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v8];

  [v12 addAction:v11];
  [(ASSettingsAccountsUIController *)self presentViewController:v12 animated:1 completion:0];
  [(ASSettingsAccountsUIController *)self setTaskCompletionAssertionEnabled:0];
}

- (BOOL)verifyAccountPassword
{
  v3 = OBJC_IVAR___PSListController__table;
  v4 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v4 resignFirstResponder];

  v5 = [(ASSettingsAccountsUIController *)self account];
  v6 = [v5 emailAddress];
  v7 = [v6 mf_isLegalEmailAddress];

  if (!v7)
  {
    v11 = [(ASSettingsAccountsUIController *)self specifierForID:@"EMAIL"];
    v12 = [v11 propertyForKey:PSTableCellKey];
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

    return v7;
  }

  v8 = [(ASSettingsAccountsUIController *)self account];
  v9 = [v8 emailAddress];
  v10 = [(ASSettingsAccountsUIController *)self _storeHasDuplicateForUsername:v9];

  if (!v10)
  {
    v11 = [(ASSettingsAccountsUIController *)self account];
    [(ASSettingsAccountsUIController *)self account:v11 wasAutoDiscovered:1 error:0];
    goto LABEL_6;
  }

  [(ESSettingsAccountsUIController *)self showIdenticalAccountFailureView];
  [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:1];
  return v7;
}

- (BOOL)autodiscoverAccount
{
  v3 = OBJC_IVAR___PSListController__table;
  v4 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v4 resignFirstResponder];

  v5 = [(ASSettingsAccountsUIController *)self account];
  v6 = [v5 emailAddress];
  v7 = [v6 mf_isLegalEmailAddress];

  if (!v7)
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

    return v7;
  }

  v8 = [(ASSettingsAccountsUIController *)self account];
  v9 = [v8 emailAddress];
  v10 = [(ASSettingsAccountsUIController *)self _storeHasDuplicateForUsername:v9];

  if (!v10)
  {
    if (*(&self->_remotedManaged + 2))
    {
      [(ASSettingsAccountsUIController *)self _reallyStartAutoDiscoverAccount];
      return v7;
    }

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"ALLOW_MODERN_AUTHENTICATION" value:&stru_30C98 table:@"ASAccountSetup"];
    v23 = [(ASSettingsAccountsUIController *)self account];
    v24 = [v23 emailAddress];
    v25 = [v24 mf_addressDomain];
    v11 = [NSString stringWithFormat:v22, v25];

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
  return v7;
}

- (void)_reallyStartAutoDiscoverAccount
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VERIFYING" value:&stru_30C98 table:@"Localizable"];
  [(ASSettingsAccountsUIController *)self startValidationWithPrompt:v4];

  if (*(&self->_remotedManaged + 2) > 1uLL)
  {
    v5 = [(ASSettingsAccountsUIController *)self account];
    [v5 autodiscoverAccountConfigurationWithConsumer:self];
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

- (void)account:(id)a3 wasAutoDiscovered:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v8 = a5;
  if ([objc_opt_class() isHotmailAccount])
  {
    sub_1BECC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    ADClientAddValueForScalarKey();
    *(&self->_remotedManaged + 2) = 4;
    v9 = [(ASSettingsAccountsUIController *)self account];
    v10 = [(ASSettingsAccountsUIController *)self accountStore];
    [v9 checkValidityOnAccountStore:v10 withConsumer:self inQueue:&_dispatch_main_q];

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

  v13 = [v8 domain];
  if ([v13 isEqualToString:ASHTTPConnectionErrorDomain])
  {
    v14 = [v8 code];

    if (v14 == &stru_158.reloff + 1)
    {
      v15 = DALoggingwithCategory();
      v16 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v15, v16))
      {
        *v18 = 0;
        _os_log_impl(&dword_0, v15, v16, "Autodiscovery encounters 401 error. Wiping password box.", v18, 2u);
      }

      v17 = [(ASSettingsAccountsUIController *)self account];
      [v17 setPassword:&stru_30C98];

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

- (BOOL)_isNetworkOfflineError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:NSURLErrorDomain];

  if (!v5)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [v3 code];
  v7 = 1;
  if (v6 != -1009 && v6 != -1000)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v3 domain];
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = [v3 code];
      _os_log_impl(&dword_0, v8, v9, "AutoDV2 Discovery Failed With Fatal Network Error %{public}@:%ld ", &v12, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (BOOL)_isSSLError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:NSURLErrorDomain];

  if (v5)
  {
    v6 = [v3 code] + 1204 < 5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)OAuthAccount:(id)a3 authorizationURI:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [v10 domain];
      v32 = 138543618;
      v33 = v13;
      v34 = 2048;
      v35 = [v10 code];
      _os_log_impl(&dword_0, v11, v12, "AutoDV2 Discovery Failed With Error %{public}@:%ld ", &v32, 0x16u);
    }

    if ([(ASSettingsAccountsUIController *)self _isNetworkOfflineError:v10])
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

    if (![(ASSettingsAccountsUIController *)self _isSSLError:v10]|| *(&self->_remotedManaged + 2) == 1)
    {
      v18 = v9 != 0;
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
    if (!v9)
    {
      v18 = 0;
LABEL_17:
      v19 = *(&self->_remotedManaged + 2);
      v20 = DALoggingwithCategory();
      v21 = v20;
      if (v19 == 1)
      {
        v24 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v20, v24))
        {
          v25 = @"Not Valid";
          if (v18)
          {
            v25 = v9;
          }

          v32 = 138543618;
          v33 = v25;
          v34 = 2114;
          v35 = v10;
          _os_log_impl(&dword_0, v21, v24, "OAuthURI %{public}@ : Error %{public}@ Falling Back to AutoDiscvoer-V1", &v32, 0x16u);
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
            _os_log_impl(&dword_0, v21, v26, "OAuth autodiscover failed with inconsistent state %ld", &v32, 0xCu);
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
              v23 = v9;
            }

            v32 = 138543618;
            v33 = v23;
            v34 = 2114;
            v35 = v10;
            _os_log_impl(&dword_0, v21, v22, "OAuthURI %{public}@ : Error %{public}@ Trying on-prem AutoDiscvoer-V2", &v32, 0x16u);
          }

          *(&self->_remotedManaged + 2) = 1;
          v21 = [(ASSettingsAccountsUIController *)self account];
          [v21 autodiscoverOnPremOAuthAccountWithConsumer:self];
        }
      }

      goto LABEL_41;
    }

    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v15, v16))
    {
      v32 = 138543362;
      v33 = v9;
      _os_log_impl(&dword_0, v15, v16, "AutoDiscover succeeded with OAuthURI : %{public}@", &v32, 0xCu);
    }

    [(ASSettingsAccountsUIController *)self stopValidationWithPrompt:0 showButtons:0];
    if (*(&self->_remotedManaged + 2) == 1)
    {
      v17 = &dword_0 + 1;
    }

    else
    {
      v28 = [v8 backingAccountInfo];
      v29 = [v28 objectForKeyedSubscript:kESExchangeOAuthOnPremKey];

      if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = [v29 BOOLValue];
      }

      else
      {
        v17 = 0;
      }
    }

    [(ASSettingsAccountsUIController *)self _bringUpOAuthEndPointWithURL:v9 isOnPrem:v17];
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

- (BOOL)_storeHasDuplicateForUsername:(id)a3
{
  v4 = a3;
  v5 = [(ASSettingsAccountsUIController *)self accountStore];
  v6 = [(ASSettingsAccountsUIController *)self account];
  v7 = [v6 accountTypeIdentifier];
  v8 = [v5 accountTypeWithAccountTypeIdentifier:v7];

  v9 = [(ASSettingsAccountsUIController *)self accountStore];
  v10 = [v9 accountsWithAccountType:v8];
  v11 = [v10 mutableCopy];

  v12 = [(ASSettingsAccountsUIController *)self account];
  v13 = [v12 accountTypeIdentifier];
  v14 = ACAccountTypeIdentifierExchange;
  v15 = [v13 isEqualToString:ACAccountTypeIdentifierExchange];

  if (v15)
  {
    v16 = [(ASSettingsAccountsUIController *)self accountStore];
    v17 = v16;
    v18 = ACAccountTypeIdentifierHotmail;
  }

  else
  {
    v19 = [(ASSettingsAccountsUIController *)self account];
    v20 = [v19 accountTypeIdentifier];
    v21 = [v20 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (!v21)
    {
      goto LABEL_7;
    }

    v16 = [(ASSettingsAccountsUIController *)self accountStore];
    v17 = v16;
    v18 = v14;
  }

  v22 = [v16 accountTypeWithAccountTypeIdentifier:v18];

  if (v22)
  {
    v23 = [(ASSettingsAccountsUIController *)self accountStore];
    v24 = [v23 accountsWithAccountType:v22];
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
        v32 = [v31 username];
        if (![v4 compare:v32 options:1])
        {

          v34 = 1;
          goto LABEL_19;
        }

        v33 = [v31 objectForKeyedSubscript:v29];
        v34 = 1;
        v35 = [v4 compare:v33 options:1];

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

- (void)handleRedirectURL:(id)a3
{
  v47 = a2;
  v49 = a3;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VERIFYING" value:&stru_30C98 table:@"Localizable"];
  [(ASSettingsAccountsUIController *)self startValidationWithPrompt:v4];

  v5 = [(ASSettingsAccountsUIController *)self oauthFlowController];
  v48 = [v5 oauthType];

  v6 = [NSURLComponents componentsWithURL:v49 resolvingAgainstBaseURL:1];
  v7 = [v6 queryItems];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v7;
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
      v13 = [v12 name];
      v14 = [v13 caseInsensitiveCompare:@"code"] == 0;

      if (v14)
      {
        v23 = [v12 value];
        v22 = v9;
        v9 = v23;
      }

      else
      {
        v15 = [v12 name];
        v16 = [v15 caseInsensitiveCompare:@"state"] == 0;

        if (v16)
        {
          v24 = [v12 value];
          v22 = v52;
          v52 = v24;
        }

        else
        {
          v17 = [v12 name];
          v18 = [v17 caseInsensitiveCompare:@"error"] == 0;

          if (v18)
          {
            v25 = [v12 value];
            v22 = *(&v51 + 1);
            *(&v51 + 1) = v25;
          }

          else
          {
            v19 = [v12 name];
            v20 = [v19 caseInsensitiveCompare:@"error_description"] == 0;

            if (!v20)
            {
              continue;
            }

            v21 = [v12 value];
            v22 = v51;
            *&v51 = v21;
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
      v29 = [(ASSettingsAccountsUIController *)self oauthFlowController];
      v30 = [v29 state];
      v31 = [v52 isEqualToString:v30];

      if (v31)
      {
        objc_initWeak(buf, self);
        v32 = [(ASSettingsAccountsUIController *)self oauthFlowController];
        v33 = [(ASSettingsAccountsUIController *)self oauthFlowController];
        v34 = [v33 challenge];
        v35 = [v34 codeVerifier];
        v36 = [(ASSettingsAccountsUIController *)self account];
        v37 = [v36 backingAccountInfo];
        v38 = [v37 objectForKeyedSubscript:kESExchangePendingClaimsChallenge];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1198C;
        v54[3] = &unk_309E8;
        objc_copyWeak(v55, buf);
        v54[4] = self;
        v55[1] = v47;
        v55[2] = v48;
        [v32 exchangeAuthCode:v9 codeVerifier:v35 claims:v38 withCompletion:v54];

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
      v41 = [(ASSettingsAccountsUIController *)self oauthFlowController];
      v42 = [v41 state];
      *buf = 138412802;
      v61 = v9;
      v62 = 2112;
      v63 = v52;
      v64 = 2112;
      v65 = v42;
      _os_log_impl(&dword_0, v39, v40, "Error retrieving an OAuth identity. Params: authCode %@, state %@ [self.oauthFlowController state] %@", buf, 0x20u);
    }

    v43 = [NSError errorWithDomain:DAAccountValidationDomain code:102 userInfo:0];
    v44 = [(ASSettingsAccountsUIController *)self account];
    [(ASSettingsAccountsUIController *)self account:v44 isValid:0 validationError:v43];

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

  v28 = [(ASSettingsAccountsUIController *)self account];
  [(ASSettingsAccountsUIController *)self account:v28 isValid:0 validationError:0];

  [(ASSettingsAccountsUIController *)self _fallBackToAutoDiscoverV1];
LABEL_29:
  v45 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v46 = [DAEASOAuthClient clientRedirectForOAuthType:v48];
  [v45 unRegisterOAuthClientForRedirectURL:v46];
}

+ (id)usernameFromAccessToken:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
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

- (void)doneButtonTapped:(id)a3
{
  v4 = a3;
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
      [(ESSettingsAccountsUIController *)&v23 doneButtonTapped:v4];
      goto LABEL_19;
    }
  }

  v7 = [(ASSettingsAccountsUIController *)self account];
  v8 = kESEASEndPointFQDN;
  v9 = [v7 objectForKeyedSubscript:kESEASEndPointFQDN];
  if (!v9 || *(&self->_remotedManaged + 2) == 2)
  {
    goto LABEL_17;
  }

  v10 = [(ASSettingsAccountsUIController *)self account];
  v11 = [v10 objectForKeyedSubscript:kDAAccountHost];
  if (!v11)
  {

LABEL_17:
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [(ASSettingsAccountsUIController *)self account];
  v14 = [v13 host];
  v15 = [v14 length];

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
    v18 = [(ASSettingsAccountsUIController *)self account];
    v19 = [v18 objectForKeyedSubscript:v8];
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&dword_0, v16, v17, "Not performing autodiscover. EAS endpoint : %@", buf, 0xCu);
  }

  [(ASSettingsAccountsUIController *)self verifyAccountPassword];
LABEL_19:
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    if ([(ESSettingsAccountsUIController *)self accountNeedsAdd])
    {
      v10 = [(ASSettingsAccountsUIController *)self account];
      [v10 setEnabled:1 forDADataclass:1];

      v11 = [(ASSettingsAccountsUIController *)self account];
      [v11 setEnabled:0 forDADataclass:2];

      v12 = [(ASSettingsAccountsUIController *)self account];
      [v12 setEnabled:0 forDADataclass:4];

      v13 = [(ASSettingsAccountsUIController *)self account];
      [v13 setEnabled:0 forDADataclass:16];

      v14 = [(ASSettingsAccountsUIController *)self account];
      [v14 setEnabled:0 forDADataclass:32];

      v15 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 1;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v16 = [(ASSettingsAccountsUIController *)self accountStore];
      v17 = [(ASSettingsAccountsUIController *)self account];
      v18 = [v17 backingAccountInfo];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_13270;
      v26[3] = &unk_30A88;
      v28 = &v30;
      p_buf = &buf;
      v19 = v15;
      v27 = v19;
      [v16 canSaveAccount:v18 withCompletionHandler:v26];

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
      *(&buf + 4) = v9;
      _os_log_impl(&dword_0, v23, v24, "validation failed with error %@", &buf, 0xCu);
    }

    ADClientAddValueForScalarKey();
    v20 = 1;
  }

  [(ESSettingsAccountsUIController *)self hideProgressWithPrompt:v22];
  v25.receiver = self;
  v25.super_class = ASSettingsAccountsUIController;
  [(ESSettingsAccountsUIController *)&v25 account:v8 isValid:v20 & v6 validationError:v9];
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

  v9 = [objc_opt_class() isHotmailAccount];
  v10 = &qword_3A2E8;
  if (!v9)
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
        v14 = [(ESSettingsAccountsUIController *)self currentlyEditingCell];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v13 identifier];
          if ([v11 containsObject:v15])
          {
            v16 = [v14 textField];
            [v16 text];
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
        v14 = [v13 identifier];
        if ([v14 isEqualToString:@"USERNAME"])
        {
          v15 = [(ASSettingsAccountsUIController *)self account];
          v21 = [v15 usernameWithoutDomain];
          goto LABEL_20;
        }

        if ([v14 isEqualToString:@"PASSWORD"])
        {
          v15 = [(ASSettingsAccountsUIController *)self account];
          v21 = [v15 passwordWithExpected:0];
          goto LABEL_20;
        }

        if ([v14 isEqualToString:@"EMAIL"])
        {
          v15 = [(ASSettingsAccountsUIController *)self account];
          v21 = [v15 emailAddress];
          goto LABEL_20;
        }

        if ([v14 isEqualToString:@"HOST"] && *(&self->_remotedManaged + 2) == 4)
        {
          v15 = [(ASSettingsAccountsUIController *)self account];
          v21 = [v15 host];
LABEL_20:
          v16 = v21;
          v20 = [v21 length];
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

- (void)_tryUpdatingCompositeValueWithId:(id)a3 fromValue:(id)a4 forKey:(id)a5
{
  v40 = a3;
  v8 = a4;
  v9 = a5;
  if ([v40 isEqualToString:@"EMAIL"])
  {
    v10 = [(ASSettingsAccountsUIController *)self account];
    v11 = [v10 emailAddress];
LABEL_5:
    v12 = v11;

    goto LABEL_7;
  }

  if ([v40 isEqualToString:@"DESCRIPTION"])
  {
    v10 = [(ASSettingsAccountsUIController *)self account];
    v11 = [v10 accountDescription];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = [v12 componentsSeparatedByString:@"@"];
  if ([v13 count] == &dword_0 + 2)
  {
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v13 objectAtIndexedSubscript:1];
    if ([v9 isEqualToString:@"HOST"])
    {
      if (v15)
      {
        v16 = [(ASSettingsAccountsUIController *)self account];
        v17 = [v16 host];
        v18 = v17;
        v19 = v15;
LABEL_18:
        v20 = [v17 isEqualToString:v19];

        goto LABEL_19;
      }
    }

    else if (([v9 isEqualToString:@"USERNAME"] & 1) != 0 && v14)
    {
      v16 = [(ASSettingsAccountsUIController *)self account];
      v17 = [v16 username];
      v18 = v17;
      v19 = v14;
      goto LABEL_18;
    }
  }

  else
  {
    if (([v9 isEqualToString:@"HOST"] & 1) == 0)
    {
      [v9 isEqualToString:@"USERNAME"];
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

  if ([v9 isEqualToString:@"HOST"])
  {
    v21 = v14;
    if (v21)
    {
      v22 = v21;
LABEL_28:
      [NSString stringWithFormat:@"%@@%@", v22, v8];
      v26 = LABEL_31:;

      goto LABEL_33;
    }

    v24 = [(ASSettingsAccountsUIController *)self account];
    v22 = [v24 usernameWithoutDomain];

    if (v22)
    {
      goto LABEL_28;
    }
  }

  else if ([v9 isEqualToString:@"USERNAME"])
  {
    v23 = v15;
    if (v23)
    {
      v22 = v23;
    }

    else
    {
      v25 = [(ASSettingsAccountsUIController *)self account];
      v22 = [v25 host];

      if (!v22)
      {
        goto LABEL_32;
      }
    }

    [NSString stringWithFormat:@"%@@%@", v8, v22];
    goto LABEL_31;
  }

LABEL_32:
  v26 = 0;
LABEL_33:
  v37 = v15;
  v38 = v14;
  v39 = v8;
  if ([v40 isEqualToString:@"EMAIL"])
  {
    v27 = [(ASSettingsAccountsUIController *)self account];
    [v27 setEmailAddress:v26];
LABEL_37:

    goto LABEL_38;
  }

  if ([v40 isEqualToString:@"DESCRIPTION"])
  {
    v27 = [(ASSettingsAccountsUIController *)self account];
    [v27 setAccountDescription:v26];
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
      v33 = [v32 identifier];

      if ([v33 isEqualToString:v40])
      {
        break;
      }

      if (v30 == ++v31)
      {
        goto LABEL_44;
      }
    }

    v34 = [(ASSettingsAccountsUIController *)self table];
    v35 = [(ASSettingsAccountsUIController *)self indexPathForIndex:v31];
    v36 = [v34 cellForRowAtIndexPath:v35];

    [v36 setValue:v26];
  }

LABEL_44:

  v14 = v38;
  v8 = v39;
  v15 = v37;
LABEL_45:
}

- (id)_defaultAccountDescription
{
  v2 = [objc_opt_class() isHotmailAccount];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
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

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [(ASSettingsAccountsUIController *)self accountPropertyWithSpecifier:v7];
  v10 = [v6 isEqualToString:v9];

  if ([v8 isEqualToString:@"HOST"])
  {
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"EMAIL" fromValue:v6 forKey:v8];
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"DESCRIPTION" fromValue:v6 forKey:v8];
    v11 = [(ASSettingsAccountsUIController *)self account];
    [v11 setHost:v6];
LABEL_3:

    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"DOMAIN"])
  {
    v12 = [(ASSettingsAccountsUIController *)self account];
    v13 = [v12 usernameWithoutDomain];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &stru_30C98;
    }

    v6 = v6;
    if ([v6 length])
    {
      v15 = [v6 stringByAppendingFormat:@"\\%@", v14];
    }

    else
    {
      v15 = v14;
    }

    v20 = v15;

    v21 = [(ASSettingsAccountsUIController *)self account];
    [v21 setUsername:v20];
  }

  else if ([v8 isEqualToString:@"USERNAME"])
  {
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"EMAIL" fromValue:v6 forKey:v8];
    [(ASSettingsAccountsUIController *)self _tryUpdatingCompositeValueWithId:@"DESCRIPTION" fromValue:v6 forKey:v8];
    v16 = [(ASSettingsAccountsUIController *)self account];
    v17 = [v16 domainOnly];

    if ([v17 length])
    {
      v18 = [v17 stringByAppendingFormat:@"\\%@", v6];
    }

    else
    {
      v18 = v6;
    }

    v27 = v18;

    v28 = [(ASSettingsAccountsUIController *)self account];
    [v28 setUsername:v27];
  }

  else
  {
    if (!(v10 & 1 | (([v8 isEqualToString:@"DESCRIPTION"] & 1) == 0)))
    {
      if (![v6 length])
      {
        v22 = [objc_opt_class() isHotmailAccount];
        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = v23;
        if (v22)
        {
          v25 = @"HOTMAIL_DESCRIPTION";
        }

        else
        {
          v25 = @"EXCHANGE_DESCRIPTION";
        }

        v26 = [v23 localizedStringForKey:v25 value:&stru_30C98 table:@"ASAccountSetup"];

        v6 = v26;
      }

      v11 = [(ASSettingsAccountsUIController *)self account];
      [v11 setAccountDescription:v6];
      goto LABEL_3;
    }

    if ([v8 isEqualToString:@"EMAIL"])
    {
      if ([objc_opt_class() isHotmailAccount])
      {
        v19 = [(ASSettingsAccountsUIController *)self account];
        [v19 setUsername:v6];
      }

      v30.receiver = self;
      v30.super_class = ASSettingsAccountsUIController;
      [(ESSettingsAccountsUIController *)&v30 setAccountProperty:v6 withSpecifier:v7];
    }

    else
    {
      v29.receiver = self;
      v29.super_class = ASSettingsAccountsUIController;
      [(ESSettingsAccountsUIController *)&v29 setAccountProperty:v6 withSpecifier:v7];
    }
  }

LABEL_29:
  [(ESSettingsAccountsUIController *)self setNeedsSave:1];
  [(ESSettingsAccountsUIController *)self updateDoneButton];
}

- (id)accountPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"DOMAIN"])
  {
    v6 = [(ASSettingsAccountsUIController *)self account];
    v7 = [v6 domainOnly];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"USERNAME"])
  {
    v6 = [(ASSettingsAccountsUIController *)self account];
    v7 = [v6 usernameWithoutDomain];
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = ASSettingsAccountsUIController;
  v8 = [(ESSettingsAccountsUIController *)&v12 accountPropertyWithSpecifier:v4];
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
  v2 = [objc_opt_class() isHotmailAccount];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
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
  v2 = [objc_opt_class() isHotmailAccount];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
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
  v3 = [objc_opt_class() isHotmailAccount];
  v4 = [(ESSettingsAccountsUIController *)self isSettingUpNewAccount];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = @"NEW_ACCOUNT_SETTINGS";
  if (v3)
  {
    v7 = @"NEW_HOTMAIL_ACCOUNT_SETTINGS";
  }

  if (v4)
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

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v3 = [(ASSettingsAccountsUIController *)self view];
  v4 = [v3 window];

  return v4;
}

- (void)_validateUniquenessAndAddAccount:(id)a3 username:(id)a4 token:(id)a5 refreshToken:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_147B4;
  v22[3] = &unk_30AB0;
  objc_copyWeak(&v29, &location);
  v23 = v14;
  v24 = self;
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = v16;
  v17 = v15;
  v18 = v12;
  v19 = v16;
  v20 = v13;
  v21 = v14;
  dispatch_async(&_dispatch_main_q, v22);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

@end