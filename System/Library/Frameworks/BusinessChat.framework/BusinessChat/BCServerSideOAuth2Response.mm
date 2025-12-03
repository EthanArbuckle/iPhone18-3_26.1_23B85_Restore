@interface BCServerSideOAuth2Response
- (BCServerSideOAuth2Response)initWithRedirectURI:(id)i;
- (NSDictionary)dictionaryValue;
- (id)_initWithDictionary:(id)dictionary;
@end

@implementation BCServerSideOAuth2Response

- (BCServerSideOAuth2Response)initWithRedirectURI:(id)i
{
  v55 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v48.receiver = self;
  v48.super_class = BCServerSideOAuth2Response;
  v5 = [(BCServerSideOAuth2Response *)&v48 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = [MEMORY[0x277CCACE0] componentsWithURL:iCopy resolvingAgainstBaseURL:1];
  v5->_status = 0;
  v7 = [MEMORY[0x277CCACE0] componentsWithURL:iCopy resolvingAgainstBaseURL:1];
  queryItems = [v7 queryItems];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (![queryItems count])
  {

    goto LABEL_33;
  }

  v42 = iCopy;
  v43 = v6;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = queryItems;
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
    name = [v15 name];
    if ([name isEqualToString:@"status"])
    {
      break;
    }

    name2 = [v15 name];
    v18 = [name2 isEqualToString:@"error_code"];

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
        queryItems2 = [v43 queryItems];
        v25 = [queryItems2 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
              objc_enumerationMutation(queryItems2);
            }

            v29 = *(*(&v44 + 1) + 8 * i);
            name3 = [v29 name];
            v31 = [name3 isEqualToString:@"status"];

            if (v31)
            {
              value = [v29 value];
              v5->_status = ServerSideAuthStatusFromNSString(value);
            }

            else
            {
              name4 = [v29 name];
              v34 = [name4 isEqualToString:@"error_code"];

              if (!v34)
              {
                continue;
              }

              value2 = [v29 value];
              integerValue = [value2 integerValue];

              v37 = [BCError alloc];
              value = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
              v38 = [(BCError *)v37 initWithCode:value domain:@"com.apple.messages.business.oauth2" message:@"OAuth Error"];
              error = v5->_error;
              v5->_error = v38;
            }
          }

          v26 = [queryItems2 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
  value3 = [v15 value];
  if ([value3 length])
  {
    name5 = [v15 name];
    v21 = [dictionary objectForKeyedSubscript:name5];

    if (v21)
    {
      goto LABEL_31;
    }

    value4 = [v15 value];
    name6 = [v15 name];
    [dictionary setObject:value4 forKeyedSubscript:name6];

    goto LABEL_14;
  }

LABEL_31:
LABEL_32:
  iCopy = v42;
  v6 = v43;
LABEL_33:

LABEL_34:
  v40 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = BCServerSideOAuth2Response;
  v5 = [(BCServerSideOAuth2Response *)&v17 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [dictionaryCopy description];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCAuthenticationResponse: initWithDictionary %@", buf, 0xCu);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    null = [MEMORY[0x277CBEB68] null];
    if (v8 == null)
    {
      v5->_status = ServerSideAuthStatusFromNSString(0);
    }

    else
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"status"];
      v5->_status = ServerSideAuthStatusFromNSString(v10);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"error_code"];
    error = [MEMORY[0x277CBEB68] null];
    if (v11 == error)
    {
      goto LABEL_10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"error_code"];

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

  error = [(BCServerSideOAuth2Response *)self error];
  code = [error code];

  if (code)
  {
    error2 = [(BCServerSideOAuth2Response *)self error];
    code2 = [error2 code];
    [v3 setObject:code2 forKeyedSubscript:@"error_code"];
  }

  return v3;
}

@end