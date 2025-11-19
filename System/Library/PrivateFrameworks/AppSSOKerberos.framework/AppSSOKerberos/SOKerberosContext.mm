@interface SOKerberosContext
- (NSString)userPrincipalName;
- (SOKerberosContext)initWithRequest:(id)a3 extensionData:(id)a4;
- (void)cancelRequest:(BOOL)a3;
- (void)completeRequest;
- (void)completeRequestWithDoNotHandle;
- (void)completeRequestWithError:(id)a3;
- (void)completeRequestWithHTTPResponse:(id)a3 httpBody:(id)a4;
- (void)completeRequestWithHTTPResponseHeaders:(id)a3;
- (void)completeRequestWithHeaders:(id)a3;
- (void)finishRequest;
- (void)presentAuthorizationViewControllerWithCompletion:(id)a3;
- (void)setUserName:(id)a3;
- (void)startRequest;
- (void)waitForCompletion;
@end

@implementation SOKerberosContext

- (SOKerberosContext)initWithRequest:(id)a3 extensionData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v61.receiver = self;
  v61.super_class = SOKerberosContext;
  v9 = [(SOKerberosContext *)&v61 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorizationRequest, a3);
    v11 = [(ASAuthorizationProviderExtensionAuthorizationRequest *)v10->_authorizationRequest localizedCallerDisplayName];
    callerLocalizedName = v10->_callerLocalizedName;
    v10->_callerLocalizedName = v11;

    v13 = [v7 realm];
    v14 = [v13 uppercaseString];
    realm = v10->_realm;
    v10->_realm = v14;

    v16 = [v7 url];
    v17 = [v16 host];
    hostName = v10->_hostName;
    v10->_hostName = v17;

    objc_storeStrong(&v10->_extensionData, a4);
    v19 = objc_alloc_init(SOKerberosExtensionUserData);
    extensionUserData = v10->_extensionUserData;
    v10->_extensionUserData = v19;

    v10->_returnCredentialOnly = 0;
    v21 = dispatch_group_create();
    dispatchGroup = v10->_dispatchGroup;
    v10->_dispatchGroup = v21;

    v23 = [(ASAuthorizationProviderExtensionAuthorizationRequest *)v10->_authorizationRequest callerBundleIdentifier];
    callerBundleIdentifier = v10->_callerBundleIdentifier;
    v10->_callerBundleIdentifier = v23;

    v25 = [(ASAuthorizationProviderExtensionAuthorizationRequest *)v10->_authorizationRequest authorizationRequest];
    v26 = [v25 impersonationBundleIdentifier];
    impersonationBundleIdentifier = v10->_impersonationBundleIdentifier;
    v10->_impersonationBundleIdentifier = v26;

    if ([(NSString *)v10->_impersonationBundleIdentifier isEqualToString:&stru_285206D08])
    {
      v28 = v10->_impersonationBundleIdentifier;
      v10->_impersonationBundleIdentifier = 0;
    }

    v10->_isManagedApp = [v7 isCallerManaged];
    *&v10->_attemptedToGetCredsFromKeychain = 0;
    v10->_laContextFailureCount = 0;
    v10->_refreshCredential = 0;
    *&v10->_smartCardNeedsInsert = 0;
    v29 = dispatch_group_create();
    siteCodeGroup = v10->_siteCodeGroup;
    v10->_siteCodeGroup = v29;

    v31 = [v7 authorizationRequest];
    v32 = [v31 auditTokenData];
    auditToken = v10->_auditToken;
    v10->_auditToken = v32;

    v10->_useKerberosPasswordInsteadOfMDMIdentity = 0;
    v34 = [SOKerberosRealmSettings alloc];
    v35 = [(SOKerberosContext *)v10 realm];
    v36 = [(SOKerberosRealmSettings *)v34 initWithRealm:v35];
    currentSettings = v10->_currentSettings;
    v10->_currentSettings = v36;

    [(SOKerberosRealmSettings *)v10->_currentSettings startListeningForPlatformSSOTGTChanges];
    v38 = v10->_currentSettings;
    if (v38)
    {
      v39 = [(SOKerberosRealmSettings *)v38 credentialUUID];
      credentialUUID = v10->_credentialUUID;
      v10->_credentialUUID = v39;

      v41 = [(SOKerberosRealmSettings *)v10->_currentSettings pkinitPersistentRef];
      pkinitPersistentRef = v10->_pkinitPersistentRef;
      v10->_pkinitPersistentRef = v41;

      v43 = [(SOKerberosRealmSettings *)v10->_currentSettings smartCardTokenID];
      certificateTokenID = v10->_certificateTokenID;
      v10->_certificateTokenID = v43;

      v45 = [(SOKerberosRealmSettings *)v10->_currentSettings userPrincipalName];

      if (v45)
      {
        v46 = SO_LOG_SOKerberosContext();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosContext initWithRequest:? extensionData:?];
        }

        v47 = [(SOKerberosRealmSettings *)v10->_currentSettings userPrincipalName];
        userPrincipalName = v10->_userPrincipalName;
        v10->_userPrincipalName = v47;

        v49 = [(SOKerberosRealmSettings *)v10->_currentSettings userName];
        userName = v10->_userName;
        v10->_userName = v49;

        v10->_userNameIsReadOnly = 1;
      }

      else
      {
        v51 = [v8 principalName];

        if (v51)
        {
          v52 = SO_LOG_SOKerberosContext();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosContext initWithRequest:v8 extensionData:?];
          }

          v53 = [v8 principalName];
          v54 = v10->_userName;
          v10->_userName = v53;
        }

        else
        {
          v55 = [v7 httpHeaders];
          v56 = [v55 objectForKey:@"user_name"];
          if (v56)
          {
            v57 = SO_LOG_SOKerberosContext();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosContext initWithRequest:extensionData:];
            }

            objc_storeStrong(&v10->_userName, v56);
            v10->_userNameIsReadOnly = 1;
          }
        }
      }

      v58 = [v8 principalName];

      if (v58)
      {
        v59 = SO_LOG_SOKerberosContext();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosContext initWithRequest:v59 extensionData:?];
        }

        v10->_userNameIsReadOnly = 1;
      }
    }
  }

  return v10;
}

- (NSString)userPrincipalName
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", self->_realm];
  userPrincipalName = self->_userPrincipalName;
  if (userPrincipalName && self->_realm)
  {
    v5 = [(NSString *)userPrincipalName hasSuffix:v3];
    v6 = self->_userPrincipalName;
    if (!v5)
    {
      v7 = [(NSString *)v6 lowercaseString];
      v8 = [v3 lowercaseString];
      v9 = [v7 hasSuffix:v8];

      if (v9)
      {
        v10 = self->_userPrincipalName;
LABEL_13:
        v13 = [(NSString *)v10 stringByReplacingOccurrencesOfString:v3 withString:v3 options:1 range:0, [(NSString *)v10 length]];
        goto LABEL_17;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = self->_userPrincipalName;
      goto LABEL_16;
    }
  }

  else
  {
    userName = self->_userName;
    if (!userName || !self->_realm)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v12 = [(NSString *)userName hasSuffix:v3];
    v6 = self->_userName;
    if (!v12)
    {
      v15 = [(NSString *)v6 lowercaseString];
      v16 = [v3 lowercaseString];
      v17 = [v15 hasSuffix:v16];

      if (v17)
      {
        v10 = self->_userName;
        goto LABEL_13;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = self->_userName;
LABEL_16:
      v13 = [v18 stringWithFormat:@"%@@%@", v19, self->_realm];
      goto LABEL_17;
    }
  }

  v13 = v6;
LABEL_17:
  v14 = v13;
LABEL_18:

  return v14;
}

- (void)setUserName:(id)a3
{
  v5 = a3;
  if (!self->_userNameIsReadOnly)
  {
    v7 = v5;
    objc_storeStrong(&self->_userName, a3);
    userPrincipalName = self->_userPrincipalName;
    self->_userPrincipalName = 0;

    v5 = v7;
  }
}

- (void)startRequest
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** request already started: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishRequest
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** request already finished: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)waitForCompletion
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** waitForCompletion Finished: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelRequest:(BOOL)a3
{
  v4 = SO_LOG_SOKerberosContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext cancelRequest:];
  }

  [(SOKerberosContext *)self setRequestCancelled:1];
  [(SOKerberosContext *)self finishRequest];
  v5 = [(SOKerberosContext *)self authorizationRequest];
  [v5 cancel];
}

- (void)completeRequest
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** completeRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithHeaders:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithHeaders:];
  }

  [(SOKerberosContext *)self finishRequest];
  v6 = [(SOKerberosContext *)self authorizationRequest];
  [v6 completeWithHTTPAuthorizationHeaders:v4];
}

- (void)completeRequestWithHTTPResponseHeaders:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithHTTPResponseHeaders:];
  }

  v6 = objc_alloc(MEMORY[0x277CCAA40]);
  v7 = [(SOKerberosContext *)self authorizationRequest];
  v8 = [v7 url];
  v9 = [v6 initWithURL:v8 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v4];

  v10 = objc_opt_new();
  [(SOKerberosContext *)self completeRequestWithHTTPResponse:v9 httpBody:v10];
}

- (void)completeRequestWithHTTPResponse:(id)a3 httpBody:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SO_LOG_SOKerberosContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithHTTPResponse:httpBody:];
  }

  [(SOKerberosContext *)self finishRequest];
  v9 = [(SOKerberosContext *)self authorizationRequest];
  [v9 completeWithHTTPResponse:v7 httpBody:v6];
}

- (void)completeRequestWithError:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithError:];
  }

  [(SOKerberosContext *)self finishRequest];
  v6 = [(SOKerberosContext *)self authorizationRequest];
  [v6 completeWithError:v4];
}

- (void)completeRequestWithDoNotHandle
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "completeRequestWithDoNotHandle: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentAuthorizationViewControllerWithCompletion:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SO_LOG_SOKerberosContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext presentAuthorizationViewControllerWithCompletion:];
  }

  v6 = [(SOKerberosContext *)self authorizationRequest];
  v7 = [v6 authorizationRequest];
  v10 = &unk_28520B9A0;
  v11[0] = &unk_28520B9A0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v7 presentAuthorizationViewControllerWithHints:v8 completion:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequest:(id *)a1 extensionData:.cold.1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_24006C000, v2, v3, "user principal name is set in saved settings: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequest:(void *)a1 extensionData:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 principalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_24006C000, v2, v3, "user name is set in extensiondata: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequest:extensionData:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "user principal name is set in request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** canceling request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithHeaders:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** completeRequestWithHeaders: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithHTTPResponseHeaders:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** completeRequesWithHTTPBody: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithHTTPResponse:httpBody:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** completeRequesWithHTTPResponse: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** completeRequestWithError: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentAuthorizationViewControllerWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "*************** presentAuthorizationViewControllerWithCompletion: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end