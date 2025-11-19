@interface MSOAuthTokenHandler
+ (id)tokenHandlerWithConfiguration:(id)a3 existingCredential:(id)a4 URLSessionConfiguration:(id)a5 parentNetworkActivity:(id)a6;
- (MSOAuthTokenHandler)initWithConfiguration:(id)a3 existingCredential:(id)a4 URLSessionConfiguration:(id)a5 parentNetworkActivity:(id)a6;
- (void)fetchTokens:(id)a3;
- (void)performTokenFetchTaskWithSession:(id)a3 bodyString:(id)a4 completionHandler:(id)a5;
- (void)performTokenGrantRequestWithSession:(id)a3 completionHandler:(id)a4;
- (void)performTokenRefreshWithSession:(id)a3 completionHandler:(id)a4;
@end

@implementation MSOAuthTokenHandler

+ (id)tokenHandlerWithConfiguration:(id)a3 existingCredential:(id)a4 URLSessionConfiguration:(id)a5 parentNetworkActivity:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MSOAuthTokenHandler alloc] initWithConfiguration:v12 existingCredential:v11 URLSessionConfiguration:v10 parentNetworkActivity:v9];

  return v13;
}

- (MSOAuthTokenHandler)initWithConfiguration:(id)a3 existingCredential:(id)a4 URLSessionConfiguration:(id)a5 parentNetworkActivity:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MSOAuthTokenHandler;
  v15 = [(MSOAuthTokenHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_authorizationConfiguration, a3);
    objc_storeStrong(&v16->_authorizationCredential, a4);
    objc_storeStrong(&v16->_URLSessionConfiguration, a5);
    objc_storeStrong(&v16->_parentNetworkActivity, a6);
  }

  return v16;
}

- (void)performTokenFetchTaskWithSession:(id)a3 bodyString:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v29 = a3;
  v10 = _MSLogingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v8;
    _os_log_impl(&dword_23986C000, v10, OS_LOG_TYPE_INFO, "bodyString: %@", buf, 0xCu);
  }

  v11 = MEMORY[0x277CCAB70];
  v12 = [(CMSAuthenticationConfiguration *)self->_authorizationConfiguration authorizationURL];
  v13 = [v11 requestWithURL:v12];

  [v13 setHTTPMethod:@"POST"];
  [v13 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v14 = MEMORY[0x277CCACA8];
  v15 = [(CMSAuthenticationConfiguration *)self->_authorizationConfiguration clientID];
  v16 = [(CMSAuthenticationConfiguration *)self->_authorizationConfiguration clientSecret];
  v17 = [v14 stringWithFormat:@"%@:%@", v15, v16];

  v18 = [v17 dataUsingEncoding:4];
  v19 = [v18 base64EncodedStringWithOptions:0];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v19];
  [v13 setValue:v20 forHTTPHeaderField:@"Authorization"];
  [v8 dataUsingEncoding:4];
  v21 = v28 = v8;
  [v13 setHTTPBody:v21];

  v22 = [MEMORY[0x277CBEAA8] now];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke;
  v30[3] = &unk_278AA2B70;
  v31 = v22;
  v32 = v9;
  v23 = v9;
  v24 = v22;
  v25 = [v29 dataTaskWithRequest:v13 completionHandler:v30];

  v26 = [(MSOAuthTokenHandler *)self networkActivity];
  [v26 associateWithTask:v25];

  [v25 resume];
  v27 = *MEMORY[0x277D85DE8];
}

void __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _MSLogingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v76 = v8;
    v77 = 2112;
    v78 = v7;
    v79 = 2112;
    v80 = v9;
    _os_log_impl(&dword_23986C000, v10, OS_LOG_TYPE_INFO, "task complete: resp: %@ data: %@ error: %@", buf, 0x20u);
  }

  if (v9)
  {
    v11 = _MSLogingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_1();
    }
  }

  v12 = 0;
  if (!v7 || !v8)
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_45;
  }

  v13 = v8;
  if ([v13 statusCode] == 200)
  {
    v64 = 0;
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v64];
    v58 = v14;
    v59 = v64;
    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:@"token_type"];
      objc_opt_class();
      v60 = v15;
      if (objc_opt_isKindOfClass())
      {
        v12 = [v14 objectForKeyedSubscript:@"access_token"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v14 objectForKeyedSubscript:@"scope"];
          if (v16)
          {
            v17 = v16;
            objc_opt_class();
            v62 = v17;
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_19;
            }

            v18 = _MSLogingFacility();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_3();
            }
          }

          v62 = 0;
LABEL_19:
          v19 = [v14 objectForKeyedSubscript:@"refresh_token"];
          if (v19)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = v19;
              v21 = _MSLogingFacility();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_4();
              }

              v19 = 0;
            }
          }

          v22 = [v14 objectForKeyedSubscript:@"expires_in"];
          if (!v22 || (objc_opt_respondsToSelector() & 1) == 0 || ([v22 doubleValue], v23 <= 0.0))
          {
            v31 = 0;
LABEL_42:

            if (v12)
            {
              v32 = v60;
              v33 = v62;
              v34 = [CMSAuthenticationCredential authCredentialWithToken:v12 tokenType:v60 expirationDate:v31 scope:v62 refreshToken:v19];
            }

            else
            {
              v34 = 0;
              v32 = v60;
              v33 = v62;
            }

            goto LABEL_45;
          }

          v24 = v23;
          v25 = [v13 valueForHTTPHeaderField:@"Date"];
          if (!v25)
          {
            goto LABEL_29;
          }

          v26 = objc_alloc_init(MEMORY[0x277CCA968]);
          [v26 setDateFormat:@"EE, dd LLL yyyy HH:mm:ss zz"];
          v55 = v9;
          v27 = v12;
          v28 = v19;
          v29 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
          [v26 setLocale:v29];

          v19 = v28;
          v12 = v27;
          v9 = v55;
          v56 = [v26 dateFromString:v25];

          v30 = v56;
          if (!v56)
          {
LABEL_29:
            v30 = *(a1 + 32);
          }

          v57 = v30;
          v31 = [v30 dateByAddingTimeInterval:v24];

LABEL_41:
          goto LABEL_42;
        }

        v54 = MEMORY[0x277CCA9B8];
        v73 = @"MSUserInfoErrorStringKey";
        v74 = @"No access_token in response data";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v42 = [v54 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:8 userInfo:v22];
        v62 = 0;
        v31 = 0;
        v19 = 0;
LABEL_40:
        v25 = v9;
        v9 = v42;
        goto LABEL_41;
      }

      v43 = MEMORY[0x277CCA9B8];
      v71 = @"MSUserInfoErrorStringKey";
      v72 = @"No token_type in response data";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v42 = [v43 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:8 userInfo:v22];
      v62 = 0;
    }

    else
    {
      v40 = _MSLogingFacility();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_5();
      }

      v41 = MEMORY[0x277CCA9B8];
      v69 = @"MSUserInfoErrorStringKey";
      v70 = @"unable to parse json data";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v42 = [v41 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:8 userInfo:v22];
      v60 = 0;
      v62 = 0;
    }

    v31 = 0;
    v19 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"non-200 status code: %ld", objc_msgSend(v13, "statusCode")];
  v36 = _MSLogingFacility();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_2(v13, v36);
  }

  v37 = MEMORY[0x277CCA9B8];
  v67 = @"MSUserInfoErrorStringKey";
  v68 = v35;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v39 = [v37 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:8 userInfo:v38];

  v12 = 0;
  v19 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v9 = v39;
  v31 = 0;
LABEL_45:
  if (!(v34 | v9))
  {
    v61 = MEMORY[0x277CCA9B8];
    v63 = v31;
    v65 = @"MSUserInfoErrorStringKey";
    v66 = @"could not create credential from response data";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v44 = v12;
    v45 = v19;
    v46 = v33;
    v47 = v32;
    v48 = v8;
    v49 = v7;
    v51 = v50 = a1;
    v52 = [v61 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:8 userInfo:v51];

    a1 = v50;
    v7 = v49;
    v8 = v48;
    v32 = v47;
    v33 = v46;
    v19 = v45;
    v12 = v44;
    v9 = v52;
    v31 = v63;
  }

  (*(*(a1 + 40) + 16))();

  v53 = *MEMORY[0x277D85DE8];
}

- (void)performTokenGrantRequestWithSession:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a4;
  v8 = a3;
  v13 = [v6 string];
  [v13 appendString:@"grant_type=client_credentials"];
  v9 = [(CMSAuthenticationConfiguration *)self->_authorizationConfiguration scope];

  if (v9)
  {
    v10 = [(CMSAuthenticationConfiguration *)self->_authorizationConfiguration scope];
    v11 = [v10 formEncodedString];
    [v13 appendFormat:@"&scope=%@", v11];
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v13];
  [(MSOAuthTokenHandler *)self performTokenFetchTaskWithSession:v8 bodyString:v12 completionHandler:v7];
}

- (void)performTokenRefreshWithSession:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a4;
  v8 = a3;
  v15 = [v6 string];
  [v15 appendString:@"grant_type=refresh_token"];
  v9 = [(CMSAuthenticationCredential *)self->_authorizationCredential refreshToken];
  v10 = [v9 formEncodedString];
  [v15 appendFormat:@"&refresh_token=%@", v10];

  v11 = [(CMSAuthenticationCredential *)self->_authorizationCredential scope];

  if (v11)
  {
    v12 = [(CMSAuthenticationCredential *)self->_authorizationCredential scope];
    v13 = [v12 formEncodedString];
    [v15 appendFormat:@"&scope=%@", v13];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithString:v15];
  [(MSOAuthTokenHandler *)self performTokenFetchTaskWithSession:v8 bodyString:v14 completionHandler:v7];
}

- (void)fetchTokens:(id)a3
{
  v4 = a3;
  URLSessionConfiguration = self->_URLSessionConfiguration;
  if (URLSessionConfiguration)
  {
    v6 = URLSessionConfiguration;
  }

  else
  {
    v6 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__MSOAuthTokenHandler_fetchTokens___block_invoke;
  v28[3] = &unk_278AA2B98;
  v9 = v4;
  v30 = v9;
  v10 = v8;
  v29 = v10;
  v11 = MEMORY[0x23EE79E70](v28);
  authorizationCredential = self->_authorizationCredential;
  if (authorizationCredential && ([(CMSAuthenticationCredential *)authorizationCredential refreshToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = objc_alloc(MEMORY[0x277CFB0A0]);
    v15 = [(MSOAuthTokenHandler *)self parentNetworkActivity];
    v16 = [v14 initWithLabel:2 parentActivity:v15];
    [(MSOAuthTokenHandler *)self setNetworkActivity:v16];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __35__MSOAuthTokenHandler_fetchTokens___block_invoke_2;
    v25[3] = &unk_278AA2BE8;
    v17 = &v27;
    v25[4] = self;
    v27 = v11;
    v26 = v10;
    v18 = v11;
    [(MSOAuthTokenHandler *)self performTokenRefreshWithSession:v26 completionHandler:v25];
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x277CFB0A0]);
    v20 = [(MSOAuthTokenHandler *)self parentNetworkActivity];
    v21 = [v19 initWithLabel:1 parentActivity:v20];
    [(MSOAuthTokenHandler *)self setNetworkActivity:v21];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __35__MSOAuthTokenHandler_fetchTokens___block_invoke_4;
    v23[3] = &unk_278AA2BC0;
    v17 = &v24;
    v23[4] = self;
    v24 = v11;
    v22 = v11;
    [(MSOAuthTokenHandler *)self performTokenGrantRequestWithSession:v10 completionHandler:v23];
  }
}

uint64_t __35__MSOAuthTokenHandler_fetchTokens___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidateAndCancel];
}

void __35__MSOAuthTokenHandler_fetchTokens___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) networkActivity];
    [v7 completeActivity:2];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CFB0A0]);
    v9 = [*(a1 + 32) networkActivity];
    v10 = [v8 initWithLabel:1 parentActivity:v9];

    v11 = [*(a1 + 32) networkActivity];
    [v11 completeActivity:3];

    [*(a1 + 32) setNetworkActivity:v10];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__MSOAuthTokenHandler_fetchTokens___block_invoke_3;
    v14[3] = &unk_278AA2BC0;
    v14[4] = v12;
    v15 = *(a1 + 48);
    [v12 performTokenGrantRequestWithSession:v13 completionHandler:v14];
  }
}

void __35__MSOAuthTokenHandler_fetchTokens___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 networkActivity];
  if (v9)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  [v7 completeActivity:v8];

  (*(*(a1 + 40) + 16))();
}

void __35__MSOAuthTokenHandler_fetchTokens___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 networkActivity];
  if (v9)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  [v7 completeActivity:v8];

  (*(*(a1 + 40) + 16))();
}

void __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23986C000, v0, v1, "Task failed: Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 statusCode];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "non-200 status code: %ld", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23986C000, v0, v1, "Unusable scope %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23986C000, v0, v1, "Unusable refresh_token %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__MSOAuthTokenHandler_performTokenFetchTaskWithSession_bodyString_completionHandler___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23986C000, v0, v1, "unable to parse json data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end