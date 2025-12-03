@interface _AABasicGetRequest
- (_AABasicGetRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (void)urlRequest;
@end

@implementation _AABasicGetRequest

- (_AABasicGetRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = _AABasicGetRequest;
  v6 = [(_AABasicGetRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlRequest
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (!self->_account)
  {
    [(_AABasicGetRequest *)a2 urlRequest];
  }

  v12.receiver = self;
  v12.super_class = _AABasicGetRequest;
  urlRequest = [(AARequest *)&v12 urlRequest];
  v7 = [urlRequest mutableCopy];

  [v7 setHTTPMethod:@"GET"];
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 URL];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Sending GET to %@", buf, 0xCu);
  }

  [v7 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)urlRequest
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"AARequest.m" lineNumber:1537 description:{@"%@ cannot run without an ACAccount.", a3}];
}

@end