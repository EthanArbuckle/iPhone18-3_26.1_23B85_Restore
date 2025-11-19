@interface SLGoogleAuthenticationPlugin
+ (BOOL)supportsAccountType:(id)a3;
- (id)_cancelButtonTitleForBadCredentialsAlert;
- (id)_otherButtonTitleForBadCredentialsAlert;
- (id)_titleForBadCredentialsAlertForAccount:(id)a3;
- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6;
- (id)renewalIDsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5;
- (void)_displayBadCredentialsAlertForAccount:(id)a3 clientName:(id)a4 reason:(id)a5 accountStore:(id)a6 resetAuthenticatedOnAlertFailure:(BOOL)a7 handler:(id)a8;
- (void)_migrateLegacyToken:(id)a3 account:(id)a4 password:(id)a5 completion:(id)a6;
- (void)_refreshTokenForAccount:(id)a3 store:(id)a4 completion:(id)a5;
- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
- (void)showUserAlertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 withCompletionBlock:(id)a7;
- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation SLGoogleAuthenticationPlugin

+ (BOOL)supportsAccountType:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDB8238]];

  return v4;
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
  block[2] = sub_29C82E1A8;
  block[3] = &unk_29F327D48;
  v28 = v23;
  v29 = v30;
  v25 = v23;
  dispatch_async(v24, block);

  _Block_object_dispose(v30, 8);
}

- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6
{
  v18 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = [v9 hasEntitlement:*MEMORY[0x29EDB83E0]];
  v11 = _ACDLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_29C82D000, v11, OS_LOG_TYPE_DEFAULT, "%@ is entitled for all-account access. Returning Google credentials.", &v16, 0xCu);
    }

    v13 = [MEMORY[0x29EDBDFF8] credentialForAccount:v8 clientID:0 error:a6];
  }

  else
  {
    if (v12)
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_29C82D000, v11, OS_LOG_TYPE_DEFAULT, "%@ is a non-entitled client. No Google credential for you.", &v16, 0xCu);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a6;
  v9 = [v7 username];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v7 credential];
  v12 = [v11 credentialType];
  if (![v12 isEqualToString:*MEMORY[0x29EDB82F0]])
  {
    goto LABEL_9;
  }

  v13 = [v7 credential];
  v14 = [v13 oauthToken];
  if (!v14)
  {

LABEL_9:
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v7 credential];
  v17 = [v16 oauthRefreshToken];

  if (!v17)
  {
LABEL_10:
    v19 = MEMORY[0x29EDB9FA0];
    v20 = *MEMORY[0x29EDB8300];
    v24 = *MEMORY[0x29EDB9ED8];
    v25 = @"The account could not be verified because it does not have the necessary credentials.";
    v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [v19 errorWithDomain:v20 code:3 userInfo:v21];

    v8[2](v8, 0, v22);
    goto LABEL_11;
  }

  v18 = _ACDLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_29C82D000, v18, OS_LOG_TYPE_DEFAULT, "%@ is an OAuth account. we're good!", buf, 0xCu);
  }

  (v8)[2](v8, v7, 0);
LABEL_11:

  v23 = *MEMORY[0x29EDCA608];
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
    _os_log_impl(&dword_29C82D000, v14, OS_LOG_TYPE_DEFAULT, "Google plugin got renewCredentialsForAccount: %@ options: %{public}@ completion:", buf, 0x16u);
  }

  v15 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  v16 = [v15 BOOLValue];

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C82E8D8;
  v22[3] = &unk_29F327DC0;
  v26 = v11;
  v27 = v13;
  v23 = v10;
  v24 = v12;
  v25 = self;
  v28 = v16;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v10;
  [(SLGoogleAuthenticationPlugin *)self _refreshTokenForAccount:v20 store:v17 completion:v22];

  v21 = *MEMORY[0x29EDCA608];
}

- (void)_refreshTokenForAccount:(id)a3 store:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v11 = [MEMORY[0x29EDBDFF8] credentialForAccount:v8 clientID:0 error:&v32];
  v12 = v32;
  if (v11 && ([v11 oauthRefreshToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C82D000, v14, OS_LOG_TYPE_DEFAULT, "refreshing Google access token", buf, 2u);
    }

    v15 = objc_alloc_init(MEMORY[0x29EDBBD78]);
    v16 = MEMORY[0x29EDBBD68];
    v17 = [v15 clientID];
    v18 = [v11 oauthRefreshToken];
    v19 = [v15 tokenURL];
    v20 = [v16 urlRequestForClientID:v17 secret:0 refreshToken:v18 tokenURL:v19];

    v21 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
    v22 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v21];
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = sub_29C82EFAC;
    v27[3] = &unk_29F327DE8;
    v28 = v11;
    v29 = v8;
    v30 = v10;
    v23 = [v22 dataTaskWithRequest:v20 completionHandler:v27];
    [v23 resume];
  }

  else
  {
    v15 = [v9 clientTokenForAccount:v8];
    v20 = [v11 password];
    if (v20)
    {
      v24 = v15 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if ([v12 code] == 10)
      {
        v25 = v10;
        v26 = 3;
      }

      else
      {
        v25 = v10;
        v26 = 0;
      }

      (*(v10 + 2))(v25, v26, 0);
    }

    else
    {
      [(SLGoogleAuthenticationPlugin *)self _migrateLegacyToken:v15 account:v8 password:v20 completion:v10];
    }
  }
}

- (void)_migrateLegacyToken:(id)a3 account:(id)a4 password:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x29EDBBD58];
  v11 = a5;
  v12 = a3;
  v13 = [a4 username];
  v14 = [v10 urlRequestForAuthTokenFromLegacyClientToken:v12 username:v13 password:v11];

  v15 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v16 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v15];
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 3221225472;
  v22 = sub_29C82F508;
  v23 = &unk_29F327E60;
  v24 = v16;
  v25 = v9;
  v17 = v16;
  v18 = v9;
  v19 = [v17 dataTaskWithRequest:v14 completionHandler:&v20];
  [v19 resume];
}

- (id)_titleForBadCredentialsAlertForAccount:(id)a3
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = MEMORY[0x29EDB9F48];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GOOGLE_AUTH_ALERT_TITLE_IOS" value:&stru_2A23CA3E0 table:@"Localizable"];
  v8 = [v5 username];

  v9 = [v3 stringWithFormat:v7, v8];

  return v9;
}

- (id)_otherButtonTitleForBadCredentialsAlert
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GOOGLE_AUTH_ALERT_SETTINGS_IOS" value:&stru_2A23CA3E0 table:@"Localizable"];

  return v3;
}

- (id)_cancelButtonTitleForBadCredentialsAlert
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GOOGLE_AUTH_ALERT_CANCEL" value:&stru_2A23CA3E0 table:@"Localizable"];

  return v3;
}

- (void)_displayBadCredentialsAlertForAccount:(id)a3 clientName:(id)a4 reason:(id)a5 accountStore:(id)a6 resetAuthenticatedOnAlertFailure:(BOOL)a7 handler:(id)a8
{
  v13 = a3;
  v14 = a6;
  v15 = a8;
  v16 = a5;
  v17 = [(SLGoogleAuthenticationPlugin *)self _titleForBadCredentialsAlertForAccount:v13];
  v18 = [(SLGoogleAuthenticationPlugin *)self _otherButtonTitleForBadCredentialsAlert];
  v19 = [(SLGoogleAuthenticationPlugin *)self _cancelButtonTitleForBadCredentialsAlert];
  v20 = [(SLGoogleAuthenticationPlugin *)self _messageForBadCredentialsAlertWithReason:v16 account:v13];

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = sub_29C83006C;
  v24[3] = &unk_29F327EB0;
  v28 = a7;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  [(SLGoogleAuthenticationPlugin *)self showUserAlertWithTitle:v17 message:v20 cancelButtonTitle:v19 otherButtonTitle:v18 withCompletionBlock:v24];
}

@end