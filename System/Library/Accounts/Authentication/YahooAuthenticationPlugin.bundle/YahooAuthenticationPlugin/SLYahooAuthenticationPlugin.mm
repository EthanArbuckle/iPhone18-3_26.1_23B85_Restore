@interface SLYahooAuthenticationPlugin
+ (BOOL)supportsAccountType:(id)type;
+ (id)webClientForAccount:(id)account;
- (BOOL)isPushSupportedForAccount:(id)account;
- (id)_getLegacyTokenForAccount:(id)account password:(id)password username:(id)username;
- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error;
- (id)renewalIDsForAccount:(id)account accountStore:(id)store options:(id)options;
- (void)_displayBadCredentialsAlertForAccount:(id)account clientName:(id)name reason:(id)reason accountStore:(id)store resetAuthenticatedOnAlertFailure:(BOOL)failure handler:(id)handler;
- (void)_migrateLegacyToken:(id)token account:(id)account completion:(id)completion;
- (void)_refreshTokenForAccount:(id)account store:(id)store completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)showUserAlertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
@end

@implementation SLYahooAuthenticationPlugin

+ (id)webClientForAccount:(id)account
{
  accountType = [account accountType];
  identifier = [accountType identifier];
  v5 = [identifier isEqualToString:*MEMORY[0x29EDB81C0]];
  v6 = 0x29EDBBD48;
  if (!v5)
  {
    v6 = 0x29EDBBDA0;
  }

  v7 = objc_alloc_init(*v6);

  return v7;
}

+ (BOOL)supportsAccountType:(id)type
{
  typeCopy = type;
  identifier = [typeCopy identifier];
  if ([identifier isEqualToString:*MEMORY[0x29EDB82C0]])
  {
    v5 = 1;
  }

  else
  {
    identifier2 = [typeCopy identifier];
    v5 = [identifier2 isEqualToString:*MEMORY[0x29EDB81C0]];
  }

  return v5;
}

- (BOOL)isPushSupportedForAccount:(id)account
{
  accountCopy = account;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = qword_2A1794F00;
  v17 = qword_2A1794F00;
  if (!qword_2A1794F00)
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = sub_29C840864;
    v13[3] = &unk_29F328E20;
    v13[4] = &v14;
    sub_29C840864(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v12 = 0;
  v6 = [v4 accountWithPersistentAccount:accountCopy error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    canReceiveNewMailNotifications = [v6 canReceiveNewMailNotifications];
  }

  else
  {
    canReceiveNewMailNotifications = 0;
  }

  return canReceiveNewMailNotifications;
}

- (void)showUserAlertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  v12 = MEMORY[0x29EDB8E00];
  v13 = *MEMORY[0x29EDB9040];
  v14 = *MEMORY[0x29EDB9060];
  v15 = *MEMORY[0x29EDB9058];
  v16 = MEMORY[0x29EDB9F48];
  otherButtonTitleCopy = otherButtonTitle;
  buttonTitleCopy = buttonTitle;
  titleCopy = title;
  v20 = [v16 bundleForClass:objc_opt_class()];
  resourceURL = [v20 resourceURL];
  v22 = [v12 dictionaryWithObjectsAndKeys:{titleCopy, v13, buttonTitleCopy, v14, otherButtonTitleCopy, v15, resourceURL, *MEMORY[0x29EDB9070], 0}];

  if (messageCopy)
  {
    [v22 setObject:messageCopy forKey:*MEMORY[0x29EDB9048]];
  }

  v23 = [blockCopy copy];

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, 0, v22);
  v24 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C83E4A8;
  block[3] = &unk_29F328C40;
  v28 = v23;
  v29 = v30;
  v25 = v23;
  dispatch_async(v24, block);

  _Block_object_dispose(v30, 8);
}

- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error
{
  accountCopy = account;
  clientCopy = client;
  v10 = [clientCopy hasEntitlement:*MEMORY[0x29EDB83E0]];
  v11 = _ACDLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      sub_29C840AD8(clientCopy, v11);
    }

    v13 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0 error:error];
  }

  else
  {
    if (v12)
    {
      sub_29C840A60(clientCopy, v11);
    }

    v13 = 0;
  }

  return v13;
}

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v39[1] = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  username = [accountCopy username];
  if (([username hasSuffix:@"yahoo.co.jp"] & 1) == 0)
  {

LABEL_5:
    username2 = [accountCopy username];
    if (username2)
    {
      v22 = username2;
      credential = [accountCopy credential];
      oauthToken = [credential oauthToken];
      if (oauthToken)
      {
        v25 = oauthToken;
        credential2 = [accountCopy credential];
        oauthRefreshToken = [credential2 oauthRefreshToken];

        if (oauthRefreshToken)
        {
          completionCopy[2](completionCopy, accountCopy, 0);
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v36 = *MEMORY[0x29EDB8450];
    v37 = MEMORY[0x29EDB8EB0];
    v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = sub_29C83E9A4;
    v30[3] = &unk_29F328C90;
    v32 = completionCopy;
    v31 = accountCopy;
    [(SLYahooAuthenticationPlugin *)self renewCredentialsForAccount:v31 accountStore:storeCopy options:v28 completion:v30];

    goto LABEL_11;
  }

  credential3 = [accountCopy credential];
  password = [credential3 password];

  if (!password)
  {
    goto LABEL_5;
  }

  v15 = objc_alloc(MEMORY[0x29EDB83B8]);
  v16 = [storeCopy accountTypeWithIdentifier:*MEMORY[0x29EDB8250]];
  v17 = [v15 initWithAccountType:v16];

  username3 = [accountCopy username];
  [v17 setUsername:username3];

  credential4 = [accountCopy credential];
  [v17 setCredential:credential4];

  v38 = *MEMORY[0x29EDB8460];
  v39[0] = MEMORY[0x29EDB8EA8];
  v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = sub_29C83E978;
  v33[3] = &unk_29F328C68;
  v35 = completionCopy;
  v34 = accountCopy;
  [storeCopy verifyCredentialsForAccount:v17 options:v20 completion:v33];

LABEL_11:
  v29 = *MEMORY[0x29EDCA608];
}

- (id)renewalIDsForAccount:(id)account accountStore:(id)store options:(id)options
{
  v17[2] = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v7 = [options objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = MEMORY[0x29EDBA0F8];
    identifier = [accountCopy identifier];
    v11 = [v9 stringWithFormat:@"%@.AvoidUI", identifier];
    v17[0] = v11;
    identifier2 = [accountCopy identifier];
    v17[1] = identifier2;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:2];
  }

  else
  {
    identifier = [accountCopy identifier];
    v16 = identifier;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v16 count:1];
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v33 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  completionCopy = completion;
  v14 = _ACDLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = accountCopy;
    v31 = 2114;
    v32 = optionsCopy;
    _os_log_impl(&dword_29C83D000, v14, OS_LOG_TYPE_DEFAULT, "Yahoo! plugin got renewCredentialsForAccount: %@ options: %{public}@ completion:", buf, 0x16u);
  }

  v15 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  bOOLValue = [v15 BOOLValue];

  username = [accountCopy username];
  if (([username hasSuffix:@"yahoo.co.jp"] & 1) == 0)
  {

    goto LABEL_9;
  }

  credential = [accountCopy credential];
  password = [credential password];

  if (!password)
  {
LABEL_9:
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = sub_29C83EE98;
    v22[3] = &unk_29F328D08;
    v23 = accountCopy;
    v27 = completionCopy;
    v24 = optionsCopy;
    selfCopy = self;
    v26 = storeCopy;
    v28 = bOOLValue;
    [(SLYahooAuthenticationPlugin *)self _refreshTokenForAccount:v23 store:v26 completion:v22];

    goto LABEL_10;
  }

  v20 = _ACLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_29C840B50(v20);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_10:

  v21 = *MEMORY[0x29EDCA608];
}

- (id)_getLegacyTokenForAccount:(id)account password:(id)password username:(id)username
{
  accountCopy = account;
  passwordCopy = password;
  usernameCopy = username;
  v10 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_29C83F4E0;
  v32 = sub_29C83F4F0;
  v33 = 0;
  v11 = [SLYahooAuthenticationPlugin webClientForAccount:accountCopy];
  v12 = MEMORY[0x29EDBBD80];
  source = [v11 source];
  v14 = [v12 urlRequestForLoginTokenFromUsername:usernameCopy password:passwordCopy src:source];

  ephemeralSessionConfiguration = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v16 = [MEMORY[0x29EDBA130] sessionWithConfiguration:ephemeralSessionConfiguration];
  v22 = MEMORY[0x29EDCA5F8];
  v23 = 3221225472;
  v24 = sub_29C83F4F8;
  v25 = &unk_29F328D30;
  v27 = &v28;
  v17 = v10;
  v26 = v17;
  v18 = [v16 dataTaskWithRequest:v14 completionHandler:&v22];
  [v18 resume];
  v19 = dispatch_time(0, 20000000000);
  dispatch_semaphore_wait(v17, v19);
  v20 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (void)_refreshTokenForAccount:(id)account store:(id)store completion:(id)completion
{
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  v37 = 0;
  v11 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0 error:&v37];
  v12 = v37;
  if (v11 && ([v11 oauthRefreshToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v30 = storeCopy;
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C83D000, v14, OS_LOG_TYPE_DEFAULT, "refreshing Yahoo! access token", buf, 2u);
    }

    password = [SLYahooAuthenticationPlugin webClientForAccount:accountCopy];
    v16 = MEMORY[0x29EDBBDA8];
    clientID = [password clientID];
    clientSecret = [password clientSecret];
    oauthRefreshToken = [v11 oauthRefreshToken];
    tokenURL = [password tokenURL];
    v21 = [v16 urlRequestForClientID:clientID secret:clientSecret refreshToken:oauthRefreshToken tokenURL:tokenURL];

    ephemeralSessionConfiguration = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
    v23 = [MEMORY[0x29EDBA130] sessionWithConfiguration:ephemeralSessionConfiguration];
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = sub_29C83F9B4;
    v31[3] = &unk_29F328D80;
    v32 = v11;
    v35 = completionCopy;
    v33 = accountCopy;
    storeCopy = v30;
    v34 = v30;
    v24 = [v23 dataTaskWithRequest:v21 completionHandler:v31];
    [v24 resume];
  }

  else
  {
    password = [v11 password];
    v25 = [v11 credentialItemForKey:*MEMORY[0x29EDB83B0]];
    v21 = v25;
    if (password)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      username = [accountCopy username];
      v21 = [(SLYahooAuthenticationPlugin *)self _getLegacyTokenForAccount:accountCopy password:password username:username];
    }

    if (v21)
    {
      [(SLYahooAuthenticationPlugin *)self _migrateLegacyToken:v21 account:accountCopy completion:completionCopy];
    }

    else
    {
      if ([v12 code] == 10)
      {
        v28 = completionCopy;
        v29 = 3;
      }

      else
      {
        v28 = completionCopy;
        v29 = 0;
      }

      (*(completionCopy + 2))(v28, v29, 0);
    }
  }
}

- (void)_migrateLegacyToken:(id)token account:(id)account completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x29EDBA138];
  accountCopy = account;
  tokenCopy = token;
  ephemeralSessionConfiguration = [v8 ephemeralSessionConfiguration];
  v12 = [MEMORY[0x29EDBA130] sessionWithConfiguration:ephemeralSessionConfiguration];
  v13 = [SLYahooAuthenticationPlugin webClientForAccount:accountCopy];

  v14 = MEMORY[0x29EDBBD90];
  clientID = [v13 clientID];
  clientSecret = [v13 clientSecret];
  source = [v13 source];
  v18 = [v14 urlRequestForOAuthTokenFromLoginToken:tokenCopy clientID:clientID clientSecret:clientSecret src:source];

  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = sub_29C840108;
  v21[3] = &unk_29F328DA8;
  v22 = completionCopy;
  v19 = completionCopy;
  v20 = [v12 dataTaskWithRequest:v18 completionHandler:v21];
  [v20 resume];
}

- (void)_displayBadCredentialsAlertForAccount:(id)account clientName:(id)name reason:(id)reason accountStore:(id)store resetAuthenticatedOnAlertFailure:(BOOL)failure handler:(id)handler
{
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  v12 = MEMORY[0x29EDB9F48];
  reasonCopy = reason;
  v13 = [v12 bundleForClass:objc_opt_class()];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x29EDB81C0]])
  {
    v16 = @"YAHOO_AUTH_ACCOUNT_TYPE_AOL";
  }

  else
  {
    v16 = @"YAHOO_AUTH_ACCOUNT_TYPE_YAHOO";
  }

  v29 = [v13 localizedStringForKey:v16 value:&stru_2A23CB850 table:@"Localizable"];

  v17 = MEMORY[0x29EDBA0F8];
  v18 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"YAHOO_AUTH_ALERT_TITLE_IOS" value:&stru_2A23CB850 table:@"Localizable"];
  username = [accountCopy username];
  v21 = [v17 stringWithFormat:v19, v29, username];

  v22 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"YAHOO_AUTH_ALERT_SETTINGS_IOS" value:&stru_2A23CB850 table:@"Localizable"];

  v24 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"YAHOO_AUTH_ALERT_CANCEL" value:&stru_2A23CB850 table:@"Localizable"];
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = sub_29C840650;
  v35[3] = &unk_29F328DF8;
  failureCopy = failure;
  v36 = accountCopy;
  v37 = storeCopy;
  v38 = handlerCopy;
  v26 = accountCopy;
  v27 = storeCopy;
  v28 = handlerCopy;
  [(SLYahooAuthenticationPlugin *)self showUserAlertWithTitle:v21 message:reasonCopy cancelButtonTitle:v25 otherButtonTitle:v23 withCompletionBlock:v35];
}

@end