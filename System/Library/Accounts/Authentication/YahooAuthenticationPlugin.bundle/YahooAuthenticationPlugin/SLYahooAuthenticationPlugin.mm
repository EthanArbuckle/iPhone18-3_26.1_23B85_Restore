@interface SLYahooAuthenticationPlugin
+ (BOOL)supportsAccountType:(id)a3;
+ (id)webClientForAccount:(id)a3;
- (BOOL)isPushSupportedForAccount:(id)a3;
- (id)_getLegacyTokenForAccount:(id)a3 password:(id)a4 username:(id)a5;
- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6;
- (id)renewalIDsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5;
- (void)_displayBadCredentialsAlertForAccount:(id)a3 clientName:(id)a4 reason:(id)a5 accountStore:(id)a6 resetAuthenticatedOnAlertFailure:(BOOL)a7 handler:(id)a8;
- (void)_migrateLegacyToken:(id)a3 account:(id)a4 completion:(id)a5;
- (void)_refreshTokenForAccount:(id)a3 store:(id)a4 completion:(id)a5;
- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
- (void)showUserAlertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 withCompletionBlock:(id)a7;
- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation SLYahooAuthenticationPlugin

+ (id)webClientForAccount:(id)a3
{
  v3 = [a3 accountType];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x29EDB81C0]];
  v6 = 0x29EDBBD48;
  if (!v5)
  {
    v6 = 0x29EDBBDA0;
  }

  v7 = objc_alloc_init(*v6);

  return v7;
}

+ (BOOL)supportsAccountType:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*MEMORY[0x29EDB82C0]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 identifier];
    v5 = [v6 isEqualToString:*MEMORY[0x29EDB81C0]];
  }

  return v5;
}

- (BOOL)isPushSupportedForAccount:(id)a3
{
  v3 = a3;
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
  v6 = [v4 accountWithPersistentAccount:v3 error:&v12];
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
    v10 = [v6 canReceiveNewMailNotifications];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)showUserAlertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 withCompletionBlock:(id)a7
{
  v26 = a4;
  v11 = a7;
  v12 = MEMORY[0x29EDB8E00];
  v13 = *MEMORY[0x29EDB9040];
  v14 = *MEMORY[0x29EDB9060];
  v15 = *MEMORY[0x29EDB9058];
  v16 = MEMORY[0x29EDB9F48];
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [v16 bundleForClass:objc_opt_class()];
  v21 = [v20 resourceURL];
  v22 = [v12 dictionaryWithObjectsAndKeys:{v19, v13, v18, v14, v17, v15, v21, *MEMORY[0x29EDB9070], 0}];

  if (v26)
  {
    [v22 setObject:v26 forKey:*MEMORY[0x29EDB9048]];
  }

  v23 = [v11 copy];

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

- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 hasEntitlement:*MEMORY[0x29EDB83E0]];
  v11 = _ACDLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      sub_29C840AD8(v9, v11);
    }

    v13 = [MEMORY[0x29EDBDFF8] credentialForAccount:v8 clientID:0 error:a6];
  }

  else
  {
    if (v12)
    {
      sub_29C840A60(v9, v11);
    }

    v13 = 0;
  }

  return v13;
}

- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
{
  v39[1] = *MEMORY[0x29EDCA608];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 username];
  if (([v12 hasSuffix:@"yahoo.co.jp"] & 1) == 0)
  {

LABEL_5:
    v21 = [v9 username];
    if (v21)
    {
      v22 = v21;
      v23 = [v9 credential];
      v24 = [v23 oauthToken];
      if (v24)
      {
        v25 = v24;
        v26 = [v9 credential];
        v27 = [v26 oauthRefreshToken];

        if (v27)
        {
          v11[2](v11, v9, 0);
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
    v32 = v11;
    v31 = v9;
    [(SLYahooAuthenticationPlugin *)self renewCredentialsForAccount:v31 accountStore:v10 options:v28 completion:v30];

    goto LABEL_11;
  }

  v13 = [v9 credential];
  v14 = [v13 password];

  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = objc_alloc(MEMORY[0x29EDB83B8]);
  v16 = [v10 accountTypeWithIdentifier:*MEMORY[0x29EDB8250]];
  v17 = [v15 initWithAccountType:v16];

  v18 = [v9 username];
  [v17 setUsername:v18];

  v19 = [v9 credential];
  [v17 setCredential:v19];

  v38 = *MEMORY[0x29EDB8460];
  v39[0] = MEMORY[0x29EDB8EA8];
  v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = sub_29C83E978;
  v33[3] = &unk_29F328C68;
  v35 = v11;
  v34 = v9;
  [v10 verifyCredentialsForAccount:v17 options:v20 completion:v33];

LABEL_11:
  v29 = *MEMORY[0x29EDCA608];
}

- (id)renewalIDsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5
{
  v17[2] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = [a5 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = MEMORY[0x29EDBA0F8];
    v10 = [v6 identifier];
    v11 = [v9 stringWithFormat:@"%@.AvoidUI", v10];
    v17[0] = v11;
    v12 = [v6 identifier];
    v17[1] = v12;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:2];
  }

  else
  {
    v10 = [v6 identifier];
    v16 = v10;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v16 count:1];
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _ACDLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v10;
    v31 = 2114;
    v32 = v12;
    _os_log_impl(&dword_29C83D000, v14, OS_LOG_TYPE_DEFAULT, "Yahoo! plugin got renewCredentialsForAccount: %@ options: %{public}@ completion:", buf, 0x16u);
  }

  v15 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  v16 = [v15 BOOLValue];

  v17 = [v10 username];
  if (([v17 hasSuffix:@"yahoo.co.jp"] & 1) == 0)
  {

    goto LABEL_9;
  }

  v18 = [v10 credential];
  v19 = [v18 password];

  if (!v19)
  {
LABEL_9:
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = sub_29C83EE98;
    v22[3] = &unk_29F328D08;
    v23 = v10;
    v27 = v13;
    v24 = v12;
    v25 = self;
    v26 = v11;
    v28 = v16;
    [(SLYahooAuthenticationPlugin *)self _refreshTokenForAccount:v23 store:v26 completion:v22];

    goto LABEL_10;
  }

  v20 = _ACLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_29C840B50(v20);
  }

  (*(v13 + 2))(v13, 0, 0);
LABEL_10:

  v21 = *MEMORY[0x29EDCA608];
}

- (id)_getLegacyTokenForAccount:(id)a3 password:(id)a4 username:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_29C83F4E0;
  v32 = sub_29C83F4F0;
  v33 = 0;
  v11 = [SLYahooAuthenticationPlugin webClientForAccount:v7];
  v12 = MEMORY[0x29EDBBD80];
  v13 = [v11 source];
  v14 = [v12 urlRequestForLoginTokenFromUsername:v9 password:v8 src:v13];

  v15 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v16 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v15];
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

- (void)_refreshTokenForAccount:(id)a3 store:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37 = 0;
  v11 = [MEMORY[0x29EDBDFF8] credentialForAccount:v8 clientID:0 error:&v37];
  v12 = v37;
  if (v11 && ([v11 oauthRefreshToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v30 = v9;
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C83D000, v14, OS_LOG_TYPE_DEFAULT, "refreshing Yahoo! access token", buf, 2u);
    }

    v15 = [SLYahooAuthenticationPlugin webClientForAccount:v8];
    v16 = MEMORY[0x29EDBBDA8];
    v17 = [v15 clientID];
    v18 = [v15 clientSecret];
    v19 = [v11 oauthRefreshToken];
    v20 = [v15 tokenURL];
    v21 = [v16 urlRequestForClientID:v17 secret:v18 refreshToken:v19 tokenURL:v20];

    v22 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
    v23 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v22];
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = sub_29C83F9B4;
    v31[3] = &unk_29F328D80;
    v32 = v11;
    v35 = v10;
    v33 = v8;
    v9 = v30;
    v34 = v30;
    v24 = [v23 dataTaskWithRequest:v21 completionHandler:v31];
    [v24 resume];
  }

  else
  {
    v15 = [v11 password];
    v25 = [v11 credentialItemForKey:*MEMORY[0x29EDB83B0]];
    v21 = v25;
    if (v15)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v27 = [v8 username];
      v21 = [(SLYahooAuthenticationPlugin *)self _getLegacyTokenForAccount:v8 password:v15 username:v27];
    }

    if (v21)
    {
      [(SLYahooAuthenticationPlugin *)self _migrateLegacyToken:v21 account:v8 completion:v10];
    }

    else
    {
      if ([v12 code] == 10)
      {
        v28 = v10;
        v29 = 3;
      }

      else
      {
        v28 = v10;
        v29 = 0;
      }

      (*(v10 + 2))(v28, v29, 0);
    }
  }
}

- (void)_migrateLegacyToken:(id)a3 account:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x29EDBA138];
  v9 = a4;
  v10 = a3;
  v11 = [v8 ephemeralSessionConfiguration];
  v12 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v11];
  v13 = [SLYahooAuthenticationPlugin webClientForAccount:v9];

  v14 = MEMORY[0x29EDBBD90];
  v15 = [v13 clientID];
  v16 = [v13 clientSecret];
  v17 = [v13 source];
  v18 = [v14 urlRequestForOAuthTokenFromLoginToken:v10 clientID:v15 clientSecret:v16 src:v17];

  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = sub_29C840108;
  v21[3] = &unk_29F328DA8;
  v22 = v7;
  v19 = v7;
  v20 = [v12 dataTaskWithRequest:v18 completionHandler:v21];
  [v20 resume];
}

- (void)_displayBadCredentialsAlertForAccount:(id)a3 clientName:(id)a4 reason:(id)a5 accountStore:(id)a6 resetAuthenticatedOnAlertFailure:(BOOL)a7 handler:(id)a8
{
  v11 = a3;
  v31 = a6;
  v30 = a8;
  v12 = MEMORY[0x29EDB9F48];
  v32 = a5;
  v13 = [v12 bundleForClass:objc_opt_class()];
  v14 = [v11 accountType];
  v15 = [v14 identifier];
  if ([v15 isEqualToString:*MEMORY[0x29EDB81C0]])
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
  v20 = [v11 username];
  v21 = [v17 stringWithFormat:v19, v29, v20];

  v22 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"YAHOO_AUTH_ALERT_SETTINGS_IOS" value:&stru_2A23CB850 table:@"Localizable"];

  v24 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"YAHOO_AUTH_ALERT_CANCEL" value:&stru_2A23CB850 table:@"Localizable"];
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = sub_29C840650;
  v35[3] = &unk_29F328DF8;
  v39 = a7;
  v36 = v11;
  v37 = v31;
  v38 = v30;
  v26 = v11;
  v27 = v31;
  v28 = v30;
  [(SLYahooAuthenticationPlugin *)self showUserAlertWithTitle:v21 message:v32 cancelButtonTitle:v25 otherButtonTitle:v23 withCompletionBlock:v35];
}

@end