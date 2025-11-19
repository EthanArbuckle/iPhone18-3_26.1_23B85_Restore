@interface AAAuthenticateRequest
- (AAAuthenticateRequest)initWithAccount:(id)a3;
- (AAAuthenticateRequest)initWithURLString:(id)a3 username:(id)a4 password:(id)a5;
- (AAAuthenticateRequest)initWithUsername:(id)a3 password:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAAuthenticateRequest

- (AAAuthenticateRequest)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AAAuthenticateRequest;
  v5 = [(AAAuthenticateRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAAuthenticateRequest *)v5 setAccount:v4];
  }

  return v6;
}

- (AAAuthenticateRequest)initWithUsername:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AAAuthenticateRequest;
  v8 = [(AAAuthenticateRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AAAuthenticateRequest *)v8 setUsername:v6];
    [(AAAuthenticateRequest *)v9 setPassword:v7];
  }

  return v9;
}

- (AAAuthenticateRequest)initWithURLString:(id)a3 username:(id)a4 password:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AAAuthenticateRequest;
  v10 = [(AARequest *)&v13 initWithURLString:a3];
  v11 = v10;
  if (v10)
  {
    [(AAAuthenticateRequest *)v10 setUsername:v8];
    [(AAAuthenticateRequest *)v11 setPassword:v9];
  }

  return v11;
}

- (id)urlString
{
  v9.receiver = self;
  v9.super_class = AAAuthenticateRequest;
  v2 = [(AARequest *)&v9 urlString];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = +[AAURLConfiguration urlConfiguration];
    v6 = [v5 authenticateURL];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v6];
      v4 = [v7 string];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)urlRequest
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AAAuthenticateRequest;
  v3 = [(AARequest *)&v15 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  if (self->_account)
  {
    v5 = [(AAAuthenticateRequest *)self account];
    [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:v5 preferUsingPassword:0];
  }

  else if (self->_username && (password = self->_password) != 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->_username, password];
    v12 = [v5 dataUsingEncoding:4];
    v13 = [v12 base64EncodedStringWithOptions:0];

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v13];
    [v4 setValue:v14 forHTTPHeaderField:@"Authorization"];
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Error! No account or username/password for AAAuthenticateRequest!", buf, 2u);
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