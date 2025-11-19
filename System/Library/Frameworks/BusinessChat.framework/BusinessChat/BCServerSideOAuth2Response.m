@interface BCServerSideOAuth2Response
- (BCServerSideOAuth2Response)initWithRedirectURI:(id)a3;
- (NSDictionary)dictionaryValue;
- (id)_initWithDictionary:(id)a3;
@end

@implementation BCServerSideOAuth2Response

- (BCServerSideOAuth2Response)initWithRedirectURI:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = BCServerSideOAuth2Response;
  v5 = [(BCServerSideOAuth2Response *)&v48 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:1];
  v5->_status = 0;
  v7 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:1];
  v8 = [v7 queryItems];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (![v8 count])
  {

    goto LABEL_33;
  }

  v42 = v4;
  v43 = v6;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = *v50;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v50 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v49 + 1) + 8 * v14);
    v16 = [v15 name];
    if ([v16 isEqualToString:@"status"])
    {
      break;
    }

    v17 = [v15 name];
    v18 = [v17 isEqualToString:@"error_code"];

    if (v18)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (!v12)
      {
LABEL_16:

        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v24 = [v43 queryItems];
        v25 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (!v25)
        {
          goto LABEL_28;
        }

        v26 = v25;
        v27 = *v45;
        while (1)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v44 + 1) + 8 * i);
            v30 = [v29 name];
            v31 = [v30 isEqualToString:@"status"];

            if (v31)
            {
              v32 = [v29 value];
              v5->_status = ServerSideAuthStatusFromNSString(v32);
            }

            else
            {
              v33 = [v29 name];
              v34 = [v33 isEqualToString:@"error_code"];

              if (!v34)
              {
                continue;
              }

              v35 = [v29 value];
              v36 = [v35 integerValue];

              v37 = [BCError alloc];
              v32 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
              v38 = [(BCError *)v37 initWithCode:v32 domain:@"com.apple.messages.business.oauth2" message:@"OAuth Error"];
              error = v5->_error;
              v5->_error = v38;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (!v26)
          {
LABEL_28:

            goto LABEL_32;
          }
        }
      }

      goto LABEL_5;
    }
  }

LABEL_11:
  v19 = [v15 value];
  if ([v19 length])
  {
    v20 = [v15 name];
    v21 = [v9 objectForKeyedSubscript:v20];

    if (v21)
    {
      goto LABEL_31;
    }

    v22 = [v15 value];
    v23 = [v15 name];
    [v9 setObject:v22 forKeyedSubscript:v23];

    goto LABEL_14;
  }

LABEL_31:
LABEL_32:
  v4 = v42;
  v6 = v43;
LABEL_33:

LABEL_34:
  v40 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BCServerSideOAuth2Response;
  v5 = [(BCServerSideOAuth2Response *)&v17 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 description];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCAuthenticationResponse: initWithDictionary %@", buf, 0xCu);
    }

    v8 = [v4 objectForKeyedSubscript:@"status"];
    v9 = [MEMORY[0x277CBEB68] null];
    if (v8 == v9)
    {
      v5->_status = ServerSideAuthStatusFromNSString(0);
    }

    else
    {
      v10 = [v4 objectForKeyedSubscript:@"status"];
      v5->_status = ServerSideAuthStatusFromNSString(v10);
    }

    v11 = [v4 objectForKeyedSubscript:@"error_code"];
    error = [MEMORY[0x277CBEB68] null];
    if (v11 == error)
    {
      goto LABEL_10;
    }

    v13 = [v4 objectForKeyedSubscript:@"error_code"];

    if (v13)
    {
      v14 = [[BCError alloc] initWithCode:v13 domain:@"com.apple.messages.business.oauth2" message:@"OAuth Error"];
      error = v5->_error;
      v5->_error = v14;
      v11 = v13;
LABEL_10:
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = NSStringFromServerSideAuthStatus([(BCServerSideOAuth2Response *)self status]);
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  v5 = [(BCServerSideOAuth2Response *)self error];
  v6 = [v5 code];

  if (v6)
  {
    v7 = [(BCServerSideOAuth2Response *)self error];
    v8 = [v7 code];
    [v3 setObject:v8 forKeyedSubscript:@"error_code"];
  }

  return v3;
}

@end