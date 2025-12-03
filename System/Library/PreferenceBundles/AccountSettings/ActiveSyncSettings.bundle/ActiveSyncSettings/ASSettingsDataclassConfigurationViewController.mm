@interface ASSettingsDataclassConfigurationViewController
- (BOOL)_isNetworkOfflineError:(id)error;
- (BOOL)_storeHasDuplicateForUsername:(id)username withoutIdentifier:(id)identifier withAccountType:(id)type;
- (Class)accountInfoControllerClass;
- (id)_reAuthenticationSectionSpecifiers;
- (id)accountDescriptionForFirstTimeSetup;
- (id)accountFromSpecifier;
- (id)accountIntegerPropertyWithSpecifier:(id)specifier;
- (id)numFoldersToPushString:(id)string;
- (id)otherSpecifiers;
- (id)outOfOfficeEnabled:(id)enabled;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (id)specifiers;
- (void)OAuthAccount:(id)account authorizationURI:(id)i error:(id)error;
- (void)_autodiscoverOAuthAccountIsOnPrem:(BOOL)prem;
- (void)_disableReAuthenticationButton;
- (void)_enableReAuthenticationButton;
- (void)_presentAlertWithTitle:(id)title message:(id)message;
- (void)_reAuthenticationButtonTapped;
- (void)checkAndFetchOutOfOfficeState;
- (void)dealloc;
- (void)fetchingOutOfOfficeState;
- (void)handleRedirectURL:(id)l;
- (void)handleURL:(id)l;
- (void)oofRequestInfo:(id)info finishedWithResult:(id)result error:(id)error;
- (void)reloadAccount;
- (void)removeOutOfOfficeSpecifier;
- (void)saveOutOfOfficeData:(id)data;
- (void)setAccountIntegerProperty:(id)property withSpecifier:(id)specifier;
- (void)updateOutOfOfficeSpecifier;
@end

@implementation ASSettingsDataclassConfigurationViewController

- (Class)accountInfoControllerClass
{
  isHotmailAccount = [objc_opt_class() isHotmailAccount];
  v3 = off_30300;
  if (!isHotmailAccount)
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
    account2 = v3;
    v5 = @"HOTMAIL";
  }

  else
  {
    account = [(ASSettingsDataclassConfigurationViewController *)self account];
    accountDescription = [account accountDescription];

    if (accountDescription)
    {
      account2 = [(ASSettingsDataclassConfigurationViewController *)self account];
      accountDescription2 = [account2 accountDescription];
      goto LABEL_7;
    }

    v3 = [NSBundle bundleForClass:objc_opt_class()];
    account2 = v3;
    v5 = @"EXCHANGE";
  }

  accountDescription2 = [v3 localizedStringForKey:v5 value:&stru_30C98 table:@"ASAccountSetup"];
LABEL_7:
  v9 = accountDescription2;

  return v9;
}

- (void)reloadAccount
{
  daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  [daAccount reload];
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
    account = [(ASSettingsDataclassConfigurationViewController *)self account];
    v4 = [account objectForKeyedSubscript:kESExchangeOAuthSupportedKey];
    if (v4)
    {
    }

    else
    {
      account2 = [(ASSettingsDataclassConfigurationViewController *)self account];
      migrationStatus = [account2 migrationStatus];

      if (migrationStatus != &dword_0 + 1)
      {
        v35.receiver = self;
        v35.super_class = ASSettingsDataclassConfigurationViewController;
        specifiers = [(ESSettingsDataclassConfigurationViewController *)&v35 specifiers];
        goto LABEL_31;
      }
    }
  }

  specifiers = objc_opt_new();
  account3 = [(ASSettingsDataclassConfigurationViewController *)self account];
  isAuthenticated = [account3 isAuthenticated];

  if (isAuthenticated && (-[ASSettingsDataclassConfigurationViewController account](self, "account"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 migrationStatus], v10, v11 != &dword_0 + 1))
  {
    _reAuthenticationSectionSpecifiers = 0;
  }

  else
  {
    _reAuthenticationSectionSpecifiers = [(ASSettingsDataclassConfigurationViewController *)self _reAuthenticationSectionSpecifiers];
    [specifiers addObjectsFromArray:_reAuthenticationSectionSpecifiers];
  }

  v40.receiver = self;
  v40.super_class = ASSettingsDataclassConfigurationViewController;
  specifiers2 = [(ESSettingsDataclassConfigurationViewController *)&v40 specifiers];
  v14 = [specifiers2 mutableCopy];
  [specifiers addObjectsFromArray:v14];

  if (!isAuthenticated || [(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = specifiers;
    v15 = specifiers;
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
          deleteButtonSpecifier = [(ASSettingsDataclassConfigurationViewController *)self deleteButtonSpecifier];
          v23 = deleteButtonSpecifier;
          if (v21 == deleteButtonSpecifier)
          {
          }

          else
          {
            v24 = [_reAuthenticationSectionSpecifiers containsObject:v21];

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

    specifiers = v34;
  }

  if ([specifiers count])
  {
    v25 = [specifiers objectAtIndexedSubscript:0];
    name = [v25 name];
    v27 = [name length];

    if (v27)
    {
      isHotmailAccount = [objc_opt_class() isHotmailAccount];
      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = v29;
      if (isHotmailAccount)
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

  objc_storeStrong(&self->super.ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers], specifiers);

LABEL_31:

  return specifiers;
}

- (id)accountFromSpecifier
{
  specifier = [(ASSettingsDataclassConfigurationViewController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:ACUIAccountKey];

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
  account = [(ASSettingsDataclassConfigurationViewController *)self account];
  username = [account username];
  [v4 setProperty:username forKey:@"EASNameForAccountToAuthenticate"];

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

  reAuthenticationButtonSpecifier = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [reAuthenticationButtonSpecifier setButtonAction:"_reAuthenticationButtonTapped"];

  reAuthenticationButtonSpecifier2 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [v3 addObject:reAuthenticationButtonSpecifier2];

  return v3;
}

- (void)_enableReAuthenticationButton
{
  reAuthenticationButtonSpecifier = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [reAuthenticationButtonSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  reAuthenticationButtonSpecifier2 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifier:reAuthenticationButtonSpecifier2];
}

- (void)_disableReAuthenticationButton
{
  reAuthenticationButtonSpecifier = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [reAuthenticationButtonSpecifier setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

  reAuthenticationButtonSpecifier2 = [(ASSettingsDataclassConfigurationViewController *)self reAuthenticationButtonSpecifier];
  [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifier:reAuthenticationButtonSpecifier2];
}

- (BOOL)_storeHasDuplicateForUsername:(id)username withoutIdentifier:(id)identifier withAccountType:(id)type
{
  usernameCopy = username;
  identifierCopy = identifier;
  typeCopy = type;
  accountStore = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
  v11 = [accountStore accountsWithAccountType:typeCopy];
  v12 = [v11 mutableCopy];

  identifier = [typeCopy identifier];
  v14 = ACAccountTypeIdentifierExchange;
  v15 = [identifier isEqualToString:ACAccountTypeIdentifierExchange];

  if (v15)
  {
    accountStore2 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
    v17 = accountStore2;
    v18 = ACAccountTypeIdentifierHotmail;
  }

  else
  {
    identifier2 = [typeCopy identifier];
    v20 = [identifier2 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (!v20)
    {
      goto LABEL_7;
    }

    accountStore2 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
    v17 = accountStore2;
    v18 = v14;
  }

  v21 = [accountStore2 accountTypeWithAccountTypeIdentifier:v18];

  if (v21)
  {
    accountStore3 = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
    v23 = [accountStore3 accountsWithAccountType:v21];
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
    v38 = typeCopy;
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
        identifier3 = [v30 identifier];
        v32 = [identifierCopy compare:identifier3 options:1];

        if (v32)
        {
          username = [v30 username];
          if (![usernameCopy compare:username options:1])
          {

            v35 = 1;
            goto LABEL_20;
          }

          v34 = [v30 objectForKeyedSubscript:v28];
          v35 = 1;
          v36 = [usernameCopy compare:v34 options:1];

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
    typeCopy = v38;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)handleRedirectURL:(id)l
{
  v53 = a2;
  lCopy = l;
  v3 = [NSURLComponents componentsWithURL:"componentsWithURL:resolvingAgainstBaseURL:" resolvingAgainstBaseURL:?];
  queryItems = [v3 queryItems];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = queryItems;
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
      name = [v9 name];
      v11 = [name caseInsensitiveCompare:@"code"] == 0;

      if (v11)
      {
        value = [v9 value];
        v19 = v6;
        v6 = value;
      }

      else
      {
        name2 = [v9 name];
        v13 = [name2 caseInsensitiveCompare:@"state"] == 0;

        if (v13)
        {
          value2 = [v9 value];
          v19 = v58;
          v58 = value2;
        }

        else
        {
          name3 = [v9 name];
          v15 = [name3 caseInsensitiveCompare:@"error"] == 0;

          if (v15)
          {
            value3 = [v9 value];
            v19 = v57;
            v57 = value3;
          }

          else
          {
            name4 = [v9 name];
            v17 = [name4 caseInsensitiveCompare:@"error_description"] == 0;

            if (!v17)
            {
              continue;
            }

            value4 = [v9 value];
            v19 = v56;
            v56 = value4;
          }
        }
      }
    }

    v5 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  }

  while (v5);

  if (v6)
  {
    oauthFlowController = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
    state = [oauthFlowController state];
    v25 = [v58 isEqualToString:state];

    if (v25)
    {
      objc_initWeak(location, self);
      oauthFlowController2 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
      oauthFlowController3 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
      challenge = [oauthFlowController3 challenge];
      codeVerifier = [challenge codeVerifier];
      account = [(ASSettingsDataclassConfigurationViewController *)self account];
      v31 = [account objectForKeyedSubscript:kESExchangePendingClaimsChallenge];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_16A30;
      v60[3] = &unk_30B08;
      objc_copyWeak(v61, location);
      v60[4] = self;
      v61[1] = v53;
      [oauthFlowController2 exchangeAuthCode:v6 codeVerifier:codeVerifier claims:v31 withCompletion:v60];

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
      oauthFlowController4 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
      state2 = [oauthFlowController4 state];
      *location = 138412802;
      *&location[4] = v6;
      v67 = 2112;
      v68 = v58;
      v69 = 2112;
      v70 = state2;
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
    account = [(ASSettingsDataclassConfigurationViewController *)self account];
    accountType = [account accountType];
    identifier = [accountType identifier];
    *buf = 138412290;
    v94 = identifier;
    _os_log_impl(&dword_0, v4, type, "_reAuthenticationButtonTapped for account type: %@.", buf, 0xCu);
  }

  account2 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v8 = kESExchangeOAuthSupportedKey;
  v9 = [account2 objectForKeyedSubscript:kESExchangeOAuthSupportedKey];
  if (v9 || (-[ASSettingsDataclassConfigurationViewController account](self, "account"), identifier = objc_claimAutoreleasedReturnValue(), [identifier migrationStatus] == &dword_0 + 1))
  {
    account3 = [(ASSettingsDataclassConfigurationViewController *)self account];
    accountType2 = [account3 accountType];
    identifier2 = [accountType2 identifier];
    v13 = [identifier2 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (v9)
    {
    }

    else
    {
    }

    if ((v13 & 1) == 0)
    {
      account4 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v80 = [account4 objectForKeyedSubscript:kESExchangeOAuthURI];

      account5 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v79 = [account5 objectForKeyedSubscript:kESEASEndPointFQDN];

      account6 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v78 = [account6 objectForKeyedSubscript:kESAccountDiscoveredHost];

      account7 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v81 = [account7 objectForKeyedSubscript:kESExchangeOAuthOnPremKey];

      if (v81 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        bOOLValue = [v81 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      account8 = [(ASSettingsDataclassConfigurationViewController *)self account];
      v20 = [account8 migrationStatus] == &dword_0 + 1;

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
        if ((bOOLValue & 1) != 0 || ([DAEASOAuthFlowController upgradeAuthorizationEndpoint:v22], v77 = objc_claimAutoreleasedReturnValue(), v22, v77))
        {
          v23 = [DAExchangeOAuthFlowController alloc];
          account9 = [(ASSettingsDataclassConfigurationViewController *)self account];
          username = [account9 username];
          account10 = [(ASSettingsDataclassConfigurationViewController *)self account];
          identifier3 = [account10 identifier];
          if (bOOLValue)
          {
            v28 = @"{access_token:{xms_cc:{values:[cp1]}}}";
          }

          else
          {
            identifier = [(ASSettingsDataclassConfigurationViewController *)self account];
            v28 = [identifier objectForKeyedSubscript:kESExchangePendingClaimsChallenge];
          }

          v39 = [v23 initWithAuthURI:v77 easEndPoint:v79 username:username accountId:identifier3 claims:v28 isOnPrem:bOOLValue];
          [(ASSettingsDataclassConfigurationViewController *)self setOauthFlowController:v39];

          if ((bOOLValue & 1) == 0)
          {
          }

          oauthFlowController = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
          oauthType = [oauthFlowController oauthType];

          oauthFlowController2 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
          v43 = [DAEASOAuthClient clientRedirectForOAuthType:oauthType];
          [oauthFlowController2 setRedirectURI:v43];

          oauthFlowController3 = [(ASSettingsDataclassConfigurationViewController *)self oauthFlowController];
          account11 = [(ASSettingsDataclassConfigurationViewController *)self account];
          username2 = [account11 username];
          if (bOOLValue)
          {
            [oauthFlowController3 onPremAuthURLForUsername:username2 originalAuthURL:v22 resource:v79];
          }

          else
          {
            [oauthFlowController3 authURLForUsername:username2 originalAuthURL:v77];
          }
          v47 = ;

          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_18278;
          v92[3] = &unk_30A60;
          v92[4] = self;
          v92[5] = oauthType;
          v48 = objc_retainBlock(v92);
          v49 = [DAOAuthSafariViewController authenticationSessionWithURL:v47 callbackURLScheme:0 handler:v48];
          [(ASSettingsDataclassConfigurationViewController *)self setWebAuthenticationSession:v49];

          webAuthenticationSession = [(ASSettingsDataclassConfigurationViewController *)self webAuthenticationSession];
          LODWORD(v49) = webAuthenticationSession == 0;

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
            webAuthenticationSession2 = [(ASSettingsDataclassConfigurationViewController *)self webAuthenticationSession];
            [webAuthenticationSession2 setPresentationContextProvider:self];

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
              backgroundTaskID = [(ASSettingsDataclassConfigurationViewController *)self backgroundTaskID];
              *buf = 134217984;
              v94 = backgroundTaskID;
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
              redirectHandlerBlock = [(ASSettingsDataclassConfigurationViewController *)self redirectHandlerBlock];
              v58 = objc_retainBlock(redirectHandlerBlock);
              v59 = [DAEASOAuthClient clientRedirectForOAuthType:oauthType];
              *buf = 134218242;
              v94 = v58;
              v95 = 2112;
              v96 = v59;
              _os_log_impl(&dword_0, v56, type, "Exchange OAuth Setup: Registering Block %p client for RedirectURL %@.", buf, 0x16u);
            }

            v60 = +[PSOAuthAccountRedirectURLController sharedInstance];
            v61 = [DAEASOAuthClient clientRedirectForOAuthType:oauthType];
            redirectHandlerBlock2 = [(ASSettingsDataclassConfigurationViewController *)self redirectHandlerBlock];
            [v60 registerOAuthClientForRedirectURL:v61 redirectHandler:redirectHandlerBlock2];

            v63 = DALoggingwithCategory();
            if (os_log_type_enabled(v63, type))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v63, type, "Exchange OAuth Setup: Presenting SafariOAuth page for password re-entry.", buf, 2u);
            }

            webAuthenticationSession3 = [(ASSettingsDataclassConfigurationViewController *)self webAuthenticationSession];
            [webAuthenticationSession3 start];

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
        [(ASSettingsDataclassConfigurationViewController *)self _autodiscoverOAuthAccountIsOnPrem:bOOLValue];
      }

      return;
    }
  }

  else
  {
  }

  account12 = [(ASSettingsDataclassConfigurationViewController *)self account];
  v30 = [account12 objectForKeyedSubscript:v8];

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
  account13 = [(ASSettingsDataclassConfigurationViewController *)self account];
  accountStore = [(ASSettingsDataclassConfigurationViewController *)self accountStore];
  v37 = [v34 initWithAccount:account13 isFirstTimeSetup:0 accountStore:accountStore presentationBlock:v33];
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

- (void)_presentAlertWithTitle:(id)title message:(id)message
{
  v8 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_30C98 table:@"ASAccountSetup"];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&stru_30B98];

  [v8 addAction:v7];
  [(ASSettingsDataclassConfigurationViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_autodiscoverOAuthAccountIsOnPrem:(BOOL)prem
{
  v5 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_18A1C;
  v6[3] = &unk_30BE8;
  v6[4] = self;
  premCopy = prem;
  [v5 sendRequestForRedirectWithCompletionHandler:v6];
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

- (void)handleURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = ASSettingsDataclassConfigurationViewController;
  [(ASSettingsDataclassConfigurationViewController *)&v11 handleURL:lCopy];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v13 = lCopy;
    _os_log_impl(&dword_0, v5, v6, "Exchange OAuth Setup: Received an action: %@ to present SafariViewController for Re-Entering password.", buf, 0xCu);
  }

  v7 = [lCopy objectForKeyedSubscript:@"easOAuthAction"];
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

  daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  mailNumberOfPastDaysToSyncUpperLimit = [daAccount mailNumberOfPastDaysToSyncUpperLimit];

  if (mailNumberOfPastDaysToSyncUpperLimit)
  {
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v11 = &off_32630;
    if (mailNumberOfPastDaysToSyncUpperLimit >= 1)
    {
      [v9 addObject:&off_32630];
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"1_DAY" value:&stru_30C98 table:@"ASAccountSetup"];
      [v10 addObject:v13];

      if (mailNumberOfPastDaysToSyncUpperLimit >= 3)
      {
        v11 = &off_32600;
        [v9 addObject:&off_32600];
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"3_DAYS" value:&stru_30C98 table:@"ASAccountSetup"];
        [v10 addObject:v15];

        if (mailNumberOfPastDaysToSyncUpperLimit >= 7)
        {
          [v9 addObject:&off_32648];
          v16 = [NSBundle bundleForClass:objc_opt_class()];
          v17 = [v16 localizedStringForKey:@"1_WEEK" value:&stru_30C98 table:@"ASAccountSetup"];
          [v10 addObject:v17];

          if (mailNumberOfPastDaysToSyncUpperLimit >= 0xE)
          {
            [v9 addObject:&off_32660];
            v18 = [NSBundle bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"2_WEEKS" value:&stru_30C98 table:@"ASAccountSetup"];
            [v10 addObject:v19];

            if (mailNumberOfPastDaysToSyncUpperLimit >= 0x1F)
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
    isOofSupported = [(ASSettingsDataclassConfigurationViewController *)self isOofSupported];

    if (isOofSupported)
    {
      isOofSupported2 = [(ASSettingsDataclassConfigurationViewController *)self isOofSupported];
      bOOLValue = [isOofSupported2 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v34 = +[ESDConnection sharedConnection];
      daAccount2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
      accountID = [daAccount2 accountID];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_19A24;
      v73[3] = &unk_30C10;
      v73[4] = self;
      [v34 isOofSettingsSupportedForAccountWithID:accountID completionBlock:v73];
    }

    v69 = v6;
    isOofSupported3 = [(ASSettingsDataclassConfigurationViewController *)self isOofSupported];

    if (isOofSupported3)
    {
      [(ASSettingsDataclassConfigurationViewController *)self checkAndFetchOutOfOfficeState];
    }

    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"OOF_AUTO_REPLY" value:&stru_30C98 table:@"ASAccountSetup"];
    v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:"saveOutOfOfficeData:" get:"outOfOfficeEnabled:" detail:objc_opt_class() cell:2 edit:0];
    [(ASSettingsDataclassConfigurationViewController *)self setOutOfOfficeSpecifier:v40];

    outOfOfficeSpecifier = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    [outOfOfficeSpecifier setProperty:v43 forKey:PSSetupCustomClassKey];

    outOfOfficeSpecifier2 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];

    if (outOfOfficeSpecifier2)
    {
      v65 = v9;
      v67 = v10;
      v71 = v3;
      outOfOfficeSpecifier3 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
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
      [outOfOfficeSpecifier3 setValues:v46 titles:v53];

      outOfOfficeSpecifier4 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      [outOfOfficeSpecifier4 setIdentifier:@"kPSOofSpecifierID"];

      if ([(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled])
      {
        outOfOfficeSpecifier5 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
        [outOfOfficeSpecifier5 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      }

      v56 = +[PSSpecifier emptyGroupSpecifier];
      v3 = v71;
      [v71 addObject:v56];

      outOfOfficeSpecifier6 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      [v71 addObject:outOfOfficeSpecifier6];

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
  otherSpecifiers = [(ESSettingsDataclassConfigurationViewController *)&v72 otherSpecifiers];
  [v3 addObjectsFromArray:otherSpecifiers];

  return v3;
}

- (void)updateOutOfOfficeSpecifier
{
  serverOutOfOfficeInformation = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];

  if (serverOutOfOfficeInformation)
  {
    v4 = [(ASSettingsDataclassConfigurationViewController *)self specifierForID:@"kPSOofSpecifierID"];
    serverOutOfOfficeInformation2 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];
    -[ASSettingsDataclassConfigurationViewController setOutOfOfficeEnabled:](self, "setOutOfOfficeEnabled:", [serverOutOfOfficeInformation2 oofState] != 0);

    outOfOfficeSpecifier = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    v29 = @"kPSOofServerData";
    serverOutOfOfficeInformation3 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];
    v30 = serverOutOfOfficeInformation3;
    v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [outOfOfficeSpecifier setUserInfo:v8];

    if (([(ASSettingsDataclassConfigurationViewController *)self isAccountModificationDisabled]& 1) == 0)
    {
      outOfOfficeSpecifier2 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
      [outOfOfficeSpecifier2 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    }

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      serverOutOfOfficeInformation4 = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];
      daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
      accountID = [daAccount accountID];
      *buf = 138412546;
      v26 = serverOutOfOfficeInformation4;
      v27 = 2112;
      v28 = accountID;
      _os_log_impl(&dword_0, v10, v11, "Got out of office data back %@ for account %@", buf, 0x16u);
    }

    if (v4)
    {
      outOfOfficeSpecifier3 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];

      if (outOfOfficeSpecifier3)
      {
        v24 = v4;
        v16 = [NSArray arrayWithObjects:&v24 count:1];
        outOfOfficeSpecifier4 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
        v23 = outOfOfficeSpecifier4;
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

    outOfOfficeSpecifier5 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];

    if (outOfOfficeSpecifier5)
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

- (void)OAuthAccount:(id)account authorizationURI:(id)i error:(id)error
{
  iCopy = i;
  errorCopy = error;
  [(ASSettingsDataclassConfigurationViewController *)self _enableReAuthenticationButton];
  if (!iCopy || errorCopy)
  {
    if (errorCopy && [(ASSettingsDataclassConfigurationViewController *)self _isNetworkOfflineError:errorCopy])
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
        if (iCopy)
        {
          v15 = iCopy;
        }

        v16 = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = errorCopy;
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
      v17 = iCopy;
      _os_log_impl(&dword_0, v9, v10, "AutoDiscover succeeded with OAuthURI : %{public}@", &v16, 0xCu);
    }

    [(ASSettingsDataclassConfigurationViewController *)self _reAuthenticationButtonTapped];
  }
}

- (void)oofRequestInfo:(id)info finishedWithResult:(id)result error:(id)error
{
  infoCopy = info;
  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASSettingsDataclassConfigurationViewController *)selfCopy setIsFetchingOutOfOfficeState:0];
  objc_sync_exit(selfCopy);

  if (!errorCopy)
  {
    if (!resultCopy)
    {
      goto LABEL_11;
    }

    [(ASSettingsDataclassConfigurationViewController *)selfCopy setServerOutOfOfficeInformation:resultCopy];
    [(ASSettingsDataclassConfigurationViewController *)selfCopy performSelectorOnMainThread:"updateOutOfOfficeSpecifier" withObject:0 waitUntilDone:1];
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      daAccount = [(ESSettingsDataclassConfigurationViewController *)selfCopy daAccount];
      accountID = [daAccount accountID];
      v19 = 138412546;
      v20 = accountID;
      v21 = 2112;
      v22 = resultCopy;
      _os_log_impl(&dword_0, v12, v13, "Server response for Out of Office Data for account %@ with data %@", &v19, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([(ASSettingsDataclassConfigurationViewController *)selfCopy numberOfRetriedFetchingOutOfOfficeCounter]> 4)
  {
    v12 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v16))
    {
      daAccount2 = [(ESSettingsDataclassConfigurationViewController *)selfCopy daAccount];
      accountID2 = [daAccount2 accountID];
      v19 = 138412546;
      v20 = accountID2;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_0, v12, v16, "Failed to get Out Of Office data for account %@: %@", &v19, 0x16u);
    }

    goto LABEL_10;
  }

  [(ASSettingsDataclassConfigurationViewController *)selfCopy setNumberOfRetriedFetchingOutOfOfficeCounter:[(ASSettingsDataclassConfigurationViewController *)selfCopy numberOfRetriedFetchingOutOfOfficeCounter]+ 1];
  [(ASSettingsDataclassConfigurationViewController *)selfCopy checkAndFetchOutOfOfficeState];
LABEL_11:
}

- (void)checkAndFetchOutOfOfficeState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isFetchingOutOfOfficeState = [(ASSettingsDataclassConfigurationViewController *)selfCopy isFetchingOutOfOfficeState];
  [(ASSettingsDataclassConfigurationViewController *)selfCopy setIsFetchingOutOfOfficeState:1];
  objc_sync_exit(selfCopy);

  if ((isFetchingOutOfOfficeState & 1) == 0)
  {

    [(ASSettingsDataclassConfigurationViewController *)selfCopy performSelectorOnMainThread:"fetchingOutOfOfficeState" withObject:0 waitUntilDone:0];
  }
}

- (void)fetchingOutOfOfficeState
{
  v3 = objc_alloc_init(DAOofSettingsInfo);
  [(ASSettingsDataclassConfigurationViewController *)self setDASettingsInfo:v3];

  dASettingsInfo = [(ASSettingsDataclassConfigurationViewController *)self DASettingsInfo];
  [dASettingsInfo setConsumer:self];

  v5 = +[ESDConnection sharedConnection];
  dASettingsInfo2 = [(ASSettingsDataclassConfigurationViewController *)self DASettingsInfo];
  daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  accountID = [daAccount accountID];
  [v5 retrieveOofSettingsRequest:dASettingsInfo2 forAccountWithID:accountID];

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    daAccount2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    accountID2 = [daAccount2 accountID];
    v13 = 138412290;
    v14 = accountID2;
    _os_log_impl(&dword_0, v9, v10, "Fetching Out of Office Data for account %@", &v13, 0xCu);
  }
}

- (void)saveOutOfOfficeData:(id)data
{
  dataCopy = data;
  if (([objc_opt_class() isHotmailAccount] & 1) == 0)
  {
    v5 = +[ESDConnection sharedConnection];
    daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    accountID = [daAccount accountID];
    [v5 updateOofSettingsRequest:dataCopy forAccountWithID:accountID];

    -[ASSettingsDataclassConfigurationViewController setOutOfOfficeEnabled:](self, "setOutOfOfficeEnabled:", [dataCopy oofState] != 0);
    [(ASSettingsDataclassConfigurationViewController *)self setServerOutOfOfficeInformation:0];
    outOfOfficeSpecifier = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    [outOfOfficeSpecifier setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

    outOfOfficeSpecifier2 = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeSpecifier];
    [(ASSettingsDataclassConfigurationViewController *)self reloadSpecifier:outOfOfficeSpecifier2];

    [(ASSettingsDataclassConfigurationViewController *)self checkAndFetchOutOfOfficeState];
  }

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    daAccount2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    accountID2 = [daAccount2 accountID];
    v14 = 138412546;
    v15 = accountID2;
    v16 = 2112;
    v17 = dataCopy;
    _os_log_impl(&dword_0, v10, v11, "Saving new out of office Data %@ for account %@", &v14, 0x16u);
  }
}

- (id)numFoldersToPushString:(id)string
{
  userInfo = [string userInfo];
  folderIdsThatExternalClientsCareAbout = [userInfo folderIdsThatExternalClientsCareAbout];
  v5 = [folderIdsThatExternalClientsCareAbout count];

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

- (id)accountIntegerPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"MAIL_PAST_DAYS"])
  {
    daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    mailNumberOfPastDaysToSync = [daAccount mailNumberOfPastDaysToSync];
  }

  else
  {
    mailNumberOfPastDaysToSync = 0;
  }

  v7 = [NSNumber numberWithInt:mailNumberOfPastDaysToSync];

  return v7;
}

- (void)setAccountIntegerProperty:(id)property withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  intValue = [property intValue];
  identifier = [specifierCopy identifier];

  if ([identifier isEqualToString:@"MAIL_PAST_DAYS"])
  {
    daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    mailNumberOfPastDaysToSync = [daAccount mailNumberOfPastDaysToSync];
    [daAccount setMailNumberOfPastDaysToSync:intValue];

    if (intValue != mailNumberOfPastDaysToSync && ([(ASSettingsDataclassConfigurationViewController *)self isFirstTimeSetup]& 1) == 0)
    {
      accountOperationsHelper = [(ASSettingsDataclassConfigurationViewController *)self accountOperationsHelper];
      daAccount2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
      backingAccountInfo = [daAccount2 backingAccountInfo];
      [accountOperationsHelper saveAccount:backingAccountInfo requireVerification:0];
    }
  }
}

- (id)outOfOfficeEnabled:(id)enabled
{
  serverOutOfOfficeInformation = [(ASSettingsDataclassConfigurationViewController *)self serverOutOfOfficeInformation];

  if (serverOutOfOfficeInformation)
  {
    outOfOfficeEnabled = [(ASSettingsDataclassConfigurationViewController *)self outOfOfficeEnabled];
    v6 = @"outOfOfficeOFFState";
    if (outOfOfficeEnabled)
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

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  view = [(ASSettingsDataclassConfigurationViewController *)self view];
  window = [view window];

  return window;
}

@end