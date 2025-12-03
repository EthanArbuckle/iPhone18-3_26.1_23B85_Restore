@interface AAAuthenticateRequest
- (AAAuthenticateRequest)initWithAccount:(id)account;
- (AAAuthenticateRequest)initWithURLString:(id)string username:(id)username password:(id)password;
- (AAAuthenticateRequest)initWithUsername:(id)username password:(id)password;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAAuthenticateRequest

- (AAAuthenticateRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = AAAuthenticateRequest;
  v5 = [(AAAuthenticateRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAAuthenticateRequest *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (AAAuthenticateRequest)initWithUsername:(id)username password:(id)password
{
  usernameCopy = username;
  passwordCopy = password;
  v11.receiver = self;
  v11.super_class = AAAuthenticateRequest;
  v8 = [(AAAuthenticateRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AAAuthenticateRequest *)v8 setUsername:usernameCopy];
    [(AAAuthenticateRequest *)v9 setPassword:passwordCopy];
  }

  return v9;
}

- (AAAuthenticateRequest)initWithURLString:(id)string username:(id)username password:(id)password
{
  usernameCopy = username;
  passwordCopy = password;
  v13.receiver = self;
  v13.super_class = AAAuthenticateRequest;
  v10 = [(AARequest *)&v13 initWithURLString:string];
  v11 = v10;
  if (v10)
  {
    [(AAAuthenticateRequest *)v10 setUsername:usernameCopy];
    [(AAAuthenticateRequest *)v11 setPassword:passwordCopy];
  }

  return v11;
}

- (id)urlString
{
  v9.receiver = self;
  v9.super_class = AAAuthenticateRequest;
  urlString = [(AARequest *)&v9 urlString];
  v3 = urlString;
  if (urlString)
  {
    string = urlString;
  }

  else
  {
    v5 = +[AAURLConfiguration urlConfiguration];
    authenticateURL = [v5 authenticateURL];

    if (authenticateURL)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:authenticateURL];
      string = [v7 string];
    }

    else
    {
      string = 0;
    }
  }

  return string;
}

- (id)urlRequest
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AAAuthenticateRequest;
  urlRequest = [(AARequest *)&v15 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  if (self->_account)
  {
    account = [(AAAuthenticateRequest *)self account];
    [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:account preferUsingPassword:0];
  }

  else if (self->_username && (password = self->_password) != 0)
  {
    account = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->_username, password];
    v12 = [account dataUsingEncoding:4];
    v13 = [v12 base64EncodedStringWithOptions:0];

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v13];
    [v4 setValue:v14 forHTTPHeaderField:@"Authorization"];
  }

  else
  {
    account = _AALogSystem();
    if (os_log_type_enabled(account, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, account, OS_LOG_TYPE_DEFAULT, "Error! No account or username/password for AAAuthenticateRequest!", buf, 2u);
    }
  }

  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 description];
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Authorization: *redacted*", buf, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end