@interface WFDropboxOAuth2SessionManager
- (WFDropboxOAuth2SessionManager)initWithSessionConfiguration:(id)configuration clientID:(id)d clientSecret:(id)secret;
- (id)appAuthorizationSessionWithCompletionHandler:(id)handler;
- (id)authorizationSessionWithCompletionHandler:(id)handler;
- (void)authenticateWithLegacyAccessToken:(id)token accessTokenSecret:(id)secret completionHandler:(id)handler;
- (void)revokeCredential:(id)credential completionHandler:(id)handler;
@end

@implementation WFDropboxOAuth2SessionManager

- (void)revokeCredential:(id)credential completionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  if (!credentialCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"credential"}];
  }

  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.dropboxapi.com/1/disable_access_token"];
  v10 = [MEMORY[0x277CBAB50] requestWithURL:v9];
  [v10 _setNonAppInitiated:1];
  [v10 wfo_setAuthorizationWithCredential:credentialCopy];
  session = [(WFOAuth2SessionManager *)self session];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__WFDropboxOAuth2SessionManager_revokeCredential_completionHandler___block_invoke;
  v15[3] = &unk_278C22268;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [session dataTaskWithRequest:v10 completionHandler:v15];
  [v13 resume];
}

void __68__WFDropboxOAuth2SessionManager_revokeCredential_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [a3 statusCode];
  v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{200, 100}];
  v11 = [v10 containsIndex:v9];

  if ([v7 length])
  {
    v18 = v8;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v18];
    v13 = v18;

    v11 = [v12 count] == 0;
    v14 = WFRFC6749Section5_2ErrorFromResponse(v12);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v8 = v16;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v11, v8);
  }
}

- (WFDropboxOAuth2SessionManager)initWithSessionConfiguration:(id)configuration clientID:(id)d clientSecret:(id)secret
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEBC0];
  secretCopy = secret;
  dCopy = d;
  configurationCopy = configuration;
  v12 = [v8 URLWithString:@"https://www.dropbox.com/1/oauth2/authorize"];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"disable_signup" value:@"true"];
  v23[0] = v15;
  v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"locale" value:localeIdentifier];
  v23[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.dropboxapi.com/1/oauth2/token"];
  v19 = [v12 wfo_URLByAppendingQueryItems:v17];
  v20 = [(WFOAuth2SessionManager *)self initWithSessionConfiguration:configurationCopy tokenURL:v18 authorizationURL:v19 authenticationMethod:@"client_secret_post" clientID:dCopy clientSecret:secretCopy];

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)authenticateWithLegacyAccessToken:(id)token accessTokenSecret:(id)secret completionHandler:(id)handler
{
  v57[2] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  secretCopy = secret;
  handlerCopy = handler;
  if (tokenCopy)
  {
    if (secretCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"accessToken"}];

    if (secretCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"accessTokenSecret"}];

LABEL_3:
  v49 = handlerCopy;
  if (!handlerCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v47 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.dropboxapi.com/1/oauth2/token_from_oauth1"];
  v12 = [MEMORY[0x277CBAB50] requestWithURL:?];
  [v12 _setNonAppInitiated:1];
  v46 = v12;
  [v12 setHTTPMethod:@"POST"];
  clientSecret = [(WFOAuth2SessionManager *)self clientSecret];
  v57[0] = clientSecret;
  v57[1] = secretCopy;
  v50 = secretCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v15 = [v14 componentsJoinedByString:@"&"];

  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_version" value:@"1.0"];
  [v16 addObject:v17];

  v18 = MEMORY[0x277CCAD18];
  selfCopy = self;
  clientID = [(WFOAuth2SessionManager *)self clientID];
  v20 = [v18 queryItemWithName:@"oauth_consumer_key" value:clientID];
  [v16 addObject:v20];

  v51 = tokenCopy;
  v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_token" value:tokenCopy];
  [v16 addObject:v21];

  v22 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_signature_method" value:@"PLAINTEXT"];
  [v16 addObject:v22];

  v45 = v15;
  v23 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_signature" value:v15];
  [v16 addObject:v23];

  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v25 = [alphanumericCharacterSet mutableCopy];

  [v25 addCharactersInString:@"-_.~"];
  v26 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = v16;
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v52 + 1) + 8 * i);
        name = [v32 name];
        v34 = [name stringByAddingPercentEncodingWithAllowedCharacters:v25];

        value = [v32 value];
        v36 = [value stringByAddingPercentEncodingWithAllowedCharacters:v25];

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v34, v36];
        [v26 addObject:v37];
      }

      v29 = [v27 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v29);
  }

  v38 = MEMORY[0x277CCACA8];
  v39 = [v26 componentsJoinedByString:{@", "}];
  v40 = [v38 stringWithFormat:@"OAuth %@", v39];

  [v46 setValue:v40 forHTTPHeaderField:@"Authorization"];
  [(WFOAuth2SessionManager *)selfCopy authenticateWithRequest:v46 refreshToken:0 completionHandler:v49];

  v41 = *MEMORY[0x277D85DE8];
}

- (id)appAuthorizationSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [WFDropboxAppAuthorizationSession alloc];
  clientID = [(WFOAuth2SessionManager *)self clientID];
  v7 = [(WFDropboxAppAuthorizationSession *)v5 initWithClientID:clientID completionHandler:handlerCopy];

  return v7;
}

- (id)authorizationSessionWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  handlerCopy = handler;
  clientID = [(WFOAuth2SessionManager *)self clientID];
  v8 = [v5 stringWithFormat:@"db-%@://2/token", clientID];
  v9 = [v4 URLWithString:v8];

  v12.receiver = self;
  v12.super_class = WFDropboxOAuth2SessionManager;
  v10 = [(WFOAuth2SessionManager *)&v12 authorizationSessionWithResponseType:@"token" scopes:0 redirectURI:v9 completionHandler:handlerCopy];

  return v10;
}

@end