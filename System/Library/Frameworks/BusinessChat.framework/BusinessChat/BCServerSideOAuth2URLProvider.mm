@interface BCServerSideOAuth2URLProvider
+ (id)URLProviderWithDictionary:(id)a3;
- (BCServerSideOAuth2URLProvider)initWithCoder:(id)a3;
- (BOOL)shouldHandleRedirectURI:(id)a3;
- (NSString)debugDescription;
- (id)_initWithAuthorizationURL:(void *)a3 clientIdentifier:(void *)a4 redirectURI:(void *)a5 scope:(void *)a6 state:(void *)a7 responseType:(void *)a8 additionalParameters:;
- (id)authenticationSessionURL;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCServerSideOAuth2URLProvider

+ (id)URLProviderWithDictionary:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"authorizationUrl"];
  v5 = [MEMORY[0x277CBEB68] null];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"authorizationUrl"];
  }

  v7 = [v3 objectForKeyedSubscript:@"clientIdentifier"];
  v8 = [MEMORY[0x277CBEB68] null];
  if (v7 == v8)
  {
    v53 = 0;
  }

  else
  {
    v53 = [v3 objectForKeyedSubscript:@"clientIdentifier"];
  }

  v9 = [v3 objectForKeyedSubscript:@"redirectURI"];
  v10 = [MEMORY[0x277CBEB68] null];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v3 objectForKeyedSubscript:@"redirectURI"];
  }

  v12 = [v3 objectForKeyedSubscript:@"scope"];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v3 objectForKeyedSubscript:@"scope"];
  }

  v15 = [v3 objectForKeyedSubscript:@"state"];
  v16 = [MEMORY[0x277CBEB68] null];
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = [v3 objectForKeyedSubscript:@"state"];
  }

  v18 = [v3 objectForKeyedSubscript:@"responseType"];
  v19 = [MEMORY[0x277CBEB68] null];
  if (v18 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = [v3 objectForKeyedSubscript:@"responseType"];
  }

  v21 = [v3 objectForKeyedSubscript:@"additionalParameters"];
  v22 = [MEMORY[0x277CBEB68] null];
  if (v21 == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = [v3 objectForKeyedSubscript:@"additionalParameters"];
  }

  if (![v6 length])
  {
    v24 = LogCategory_Daemon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_236EA0000, v24, OS_LOG_TYPE_ERROR, "BCServerSideOAuth2URLProvider: Unable to create object. Missing 'authorizationUrl' in payload.", buf, 2u);
    }

    v28 = 0;
    goto LABEL_60;
  }

  v24 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  if (!v24)
  {
    v29 = LogCategory_Daemon();
    v52 = v29;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 138412290;
    v60 = v6;
    v30 = "BCNativeOAuth2URLProvider: Unable to create object. Could not create a valid authorizationURL from string:%@";
    v31 = v29;
    v32 = 12;
LABEL_34:
    _os_log_error_impl(&dword_236EA0000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_58;
  }

  if (![v11 length])
  {
    v33 = LogCategory_Daemon();
    v52 = v33;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v30 = "BCServerSideOAuth2URLProvider: Unable to create object. Missing 'redirectURI' in payload.";
    v31 = v33;
    v32 = 2;
    goto LABEL_34;
  }

  v51 = v24;
  v25 = [MEMORY[0x277CBEBC0] URLWithString:v11];
  v26 = [v25 scheme];
  v27 = [v26 lowercaseString];
  v52 = v25;
  if ([v27 isEqualToString:@"http"])
  {
  }

  else
  {
    [v25 scheme];
    v34 = v47 = v23;
    [v34 lowercaseString];
    v35 = v49 = v20;
    v46 = [v35 isEqualToString:@"https"];

    v23 = v47;
    if ((v46 & 1) == 0)
    {
      v41 = LogCategory_Daemon();
      v24 = v51;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v43 = [v52 scheme];
        *buf = 138412290;
        v60 = v43;
        _os_log_error_impl(&dword_236EA0000, v41, OS_LOG_TYPE_ERROR, "BCServerSideOAuth2URLProvider: Unable to create object. Unsupported scheme '%@' for redirect URI", buf, 0xCu);

        v20 = v49;
      }

      goto LABEL_57;
    }
  }

  v24 = v51;
  if ([v53 length])
  {
    if ([v20 length] && ((objc_msgSend(v20, "isEqualToString:", @"code") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"token") & 1) != 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v23;
        v50 = v20;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v36 = v14;
        v37 = [v36 countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v55;
LABEL_43:
          v40 = 0;
          while (1)
          {
            if (*v55 != v39)
            {
              objc_enumerationMutation(v36);
            }

            if ([*(*(&v54 + 1) + 8 * v40) length])
            {
              break;
            }

            if (v38 == ++v40)
            {
              v38 = [v36 countByEnumeratingWithState:&v54 objects:v58 count:16];
              if (v38)
              {
                goto LABEL_43;
              }

              goto LABEL_49;
            }
          }

          if ([v17 length])
          {
            v24 = v51;
            v23 = v48;
            v20 = v50;
            v28 = [[BCServerSideOAuth2URLProvider alloc] _initWithAuthorizationURL:v51 clientIdentifier:v53 redirectURI:v52 scope:v36 state:v17 responseType:v50 additionalParameters:v48];
            goto LABEL_59;
          }

          v41 = LogCategory_Daemon();
          v23 = v48;
          v20 = v50;
          v24 = v51;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v42 = "BCServerSideOAuth2URLProvider: Unable to create object. Missing 'scope' in payload";
            goto LABEL_68;
          }

          goto LABEL_57;
        }

LABEL_49:

        v23 = v48;
        v20 = v50;
        v24 = v51;
      }

      v41 = LogCategory_Daemon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v42 = "BCServerSideOAuth2URLProvider: Unable to create object. Missing atleast one 'scope' in payload.";
LABEL_68:
        _os_log_error_impl(&dword_236EA0000, v41, OS_LOG_TYPE_ERROR, v42, buf, 2u);
      }
    }

    else
    {
      v41 = LogCategory_Daemon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v42 = "BCServerSideOAuth2URLProvider: Unable to create object. Invalid or nil 'responseType' in payload";
        goto LABEL_68;
      }
    }
  }

  else
  {
    v41 = LogCategory_Daemon();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v42 = "BCServerSideOAuth2URLProvider: Unable to create object. Missing 'clientIdentifier' in payload.";
      goto LABEL_68;
    }
  }

LABEL_57:

LABEL_58:
  v28 = 0;
LABEL_59:

LABEL_60:
  v44 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_initWithAuthorizationURL:(void *)a3 clientIdentifier:(void *)a4 redirectURI:(void *)a5 scope:(void *)a6 state:(void *)a7 responseType:(void *)a8 additionalParameters:
{
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v16 = a7;
  v17 = a8;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = BCServerSideOAuth2URLProvider;
    v18 = objc_msgSendSuper2(&v25, sel_init);
    a1 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 2, a2);
      objc_storeStrong(a1 + 6, a7);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 5, a6);
      objc_storeStrong(a1 + 4, a5);
      objc_storeStrong(a1 + 1, a4);
      objc_storeStrong(a1 + 7, a8);
    }
  }

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_authorizationURL forKey:@"authorizationUrl"];
  [v5 encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
  [v5 encodeObject:self->_responseType forKey:@"responseType"];
  [v5 encodeObject:self->_scope forKey:@"scope"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_redirectURI forKey:@"redirectURI"];
  additionalParameters = self->_additionalParameters;
  if (additionalParameters)
  {
    [v5 encodeObject:additionalParameters forKey:@"additionalParameters"];
  }
}

- (BCServerSideOAuth2URLProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BCServerSideOAuth2URLProvider;
  v5 = [(BCServerSideOAuth2URLProvider *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationUrl"];
    authorizationURL = v5->_authorizationURL;
    v5->_authorizationURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseType"];
    responseType = v5->_responseType;
    v5->_responseType = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"scope"];
    scope = v5->_scope;
    v5->_scope = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redirectURI"];
    redirectURI = v5->_redirectURI;
    v5->_redirectURI = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additionalParameters"];
    additionalParameters = v5->_additionalParameters;
    v5->_additionalParameters = v21;
  }

  return v5;
}

- (id)authenticationSessionURL
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29 = [(NSURL *)self->_authorizationURL copy];
  v3 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v29 resolvingAgainstBaseURL:0];
  v4 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"response_type" value:self->_responseType];
  v5 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"client_id" value:self->_clientIdentifier];
  v6 = objc_alloc(MEMORY[0x277CCAD18]);
  v7 = [(BCServerSideOAuth2URLProvider *)self redirectURI];
  v8 = [v7 absoluteString];
  v9 = [v6 initWithName:@"redirect_uri" value:v8];

  scope = self->_scope;
  if (scope)
  {
    v11 = MEMORY[0x277CCAD18];
    v12 = scope;
    v13 = [v11 alloc];
    v14 = [(NSArray *)self->_scope componentsJoinedByString:@" "];
    v15 = [v13 initWithName:@"scope" value:v14];
  }

  else
  {
    v15 = 0;
  }

  state = self->_state;
  if (state)
  {
    v17 = MEMORY[0x277CCAD18];
    v18 = state;
    v19 = [[v17 alloc] initWithName:@"state" value:self->_state];
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x277CBEB18];
  v30[0] = v5;
  v30[1] = v9;
  v30[2] = v4;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v22 = [v20 arrayWithArray:v21];

  if (self->_scope)
  {
    [v22 addObject:v15];
  }

  if (self->_state)
  {
    [v22 addObject:v19];
  }

  if ([(NSString *)self->_additionalParameters length])
  {
    v23 = [@"?" stringByAppendingString:self->_additionalParameters];
    v24 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v23];
    v25 = [v24 queryItems];
    [v22 addObjectsFromArray:v25];
  }

  [v3 setQueryItems:v22];
  v26 = [v3 URL];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)shouldHandleRedirectURI:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 lowercaseString];

  LOBYTE(v3) = [v4 isEqualToString:@"messages-auth"];
  return v3;
}

- (NSString)debugDescription
{
  v2 = self;
  if (self)
  {
    v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v4 = [v2 authenticationSessionURL];
    v5 = [v3 appendObject:v4 withName:@"Authorization URL"];

    v2 = [v3 build];
  }

  return v2;
}

@end