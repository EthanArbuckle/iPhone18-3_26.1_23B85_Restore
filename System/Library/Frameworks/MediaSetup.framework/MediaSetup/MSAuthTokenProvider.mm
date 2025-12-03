@interface MSAuthTokenProvider
+ (void)fetchAuthTokensForMediaService:(id)service networkActivity:(id)activity completion:(id)completion;
+ (void)validateConfigurationResourceForMediaService:(id)service networkActivity:(id)activity completion:(id)completion;
@end

@implementation MSAuthTokenProvider

+ (void)fetchAuthTokensForMediaService:(id)service networkActivity:(id)activity completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  activityCopy = activity;
  completionCopy = completion;
  authConfiguration = [serviceCopy authConfiguration];

  if (authConfiguration)
  {
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    bundleIdentifier = [serviceCopy bundleIdentifier];
    [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:bundleIdentifier];

    v14 = _MSLogingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier2 = [serviceCopy bundleIdentifier];
      *buf = 138412290;
      v26 = bundleIdentifier2;
      _os_log_impl(&dword_23986C000, v14, OS_LOG_TYPE_INFO, "AuthFetch: Setting sourceApplicationBundleID to %@", buf, 0xCu);
    }

    authConfiguration2 = [serviceCopy authConfiguration];
    authCredential = [serviceCopy authCredential];
    v18 = [MSOAuthTokenHandler tokenHandlerWithConfiguration:authConfiguration2 existingCredential:authCredential URLSessionConfiguration:ephemeralSessionConfiguration parentNetworkActivity:activityCopy];

    objc_initWeak(buf, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke;
    v21[3] = &unk_278AA2B20;
    objc_copyWeak(&v24, buf);
    v23 = completionCopy;
    v22 = serviceCopy;
    [v18 fetchTokens:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = _MSLogingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MSAuthTokenProvider fetchAuthTokensForMediaService:serviceCopy networkActivity:v19 completion:?];
    }

    ephemeralSessionConfiguration = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:9 userInfo:0];
    (*(completionCopy + 2))(completionCopy, ephemeralSessionConfiguration);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v8 = (a1 + 32);
    [*(a1 + 32) setAuthCredential:v5];
    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:@"com.apple.mediasetup.errorDomain"])
      {
        v10 = [v6 code];

        if (v10 == 8)
        {
          [*v8 setAuthFatalError:1];
        }
      }

      else
      {
      }

      v16 = _MSLogingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke_cold_1((a1 + 32), v6, v16);
      }

      v15 = *(*(a1 + 40) + 16);
    }

    else
    {
      [*v8 setAuthFatalError:0];
      v13 = _MSLogingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*v8 serviceID];
        v18 = 138477827;
        v19 = v14;
        _os_log_impl(&dword_23986C000, v13, OS_LOG_TYPE_DEFAULT, "Successfully fetched authTokens for service %{private}@", &v18, 0xCu);
      }

      v15 = *(*(a1 + 40) + 16);
    }

    v15();
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:1 userInfo:0];
    (*(v11 + 16))(v11, v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)validateConfigurationResourceForMediaService:(id)service networkActivity:(id)activity completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  authCredential = [serviceCopy authCredential];
  authToken = [authCredential authToken];

  if (authToken)
  {
    authCredential2 = [serviceCopy authCredential];
    authHeader = [authCredential2 authHeader];
  }

  else
  {
    authHeader = 0;
  }

  v11 = _MSLogingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [serviceCopy bundleIdentifier];
    configPublicKey = [serviceCopy configPublicKey];
    *buf = 138412546;
    v32 = bundleIdentifier;
    v33 = 2112;
    v34 = configPublicKey;
    _os_log_impl(&dword_23986C000, v11, OS_LOG_TYPE_DEFAULT, "Validating mediaService for %@ with public key: %@", buf, 0x16u);
  }

  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  bundleIdentifier2 = [serviceCopy bundleIdentifier];
  v27 = ephemeralSessionConfiguration;
  [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:bundleIdentifier2];

  v16 = _MSLogingFacility();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier3 = [serviceCopy bundleIdentifier];
    *buf = 138412290;
    v32 = bundleIdentifier3;
    _os_log_impl(&dword_23986C000, v16, OS_LOG_TYPE_INFO, "ConfigFetch: Setting sourceApplicationBundleID to %@", buf, 0xCu);
  }

  v26 = MEMORY[0x277CFB098];
  configURL = [serviceCopy configURL];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  bundleIdentifier4 = [serviceCopy bundleIdentifier];
  configPublicKey2 = [serviceCopy configPublicKey];
  v23 = CMSCloudExtensionLanguageCode();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke;
  v29[3] = &unk_278AA2B48;
  v30 = completionCopy;
  v24 = completionCopy;
  [v26 configurationFromURL:configURL forSession:uUIDString usingAuth:authHeader authProvider:0 parentNetworkActivity:0 keyID:bundleIdentifier4 publicKey:configPublicKey2 URLSessionConfiguration:v27 languageCode:v23 completion:v29];

  v25 = *MEMORY[0x277D85DE8];
}

void __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = @"Missing configuration resource";
  if (v5 && !v6)
  {
    v9 = [v5 configForEndpoint:*MEMORY[0x277CFB090]];
    if (v9)
    {

      v10 = 0;
      goto LABEL_9;
    }

    v8 = @"Invalid configuration resource";
  }

  v11 = _MSLogingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke_cold_1(v7, v11);
  }

  v12 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v16[0] = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v12 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:10 userInfo:v13];

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)fetchAuthTokensForMediaService:(void *)a1 networkActivity:(NSObject *)a2 completion:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 serviceID];
  v5 = 138477827;
  v6 = v3;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch authTokens for service %{private}@ - mediaService missing authConfig", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 serviceID];
  v7 = 138478083;
  v8 = v5;
  v9 = 2113;
  v10 = a2;
  _os_log_error_impl(&dword_23986C000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch authTokens for service %{private}@. Error: %{private}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "Encountered an issue trying to attain configuration resource: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end