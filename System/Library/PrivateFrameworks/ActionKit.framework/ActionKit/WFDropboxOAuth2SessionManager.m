@interface WFDropboxOAuth2SessionManager
- (WFDropboxOAuth2SessionManager)initWithSessionConfiguration:(id)a3 clientID:(id)a4 clientSecret:(id)a5;
- (id)appAuthorizationSessionWithCompletionHandler:(id)a3;
- (id)authorizationSessionWithCompletionHandler:(id)a3;
- (void)authenticateWithLegacyAccessToken:(id)a3 accessTokenSecret:(id)a4 completionHandler:(id)a5;
- (void)revokeCredential:(id)a3 completionHandler:(id)a4;
@end

@implementation WFDropboxOAuth2SessionManager

- (void)revokeCredential:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"credential"}];
  }

  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.dropboxapi.com/1/disable_access_token"];
  v10 = [MEMORY[0x277CBAB50] requestWithURL:v9];
  [v10 _setNonAppInitiated:1];
  [v10 wfo_setAuthorizationWithCredential:v7];
  v11 = [(WFOAuth2SessionManager *)self session];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__WFDropboxOAuth2SessionManager_revokeCredential_completionHandler___block_invoke;
  v15[3] = &unk_278C22268;
  v16 = v8;
  v12 = v8;
  v13 = [v11 dataTaskWithRequest:v10 completionHandler:v15];
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

- (WFDropboxOAuth2SessionManager)initWithSessionConfiguration:(id)a3 clientID:(id)a4 clientSecret:(id)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEBC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 URLWithString:@"https://www.dropbox.com/1/oauth2/authorize"];
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v13 localeIdentifier];

  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"disable_signup" value:@"true"];
  v23[0] = v15;
  v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"locale" value:v14];
  v23[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.dropboxapi.com/1/oauth2/token"];
  v19 = [v12 wfo_URLByAppendingQueryItems:v17];
  v20 = [(WFOAuth2SessionManager *)self initWithSessionConfiguration:v11 tokenURL:v18 authorizationURL:v19 authenticationMethod:@"client_secret_post" clientID:v10 clientSecret:v9];

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)authenticateWithLegacyAccessToken:(id)a3 accessTokenSecret:(id)a4 completionHandler:(id)a5
{
  v57[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"accessToken"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v43 = [MEMORY[0x277CCA890] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"accessTokenSecret"}];

LABEL_3:
  v49 = v11;
  if (!v11)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"WFDropboxOAuth2SessionManager.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v47 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.dropboxapi.com/1/oauth2/token_from_oauth1"];
  v12 = [MEMORY[0x277CBAB50] requestWithURL:?];
  [v12 _setNonAppInitiated:1];
  v46 = v12;
  [v12 setHTTPMethod:@"POST"];
  v13 = [(WFOAuth2SessionManager *)self clientSecret];
  v57[0] = v13;
  v57[1] = v10;
  v50 = v10;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v15 = [v14 componentsJoinedByString:@"&"];

  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_version" value:@"1.0"];
  [v16 addObject:v17];

  v18 = MEMORY[0x277CCAD18];
  v48 = self;
  v19 = [(WFOAuth2SessionManager *)self clientID];
  v20 = [v18 queryItemWithName:@"oauth_consumer_key" value:v19];
  [v16 addObject:v20];

  v51 = v9;
  v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_token" value:v9];
  [v16 addObject:v21];

  v22 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_signature_method" value:@"PLAINTEXT"];
  [v16 addObject:v22];

  v45 = v15;
  v23 = [MEMORY[0x277CCAD18] queryItemWithName:@"oauth_signature" value:v15];
  [v16 addObject:v23];

  v24 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v25 = [v24 mutableCopy];

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
        v33 = [v32 name];
        v34 = [v33 stringByAddingPercentEncodingWithAllowedCharacters:v25];

        v35 = [v32 value];
        v36 = [v35 stringByAddingPercentEncodingWithAllowedCharacters:v25];

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
  [(WFOAuth2SessionManager *)v48 authenticateWithRequest:v46 refreshToken:0 completionHandler:v49];

  v41 = *MEMORY[0x277D85DE8];
}

- (id)appAuthorizationSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [WFDropboxAppAuthorizationSession alloc];
  v6 = [(WFOAuth2SessionManager *)self clientID];
  v7 = [(WFDropboxAppAuthorizationSession *)v5 initWithClientID:v6 completionHandler:v4];

  return v7;
}

- (id)authorizationSessionWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [(WFOAuth2SessionManager *)self clientID];
  v8 = [v5 stringWithFormat:@"db-%@://2/token", v7];
  v9 = [v4 URLWithString:v8];

  v12.receiver = self;
  v12.super_class = WFDropboxOAuth2SessionManager;
  v10 = [(WFOAuth2SessionManager *)&v12 authorizationSessionWithResponseType:@"token" scopes:0 redirectURI:v9 completionHandler:v6];

  return v10;
}

@end