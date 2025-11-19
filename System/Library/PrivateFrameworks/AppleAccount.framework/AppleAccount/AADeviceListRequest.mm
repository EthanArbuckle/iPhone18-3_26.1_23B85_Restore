@interface AADeviceListRequest
- (AADeviceListRequest)initWithAccount:(id)a3;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AADeviceListRequest

- (AADeviceListRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AADeviceListRequest;
  v6 = [(AADeviceListRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  v4 = [v3 getDeviceListURL];

  if (v4)
  {
    v5 = [(ACAccount *)self->_account aa_personID];

    if (v5)
    {
      v5 = v4;
    }
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Error! AADeviceListRequest could not find a base URL.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)urlRequest
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AADeviceListRequest;
  v3 = [(AARequest *)&v11 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [(AADeviceListRequest *)self urlString];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    [v4 setURL:v6];

    [v4 setHTTPMethod:@"GET"];
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 URL];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Sending GET to %@", buf, 0xCu);
    }

    [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end