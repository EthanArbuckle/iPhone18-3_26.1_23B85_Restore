@interface SLGoogleAuthenticationPlugin
+ (BOOL)supportsAccountType:(id)type;
- (id)_cancelButtonTitleForBadCredentialsAlert;
- (id)_otherButtonTitleForBadCredentialsAlert;
- (id)_titleForBadCredentialsAlertForAccount:(id)account;
- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error;
- (id)renewalIDsForAccount:(id)account accountStore:(id)store options:(id)options;
- (void)_displayBadCredentialsAlertForAccount:(id)account clientName:(id)name reason:(id)reason accountStore:(id)store resetAuthenticatedOnAlertFailure:(BOOL)failure handler:(id)handler;
- (void)_migrateLegacyToken:(id)token account:(id)account password:(id)password completion:(id)completion;
- (void)_refreshTokenForAccount:(id)account store:(id)store completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)showUserAlertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
@end

@implementation SLGoogleAuthenticationPlugin

+ (BOOL)supportsAccountType:(id)type
{
  identifier = [type identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x29EDB8238]];

  return v4;
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
  block[2] = sub_29C82E1A8;
  block[3] = &unk_29F327D48;
  v28 = v23;
  v29 = v30;
  v25 = v23;
  dispatch_async(v24, block);

  _Block_object_dispose(v30, 8);
}

- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error
{
  v18 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  clientCopy = client;
  v10 = [clientCopy hasEntitlement:*MEMORY[0x29EDB83E0]];
  v11 = _ACDLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v16 = 138412290;
      v17 = clientCopy;
      _os_log_impl(&dword_29C82D000, v11, OS_LOG_TYPE_DEFAULT, "%@ is entitled for all-account access. Returning Google credentials.", &v16, 0xCu);
    }

    v13 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0 error:error];
  }

  else
  {
    if (v12)
    {
      v16 = 138412290;
      v17 = clientCopy;
      _os_log_impl(&dword_29C82D000, v11, OS_LOG_TYPE_DEFAULT, "%@ is a non-entitled client. No Google credential for you.", &v16, 0xCu);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v28 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  completionCopy = completion;
  username = [accountCopy username];
  if (!username)
  {
    goto LABEL_10;
  }

  v10 = username;
  credential = [accountCopy credential];
  credentialType = [credential credentialType];
  if (![credentialType isEqualToString:*MEMORY[0x29EDB82F0]])
  {
    goto LABEL_9;
  }

  credential2 = [accountCopy credential];
  oauthToken = [credential2 oauthToken];
  if (!oauthToken)
  {

LABEL_9:
    goto LABEL_10;
  }

  v15 = oauthToken;
  credential3 = [accountCopy credential];
  oauthRefreshToken = [credential3 oauthRefreshToken];

  if (!oauthRefreshToken)
  {
LABEL_10:
    v19 = MEMORY[0x29EDB9FA0];
    v20 = *MEMORY[0x29EDB8300];
    v24 = *MEMORY[0x29EDB9ED8];
    v25 = @"The account could not be verified because it does not have the necessary credentials.";
    v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [v19 errorWithDomain:v20 code:3 userInfo:v21];

    completionCopy[2](completionCopy, 0, v22);
    goto LABEL_11;
  }

  v18 = _ACDLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = accountCopy;
    _os_log_impl(&dword_29C82D000, v18, OS_LOG_TYPE_DEFAULT, "%@ is an OAuth account. we're good!", buf, 0xCu);
  }

  (completionCopy)[2](completionCopy, accountCopy, 0);
LABEL_11:

  v23 = *MEMORY[0x29EDCA608];
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
    _os_log_impl(&dword_29C82D000, v14, OS_LOG_TYPE_DEFAULT, "Google plugin got renewCredentialsForAccount: %@ options: %{public}@ completion:", buf, 0x16u);
  }

  v15 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  bOOLValue = [v15 BOOLValue];

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C82E8D8;
  v22[3] = &unk_29F327DC0;
  v26 = storeCopy;
  v27 = completionCopy;
  v23 = accountCopy;
  v24 = optionsCopy;
  selfCopy = self;
  v28 = bOOLValue;
  v17 = storeCopy;
  v18 = optionsCopy;
  v19 = completionCopy;
  v20 = accountCopy;
  [(SLGoogleAuthenticationPlugin *)self _refreshTokenForAccount:v20 store:v17 completion:v22];

  v21 = *MEMORY[0x29EDCA608];
}

- (void)_refreshTokenForAccount:(id)account store:(id)store completion:(id)completion
{
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  v32 = 0;
  v11 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0 error:&v32];
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
    clientID = [v15 clientID];
    oauthRefreshToken = [v11 oauthRefreshToken];
    tokenURL = [v15 tokenURL];
    password = [v16 urlRequestForClientID:clientID secret:0 refreshToken:oauthRefreshToken tokenURL:tokenURL];

    ephemeralSessionConfiguration = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
    v22 = [MEMORY[0x29EDBA130] sessionWithConfiguration:ephemeralSessionConfiguration];
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = sub_29C82EFAC;
    v27[3] = &unk_29F327DE8;
    v28 = v11;
    v29 = accountCopy;
    v30 = completionCopy;
    v23 = [v22 dataTaskWithRequest:password completionHandler:v27];
    [v23 resume];
  }

  else
  {
    v15 = [storeCopy clientTokenForAccount:accountCopy];
    password = [v11 password];
    if (password)
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
        v25 = completionCopy;
        v26 = 3;
      }

      else
      {
        v25 = completionCopy;
        v26 = 0;
      }

      (*(completionCopy + 2))(v25, v26, 0);
    }

    else
    {
      [(SLGoogleAuthenticationPlugin *)self _migrateLegacyToken:v15 account:accountCopy password:password completion:completionCopy];
    }
  }
}

- (void)_migrateLegacyToken:(id)token account:(id)account password:(id)password completion:(id)completion
{
  completionCopy = completion;
  v10 = MEMORY[0x29EDBBD58];
  passwordCopy = password;
  tokenCopy = token;
  username = [account username];
  v14 = [v10 urlRequestForAuthTokenFromLegacyClientToken:tokenCopy username:username password:passwordCopy];

  ephemeralSessionConfiguration = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v16 = [MEMORY[0x29EDBA130] sessionWithConfiguration:ephemeralSessionConfiguration];
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 3221225472;
  v22 = sub_29C82F508;
  v23 = &unk_29F327E60;
  v24 = v16;
  v25 = completionCopy;
  v17 = v16;
  v18 = completionCopy;
  v19 = [v17 dataTaskWithRequest:v14 completionHandler:&v20];
  [v19 resume];
}

- (id)_titleForBadCredentialsAlertForAccount:(id)account
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = MEMORY[0x29EDB9F48];
  accountCopy = account;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GOOGLE_AUTH_ALERT_TITLE_IOS" value:&stru_2A23CA3E0 table:@"Localizable"];
  username = [accountCopy username];

  v9 = [v3 stringWithFormat:v7, username];

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

- (void)_displayBadCredentialsAlertForAccount:(id)account clientName:(id)name reason:(id)reason accountStore:(id)store resetAuthenticatedOnAlertFailure:(BOOL)failure handler:(id)handler
{
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  reasonCopy = reason;
  v17 = [(SLGoogleAuthenticationPlugin *)self _titleForBadCredentialsAlertForAccount:accountCopy];
  _otherButtonTitleForBadCredentialsAlert = [(SLGoogleAuthenticationPlugin *)self _otherButtonTitleForBadCredentialsAlert];
  _cancelButtonTitleForBadCredentialsAlert = [(SLGoogleAuthenticationPlugin *)self _cancelButtonTitleForBadCredentialsAlert];
  v20 = [(SLGoogleAuthenticationPlugin *)self _messageForBadCredentialsAlertWithReason:reasonCopy account:accountCopy];

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = sub_29C83006C;
  v24[3] = &unk_29F327EB0;
  failureCopy = failure;
  v25 = accountCopy;
  v26 = storeCopy;
  v27 = handlerCopy;
  v21 = handlerCopy;
  v22 = storeCopy;
  v23 = accountCopy;
  [(SLGoogleAuthenticationPlugin *)self showUserAlertWithTitle:v17 message:v20 cancelButtonTitle:_cancelButtonTitleForBadCredentialsAlert otherButtonTitle:_otherButtonTitleForBadCredentialsAlert withCompletionBlock:v24];
}

@end