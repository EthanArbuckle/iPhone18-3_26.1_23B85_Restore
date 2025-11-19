@interface ASSettingsDataclassConfigurationViewController
- (BOOL)_isNetworkOfflineError:(id)a3;
- (BOOL)_storeHasDuplicateForUsername:(id)a3 withoutIdentifier:(id)a4 withAccountType:(id)a5;
- (Class)accountInfoControllerClass;
- (id)_reAuthenticationSectionSpecifiers;
- (id)accountDescriptionForFirstTimeSetup;
- (id)accountFromSpecifier;
- (id)accountIntegerPropertyWithSpecifier:(id)a3;
- (id)numFoldersToPushString:(id)a3;
- (id)otherSpecifiers;
- (id)outOfOfficeEnabled:(id)a3;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (id)specifiers;
- (void)OAuthAccount:(id)a3 authorizationURI:(id)a4 error:(id)a5;
- (void)_autodiscoverOAuthAccountIsOnPrem:(BOOL)a3;
- (void)_disableReAuthenticationButton;
- (void)_enableReAuthenticationButton;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4;
- (void)_reAuthenticationButtonTapped;
- (void)checkAndFetchOutOfOfficeState;
- (void)dealloc;
- (void)fetchingOutOfOfficeState;
- (void)handleRedirectURL:(id)a3;
- (void)handleURL:(id)a3;
- (void)oofRequestInfo:(id)a3 finishedWithResult:(id)a4 error:(id)a5;
- (void)reloadAccount;
- (void)removeOutOfOfficeSpecifier;
- (void)saveOutOfOfficeData:(id)a3;
- (void)setAccountIntegerProperty:(id)a3 withSpecifier:(id)a4;
- (void)updateOutOfOfficeSpecifier;
@end

@implementation ASSettingsDataclassConfigurationViewController

- (Class)accountInfoControllerClass
{
  v2 = [objc_opt_class() isHotmailAccount];
  v3 = off_30300;
  if (!v2)
  {
    v3 = off_302F0;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (id)accountDescriptionForFirstTimeSetup
{
  if ([objc_opt_class() isHotmailAccount])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"HOTMAIL";
  }

  else
  {
    v6 = [(ASSettingsDataclassConfigurationViewController *)self account];
    v7 = [v6 accountDescription];

    if (v7)
    {
      v4 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v8 = [v4 accountDescription];
      goto LABEL_7;
    }

    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"EXCHANGE";
  }

  v8 = [v3 localizedStringForKey:v5 value:&stru_30C98 table:@"ASAccountSetup"];
LABEL_7:
  v9 = v8;

  return v9;
}

- (void)reloadAccount
{
  v2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  [v2 reload];
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
  v9.super_class = ASSettingsDataclassConfigurationViewController;
  [(ESSettingsDataclassConfigurationViewController *)&v9 dealloc];
}

- (id)specifiers
{
  if (([objc_opt_class() isHotmailAccount] & 1) == 0)
  {
    v3 = [(ASSettingsDataclassConfigurationViewController *)self account];
    v4 = [v3 objectForKeyedSubscript:kESExchangeOAuthSupportedKey];
    if (v4)
    {
    }

    else
    {
      v5 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v6 = [v5 migrationStatus];

      if (v6 != &dword_0 + 1)
      {
        v35.receiver = self;
        v35.super_class = ASSettingsDataclassConfigurationViewController;
        v7 = [(ESSettingsDataclassConfigurationViewController *)&v35 specifiers];
        goto LABEL_31;
      }
    }
  }

  v7 = objc_opt_new();
  v8 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v9 = [v8 isAuthenticated];

  if (v9 && (-[ASSettingsDataclassConfigurationViewController account](self, "account"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 migrationStatus], v10, v11 != &dword_0 + 1))
  {
    v12 = 0;
  }

  else
  {
    v12 = [(ASSettingsDataclassConfigurationViewController *)self _reAuthenticationSectionSpecifiers];
    [v7 addObjectsFromArray:v12];
  }

  v40.receiver = self;
  v40.super_class = ASSettingsDataclassConfigurationViewController;
  v13 = [(ESSettingsDataclassConfigurationViewController *)&v40 specifiers];
  v14 = [v13 mutableCopy];
  [v7 addObjectsFromArray:v14];

  if (!v9 || [(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v7;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      v19 = PSEnabledKey;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = [(ASSettingsDataclassConfigurationViewController *)self deleteButtonSpecifier];
          v23 = v22;
          if (v21 == v22)
          {
          }

          else
          {
            v24 = [v12 containsObject:v21];

            if ((v24 & 1) == 0)
            {
              [v21 setProperty:&__kCFBooleanFalse forKey:v19];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v17);
    }

    v7 = v34;
  }

  if ([v7 count])
  {
    v25 = [v7 objectAtIndexedSubscript:0];
    v26 = [v25 name];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [objc_opt_class() isHotmailAccount];
      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = v29;
      if (v28)
      {
        v31 = @"HOTMAIL";
      }

      else
      {
        v31 = @"EXCHANGE";
      }

      v32 = [v29 localizedStringForKey:v31 value:&stru_30C98 table:@"ASAccountSetup"];
      [v25 setName:v32];
    }
  }

  objc_storeStrong(&self->super.ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers], v7);

LABEL_31:

  return v7;
}

- (id)accountFromSpecifier
{
  v2 = [(ASSettingsDataclassConfigurationViewController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:ACUIAccountKey];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:kDAAccountEmailAddress];
    v6 = kDAAccountStolenDisplayUsername;
    v7 = [v4 objectForKeyedSubscript:kDAAccountStolenDisplayUsername];
    v8 = v7;
    if (v5 && ([v7 isEqualToString:v5] & 1) == 0)
    {
      [v4 setObject:v5 forKeyedSubscript:v6];
    }

    v9 = +[ESAccountLoader sharedInstance];
    v10 = [v9 daemonAppropriateAccountClassForACAccount:v4];

    v11 = [[v10 alloc] initWithBackingAccountInfo:v4];
    [v11 reload];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_reAuthenticationSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v6 = [v5 username];
  [v4 setProperty:v6 forKey:@"EASNameForAccountToAuthenticate"];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 setProperty:v8 forKey:PSFooterCellClassGroupKey];

  [v3 addObject:v4];
  v9 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v9];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"REENTER_PASSWORD" value:&stru_30C98 table:@"ASAccountSetup"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];
  [(ASSettingsDataclassConfigurationViewController *)self setReAuthenticationButtonSpecifier:v12];

  v13 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [v13 setButtonAction:"_reAuthenticationButtonTapped"];

  v14 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [v3 addObject:v14];

  return v3;
}

- (void)_enableReAuthenticationButton
{
  v3 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  v4 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifier:v4];
}

- (void)_disableReAuthenticationButton
{
  v3 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [v3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

  v4 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifier:v4];
}

- (BOOL)_storeHasDuplicateForUsername:(id)a3 withoutIdentifier:(id)a4 withAccountType:(id)a5
{
  v8 = a3;
  v39 = a4;
  v9 = a5;
  v10 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
  v11 = [v10 accountsWithAccountType:v9];
  v12 = [v11 mutableCopy];

  v13 = [v9 identifier];
  v14 = ACAccountTypeIdentifierExchange;
  v15 = [v13 isEqualToString:ACAccountTypeIdentifierExchange];

  if (v15)
  {
    v16 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
    v17 = v16;
    v18 = ACAccountTypeIdentifierHotmail;
  }

  else
  {
    v19 = [v9 identifier];
    v20 = [v19 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (!v20)
    {
      goto LABEL_7;
    }

    v16 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
    v17 = v16;
    v18 = v14;
  }

  v21 = [v16 accountTypeWithAccountTypeIdentifier:v18];

  if (v21)
  {
    v22 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
    v23 = [v22 accountsWithAccountType:v21];
    [v12 addObjectsFromArray:v23];
  }

LABEL_7:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = v12;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v38 = v9;
    v27 = *v41;
    v28 = kDAAccountEmailAddress;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v40 + 1) + 8 * i);
        v31 = [v30 identifier];
        v32 = [v39 compare:v31 options:1];

        if (v32)
        {
          v33 = [v30 username];
          if (![v8 compare:v33 options:1])
          {

            v35 = 1;
            goto LABEL_20;
          }

          v34 = [v30 objectForKeyedSubscript:v28];
          v35 = 1;
          v36 = [v8 compare:v34 options:1];

          if (!v36)
          {
            goto LABEL_20;
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

    v35 = 0;
LABEL_20:
    v9 = v38;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)handleRedirectURL:(id)a3
{
  v53 = a2;
  v54 = a3;
  v3 = [NSURLComponents componentsWithURL:"componentsWithURL:resolvingAgainstBaseURL:" resolvingAgainstBaseURL:?];
  v4 = [v3 queryItems];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (!v5)
  {

    v6 = 0;
    v58 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_22;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  v6 = 0;
  v7 = *v63;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v63 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v62 + 1) + 8 * i);
      v10 = [v9 name];
      v11 = [v10 caseInsensitiveCompare:@"code"] == 0;

      if (v11)
      {
        v20 = [v9 value];
        v19 = v6;
        v6 = v20;
      }

      else
      {
        v12 = [v9 name];
        v13 = [v12 caseInsensitiveCompare:@"state"] == 0;

        if (v13)
        {
          v21 = [v9 value];
          v19 = v58;
          v58 = v21;
        }

        else
        {
          v14 = [v9 name];
          v15 = [v14 caseInsensitiveCompare:@"error"] == 0;

          if (v15)
          {
            v22 = [v9 value];
            v19 = v57;
            v57 = v22;
          }

          else
          {
            v16 = [v9 name];
            v17 = [v16 caseInsensitiveCompare:@"error_description"] == 0;

            if (!v17)
            {
              continue;
            }

            v18 = [v9 value];
            v19 = v56;
            v56 = v18;
          }
        }
      }
    }

    v5 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  }

  while (v5);

  if (v6)
  {
    v23 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
    v24 = [v23 state];
    v25 = [v58 isEqualToString:v24];

    if (v25)
    {
      objc_initWeak(location, self);
      v26 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
      v27 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
      v28 = [v27 challenge];
      v29 = [v28 codeVerifier];
      v30 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v31 = [v30 objectForKeyedSubscript:kESExchangePendingClaimsChallenge];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_16A30;
      v60[3] = &unk_30B08;
      objc_copyWeak(v61, location);
      v60[4] = self;
      v61[1] = v53;
      [v26 exchangeAuthCode:v6 codeVerifier:v29 claims:v31 withCompletion:v60];

      objc_destroyWeak(v61);
      objc_destroyWeak(location);
      goto LABEL_29;
    }
  }

  v33 = v56;
  v32 = v57;
LABEL_22:
  v56 = v33;
  v57 = v32;
  v34 = (v32 | v33) != 0;
  v35 = DALoggingwithCategory();
  v36 = _CPLog_to_os_log_type[3];
  v37 = os_log_type_enabled(v35, v36);
  if (v34)
  {
    if (v37)
    {
      *location = 138412546;
      *&location[4] = v57;
      v67 = 2112;
      v68 = v56;
      _os_log_impl(&dword_0, v35, v36, "DAEASOAuthWebViewController error retrieving an OAuth identity. Failed with error %@, error_description %@", location, 0x16u);
    }
  }

  else
  {
    if (v37)
    {
      v38 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
      v39 = [v38 state];
      *location = 138412802;
      *&location[4] = v6;
      v67 = 2112;
      v68 = v58;
      v69 = 2112;
      v70 = v39;
      _os_log_impl(&dword_0, v35, v36, "DAEASOAuthWebViewController failed with authCode %@, state %@ [self.oauthFlowController state] %@", location, 0x20u);
    }

    v56 = 0;
    v57 = 0;
  }

LABEL_29:
  v40 = DALoggingwithCategory();
  v41 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v40, v41))
  {
    v42 = [DAEASOAuthClient clientRedirectForOAuthType:1];
    *location = 138412546;
    *&location[4] = self;
    v67 = 2112;
    v68 = v42;
    _os_log_impl(&dword_0, v40, v41, "Exchange OAuth Setup: Un-Registering %@ for RedirectURL %@.", location, 0x16u);
  }

  v43 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v44 = [DAEASOAuthClient clientRedirectForOAuthType:1];
  [v43 unRegisterOAuthClientForRedirectURL:v44];

  v45 = DALoggingwithCategory();
  if (os_log_type_enabled(v45, v41))
  {
    v46 = [DAEASOAuthClient clientRedirectForOAuthType:2];
    *location = 138412546;
    *&location[4] = self;
    v67 = 2112;
    v68 = v46;
    _os_log_impl(&dword_0, v45, v41, "Exchange OAuth Setup: Un-Registering %@ for RedirectURL %@.", location, 0x16u);
  }

  v47 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v48 = [DAEASOAuthClient clientRedirectForOAuthType:2];
  [v47 unRegisterOAuthClientForRedirectURL:v48];

  v49 = DALoggingwithCategory();
  if (os_log_type_enabled(v49, v41))
  {
    v50 = [DAEASOAuthClient clientRedirectForOAuthType:3];
    *location = 138412546;
    *&location[4] = self;
    v67 = 2112;
    v68 = v50;
    _os_log_impl(&dword_0, v49, v41, "Exchange OAuth Setup: Un-Registering %@ for RedirectURL %@.", location, 0x16u);
  }

  v51 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v52 = [DAEASOAuthClient clientRedirectForOAuthType:3];
  [v51 unRegisterOAuthClientForRedirectURL:v52];
}

- (void)_reAuthenticationButtonTapped
{
  v4 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, type))
  {
    v5 = [(ASSettingsDataclassConfigurationViewController *)self account];
    v6 = [v5 accountType];
    v2 = [v6 identifier];
    *buf = 138412290;
    v94 = v2;
    _os_log_impl(&dword_0, v4, type, "_reAuthenticationButtonTapped for account type: %@.", buf, 0xCu);
  }

  v7 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v8 = kESExchangeOAuthSupportedKey;
  v9 = [v7 objectForKeyedSubscript:kESExchangeOAuthSupportedKey];
  if (v9 || (-[ASSettingsDataclassConfigurationViewController account](self, "account"), v2 = objc_claimAutoreleasedReturnValue(), [v2 migrationStatus] == &dword_0 + 1))
  {
    v10 = [(ASSettingsDataclassConfigurationViewController *)self account];
    v11 = [v10 accountType];
    v12 = [v11 identifier];
    v13 = [v12 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (v9)
    {
    }

    else
    {
    }

    if ((v13 & 1) == 0)
    {
      v14 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v80 = [v14 objectForKeyedSubscript:kESExchangeOAuthURI];

      v15 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v79 = [v15 objectForKeyedSubscript:kESEASEndPointFQDN];

      v16 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v78 = [v16 objectForKeyedSubscript:kESAccountDiscoveredHost];

      v17 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v81 = [v17 objectForKeyedSubscript:kESExchangeOAuthOnPremKey];

      if (v81 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = [v81 BOOLValue];
      }

      else
      {
        v18 = 0;
      }

      v19 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v20 = [v19 migrationStatus] == &dword_0 + 1;

      if (v20)
      {
        v21 = DALoggingwithCategory();
        if (os_log_type_enabled(v21, type))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v21, type, "_reAuthenticationButtonTapped for migrating an Exchange account from Basic to OAuth", buf, 2u);
        }
      }

      if (v80 && v79 && v78)
      {
        v22 = v80;
        v77 = v22;
        if ((v18 & 1) != 0 || ([DAEASOAuthFlowController upgradeAuthorizationEndpoint:v22], v77 = objc_claimAutoreleasedReturnValue(), v22, v77))
        {
          v23 = [DAExchangeOAuthFlowController alloc];
          v24 = [(ASSettingsDataclassConfigurationViewController *)self account];
          v25 = [v24 username];
          v26 = [(ASSettingsDataclassConfigurationViewController *)self account];
          v27 = [v26 identifier];
          if (v18)
          {
            v28 = @"{access_token:{xms_cc:{values:[cp1]}}}";
          }

          else
          {
            v2 = [(ASSettingsDataclassConfigurationViewController *)self account];
            v28 = [v2 objectForKeyedSubscript:kESExchangePendingClaimsChallenge];
          }

          v39 = [v23 initWithAuthURI:v77 easEndPoint:v79 username:v25 accountId:v27 claims:v28 isOnPrem:v18];
          [(ASSettingsDataclassConfigurationViewController *)self setOauthFlowController:v39];

          if ((v18 & 1) == 0)
          {
          }

          v40 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
          v41 = [v40 oauthType];

          v42 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
          v43 = [DAEASOAuthClient clientRedirectForOAuthType:v41];
          [v42 setRedirectURI:v43];

          v44 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
          v45 = [(ASSettingsDataclassConfigurationViewController *)self account];
          v46 = [v45 username];
          if (v18)
          {
            [v44 onPremAuthURLForUsername:v46 originalAuthURL:v22 resource:v79];
          }

          else
          {
            [v44 authURLForUsername:v46 originalAuthURL:v77];
          }
          v47 = ;

          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_18278;
          v92[3] = &unk_30A60;
          v92[4] = self;
          v92[5] = v41;
          v48 = objc_retainBlock(v92);
          v49 = [DAOAuthSafariViewController authenticationSessionWithURL:v47 callbackURLScheme:0 handler:v48];
          [(ASSettingsDataclassConfigurationViewController *)self setWebAuthenticationSession:v49];

          v50 = [(ASSettingsDataclassConfigurationViewController *)self webAuthenticationSession];
          LODWORD(v49) = v50 == 0;

          if (v49)
          {
            v65 = DALoggingwithCategory();
            v66 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v65, v66))
            {
              *buf = 138412290;
              v94 = v77;
              _os_log_impl(&dword_0, v65, v66, "_reAuthenticationButtonTapped unable to initialize ASWebAuthenticationSession with authorization URL (%@).", buf, 0xCu);
            }

            v67 = [NSBundle bundleForClass:objc_opt_class()];
            v68 = [v67 localizedStringForKey:@"EXCHANGE_ACCOUNT" value:&stru_30C98 table:@"ASAccountSetup"];
            v69 = [NSBundle bundleForClass:objc_opt_class()];
            v70 = [v69 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_30C98 table:@"ASAccountSetup"];
            [(ASSettingsDataclassConfigurationViewController *)self _presentAlertWithTitle:v68 message:v70];
          }

          else
          {
            v51 = [(ASSettingsDataclassConfigurationViewController *)self webAuthenticationSession];
            [v51 setPresentationContextProvider:self];

            objc_initWeak(&location, self);
            v52 = +[UIApplication sharedApplication];
            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_184C8;
            v89[3] = &unk_30A10;
            objc_copyWeak(&v90, &location);
            -[ASSettingsDataclassConfigurationViewController setBackgroundTaskID:](self, "setBackgroundTaskID:", [v52 beginBackgroundTaskWithName:@"ASSettingsDataclassConfigurationViewController" expirationHandler:v89]);

            v53 = DALoggingwithCategory();
            v54 = _CPLog_to_os_log_type[7];
            if (os_log_type_enabled(v53, v54))
            {
              v55 = [(ASSettingsDataclassConfigurationViewController *)self backgroundTaskID];
              *buf = 134217984;
              v94 = v55;
              _os_log_impl(&dword_0, v53, v54, "Begin background task %lu", buf, 0xCu);
            }

            v87[0] = _NSConcreteStackBlock;
            v87[1] = 3221225472;
            v87[2] = sub_185D8;
            v87[3] = &unk_30A38;
            objc_copyWeak(&v88, &location);
            [(ASSettingsDataclassConfigurationViewController *)self setRedirectHandlerBlock:v87];
            v56 = DALoggingwithCategory();
            if (os_log_type_enabled(v56, type))
            {
              v57 = [(ASSettingsDataclassConfigurationViewController *)self redirectHandlerBlock];
              v58 = objc_retainBlock(v57);
              v59 = [DAEASOAuthClient clientRedirectForOAuthType:v41];
              *buf = 134218242;
              v94 = v58;
              v95 = 2112;
              v96 = v59;
              _os_log_impl(&dword_0, v56, type, "Exchange OAuth Setup: Registering Block %p client for RedirectURL %@.", buf, 0x16u);
            }

            v60 = +[PSOAuthAccountRedirectURLController sharedInstance];
            v61 = [DAEASOAuthClient clientRedirectForOAuthType:v41];
            v62 = [(ASSettingsDataclassConfigurationViewController *)self redirectHandlerBlock];
            [v60 registerOAuthClientForRedirectURL:v61 redirectHandler:v62];

            v63 = DALoggingwithCategory();
            if (os_log_type_enabled(v63, type))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v63, type, "Exchange OAuth Setup: Presenting SafariOAuth page for password re-entry.", buf, 2u);
            }

            v64 = [(ASSettingsDataclassConfigurationViewController *)self webAuthenticationSession];
            [v64 start];

            objc_destroyWeak(&v88);
            objc_destroyWeak(&v90);
            objc_destroyWeak(&location);
          }
        }

        else
        {
          v71 = DALoggingwithCategory();
          v72 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v71, v72))
          {
            *buf = 138412290;
            v94 = 0;
            _os_log_impl(&dword_0, v71, v72, "_reAuthenticationButtonTapped unable to continue without a valid authorization URL (%@).", buf, 0xCu);
          }

          v73 = [NSBundle bundleForClass:objc_opt_class()];
          v74 = [v73 localizedStringForKey:@"EXCHANGE_ACCOUNT" value:&stru_30C98 table:@"ASAccountSetup"];
          v75 = [NSBundle bundleForClass:objc_opt_class()];
          v76 = [v75 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_30C98 table:@"ASAccountSetup"];
          [(ASSettingsDataclassConfigurationViewController *)self _presentAlertWithTitle:v74 message:v76];
        }
      }

      else
      {
        [(ASSettingsDataclassConfigurationViewController *)self _disableReAuthenticationButton];
        [(ASSettingsDataclassConfigurationViewController *)self _autodiscoverOAuthAccountIsOnPrem:v18];
      }

      return;
    }
  }

  else
  {
  }

  v29 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v30 = [v29 objectForKeyedSubscript:v8];

  if (v30)
  {
    v31 = DALoggingwithCategory();
    v32 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v31, v32, "rdar://84524914: Found kDAExchangeOAuthSupportedKey incorrectly set for a Hotmail account. See rdar://74329281 for details.", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_18704;
  v85[3] = &unk_30B30;
  objc_copyWeak(&v86, buf);
  v33 = objc_retainBlock(v85);
  v34 = [DAEASOAuthWebViewController alloc];
  v35 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v36 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
  v37 = [v34 initWithAccount:v35 isFirstTimeSetup:0 accountStore:v36 presentationBlock:v33];
  v38 = *(&self->_numberOfRetriedFetchingOutOfOfficeCounter + 1);
  *(&self->_numberOfRetriedFetchingOutOfOfficeCounter + 1) = v37;

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_18768;
  v83[3] = &unk_30B58;
  objc_copyWeak(&v84, buf);
  [*(&self->_numberOfRetriedFetchingOutOfOfficeCounter + 1) setCompletion:v83];
  objc_destroyWeak(&v84);

  objc_destroyWeak(&v86);
  objc_destroyWeak(buf);
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4
{
  v8 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_30C98 table:@"ASAccountSetup"];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&stru_30B98];

  [v8 addAction:v7];
  [(ASSettingsDataclassConfigurationViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_autodiscoverOAuthAccountIsOnPrem:(BOOL)a3
{
  v5 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_18A1C;
  v6[3] = &unk_30BE8;
  v6[4] = self;
  v7 = a3;
  [v5 sendRequestForRedirectWithCompletionHandler:v6];
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

- (void)handleURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASSettingsDataclassConfigurationViewController;
  [(ASSettingsDataclassConfigurationViewController *)&v11 handleURL:v4];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_0, v5, v6, "Exchange OAuth Setup: Received an action: %@ to present SafariViewController for Re-Entering password.", buf, 0xCu);
  }

  v7 = [v4 objectForKeyedSubscript:@"easOAuthAction"];
  v8 = [v7 isEqualToString:@"showAuthSheet"];

  v9 = DALoggingwithCategory();
  v10 = os_log_type_enabled(v9, v6);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, v6, "Exchange OAuth Setup: ActionKey indicates that we should AutoLaunch the SafariOAuth page.", buf, 2u);
    }

    [(ASSettingsDataclassConfigurationViewController *)self _reAuthenticationButtonTapped];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, v6, "Exchange OAuth Setup: ActionKey does not indicate that we should AutoLaunch the SafariOAuth page.", buf, 2u);
    }
  }
}

- (id)otherSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MAIL_PAST_DAYS_STRING" value:&stru_30C98 table:@"ASAccountSetup"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setAccountIntegerProperty:withSpecifier:" get:"accountIntegerPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  v7 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  v8 = [v7 mailNumberOfPastDaysToSyncUpperLimit];

  if (v8)
  {
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v11 = &off_32630;
    if (v8 >= 1)
    {
      [v9 addObject:&off_32630];
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"1_DAY" value:&stru_30C98 table:@"ASAccountSetup"];
      [v10 addObject:v13];

      if (v8 >= 3)
      {
        v11 = &off_32600;
        [v9 addObject:&off_32600];
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"3_DAYS" value:&stru_30C98 table:@"ASAccountSetup"];
        [v10 addObject:v15];

        if (v8 >= 7)
        {
          [v9 addObject:&off_32648];
          v16 = [NSBundle bundleForClass:objc_opt_class()];
          v17 = [v16 localizedStringForKey:@"1_WEEK" value:&stru_30C98 table:@"ASAccountSetup"];
          [v10 addObject:v17];

          if (v8 >= 0xE)
          {
            [v9 addObject:&off_32660];
            v18 = [NSBundle bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"2_WEEKS" value:&stru_30C98 table:@"ASAccountSetup"];
            [v10 addObject:v19];

            if (v8 >= 0x1F)
            {
              [v9 addObject:&off_32678];
              v20 = [NSBundle bundleForClass:objc_opt_class()];
              v21 = [v20 localizedStringForKey:@"1_MONTH" value:&stru_30C98 table:@"ASAccountSetup"];
              [v10 addObject:v21];
            }
          }
        }
      }
    }
  }

  else
  {
    v68 = [NSBundle bundleForClass:objc_opt_class()];
    v66 = [v68 localizedStringForKey:@"NO_LIMIT" value:&stru_30C98 table:@"ASAccountSetup"];
    v76[0] = v66;
    v64 = [NSBundle bundleForClass:objc_opt_class()];
    v63 = [v64 localizedStringForKey:@"1_DAY" value:&stru_30C98 table:@"ASAccountSetup"];
    v76[1] = v63;
    [NSBundle bundleForClass:objc_opt_class()];
    v62 = v70 = v3;
    v22 = [v62 localizedStringForKey:@"3_DAYS" value:&stru_30C98 table:@"ASAccountSetup"];
    v76[2] = v22;
    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"1_WEEK" value:&stru_30C98 table:@"ASAccountSetup"];
    v76[3] = v24;
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"2_WEEKS" value:&stru_30C98 table:@"ASAccountSetup"];
    v76[4] = v26;
    v27 = v6;
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"1_MONTH" value:&stru_30C98 table:@"ASAccountSetup"];
    v76[5] = v29;
    v30 = [NSArray arrayWithObjects:v76 count:6];

    v10 = v30;
    v6 = v27;

    v3 = v70;
    v9 = &off_32868;
    v11 = &off_32600;
  }

  [v6 setValues:v9 titles:v10];
  [v6 setProperty:v11 forKey:PSDefaultValueKey];
  [v6 setProperty:@"MAIL_PAST_DAYS" forKey:PSIDKey];
  if ([(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled])
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  [v3 addObject:v6];
  if (([objc_opt_class() isHotmailAccount] & 1) == 0)
  {
    v31 = [(ASSettingsDataclassConfigurationViewController *)self isOofSupported];

    if (v31)
    {
      v32 = [(ASSettingsDataclassConfigurationViewController *)self isOofSupported];
      v33 = [v32 BOOLValue];

      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v34 = +[ESDConnection sharedConnection];
      v35 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
      v36 = [v35 accountID];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_19A24;
      v73[3] = &unk_30C10;
      v73[4] = self;
      [v34 isOofSettingsSupportedForAccountWithID:v36 completionBlock:v73];
    }

    v69 = v6;
    v37 = [(ASSettingsDataclassConfigurationViewController *)self isOofSupported];

    if (v37)
    {
      [(ASSettingsDataclassConfigurationViewController *)self checkAndFetchOutOfOfficeState];
    }

    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"OOF_AUTO_REPLY" value:&stru_30C98 table:@"ASAccountSetup"];
    v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:"saveOutOfOfficeData:" get:"outOfOfficeEnabled:" detail:objc_opt_class() cell:2 edit:0];
    [(ASSettingsDataclassConfigurationViewController *)self setOutOfOfficeSpecifier:v40];

    v41 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    [v41 setProperty:v43 forKey:PSSetupCustomClassKey];

    v44 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];

    if (v44)
    {
      v65 = v9;
      v67 = v10;
      v71 = v3;
      v45 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      v75[0] = @"outOfOfficeONState";
      v75[1] = @"outOfOfficeOFFState";
      v75[2] = @"outOfOfficeLoadingState";
      v46 = [NSArray arrayWithObjects:v75 count:3];
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"OOF_ON_STATE" value:&stru_30C98 table:@"ASAccountSetup"];
      v74[0] = v48;
      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"OOF_OFF_STATE" value:&stru_30C98 table:@"ASAccountSetup"];
      v74[1] = v50;
      v51 = [NSBundle bundleForClass:objc_opt_class()];
      v52 = [v51 localizedStringForKey:@"OOF_LOADING_STATE" value:&stru_30C98 table:@"ASAccountSetup"];
      v74[2] = v52;
      v53 = [NSArray arrayWithObjects:v74 count:3];
      [v45 setValues:v46 titles:v53];

      v54 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      [v54 setIdentifier:@"kPSOofSpecifierID"];

      if ([(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled])
      {
        v55 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
        [v55 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      }

      v56 = +[PSSpecifier emptyGroupSpecifier];
      v3 = v71;
      [v71 addObject:v56];

      v57 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      [v71 addObject:v57];

      v10 = v67;
      v6 = v69;
      v9 = v65;
    }
  }

LABEL_22:
  v58 = +[(ESDiagnosticsPSController *)ASDiagnosticsPSController];

  if (v58)
  {
    v59 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v59];

    [v3 addObject:v58];
  }

  v72.receiver = self;
  v72.super_class = ASSettingsDataclassConfigurationViewController;
  v60 = [(ESSettingsDataclassConfigurationViewController *)&v72 otherSpecifiers];
  [v3 addObjectsFromArray:v60];

  return v3;
}

- (void)updateOutOfOfficeSpecifier
{
  v3 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];

  if (v3)
  {
    v4 = [(ASSettingsDataclassConfigurationViewController *)self specifierForID:@"kPSOofSpecifierID"];
    v5 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];
    -[ASSettingsDataclassConfigurationViewController setOutOfOfficeEnabled:](self, "setOutOfOfficeEnabled:", [v5 oofState] != 0);

    v6 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    v29 = @"kPSOofServerData";
    v7 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];
    v30 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v6 setUserInfo:v8];

    if (([(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled]& 1) == 0)
    {
      v9 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    }

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      v12 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];
      v13 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
      v14 = [v13 accountID];
      *buf = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_0, v10, v11, "Got out of office data back %@ for account %@", buf, 0x16u);
    }

    if (v4)
    {
      v15 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];

      if (v15)
      {
        v24 = v4;
        v16 = [NSArray arrayWithObjects:&v24 count:1];
        v17 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
        v23 = v17;
        v18 = [NSArray arrayWithObjects:&v23 count:1];
        [(ASSettingsDataclassConfigurationViewController *)self replaceContiguousSpecifiers:v16 withSpecifiers:v18 animated:0];

        goto LABEL_15;
      }
    }

    else
    {
      v19 = DALoggingwithCategory();
      v20 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, v20, "outOfOfficeSpecifier is nil, why?", buf, 2u);
      }
    }

    v21 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];

    if (v21)
    {
LABEL_16:

      return;
    }

    v16 = DALoggingwithCategory();
    v22 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v16, _CPLog_to_os_log_type[3]))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, v22, "self.outOfOfficeSpecifier is nil, why?", buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }
}

- (void)removeOutOfOfficeSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"OOF_AUTO_REPLY" value:&stru_30C98 table:@"ASAccountSetup"];
  [(ASSettingsDataclassConfigurationViewController *)self removeSpecifierID:v4 animated:1];

  [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifiers];
}

- (void)OAuthAccount:(id)a3 authorizationURI:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(ASSettingsDataclassConfigurationViewController *)self _enableReAuthenticationButton];
  if (!v7 || v8)
  {
    if (v8 && [(ASSettingsDataclassConfigurationViewController *)self _isNetworkOfflineError:v8])
    {
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v11, v12))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v11, v12, "Received an Internet Offline Error duing AutoDV2. Presenting Internet Offline Alert", &v16, 2u);
      }

      +[DAEASOAuthWebViewController presentInternetOfflineError];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v13, v14))
      {
        v15 = @"Not Valid";
        if (v7)
        {
          v15 = v7;
        }

        v16 = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_0, v13, v14, "OAuthURI %{public}@ : Error %{public}@", &v16, 0x16u);
      }
    }

    [(ASSettingsDataclassConfigurationViewController *)self stopValidationWithPrompt:0 showButtons:1];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, v10))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_0, v9, v10, "AutoDiscover succeeded with OAuthURI : %{public}@", &v16, 0xCu);
    }

    [(ASSettingsDataclassConfigurationViewController *)self _reAuthenticationButtonTapped];
  }
}

- (void)oofRequestInfo:(id)a3 finishedWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  [(ASSettingsDataclassConfigurationViewController *)v11 setIsFetchingOutOfOfficeState:0];
  objc_sync_exit(v11);

  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    [(ASSettingsDataclassConfigurationViewController *)v11 setServerOutOfOfficeInformation:v9];
    [(ASSettingsDataclassConfigurationViewController *)v11 performSelectorOnMainThread:"updateOutOfOfficeSpecifier" withObject:0 waitUntilDone:1];
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [(ESSettingsDataclassConfigurationViewController *)v11 daAccount];
      v15 = [v14 accountID];
      v19 = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_0, v12, v13, "Server response for Out of Office Data for account %@ with data %@", &v19, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([(ASSettingsDataclassConfigurationViewController *)v11 numberOfRetriedFetchingOutOfOfficeCounter]> 4)
  {
    v12 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v16))
    {
      v17 = [(ESSettingsDataclassConfigurationViewController *)v11 daAccount];
      v18 = [v17 accountID];
      v19 = 138412546;
      v20 = v18;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_0, v12, v16, "Failed to get Out Of Office data for account %@: %@", &v19, 0x16u);
    }

    goto LABEL_10;
  }

  [(ASSettingsDataclassConfigurationViewController *)v11 setNumberOfRetriedFetchingOutOfOfficeCounter:[(ASSettingsDataclassConfigurationViewController *)v11 numberOfRetriedFetchingOutOfOfficeCounter]+ 1];
  [(ASSettingsDataclassConfigurationViewController *)v11 checkAndFetchOutOfOfficeState];
LABEL_11:
}

- (void)checkAndFetchOutOfOfficeState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ASSettingsDataclassConfigurationViewController *)v2 isFetchingOutOfOfficeState];
  [(ASSettingsDataclassConfigurationViewController *)v2 setIsFetchingOutOfOfficeState:1];
  objc_sync_exit(v2);

  if ((v3 & 1) == 0)
  {

    [(ASSettingsDataclassConfigurationViewController *)v2 performSelectorOnMainThread:"fetchingOutOfOfficeState" withObject:0 waitUntilDone:0];
  }
}

- (void)fetchingOutOfOfficeState
{
  v3 = objc_alloc_init(DAOofSettingsInfo);
  [(ASSettingsDataclassConfigurationViewController *)self setDASettingsInfo:v3];

  v4 = [(ASSettingsDataclassConfigurationViewController *)self DASettingsInfo];
  [v4 setConsumer:self];

  v5 = +[ESDConnection sharedConnection];
  v6 = [(ASSettingsDataclassConfigurationViewController *)self DASettingsInfo];
  v7 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  v8 = [v7 accountID];
  [v5 retrieveOofSettingsRequest:v6 forAccountWithID:v8];

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    v11 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    v12 = [v11 accountID];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&dword_0, v9, v10, "Fetching Out of Office Data for account %@", &v13, 0xCu);
  }
}

- (void)saveOutOfOfficeData:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() isHotmailAccount] & 1) == 0)
  {
    v5 = +[ESDConnection sharedConnection];
    v6 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    v7 = [v6 accountID];
    [v5 updateOofSettingsRequest:v4 forAccountWithID:v7];

    -[ASSettingsDataclassConfigurationViewController setOutOfOfficeEnabled:](self, "setOutOfOfficeEnabled:", [v4 oofState] != 0);
    [(ASSettingsDataclassConfigurationViewController *)self setServerOutOfOfficeInformation:0];
    v8 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

    v9 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifier:v9];

    [(ASSettingsDataclassConfigurationViewController *)self checkAndFetchOutOfOfficeState];
  }

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    v13 = [v12 accountID];
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_0, v10, v11, "Saving new out of office Data %@ for account %@", &v14, 0x16u);
  }
}

- (id)numFoldersToPushString:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 folderIdsThatExternalClientsCareAbout];
  v5 = [v4 count];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5)
  {
    v7 = [v6 localizedStringForKey:@"INBOX_PLUS_COUNT_STRING" value:&stru_30C98 table:@"ASAccountSetup"];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INBOX_STRING" value:&stru_30C98 table:@"ASAccountSetup"];
    v10 = [NSString stringWithFormat:v7, v9, v5];
  }

  else
  {
    v10 = [v6 localizedStringForKey:@"INBOX_STRING" value:&stru_30C98 table:@"ASAccountSetup"];
  }

  return v10;
}

- (id)accountIntegerPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"MAIL_PAST_DAYS"])
  {
    v5 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    v6 = [v5 mailNumberOfPastDaysToSync];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithInt:v6];

  return v7;
}

- (void)setAccountIntegerProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 intValue];
  v13 = [v6 identifier];

  if ([v13 isEqualToString:@"MAIL_PAST_DAYS"])
  {
    v8 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    v9 = [v8 mailNumberOfPastDaysToSync];
    [v8 setMailNumberOfPastDaysToSync:v7];

    if (v7 != v9 && ([(ASSettingsDataclassConfigurationViewController *)self isFirstTimeSetup]& 1) == 0)
    {
      v10 = [(ASSettingsDataclassConfigurationViewController *)self accountOperationsHelper];
      v11 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
      v12 = [v11 backingAccountInfo];
      [v10 saveAccount:v12 requireVerification:0];
    }
  }
}

- (id)outOfOfficeEnabled:(id)a3
{
  v4 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];

  if (v4)
  {
    v5 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeEnabled];
    v6 = @"outOfOfficeOFFState";
    if (v5)
    {
      v6 = @"outOfOfficeONState";
    }

    v7 = v6;
  }

  else
  {
    v7 = @"outOfOfficeLoadingState";
  }

  return v7;
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v3 = [(ASSettingsDataclassConfigurationViewController *)self view];
  v4 = [v3 window];

  return v4;
}

@end