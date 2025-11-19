@interface AAEmailVettingRequest
- (AAEmailVettingRequest)initWithAccount:(id)a3;
- (AAEmailVettingRequest)initWithURLString:(id)a3 account:(id)a4;
- (id)urlRequest;
@end

@implementation AAEmailVettingRequest

- (AAEmailVettingRequest)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AAEmailVettingRequest;
  v5 = [(AAEmailVettingRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAEmailVettingRequest *)v5 setAccount:v4];
  }

  return v6;
}

- (AAEmailVettingRequest)initWithURLString:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 username];
  v9 = [v7 stringByReplacingOccurrencesOfString:@"$APPLE_ID$" withString:v8];

  v13.receiver = self;
  v13.super_class = AAEmailVettingRequest;
  v10 = [(AARequest *)&v13 initWithURLString:v9];
  v11 = v10;
  if (v10)
  {
    [(AAEmailVettingRequest *)v10 setAccount:v6];
  }

  return v11;
}

- (id)urlRequest
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AAEmailVettingRequest;
  v3 = [(AARequest *)&v14 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(AAEmailVettingRequest *)self account];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:v5 preferUsingPassword:0];

  v6 = [(AARequest *)self bodyDictionary];
  [v4 aa_setBodyWithParameters:v6];
  v7 = [v4 HTTPBody];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v7 length:"bytes") encoding:{objc_msgSend(v7, "length"), 4}];
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