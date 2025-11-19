@interface AARegisterRequest
- (AARegisterRequest)initWithURLString:(id)a3 username:(id)a4 password:(id)a5;
- (id)urlRequest;
- (id)urlString;
- (void)addCookieHeaders:(id)a3;
@end

@implementation AARegisterRequest

- (AARegisterRequest)initWithURLString:(id)a3 username:(id)a4 password:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AARegisterRequest;
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
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 signInURL];

  return v3;
}

- (void)addCookieHeaders:(id)a3
{
  v4 = a3;
  additionalCookieHeaders = self->_additionalCookieHeaders;
  v8 = v4;
  if (!additionalCookieHeaders)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_additionalCookieHeaders;
    self->_additionalCookieHeaders = v6;

    v4 = v8;
    additionalCookieHeaders = self->_additionalCookieHeaders;
  }

  [(NSMutableDictionary *)additionalCookieHeaders addEntriesFromDictionary:v4];
}

- (id)urlRequest
{
  v34 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AARegisterRequest;
  v3 = [(AAAuthenticateRequest *)&v30 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [(AARequest *)self bodyDictionary];
  v6 = [v4 aa_setXMLBodyWithParameters:v5];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v6 length:"bytes") encoding:{objc_msgSend(v6, "length"), 4}];
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_additionalCookieHeaders copy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v26}];
        [v4 setValue:v16 forHTTPHeaderField:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v17 = +[AADeviceInfo udid];
  [v4 setValue:v17 forHTTPHeaderField:@"Device-UDID"];

  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v4 description];
    *buf = 138412290;
    v33 = v19;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v20 = _AALogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = [v4 allHTTPHeaderFields];
    v23 = [v21 redactedHeadersFromHTTPHeaders:v22];
    *buf = 138412290;
    v33 = v23;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "HTTP Headers: %@", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v4;
}

@end