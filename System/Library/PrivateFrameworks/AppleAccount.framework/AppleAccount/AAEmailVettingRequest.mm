@interface AAEmailVettingRequest
- (AAEmailVettingRequest)initWithAccount:(id)account;
- (AAEmailVettingRequest)initWithURLString:(id)string account:(id)account;
- (id)urlRequest;
@end

@implementation AAEmailVettingRequest

- (AAEmailVettingRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = AAEmailVettingRequest;
  v5 = [(AAEmailVettingRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAEmailVettingRequest *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (AAEmailVettingRequest)initWithURLString:(id)string account:(id)account
{
  accountCopy = account;
  stringCopy = string;
  username = [accountCopy username];
  v9 = [stringCopy stringByReplacingOccurrencesOfString:@"$APPLE_ID$" withString:username];

  v13.receiver = self;
  v13.super_class = AAEmailVettingRequest;
  v10 = [(AARequest *)&v13 initWithURLString:v9];
  v11 = v10;
  if (v10)
  {
    [(AAEmailVettingRequest *)v10 setAccount:accountCopy];
  }

  return v11;
}

- (id)urlRequest
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AAEmailVettingRequest;
  urlRequest = [(AARequest *)&v14 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  account = [(AAEmailVettingRequest *)self account];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:account preferUsingPassword:0];

  bodyDictionary = [(AARequest *)self bodyDictionary];
  [v4 aa_setBodyWithParameters:bodyDictionary];
  hTTPBody = [v4 HTTPBody];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(hTTPBody length:"bytes") encoding:{objc_msgSend(hTTPBody, "length"), 4}];
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 valueForHTTPHeaderField:@"Authorization"];
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

@end