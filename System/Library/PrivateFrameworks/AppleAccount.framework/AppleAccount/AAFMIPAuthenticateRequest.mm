@interface AAFMIPAuthenticateRequest
- (AAFMIPAuthenticateRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAFMIPAuthenticateRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  fmipAuthenticate = [v2 fmipAuthenticate];

  return fmipAuthenticate;
}

- (AAFMIPAuthenticateRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAFMIPAuthenticateRequest;
  v6 = [(AAFMIPAuthenticateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlRequest
{
  v19 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AAFMIPAuthenticateRequest;
  urlRequest = [(AARequest *)&v16 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  account = self->_account;
  if (!account)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "ERROR: FMIP authentiate does not have an account set, bailing";
      goto LABEL_11;
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  aa_password = [(ACAccount *)account aa_password];
  if (!aa_password || (v7 = aa_password, [(ACAccount *)self->_account username], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "ERROR: Account does not contain a password. Password is required for FMIP authenticate";
LABEL_11:
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    username = [(ACAccount *)self->_account username];
    *buf = 138412290;
    v18 = username;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "fmipAuthenticate with password auth using username: %@", buf, 0xCu);
  }

  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:1];
  [v4 addValue:@"text/plist" forHTTPHeaderField:@"Content-Type"];
  v11 = v4;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

@end