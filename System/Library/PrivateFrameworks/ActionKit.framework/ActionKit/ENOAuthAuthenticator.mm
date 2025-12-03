@interface ENOAuthAuthenticator
+ (id)parametersFromQueryString:(id)string;
+ (id)queryStringFromParameters:(id)parameters;
- (BOOL)canHandleSwitchProfileURL:(id)l;
- (BOOL)handleOpenURL:(id)l;
- (ENAuthenticatorDelegate)delegate;
- (id)callbackScheme;
- (id)oauthCallback;
- (id)userAuthorizationURLStringWithParameters:(id)parameters;
- (void)authenticate;
- (void)completeAuthenticationWithCredentials:(id)credentials usesLinkedAppNotebook:(BOOL)notebook;
- (void)completeAuthenticationWithError:(id)error;
- (void)didFinishLoading;
- (void)emptyCookieJar;
- (void)enableIsActiveBecauseOfCallback;
- (void)failedWithError:(id)error;
- (void)getOAuthTokenForURL:(id)l;
- (void)gotCallbackURL:(id)l;
- (void)handleDidBecomeActive;
- (void)receivedData:(id)data;
- (void)receivedResponse:(id)response;
- (void)startOauthAuthentication;
- (void)switchProfile;
- (void)updateCurrentBootstrapProfileWithName:(id)name;
@end

@implementation ENOAuthAuthenticator

+ (id)parametersFromQueryString:(id)string
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = stringCopy;
  v5 = [stringCopy componentsSeparatedByString:@"&"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndex:0];
          en_stringByUrlDecoding = [v11 en_stringByUrlDecoding];

          v13 = [v10 objectAtIndex:1];
          en_stringByUrlDecoding2 = [v13 en_stringByUrlDecoding];

          if (en_stringByUrlDecoding)
          {
            v15 = en_stringByUrlDecoding2 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            [v4 setObject:en_stringByUrlDecoding2 forKey:en_stringByUrlDecoding];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)queryStringFromParameters:(id)parameters
{
  v3 = MEMORY[0x277CBEB18];
  parametersCopy = parameters;
  array = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ENOAuthAuthenticator_queryStringFromParameters___block_invoke;
  v9[3] = &unk_278C1DE20;
  v10 = array;
  v6 = array;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:@"&"];

  return v7;
}

void __50__ENOAuthAuthenticator_queryStringFromParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [a2 en_stringByUrlEncoding];
  v8 = [v6 en_stringByUrlEncoding];

  v9 = [v5 stringWithFormat:@"%@=%@", v7, v8];

  [*(a1 + 32) addObject:v9];
}

- (ENAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getOAuthTokenForURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_class();
  query = [lCopy query];

  v7 = [v5 parametersFromQueryString:query];

  v8 = [v7 objectForKey:@"oauth_token"];
  v18 = [v7 objectForKey:@"oauth_verifier"];
  v9 = [v7 objectForKey:@"sandbox_lnb"];
  -[ENOAuthAuthenticator setUserSelectedLinkedAppNotebook:](self, "setUserSelectedLinkedAppNotebook:", [v9 BOOLValue]);

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v18, @"oauth_verifier", 0}];
  host = [(ENOAuthAuthenticator *)self host];
  consumerKey = [(ENOAuthAuthenticator *)self consumerKey];
  consumerSecret = [(ENOAuthAuthenticator *)self consumerSecret];
  tokenSecret = [(ENOAuthAuthenticator *)self tokenSecret];
  v15 = [ENGCOAuth URLRequestForPath:@"/oauth" GETParameters:v10 scheme:@"https" host:host consumerKey:consumerKey consumerSecret:consumerSecret accessToken:v8 tokenSecret:tokenSecret];

  mEMORY[0x277CBABB8] = [MEMORY[0x277CBABB8] sharedSession];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__ENOAuthAuthenticator_getOAuthTokenForURL___block_invoke;
  v19[3] = &unk_278C1BB20;
  v19[4] = self;
  v17 = [mEMORY[0x277CBABB8] dataTaskWithRequest:v15 completionHandler:v19];

  [v17 resume];
}

void __44__ENOAuthAuthenticator_getOAuthTokenForURL___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) failedWithError:v8];
  }

  if (v7)
  {
    [*(a1 + 32) receivedResponse:v7];
  }

  if (v9)
  {
    [*(a1 + 32) receivedData:v9];
  }

  [*(a1 + 32) didFinishLoading];
}

- (void)gotCallbackURL:(id)l
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:l];
  v6 = v4;
  if (v4)
  {
    [(ENOAuthAuthenticator *)self getOAuthTokenForURL:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ENErrorDomain" code:11 userInfo:0];
    [(ENOAuthAuthenticator *)self completeAuthenticationWithError:v5];
  }
}

- (BOOL)canHandleSwitchProfileURL:(id)l
{
  lCopy = l;
  path = [lCopy path];
  v6 = [path componentsSeparatedByString:@"/"];
  v7 = [v6 count];
  if (v7 <= 1)
  {
    NSLog(&cfstr_UrlHasInvalidC.isa, lCopy, [v6 count]);
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    [(ENOAuthAuthenticator *)self updateCurrentBootstrapProfileWithName:v8];
  }

  return v7 > 1;
}

- (void)enableIsActiveBecauseOfCallback
{
  [(ENOAuthAuthenticator *)self setIsActiveBecauseOfCallback:1];

  [(ENOAuthAuthenticator *)self performSelector:sel_disableIsActiveBecauseOfCallback withObject:0 afterDelay:2.0];
}

- (BOOL)handleOpenURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v6 = [host isEqualToString:@"invalidURL"];

  if (!v6)
  {
    [(ENOAuthAuthenticator *)self setState:2];
    v8 = MEMORY[0x277CCACA8];
    consumerKey = [(ENOAuthAuthenticator *)self consumerKey];
    v10 = [v8 stringWithFormat:@"en-%@", consumerKey];

    scheme = [lCopy scheme];
    if ([v10 isEqualToString:scheme])
    {
      host2 = [lCopy host];
      v13 = [@"oauth" isEqualToString:host2];

      if (v13)
      {
        v14 = MEMORY[0x277CCACA8];
        consumerKey2 = [(ENOAuthAuthenticator *)self consumerKey];
        v16 = [v14 stringWithFormat:@"en-%@://oauth/", consumerKey2];

        absoluteString = [lCopy absoluteString];
        v18 = [absoluteString stringByReplacingOccurrencesOfString:v16 withString:&stru_2850323E8];

        [(ENOAuthAuthenticator *)self gotCallbackURL:v18];
LABEL_10:
        v7 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    scheme2 = [lCopy scheme];
    if ([v10 isEqualToString:scheme2])
    {
      host3 = [lCopy host];
      v21 = [@"loginCancelled" isEqualToString:host3];

      if (v21)
      {
        [(ENOAuthAuthenticator *)self gotCallbackURL:0];
        goto LABEL_10;
      }
    }

    else
    {
    }

    scheme3 = [lCopy scheme];
    if ([v10 isEqualToString:scheme3])
    {
      host4 = [lCopy host];
      v24 = [@"incorrectProfile" isEqualToString:host4];

      if (v24)
      {
        [(ENOAuthAuthenticator *)self enableIsActiveBecauseOfCallback];
        v7 = [(ENOAuthAuthenticator *)self canHandleSwitchProfileURL:lCopy];
        goto LABEL_17;
      }
    }

    else
    {
    }

    v7 = 0;
    goto LABEL_17;
  }

  NSLog(&cfstr_InvalidUrlSent.isa);
  v7 = 0;
LABEL_18:

  return v7;
}

- (void)updateCurrentBootstrapProfileWithName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  profiles = [(ENOAuthAuthenticator *)self profiles];
  v6 = [profiles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(profiles);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        name = [v10 name];
        v12 = [nameCopy isEqualToString:name];

        if (v12)
        {
          name2 = [v10 name];
          [(ENOAuthAuthenticator *)self setCurrentProfile:name2];

          settings = [v10 settings];
          serviceHost = [settings serviceHost];
          [(ENOAuthAuthenticator *)self setHost:serviceHost];

          goto LABEL_11;
        }
      }

      v7 = [profiles countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(ENOAuthAuthenticator *)self startOauthAuthentication];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)switchProfile
{
  profiles = [(ENOAuthAuthenticator *)self profiles];
  v4 = [profiles count];

  if (v4)
  {
    v5 = 0;
    do
    {
      profiles2 = [(ENOAuthAuthenticator *)self profiles];
      v7 = [profiles2 objectAtIndex:v5];

      currentProfile = [(ENOAuthAuthenticator *)self currentProfile];
      name = [v7 name];
      v10 = [currentProfile isEqualToString:name];

      if (v10)
      {
        break;
      }

      ++v5;
      profiles3 = [(ENOAuthAuthenticator *)self profiles];
      v12 = [profiles3 count];
    }

    while (v5 < v12);
    v13 = v5 + 1;
  }

  else
  {
    v13 = 1;
  }

  profiles4 = [(ENOAuthAuthenticator *)self profiles];
  profiles5 = [(ENOAuthAuthenticator *)self profiles];
  v17 = [profiles4 objectAtIndex:{v13 % objc_msgSend(profiles5, "count")}];

  name2 = [v17 name];
  [(ENOAuthAuthenticator *)self updateCurrentBootstrapProfileWithName:name2];
}

- (void)completeAuthenticationWithError:(id)error
{
  errorCopy = error;
  if (![(ENOAuthAuthenticator *)self isCancelled])
  {
    [(ENOAuthAuthenticator *)self setState:0];
    delegate = [(ENOAuthAuthenticator *)self delegate];
    [delegate authenticatorDidFailWithError:errorCopy];
  }
}

- (void)completeAuthenticationWithCredentials:(id)credentials usesLinkedAppNotebook:(BOOL)notebook
{
  notebookCopy = notebook;
  credentialsCopy = credentials;
  if (![(ENOAuthAuthenticator *)self isCancelled])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = v6;
    if (notebookCopy)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKey:@"ENOAuthAuthenticatorAuthInfoAppNotebookIsLinked"];
    }

    delegate = [(ENOAuthAuthenticator *)self delegate];
    [delegate authenticatorDidAuthenticateWithCredentials:credentialsCopy authInfo:v7];
  }
}

- (void)didFinishLoading
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (![(ENOAuthAuthenticator *)self isCancelled])
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    receivedData = [(ENOAuthAuthenticator *)self receivedData];
    v5 = [v3 initWithData:receivedData encoding:4];

    response = [(ENOAuthAuthenticator *)self response];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) != 0 && (-[ENOAuthAuthenticator response](self, "response"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 statusCode], v8, v9 != 200))
    {
      NSLog(&cfstr_ReceivedErrorH.isa, v9);
      NSLog(&stru_285038A68.isa, v5);
      if (v9)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        v32 = @"statusCode";
        v33[0] = v28;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ENErrorDomain" code:1 userInfo:v9];
      [(ENOAuthAuthenticator *)self completeAuthenticationWithError:v12];
    }

    else
    {
      v9 = [objc_opt_class() parametersFromQueryString:v5];
      v10 = [v9 objectForKey:@"oauth_callback_confirmed"];

      if (v10)
      {
        v11 = [v9 objectForKey:@"oauth_token_secret"];
        [(ENOAuthAuthenticator *)self setTokenSecret:v11];

        v12 = [(ENOAuthAuthenticator *)self userAuthorizationURLStringWithParameters:v9];
        v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
        delegate = [(ENOAuthAuthenticator *)self delegate];
        oauthCallback = [(ENOAuthAuthenticator *)self oauthCallback];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __40__ENOAuthAuthenticator_didFinishLoading__block_invoke;
        v31[3] = &unk_278C19140;
        v31[4] = self;
        [delegate authenticatorShouldShowAuthorizationUIWithURL:v13 callbackPrefix:oauthCallback completionBlock:v31];
      }

      else
      {
        v12 = [v9 objectForKey:@"oauth_token"];
        v13 = [v9 objectForKey:@"edam_noteStoreUrl"];
        delegate = [v9 objectForKey:@"edam_userId"];
        oauthCallback = [v9 objectForKey:@"edam_webApiUrlPrefix"];
        v16 = [v9 objectForKey:@"edam_expires"];
        v17 = MEMORY[0x277CBEAA8];
        [v16 doubleValue];
        v19 = [v17 dateWithTimeIntervalSince1970:v18 / 1000.0];
        if (v12 && v13 && delegate && oauthCallback)
        {
          v20 = [ENCredentials alloc];
          [(ENOAuthAuthenticator *)self host];
          v30 = v16;
          v21 = oauthCallback;
          v22 = v19;
          v23 = delegate;
          v24 = v13;
          v26 = v25 = v12;
          v27 = [(ENCredentials *)v20 initWithHost:v26 edamUserId:v23 noteStoreUrl:v24 webApiUrlPrefix:v21 authenticationToken:v25 expirationDate:v22];

          v12 = v25;
          v13 = v24;
          delegate = v23;
          v19 = v22;
          oauthCallback = v21;
          v16 = v30;
          [(ENOAuthAuthenticator *)self completeAuthenticationWithCredentials:v27 usesLinkedAppNotebook:[(ENOAuthAuthenticator *)self userSelectedLinkedAppNotebook]];
          [(ENOAuthAuthenticator *)self setState:3];
        }

        else
        {
          v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ENErrorDomain" code:0 userInfo:0];
          [(ENOAuthAuthenticator *)self completeAuthenticationWithError:v27];
        }
      }
    }

    [(ENOAuthAuthenticator *)self setReceivedData:0];
    [(ENOAuthAuthenticator *)self setResponse:0];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)data
{
  dataCopy = data;
  receivedData = [(ENOAuthAuthenticator *)self receivedData];
  [receivedData appendData:dataCopy];
}

- (void)receivedResponse:(id)response
{
  [(ENOAuthAuthenticator *)self setResponse:response];
  data = [MEMORY[0x277CBEB28] data];
  [(ENOAuthAuthenticator *)self setReceivedData:data];
}

- (void)failedWithError:(id)error
{
  errorCopy = error;
  if (![(ENOAuthAuthenticator *)self isCancelled])
  {
    [(ENOAuthAuthenticator *)self setReceivedData:0];
    [(ENOAuthAuthenticator *)self setResponse:0];
    [(ENOAuthAuthenticator *)self completeAuthenticationWithError:errorCopy];
  }
}

- (void)handleDidBecomeActive
{
  state = [(ENOAuthAuthenticator *)self state];
  v4 = state > 3 || state == 1;
  if (v4 && ![(ENOAuthAuthenticator *)self isActiveBecauseOfCallback])
  {
    [(ENOAuthAuthenticator *)self gotCallbackURL:0];

    [(ENOAuthAuthenticator *)self setState:0];
  }
}

- (id)userAuthorizationURLStringWithParameters:(id)parameters
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  parametersCopy = parameters;
  string = [v4 string];
  deviceDescription = [objc_opt_class() deviceDescription];
  v8 = MEMORY[0x277CBEB38];
  v18[0] = @"oauth_token";
  v9 = [parametersCopy objectForKey:?];

  v19[0] = v9;
  v19[1] = @"ios";
  v18[1] = @"inapp";
  v18[2] = @"deviceDescription";
  v18[3] = @"deviceIdentifier";
  v19[2] = deviceDescription;
  v19[3] = string;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v11 = [v8 dictionaryWithDictionary:v10];

  if ([(ENOAuthAuthenticator *)self supportsLinkedAppNotebook])
  {
    [v11 setObject:@"true" forKey:@"supportLinkedSandbox"];
  }

  if ([(ENOAuthAuthenticator *)self preferRegistration])
  {
    [v11 setObject:@"true" forKey:@"preferRegistration"];
  }

  v12 = [objc_opt_class() queryStringFromParameters:v11];
  v13 = MEMORY[0x277CCACA8];
  host = [(ENOAuthAuthenticator *)self host];
  v15 = [v13 stringWithFormat:@"%@://%@/OAuth.action?%@", @"https", host, v12];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)oauthCallback
{
  v2 = MEMORY[0x277CCACA8];
  callbackScheme = [(ENOAuthAuthenticator *)self callbackScheme];
  v4 = [v2 stringWithFormat:@"%@://response", callbackScheme];

  return v4;
}

- (id)callbackScheme
{
  v2 = MEMORY[0x277CCACA8];
  consumerKey = [(ENOAuthAuthenticator *)self consumerKey];
  v4 = [consumerKey stringByReplacingOccurrencesOfString:@"_" withString:@"+"];
  v5 = [v2 stringWithFormat:@"en-%@", v4];

  return v5;
}

- (void)startOauthAuthentication
{
  if (![(ENOAuthAuthenticator *)self isCancelled])
  {
    v3 = MEMORY[0x277CBEAC0];
    oauthCallback = [(ENOAuthAuthenticator *)self oauthCallback];
    v5 = [v3 dictionaryWithObjectsAndKeys:{oauthCallback, @"oauth_callback", 0}];
    host = [(ENOAuthAuthenticator *)self host];
    consumerKey = [(ENOAuthAuthenticator *)self consumerKey];
    consumerSecret = [(ENOAuthAuthenticator *)self consumerSecret];
    v9 = [ENGCOAuth URLRequestForPath:@"/oauth" GETParameters:v5 scheme:@"https" host:host consumerKey:consumerKey consumerSecret:consumerSecret accessToken:0 tokenSecret:0];

    mEMORY[0x277CBABB8] = [MEMORY[0x277CBABB8] sharedSession];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__ENOAuthAuthenticator_startOauthAuthentication__block_invoke;
    v12[3] = &unk_278C1BB20;
    v12[4] = self;
    v11 = [mEMORY[0x277CBABB8] dataTaskWithRequest:v9 completionHandler:v12];

    [v11 resume];
  }
}

void __48__ENOAuthAuthenticator_startOauthAuthentication__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) failedWithError:v8];
  }

  if (v7)
  {
    [*(a1 + 32) receivedResponse:v7];
  }

  if (v9)
  {
    [*(a1 + 32) receivedData:v9];
  }

  [*(a1 + 32) didFinishLoading];
}

- (void)authenticate
{
  if ([(ENOAuthAuthenticator *)self inProgress])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ENOAuthAuthenticator.m" lineNumber:84 description:@"Authenticator is a single-use-only object!"];
  }

  delegate = [(ENOAuthAuthenticator *)self delegate];

  if (!delegate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ENOAuthAuthenticator.m" lineNumber:85 description:@"Must set authenticator delegate"];
  }

  if ([(ENOAuthAuthenticator *)self inProgress])
  {
    v14 = +[ENSession sharedSession];
    logger = [v14 logger];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot reuse single instance of %@", objc_opt_class()];
    [logger evernoteLogErrorString:v6];
  }

  else
  {
    [(ENOAuthAuthenticator *)self setInProgress:1];
    [(ENOAuthAuthenticator *)self emptyCookieJar];
    v7 = objc_alloc_init(ENCredentialStore);
    [(ENOAuthAuthenticator *)self setCredentialStore:v7];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    delegate2 = [(ENOAuthAuthenticator *)self delegate];
    userStoreClientForBootstrapping = [delegate2 userStoreClientForBootstrapping];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__ENOAuthAuthenticator_authenticate__block_invoke;
    v15[3] = &unk_278C19118;
    v15[4] = self;
    [userStoreClientForBootstrapping fetchBootstrapInfoWithLocale:localeIdentifier completion:v15];
  }
}

void __36__ENOAuthAuthenticator_authenticate__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = v5;
  if (a3)
  {
    [*(a1 + 32) startOauthAuthentication];
  }

  else
  {
    v6 = [v5 profiles];
    v7 = [v6 objectAtIndex:0];

    v8 = [v12 profiles];
    [*(a1 + 32) setProfiles:v8];

    v9 = [v7 name];
    [*(a1 + 32) setCurrentProfile:v9];

    v10 = [v7 settings];
    v11 = [v10 serviceHost];
    [*(a1 + 32) setHost:v11];

    [*(a1 + 32) startOauthAuthentication];
  }
}

- (void)emptyCookieJar
{
  v20 = *MEMORY[0x277D85DE8];
  host = [(ENOAuthAuthenticator *)self host];

  if (host)
  {
    mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    cookies = [mEMORY[0x277CBAB38] cookies];
    v6 = [cookies countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(cookies);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          domain = [v10 domain];
          host2 = [(ENOAuthAuthenticator *)self host];
          v13 = [domain hasSuffix:host2];

          if (v13)
          {
            [mEMORY[0x277CBAB38] deleteCookie:v10];
          }
        }

        v7 = [cookies countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end