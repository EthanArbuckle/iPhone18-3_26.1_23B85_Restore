@interface AADeviceListRequest
- (AADeviceListRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AADeviceListRequest

- (AADeviceListRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AADeviceListRequest;
  v6 = [(AADeviceListRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  getDeviceListURL = [v3 getDeviceListURL];

  if (getDeviceListURL)
  {
    aa_personID = [(ACAccount *)self->_account aa_personID];

    if (aa_personID)
    {
      aa_personID = getDeviceListURL;
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

    aa_personID = 0;
  }

  return aa_personID;
}

- (id)urlRequest
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AADeviceListRequest;
  urlRequest = [(AARequest *)&v11 urlRequest];
  v4 = [urlRequest mutableCopy];

  urlString = [(AADeviceListRequest *)self urlString];
  if (urlString)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:urlString];
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