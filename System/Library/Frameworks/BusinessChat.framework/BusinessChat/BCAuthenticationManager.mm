@interface BCAuthenticationManager
- (BCAuthenticationManager)initWithAuthenticationRequest:(id)request;
- (uint64_t)processQueryItems:(void *)items completion:;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)exchangeCode:(void *)code completion:;
- (void)fetchTokenWithRequest:(id)request completion:(id)completion;
@end

@implementation BCAuthenticationManager

- (BCAuthenticationManager)initWithAuthenticationRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = BCAuthenticationManager;
  v6 = [(BCAuthenticationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationRequest, request);
  }

  return v7;
}

- (void)fetchTokenWithRequest:(id)request completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [requestCopy URL];
    baseURL = [v9 baseURL];
    *buf = 138412290;
    v64 = baseURL;
    _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: fetchToken for URL: %@", buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277CCACE0]);
  v12 = [requestCopy URL];
  v13 = [v11 initWithURL:v12 resolvingAgainstBaseURL:0];

  queryItems = [v13 queryItems];
  v15 = [queryItems count];

  if (!v15)
  {
    goto LABEL_44;
  }

  queryItems2 = [v13 queryItems];
  v17 = [(BCAuthenticationManager *)self processQueryItems:queryItems2 completion:completionCopy];

  v18 = LogCategory_Daemon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    queryItems3 = [v13 queryItems];
    *buf = 138412546;
    v64 = queryItems3;
    v65 = 1024;
    v66 = v17;
    _os_log_impl(&dword_236EA0000, v18, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: queryitems %@ processed: %d", buf, 0x12u);
  }

  if ((v17 & 1) == 0)
  {
LABEL_44:
    v55 = v13;
    v20 = [requestCopy URL];
    fragments = [(NSURL *)v20 fragments];
    v22 = completionCopy;
    selfCopy = self;
    if (self)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      allKeys = [fragments allKeys];
      v24 = [allKeys countByEnumeratingWithState:&v57 objects:buf count:16];
      if (v24)
      {
        v25 = v24;
        v53 = v22;
        v54 = requestCopy;
        v26 = *v58;
LABEL_10:
        v27 = 0;
        while (1)
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(allKeys);
          }

          v28 = *(*(&v57 + 1) + 8 * v27);
          v29 = [fragments objectForKeyedSubscript:v28];
          if (v29)
          {
            if ([v28 isEqualToString:@"code"])
            {
              v22 = v53;
              [(BCAuthenticationManager *)selfCopy exchangeCode:v29 completion:v53];
LABEL_22:

              v30 = 1;
              requestCopy = v54;
              goto LABEL_23;
            }

            if ([v28 isEqualToString:@"access_token"])
            {
              v22 = v53;
              (v53)[2](v53, v29, 0);
              goto LABEL_22;
            }
          }

          if (v25 == ++v27)
          {
            v25 = [allKeys countByEnumeratingWithState:&v57 objects:buf count:16];
            if (v25)
            {
              goto LABEL_10;
            }

            v30 = 0;
            requestCopy = v54;
            v13 = v55;
            v22 = v53;
            goto LABEL_24;
          }
        }
      }

      v30 = 0;
LABEL_23:
      v13 = v55;
LABEL_24:
    }

    else
    {
      v30 = 0;
    }

    v31 = LogCategory_Daemon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v64) = v30;
      _os_log_impl(&dword_236EA0000, v31, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: fragements processed: %d", buf, 8u);
    }

    if ((v30 & 1) == 0)
    {
      v32 = [requestCopy valueForHTTPHeaderField:@"Content-Type"];
      v33 = [v32 isEqualToString:@"application/x-www-form-urlencoded"];

      if (v33)
      {
        hTTPBody = [requestCopy HTTPBody];

        if (hTTPBody)
        {
          v35 = objc_alloc(MEMORY[0x277CCACA8]);
          hTTPBody2 = [requestCopy HTTPBody];
          v37 = [v35 initWithData:hTTPBody2 encoding:4];

          v38 = objc_alloc_init(MEMORY[0x277CCACE0]);
          [v38 setQuery:v37];
          queryItems4 = [v38 queryItems];
          v40 = v22;
          v41 = queryItems4;
          v42 = v40;
          v43 = [(BCAuthenticationManager *)selfCopy processQueryItems:queryItems4 completion:v40];

          v44 = LogCategory_Daemon();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v64 = v37;
            v65 = 1024;
            v66 = v43;
            _os_log_impl(&dword_236EA0000, v44, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: body %@ processed: %d", buf, 0x12u);
          }

          v22 = v42;
          if (v43)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v45 = LogCategory_Daemon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_236EA0000, v45, OS_LOG_TYPE_DEFAULT, "Request has Content-Type application/x-www-form-urlencoded but HTTPBody is empty.", buf, 2u);
          }
        }
      }

      v46 = objc_alloc(MEMORY[0x277CCA9B8]);
      v61 = *MEMORY[0x277CCA450];
      v62 = @"Missing access token from response";
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v48 = [v46 initWithDomain:@"com.apple.icloud.messages.business.authentication.error" code:0 userInfo:v47];

      v49 = LogCategory_Daemon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [v48 localizedDescription];
        v52 = v51 = v22;
        *buf = 138412290;
        v64 = v52;
        _os_log_error_impl(&dword_236EA0000, v49, OS_LOG_TYPE_ERROR, "BCAuthenticationManager: not enough information to process: %@", buf, 0xCu);

        v22 = v51;
      }

      (*(v22 + 2))(v22, 0, v48);
    }
  }

LABEL_40:

  v50 = *MEMORY[0x277D85DE8];
}

- (uint64_t)processQueryItems:(void *)items completion:
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  itemsCopy = items;
  if (!self)
  {
    goto LABEL_20;
  }

  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236EA0000, v7, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: process query items", buf, 2u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v9)
  {
    self = 0;
    goto LABEL_19;
  }

  v10 = v9;
  selfCopy = self;
  v22 = itemsCopy;
  v23 = v5;
  v11 = *v25;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      value = [v13 value];
      if (value)
      {
        name = [v13 name];
        v16 = [name isEqualToString:@"code"];

        if (v16)
        {
          itemsCopy = v22;
          [(BCAuthenticationManager *)selfCopy exchangeCode:value completion:v22];
        }

        else
        {
          name2 = [v13 name];
          v18 = [name2 isEqualToString:@"access_token"];

          if (!v18)
          {
            goto LABEL_12;
          }

          itemsCopy = v22;
          (v22)[2](v22, value, 0);
        }

        self = 1;
        v5 = v23;
        goto LABEL_19;
      }

LABEL_12:
    }

    v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  self = 0;
  itemsCopy = v22;
  v5 = v23;
LABEL_19:

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)exchangeCode:(void *)code completion:
{
  v29 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v6 = a2;
  authenticationRequest = [self authenticationRequest];
  oauth2 = [authenticationRequest oauth2];

  tokenExchangeURL = [oauth2 tokenExchangeURL];
  v10 = LogCategory_Daemon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [tokenExchangeURL absoluteString];
    *buf = 138412290;
    v28 = absoluteString;
    _os_log_impl(&dword_236EA0000, v10, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: exchange code url: %@", buf, 0xCu);
  }

  v12 = [oauth2 tokenExchangeBodyWithCode:v6];

  v13 = [v12 dataUsingEncoding:4];
  v14 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:tokenExchangeURL];
  [v14 setHTTPMethod:@"POST"];
  [v14 setHTTPBody:v13];
  [v14 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v15 = MEMORY[0x277CCAD30];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v17 = [v15 sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:0];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __51__BCAuthenticationManager_exchangeCode_completion___block_invoke;
  v24 = &unk_278A0E948;
  v18 = codeCopy;
  selfCopy = self;
  v26 = v18;
  v19 = [v17 dataTaskWithRequest:v14 completionHandler:&v21];
  [v19 resume];

  v20 = *MEMORY[0x277D85DE8];
}

void __51__BCAuthenticationManager_exchangeCode_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: exchange code response received", buf, 2u);
  }

  if (v7)
  {
    v9 = LogCategory_Daemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&dword_236EA0000, v9, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: failed to retrieve token: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v6;
    v13 = v10;
    if (v11)
    {
      v14 = LogCategory_Daemon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v12;
        _os_log_impl(&dword_236EA0000, v14, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: access token for data: %@", buf, 0xCu);
      }

      v31 = 0;
      v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:1 error:&v31];
      v16 = v31;
      if (v16)
      {
        v17 = LogCategory_Daemon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 localizedDescription];
          *buf = 138412290;
          v37 = v18;
          _os_log_impl(&dword_236EA0000, v17, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: error serializing data to JSON: %@", buf, 0xCu);
        }

        v13[2](v13, 0, v16);
      }

      else
      {
        v23 = [v15 objectForKeyedSubscript:@"access_token"];
        if (v23)
        {
          (v13)[2](v13, v23, 0);
        }

        else
        {
          v24 = objc_alloc(MEMORY[0x277CCA9B8]);
          v34 = *MEMORY[0x277CCA450];
          v35 = @"Missing access token from response";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v26 = [v24 initWithDomain:@"com.apple.icloud.messages.business.authentication.error" code:2 userInfo:v25];

          v27 = LogCategory_Daemon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v30 = [v26 localizedDescription];
            *buf = 138412290;
            v37 = v30;
            _os_log_error_impl(&dword_236EA0000, v27, OS_LOG_TYPE_ERROR, "BCAuthenticationManager: cannot parse access_token: %@", buf, 0xCu);
          }

          v13[2](v13, 0, v26);
        }
      }
    }
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v32 = *MEMORY[0x277CCA450];
    v33 = @"Empty data received";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v19 initWithDomain:@"com.apple.icloud.messages.business.authentication.error" code:0 userInfo:v20];

    v22 = LogCategory_Daemon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v29 = [v21 localizedDescription];
      *buf = 138412290;
      v37 = v29;
      _os_log_error_impl(&dword_236EA0000, v22, OS_LOG_TYPE_ERROR, "BCAuthenticationManager: cannot parse access_token: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  if (serverTrust)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
    handlerCopy[2](handlerCopy, 0, v8);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

@end