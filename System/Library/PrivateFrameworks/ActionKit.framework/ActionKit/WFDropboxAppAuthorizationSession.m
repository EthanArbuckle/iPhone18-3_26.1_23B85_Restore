@interface WFDropboxAppAuthorizationSession
- (BOOL)resumeSessionWithURL:(id)a3;
- (WFDropboxAppAuthorizationSession)initWithClientID:(id)a3 completionHandler:(id)a4;
@end

@implementation WFDropboxAppAuthorizationSession

- (BOOL)resumeSessionWithURL:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFDropboxAppAuthorizationSession *)self completionHandler];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [(WFDropboxAppAuthorizationSession *)self successURI];
  v7 = [v4 wfo_isEqualToRedirectURI:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v9 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v8;
    v10 = [v8 queryItems];
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v16 = [v15 value];
          v17 = [v15 name];
          [v9 setValue:v16 forKey:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v12);
    }

    v18 = [v9 objectForKeyedSubscript:@"state"];
    v19 = [(WFDropboxAppAuthorizationSession *)self state];
    v20 = [v18 isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      v30 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"The state parameter on the received callback was invalid.";
      v29 = 1;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v32 = [v30 errorWithDomain:@"WFOAuth2ErrorDomain" code:200 userInfo:v31];
      (v5)[2](v5, 0, v32);

      goto LABEL_19;
    }

    v21 = [v9 objectForKeyedSubscript:@"oauth_token_secret"];
    if (![v21 length])
    {
      v33 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"The oauth_token_secret parameter on the received callback was missing.";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v35 = [v33 errorWithDomain:@"WFOAuth2ErrorDomain" code:200 userInfo:v34];
      (v5)[2](v5, 0, v35);

      v29 = 1;
      goto LABEL_19;
    }

    v22 = [WFOAuth2Credential alloc];
    v45 = @"access_token";
    v46 = v21;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v24 = [(WFOAuth2Credential *)v22 initWithResponseObject:v23];
    (v5)[2](v5, v24, 0);

    v25 = v38;
    goto LABEL_15;
  }

  v26 = [(WFDropboxAppAuthorizationSession *)self cancelURI];
  v27 = [v4 wfo_isEqualToRedirectURI:v26];

  if (!v27)
  {
LABEL_16:
    v29 = 0;
    goto LABEL_19;
  }

  v28 = MEMORY[0x277CCA9B8];
  v43 = *MEMORY[0x277CCA450];
  v44 = @"The user cancelled the request.";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v9 = [v28 errorWithDomain:@"WFOAuth2ErrorDomain" code:106 userInfo:v25];
  (v5)[2](v5, 0, v9);
LABEL_15:

  [(WFDropboxAppAuthorizationSession *)self setCompletionHandler:0];
  v29 = 1;
LABEL_19:

  v36 = *MEMORY[0x277D85DE8];
  return v29;
}

- (WFDropboxAppAuthorizationSession)initWithClientID:(id)a3 completionHandler:(id)a4
{
  v53[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"WFDropboxAppAuthorizationSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"clientID"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v45 = [MEMORY[0x277CCA890] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"WFDropboxAppAuthorizationSession.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v51.receiver = self;
  v51.super_class = WFDropboxAppAuthorizationSession;
  v11 = [(WFDropboxAppAuthorizationSession *)&v51 init];
  v12 = v11;
  if (v11)
  {
    v46 = v8;
    objc_storeStrong(&v11->_clientID, a3);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2850323E8];
    v16 = [v15 lowercaseString];
    v17 = [@"oauth2:" stringByAppendingString:v16];
    state = v12->_state;
    v12->_state = v17;

    v19 = MEMORY[0x277CBEBC0];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"db-%@://1/connect", v12->_clientID];
    v21 = [v19 URLWithString:v20];
    successURI = v12->_successURI;
    v12->_successURI = v21;

    v23 = MEMORY[0x277CBEBC0];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"db-%@://1/cancel", v12->_clientID];
    v25 = [v23 URLWithString:v24];
    cancelURI = v12->_cancelURI;
    v12->_cancelURI = v25;

    v27 = _Block_copy(v10);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v27;

    v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"k" value:v12->_clientID];
    v53[0] = v29;
    v30 = [MEMORY[0x277CCAD18] queryItemWithName:@"s" value:0];
    v53[1] = v30;
    v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"state" value:v12->_state];
    v53[2] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];

    v33 = objc_opt_new();
    [v33 setHost:@"1"];
    [v33 setPath:@"/connect"];
    [v33 setQueryItems:v32];
    v34 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = [&unk_28509CB48 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        v38 = 0;
        do
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(&unk_28509CB48);
          }

          [v33 setScheme:*(*(&v47 + 1) + 8 * v38)];
          v39 = [v33 URL];
          [(NSArray *)v34 addObject:v39];

          ++v38;
        }

        while (v36 != v38);
        v36 = [&unk_28509CB48 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v36);
    }

    authorizationURLs = v12->_authorizationURLs;
    v12->_authorizationURLs = v34;

    v41 = v12;
    v8 = v46;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v12;
}

@end