@interface SOKerberosExtensionProcess
- (BOOL)checkSourceAppACLWithContext:(id)context;
- (SOKerberosExtensionProcess)init;
- (id)createContextForRequest:(id)request;
- (id)kerberosForRealm:(id)realm;
- (id)mapKnownPasswordErrorToString:(id)string;
- (id)settingsForContext:(id)context includeSiteCodeCache:(BOOL)cache;
- (void)attemptKerberosWithContext:(id)context andDelegate:(id)delegate;
- (void)beginAuthorizationWithRequest:(id)request;
- (void)cancelAuthorizationWithRequest:(id)request;
- (void)completeRequestWithHTTPResponseFromContext:(id)context;
- (void)completeRequestWithToken:(id)token andContext:(id)context;
- (void)destroyCredentialsWithContext:(id)context;
- (void)handleAddKeychainCreds:(id)creds;
- (void)handleGetRealmInfo:(id)info;
- (void)handleGetSiteCode:(id)code;
- (void)handleKerberosOperations:(id)operations andDelegate:(id)delegate;
- (void)handleLogoutWithContext:(id)context removeRealm:(BOOL)realm;
- (void)handleMigration;
- (void)handleRemoveRealm:(id)realm;
- (void)handleResetKeychainChoice:(id)choice;
- (void)removeSettingFile:(int)file;
- (void)saveValuesAfterSuccessfulAuthentication:(id)authentication;
@end

@implementation SOKerberosExtensionProcess

- (SOKerberosExtensionProcess)init
{
  v12.receiver = self;
  v12.super_class = SOKerberosExtensionProcess;
  v2 = [(SOKerberosExtensionProcess *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    kerberosByRealm = v2->_kerberosByRealm;
    v2->_kerberosByRealm = v3;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    requestContextMapping = v2->_requestContextMapping;
    v2->_requestContextMapping = weakToWeakObjectsMapTable;

    v7 = objc_alloc_init(SOKerberosHelper);
    kerberosHelper = v2->_kerberosHelper;
    v2->_kerberosHelper = v7;

    v9 = objc_alloc_init(SOKeychainHelper);
    keychainHelper = v2->_keychainHelper;
    v2->_keychainHelper = v9;
  }

  return v2;
}

- (void)handleMigration
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOKerberosExtensionProcess_handleMigration__block_invoke;
  block[3] = &unk_278C93018;
  block[4] = self;
  if (handleMigration_onceToken != -1)
  {
    dispatch_once(&handleMigration_onceToken, block);
  }
}

void __45__SOKerberosExtensionProcess_handleMigration__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"com.apple.AppSSOKerberos.version"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __45__SOKerberosExtensionProcess_handleMigration__block_invoke_cold_1(a1, v5, v6);
  }

  if (v5 <= 0)
  {
    [*(a1 + 32) removeSettingFile:v5];
    [v2 setObject:&unk_28520B9B8 forKey:@"com.apple.AppSSOKerberos.version"];
  }
}

- (void)removeSettingFile:(int)file
{
  if (file <= 0)
  {
    v3 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess removeSettingFile:];
    }

    v4 = [SOKerberosFileManager documentsDirectoryURLForFileName:@"realmSettings.plist"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v4 error:0];
  }
}

- (void)beginAuthorizationWithRequest:(id)request
{
  requestCopy = request;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SOKerberosExtensionProcess *)requestCopy beginAuthorizationWithRequest:v5];
  }

  [(SOKerberosExtensionProcess *)self handleMigration];
  requestedOperation = [requestCopy requestedOperation];
  if (![requestedOperation isEqualToString:@"logout"])
  {
    requestedOperation2 = [requestCopy requestedOperation];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v8 = getASAuthorizationOperationLogoutSymbolLoc_ptr;
    v31 = getASAuthorizationOperationLogoutSymbolLoc_ptr;
    if (!getASAuthorizationOperationLogoutSymbolLoc_ptr)
    {
      v9 = AuthenticationServicesLibrary();
      v29[3] = dlsym(v9, "ASAuthorizationOperationLogout");
      getASAuthorizationOperationLogoutSymbolLoc_ptr = v29[3];
      v8 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (v8)
    {
      v10 = [requestedOperation2 isEqualToString:*v8];

      if (v10)
      {
        goto LABEL_9;
      }

      requestedOperation3 = [requestCopy requestedOperation];
      v15 = [requestedOperation3 isEqualToString:@"get_site_code"];

      if (v15)
      {
        [(SOKerberosExtensionProcess *)self handleGetSiteCode:requestCopy];
        goto LABEL_11;
      }

      requestedOperation4 = [requestCopy requestedOperation];
      v17 = [requestedOperation4 isEqualToString:@"remove_realm"];

      if (v17)
      {
        [(SOKerberosExtensionProcess *)self handleRemoveRealm:requestCopy];
        goto LABEL_11;
      }

      requestedOperation5 = [requestCopy requestedOperation];
      v19 = [requestedOperation5 isEqualToString:@"reset_keychain_preference"];

      if (v19)
      {
        [(SOKerberosExtensionProcess *)self handleResetKeychainChoice:requestCopy];
        goto LABEL_11;
      }

      requestedOperation6 = [requestCopy requestedOperation];
      v21 = [requestedOperation6 isEqualToString:@"get_realm_info"];

      if (v21)
      {
        [(SOKerberosExtensionProcess *)self handleGetRealmInfo:requestCopy];
        goto LABEL_11;
      }

      requestedOperation7 = [requestCopy requestedOperation];
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v23 = getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr;
      v31 = getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr;
      if (!getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr)
      {
        v24 = AuthenticationServicesLibrary();
        v29[3] = dlsym(v24, "ASAuthorizationProviderAuthorizationOperationConfigurationRemoved");
        getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr = v29[3];
        v23 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v23)
      {
        v25 = [requestedOperation7 isEqualToString:*v23];

        if (!v25)
        {
          invalidKerberosOperation = [MEMORY[0x277CCA9B8] invalidKerberosOperation];
          [requestCopy completeWithError:invalidKerberosOperation];

          goto LABEL_11;
        }

        selfCopy2 = self;
        v12 = requestCopy;
        v13 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      [SOKerberosExtensionProcess beginAuthorizationWithRequest:];
    }

    v27 = [SOKerberosExtensionProcess beginAuthorizationWithRequest:];
    _Block_object_dispose(&v28, 8);
    _Unwind_Resume(v27);
  }

LABEL_9:
  selfCopy2 = self;
  v12 = requestCopy;
  v13 = 0;
LABEL_10:
  [(SOKerberosExtensionProcess *)selfCopy2 handleLogout:v12 removeRealm:v13];
LABEL_11:
}

- (void)cancelAuthorizationWithRequest:(id)request
{
  requestCopy = request;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess cancelAuthorizationWithRequest:];
  }

  v6 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess cancelAuthorizationWithRequest:?];
  }

  requestContextMapping = [(SOKerberosExtensionProcess *)self requestContextMapping];
  v8 = [requestContextMapping objectForKey:requestCopy];

  if (v8)
  {
    v9 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess cancelAuthorizationWithRequest:];
    }

    [v8 cancelRequest:1];
  }
}

- (void)handleKerberosOperations:(id)operations andDelegate:(id)delegate
{
  operationsCopy = operations;
  delegateCopy = delegate;
  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
  }

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm = [operationsCopy realm];
  uppercaseString = [realm uppercaseString];
  v12 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v12)
  {
    v13 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
    }

    v14 = [SOKerberosAuthentication alloc];
    realm2 = [operationsCopy realm];
    uppercaseString2 = [realm2 uppercaseString];
    v17 = [(SOKerberosAuthentication *)v14 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    realm3 = [operationsCopy realm];
    uppercaseString3 = [realm3 uppercaseString];
    [kerberosByRealm2 setObject:v17 forKeyedSubscript:uppercaseString3];
  }

  v21 = [(SOKerberosExtensionProcess *)self createContextForRequest:operationsCopy];
  if ([(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:v21])
  {
    extensionData = [v21 extensionData];
    if ([extensionData usePlatformSSOTGT])
    {
      currentSettings = [v21 currentSettings];
      if ([currentSettings platformSSOLoginInProgress])
      {
        currentSettings2 = [v21 currentSettings];
        platformSSOLoginSemaphore = [currentSettings2 platformSSOLoginSemaphore];

        if (!platformSSOLoginSemaphore)
        {
          goto LABEL_20;
        }

        currentSettings3 = [v21 currentSettings];
        platformSSOLoginSemaphore2 = [currentSettings3 platformSSOLoginSemaphore];
        v28 = dispatch_time(0, 120000000000);
        v29 = dispatch_semaphore_wait(platformSSOLoginSemaphore2, v28);

        if (!v29)
        {
LABEL_20:
          if ([v21 forceLoginViewController])
          {
            v32 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
            }

            [delegateCopy handleResult:2 context:v21 error:0];
          }

          else
          {
            [(SOKerberosExtensionProcess *)self attemptKerberosWithContext:v21 andDelegate:delegateCopy];
          }

          goto LABEL_25;
        }

        v30 = SO_LOG_SOKerberosExtensionProcess();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
        }

        extensionData = [v21 currentSettings];
        [extensionData setPlatformSSOLoginInProgress:0];
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  v31 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
  }

  [v21 completeRequestWithDoNotHandle];
LABEL_25:
}

- (void)handleGetSiteCode:(id)code
{
  v69 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetSiteCode:codeCopy];
  }

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm = [codeCopy realm];
  uppercaseString = [realm uppercaseString];
  v9 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v9)
  {
    v10 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:codeCopy andDelegate:?];
    }

    v11 = [SOKerberosAuthentication alloc];
    realm2 = [codeCopy realm];
    uppercaseString2 = [realm2 uppercaseString];
    v14 = [(SOKerberosAuthentication *)v11 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    realm3 = [codeCopy realm];
    uppercaseString3 = [realm3 uppercaseString];
    [kerberosByRealm2 setObject:v14 forKeyedSubscript:uppercaseString3];
  }

  kerberosByRealm3 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm4 = [codeCopy realm];
  uppercaseString4 = [realm4 uppercaseString];
  v21 = [kerberosByRealm3 objectForKeyedSubscript:uppercaseString4];

  v22 = [(SOKerberosExtensionProcess *)self createContextForRequest:codeCopy];
  extensionData = [v22 extensionData];
  LODWORD(realm4) = [extensionData useSiteAutoDiscovery];

  if (realm4)
  {
    networkIdentity = [v22 networkIdentity];
    [networkIdentity determineNetworkFingerprint];

    httpHeaders = [codeCopy httpHeaders];
    v26 = [httpHeaders objectForKey:@"force"];
    v27 = [v26 isEqualToString:@"1"];

    if (v27)
    {
      v28 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }

      v29 = dispatch_group_create();
      [v21 determineSiteCodeUsingContext:v22];
      v30 = dispatch_time(0, 15000000000);
      if (dispatch_group_wait(v29, v30) >= 1)
      {
        v31 = SO_LOG_SOKerberosExtensionProcess();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess handleGetSiteCode:];
        }
      }
    }

    httpHeaders2 = [codeCopy httpHeaders];
    v33 = [httpHeaders2 objectForKey:@"verbose"];
    v34 = [v33 isEqualToString:@"1"];

    if (v34)
    {
      v57 = v22;
      v35 = [SOKerberosRealmSettings alloc];
      realm5 = [codeCopy realm];
      siteCode = [(SOKerberosRealmSettings *)v35 initWithRealm:realm5];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      dumpSiteCodeCache = [(SOKerberosRealmSettings *)siteCode dumpSiteCodeCache];
      v39 = [dumpSiteCodeCache countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v59;
        v42 = &stru_285206D08;
        v43 = &stru_285206D08;
        do
        {
          v44 = 0;
          v45 = v42;
          do
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(dumpSiteCodeCache);
            }

            v46 = [*(*(&v58 + 1) + 8 * v44) description];
            v47 = [(__CFString *)v43 stringByAppendingString:v46];

            v42 = [v45 stringByAppendingString:v47];

            ++v44;
            v45 = v42;
            v43 = @"\n";
          }

          while (v40 != v44);
          v40 = [dumpSiteCodeCache countByEnumeratingWithState:&v58 objects:v68 count:16];
          v43 = @"\n";
        }

        while (v40);
      }

      else
      {
        v42 = &stru_285206D08;
      }

      v66 = @"site_code_cache";
      v67 = v42;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      [codeCopy completeWithHTTPAuthorizationHeaders:v54];

      v55 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }

      v22 = v57;
      goto LABEL_36;
    }

    callerBundleIdentifier = [codeCopy callerBundleIdentifier];
    networkIdentity2 = [v22 networkIdentity];
    networkFingerprint = [networkIdentity2 networkFingerprint];
    siteCode = [v21 retrieveCachedSiteCodeFromCacheForBundleIdentifier:callerBundleIdentifier networkFingerprint:networkFingerprint];
  }

  else
  {
    siteCode = [v22 siteCode];
  }

  code = [(SOKerberosRealmSettings *)siteCode code];

  if (code)
  {
    v64 = @"site_code";
    code2 = [(SOKerberosRealmSettings *)siteCode code];
    v65 = code2;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [codeCopy completeWithHTTPAuthorizationHeaders:v53];
  }

  else
  {
    v62 = @"site_code";
    v63 = @"no site code";
    code2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [codeCopy completeWithHTTPAuthorizationHeaders:code2];
  }

  v42 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetSiteCode:];
  }

LABEL_36:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveRealm:(id)realm
{
  realmCopy = realm;
  v4 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleRemoveRealm:realmCopy];
  }

  v5 = [SOKerberosRealmSettings alloc];
  realm = [realmCopy realm];
  v7 = [(SOKerberosRealmSettings *)v5 initWithRealm:realm];
  [(SOKerberosRealmSettings *)v7 removeAllValues];

  [realmCopy complete];
  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleRemoveRealm:];
  }
}

- (void)handleLogoutWithContext:(id)context removeRealm:(BOOL)realm
{
  realmCopy = realm;
  contextCopy = context;
  objc_sync_enter(0);
  impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

  if (impersonationBundleIdentifier)
  {
    [contextCopy impersonationBundleIdentifier];
  }

  else
  {
    [contextCopy callerBundleIdentifier];
  }
  v8 = ;
  HeimCredSetImpersonateBundle();

  kerberosHelper = [(SOKerberosExtensionProcess *)self kerberosHelper];
  credentialUUID = [contextCopy credentialUUID];
  [kerberosHelper destroyCredential:credentialUUID];

  HeimCredSetImpersonateBundle();
  objc_sync_exit(0);
  currentSettings = [contextCopy currentSettings];
  [currentSettings setUserPrincipalName:0];

  currentSettings2 = [contextCopy currentSettings];
  [currentSettings2 setUserName:0];

  [contextCopy setCredentialUUID:0];
  [contextCopy setUserNameIsReadOnly:0];
  [contextCopy setUserName:0];
  currentSettings3 = [contextCopy currentSettings];
  [currentSettings3 setCredentialUUID:0];

  currentSettings4 = [contextCopy currentSettings];
  [currentSettings4 setPkinitPersistentRef:0];

  currentSettings5 = [contextCopy currentSettings];
  [currentSettings5 setSmartCardTokenID:0];

  currentSettings6 = [contextCopy currentSettings];
  [currentSettings6 setDateLastLogin:0];

  currentSettings7 = [contextCopy currentSettings];
  [currentSettings7 setDateNextPacRefresh:0];

  currentSettings8 = [contextCopy currentSettings];
  [currentSettings8 setDatePasswordLastChangedAtLogin:0];

  currentSettings9 = [contextCopy currentSettings];
  [currentSettings9 setDatePasswordLastChanged:0];

  currentSettings10 = [contextCopy currentSettings];
  [currentSettings10 setDatePasswordExpires:0];

  currentSettings11 = [contextCopy currentSettings];
  [currentSettings11 setPasswordNeverExpires:0];

  currentSettings12 = [contextCopy currentSettings];
  [currentSettings12 setNetworkHomeDirectory:0];

  currentSettings13 = [contextCopy currentSettings];
  [currentSettings13 setDateADPasswordCanChange:0];

  currentSettings14 = [contextCopy currentSettings];
  [currentSettings14 setDateLocalPasswordLastChanged:0];

  currentSettings15 = [contextCopy currentSettings];
  [currentSettings15 setDateExpirationChecked:0];

  currentSettings16 = [contextCopy currentSettings];
  [currentSettings16 setDateExpirationNotificationSent:0];

  currentSettings17 = [contextCopy currentSettings];
  [currentSettings17 setUserCancelledLogin:0];

  currentSettings18 = [contextCopy currentSettings];
  [currentSettings18 setDateLoginCancelled:0];

  currentSettings19 = [contextCopy currentSettings];
  [currentSettings19 setPasswordChangeInProgress:0];

  keychainHelper = [(SOKerberosExtensionProcess *)self keychainHelper];
  serviceName = [contextCopy serviceName];
  [keychainHelper removeCredentialsFromKeychainWithService:serviceName];

  extensionUserData = [contextCopy extensionUserData];
  [extensionUserData setUserSetKeychainChoice:0];

  extensionUserData2 = [contextCopy extensionUserData];
  [extensionUserData2 setUseKeychain:1];

  if (realmCopy)
  {
    v34 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleLogoutWithContext:contextCopy removeRealm:?];
    }

    currentSettings20 = [contextCopy currentSettings];
    [currentSettings20 removeAllValues];

    realm = [contextCopy realm];
    v40 = 0;
    v37 = [SOKerberosHeimdalPluginSettings deleteSettingsForRealm:realm error:&v40];
    v38 = v40;

    if (!v37)
    {
      v39 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosExtensionProcess handleLogoutWithContext:removeRealm:];
      }
    }
  }

  else
  {
    [SOKerberosAuthentication saveValuesForPlugins:contextCopy];
  }
}

- (void)destroyCredentialsWithContext:(id)context
{
  contextCopy = context;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess destroyCredentialsWithContext:];
  }

  if ([(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:contextCopy])
  {
    credentialUUID = [contextCopy credentialUUID];

    if (credentialUUID)
    {
      credentialUUID2 = [contextCopy credentialUUID];
      uUIDString = [credentialUUID2 UUIDString];

      v9 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess destroyCredentialsWithContext:];
      }

      objc_sync_enter(0);
      impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

      if (impersonationBundleIdentifier)
      {
        [contextCopy impersonationBundleIdentifier];
      }

      else
      {
        [contextCopy callerBundleIdentifier];
      }
      v11 = ;
      HeimCredSetImpersonateBundle();

      kerberosHelper = [(SOKerberosExtensionProcess *)self kerberosHelper];
      credentialUUID3 = [contextCopy credentialUUID];
      [kerberosHelper destroyCredential:credentialUUID3];

      HeimCredSetImpersonateBundle();
      objc_sync_exit(0);
    }

    else
    {
      userPrincipalName = [contextCopy userPrincipalName];
      if (userPrincipalName)
      {
        v14 = userPrincipalName;
        userPrincipalName2 = [contextCopy userPrincipalName];
        v16 = [userPrincipalName2 isEqualToString:&stru_285206D08];

        if ((v16 & 1) == 0)
        {
          v17 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosExtensionProcess destroyCredentialsWithContext:contextCopy];
          }

          objc_sync_enter(0);
          impersonationBundleIdentifier2 = [contextCopy impersonationBundleIdentifier];

          if (impersonationBundleIdentifier2)
          {
            [contextCopy impersonationBundleIdentifier];
          }

          else
          {
            [contextCopy callerBundleIdentifier];
          }
          v19 = ;
          HeimCredSetImpersonateBundle();

          kerberosHelper2 = [(SOKerberosExtensionProcess *)self kerberosHelper];
          userPrincipalName3 = [contextCopy userPrincipalName];
          [kerberosHelper2 destroyCredentialForUPN:userPrincipalName3];

          HeimCredSetImpersonateBundle();
          objc_sync_exit(0);
        }
      }
    }
  }

  else
  {
    v12 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess destroyCredentialsWithContext:];
    }

    [contextCopy completeRequestWithDoNotHandle];
  }
}

- (void)handleResetKeychainChoice:(id)choice
{
  choiceCopy = choice;
  v4 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleResetKeychainChoice:choiceCopy];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"useKeychain"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"userSetKeychainChoice"];

  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults3 removeObjectForKey:@"rememberKeychainChoice"];

  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults4 synchronize];

  [choiceCopy complete];
  v9 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleResetKeychainChoice:];
  }
}

- (void)handleGetRealmInfo:(id)info
{
  infoCopy = info;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:infoCopy];
  }

  httpHeaders = [infoCopy httpHeaders];
  v7 = [httpHeaders objectForKey:@"verbose"];
  v8 = [v7 isEqualToString:@"1"];

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm = [infoCopy realm];
  uppercaseString = [realm uppercaseString];
  v12 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v12)
  {
    v13 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:infoCopy andDelegate:?];
    }

    v14 = [SOKerberosAuthentication alloc];
    realm2 = [infoCopy realm];
    uppercaseString2 = [realm2 uppercaseString];
    v17 = [(SOKerberosAuthentication *)v14 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    realm3 = [infoCopy realm];
    uppercaseString3 = [realm3 uppercaseString];
    [kerberosByRealm2 setObject:v17 forKeyedSubscript:uppercaseString3];
  }

  v21 = [(SOKerberosExtensionProcess *)self createContextForRequest:infoCopy];
  extensionData = [v21 extensionData];
  useSiteAutoDiscovery = [extensionData useSiteAutoDiscovery];

  if (useSiteAutoDiscovery)
  {
    networkIdentity = [v21 networkIdentity];
    [networkIdentity determineNetworkFingerprint];
  }

  v25 = [(SOKerberosExtensionProcess *)self settingsForContext:v21 includeSiteCodeCache:v8];
  v26 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }

  [infoCopy completeWithHTTPAuthorizationHeaders:v25];
  v27 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }
}

- (id)settingsForContext:(id)context includeSiteCodeCache:(BOOL)cache
{
  cacheCopy = cache;
  v75 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [SOKerberosRealmSettings alloc];
  realm = [contextCopy realm];
  v9 = [(SOKerberosRealmSettings *)v7 initWithRealm:realm];

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm2 = [contextCopy realm];
  uppercaseString = [realm2 uppercaseString];
  v13 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  v14 = objc_opt_new();
  realm3 = [contextCopy realm];

  if (realm3)
  {
    realm4 = [contextCopy realm];
    [v14 setObject:realm4 forKeyedSubscript:@"realm"];
  }

  userPrincipalName = [(SOKerberosRealmSettings *)v9 userPrincipalName];

  if (userPrincipalName)
  {
    userPrincipalName2 = [(SOKerberosRealmSettings *)v9 userPrincipalName];
    [v14 setObject:userPrincipalName2 forKeyedSubscript:@"upn"];
  }

  userName = [(SOKerberosRealmSettings *)v9 userName];

  if (userName)
  {
    userName2 = [(SOKerberosRealmSettings *)v9 userName];
    [v14 setObject:userName2 forKeyedSubscript:@"user_name"];
  }

  credentialUUID = [(SOKerberosRealmSettings *)v9 credentialUUID];

  if (credentialUUID)
  {
    credentialUUID2 = [(SOKerberosRealmSettings *)v9 credentialUUID];
    uUIDString = [credentialUUID2 UUIDString];
    [v14 setObject:uUIDString forKeyedSubscript:@"gss_cred_uuid"];
  }

  extensionData = [contextCopy extensionData];
  useSiteAutoDiscovery = [extensionData useSiteAutoDiscovery];

  v69 = v13;
  if (useSiteAutoDiscovery)
  {
    callerBundleIdentifier = [contextCopy callerBundleIdentifier];
    networkIdentity = [contextCopy networkIdentity];
    networkFingerprint = [networkIdentity networkFingerprint];
    v29 = [v13 retrieveCachedSiteCodeFromCacheForBundleIdentifier:callerBundleIdentifier networkFingerprint:networkFingerprint];

    code = [v29 code];

    if (code)
    {
      code2 = [v29 code];
      [v14 setObject:code2 forKeyedSubscript:@"site_code"];

      if (!cacheCopy)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [v14 setObject:@"no site code" forKeyedSubscript:@"site_code"];
      if (!cacheCopy)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    v67 = v29;
    v68 = contextCopy;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    dumpSiteCodeCache = [(SOKerberosRealmSettings *)v9 dumpSiteCodeCache];
    v36 = [dumpSiteCodeCache countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v71;
      v39 = &stru_285206D08;
      v40 = &stru_285206D08;
      do
      {
        v41 = 0;
        v42 = v39;
        do
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(dumpSiteCodeCache);
          }

          v43 = [*(*(&v70 + 1) + 8 * v41) description];
          v44 = [(__CFString *)v40 stringByAppendingString:v43];

          v39 = [(__CFString *)v42 stringByAppendingString:v44];

          ++v41;
          v42 = v39;
          v40 = @"\n";
        }

        while (v37 != v41);
        v37 = [dumpSiteCodeCache countByEnumeratingWithState:&v70 objects:v74 count:16];
        v40 = @"\n";
      }

      while (v37);
    }

    else
    {
      v39 = &stru_285206D08;
    }

    [v14 setObject:v39 forKeyedSubscript:@"site_code_cache"];
    v29 = v67;
    contextCopy = v68;
    goto LABEL_27;
  }

  siteCode = [contextCopy siteCode];

  if (siteCode)
  {
    siteCode2 = [contextCopy siteCode];
    code3 = [siteCode2 code];
    [v14 setObject:code3 forKeyedSubscript:@"site_code"];
  }

  else
  {
    [v14 setObject:@"no site code" forKeyedSubscript:@"site_code"];
  }

LABEL_28:
  v45 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v45 setFormatOptions:1907];
  dateLastLogin = [(SOKerberosRealmSettings *)v9 dateLastLogin];

  if (dateLastLogin)
  {
    dateLastLogin2 = [(SOKerberosRealmSettings *)v9 dateLastLogin];
    v48 = [v45 stringFromDate:dateLastLogin2];

    [v14 setObject:v48 forKeyedSubscript:@"login_date"];
  }

  datePasswordLastChanged = [(SOKerberosRealmSettings *)v9 datePasswordLastChanged];
  if (datePasswordLastChanged)
  {
    v50 = datePasswordLastChanged;
    dateExpirationChecked = [(SOKerberosRealmSettings *)v9 dateExpirationChecked];

    if (dateExpirationChecked)
    {
      datePasswordLastChanged2 = [(SOKerberosRealmSettings *)v9 datePasswordLastChanged];
      v53 = [v45 stringFromDate:datePasswordLastChanged2];
      [v14 setObject:v53 forKeyedSubscript:@"password_changed_date"];
    }
  }

  dateLocalPasswordLastChanged = [(SOKerberosRealmSettings *)v9 dateLocalPasswordLastChanged];

  if (dateLocalPasswordLastChanged)
  {
    dateLocalPasswordLastChanged2 = [(SOKerberosRealmSettings *)v9 dateLocalPasswordLastChanged];
    v56 = [v45 stringFromDate:dateLocalPasswordLastChanged2];
    [v14 setObject:v56 forKeyedSubscript:@"local_password_changed_date"];
  }

  datePasswordExpires = [(SOKerberosRealmSettings *)v9 datePasswordExpires];

  if (datePasswordExpires)
  {
    datePasswordExpires2 = [(SOKerberosRealmSettings *)v9 datePasswordExpires];
    v59 = [v45 stringFromDate:datePasswordExpires2];
    [v14 setObject:v59 forKeyedSubscript:@"password_expires_date"];
  }

  networkHomeDirectory = [(SOKerberosRealmSettings *)v9 networkHomeDirectory];

  if (networkHomeDirectory)
  {
    networkHomeDirectory2 = [(SOKerberosRealmSettings *)v9 networkHomeDirectory];
    [v14 setObject:networkHomeDirectory2 forKeyedSubscript:@"home_directory"];
  }

  if ([(SOKerberosRealmSettings *)v9 delayUserSetupCleared])
  {
    if ([(SOKerberosRealmSettings *)v9 delayUserSetupCleared])
    {
      v62 = @"1";
    }

    else
    {
      v62 = @"0";
    }

    [v14 setObject:v62 forKeyedSubscript:@"delayUserSetupCleared"];
  }

  if ([(SOKerberosRealmSettings *)v9 networkAvailable])
  {
    if ([(SOKerberosRealmSettings *)v9 networkAvailable])
    {
      v63 = @"1";
    }

    else
    {
      v63 = @"0";
    }

    [v14 setObject:v63 forKeyedSubscript:@"networkAvailable"];
  }

  if ([(SOKerberosRealmSettings *)v9 userCancelledLogin])
  {
    if ([(SOKerberosRealmSettings *)v9 userCancelledLogin])
    {
      v64 = @"1";
    }

    else
    {
      v64 = @"0";
    }

    [v14 setObject:v64 forKeyedSubscript:@"userCancelledLogin"];
  }

  v65 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)checkSourceAppACLWithContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  extensionData = [contextCopy extensionData];
  credentialBundleIdACL = [extensionData credentialBundleIdACL];
  if (credentialBundleIdACL)
  {
  }

  else
  {
    extensionData2 = [contextCopy extensionData];
    includeManagedAppsInBundleIdACL = [extensionData2 includeManagedAppsInBundleIdACL];

    if (!includeManagedAppsInBundleIdACL)
    {
LABEL_20:
      LOBYTE(v11) = 1;
      goto LABEL_25;
    }
  }

  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess checkSourceAppACLWithContext:contextCopy];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  extensionData3 = [contextCopy extensionData];
  credentialBundleIdACL2 = [extensionData3 credentialBundleIdACL];

  v11 = [credentialBundleIdACL2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(credentialBundleIdACL2);
        }

        lowercaseString = [*(*(&v23 + 1) + 8 * i) lowercaseString];
        callerBundleIdentifier = [contextCopy callerBundleIdentifier];
        lowercaseString2 = [callerBundleIdentifier lowercaseString];
        v17 = [lowercaseString isEqualToString:lowercaseString2];

        if (v17)
        {
          v11 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosExtensionProcess checkSourceAppACLWithContext:];
          }

          LODWORD(v11) = 1;
          goto LABEL_18;
        }
      }

      v11 = [credentialBundleIdACL2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  extensionData4 = [contextCopy extensionData];
  if ([extensionData4 includeManagedAppsInBundleIdACL])
  {
    isManagedApp = [contextCopy isManagedApp];

    if ((v11 | isManagedApp))
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_20;
    }
  }

  v20 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
  }

LABEL_25:
  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)createContextForRequest:(id)request
{
  requestCopy = request;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess createContextForRequest:requestCopy];
  }

  httpHeaders = [requestCopy httpHeaders];
  v7 = [SOKerberosExtensionData alloc];
  extensionData = [requestCopy extensionData];
  v9 = [(SOKerberosExtensionData *)v7 initWithDictionary:extensionData];

  if (!v9)
  {
    v10 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess createContextForRequest:requestCopy];
    }
  }

  v11 = [[SOKerberosContext alloc] initWithRequest:requestCopy extensionData:v9];
  siteCode = [(SOKerberosExtensionData *)v9 siteCode];
  if (siteCode)
  {
    v13 = siteCode;
    siteCode2 = [(SOKerberosExtensionData *)v9 siteCode];

    if (siteCode2 != @"no site code")
    {
      [(SOKerberosExtensionData *)v9 setUseSiteAutoDiscovery:0];
      v15 = [SOSiteCode alloc];
      siteCode3 = [(SOKerberosExtensionData *)v9 siteCode];
      v17 = [(SOSiteCode *)v15 initWithSiteCode:siteCode3 forNetworkFingerprint:@"profile"];
      [(SOKerberosContext *)v11 setSiteCode:v17];
    }
  }

  if ([(SOKerberosExtensionData *)v9 useSiteAutoDiscovery])
  {
    v18 = [SONetworkIdentity alloc];
    realm = [requestCopy realm];
    uppercaseString = [realm uppercaseString];
    callerBundleIdentifier = [(SOKerberosContext *)v11 callerBundleIdentifier];
    auditToken = [(SOKerberosContext *)v11 auditToken];
    v23 = [(SONetworkIdentity *)v18 initForRealm:uppercaseString bundleIdentifier:callerBundleIdentifier auditToken:auditToken];
    [(SOKerberosContext *)v11 setNetworkIdentity:v23];
  }

  requestedOperation = [requestCopy requestedOperation];
  if (([requestedOperation isEqualToString:@"login"] & 1) == 0)
  {
    requestedOperation2 = [requestCopy requestedOperation];
    if (([requestedOperation2 isEqualToString:@"get_credential_uuid"] & 1) == 0)
    {
      requestedOperation3 = [requestCopy requestedOperation];
      if (([requestedOperation3 isEqualToString:@"change_password"] & 1) == 0)
      {
        requestedOperation4 = [requestCopy requestedOperation];
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v28 = getASAuthorizationOperationLoginSymbolLoc_ptr;
        v57 = getASAuthorizationOperationLoginSymbolLoc_ptr;
        if (!getASAuthorizationOperationLoginSymbolLoc_ptr)
        {
          certificateRef[0] = MEMORY[0x277D85DD0];
          certificateRef[1] = 3221225472;
          certificateRef[2] = __getASAuthorizationOperationLoginSymbolLoc_block_invoke;
          certificateRef[3] = &unk_278C93090;
          v53 = &v54;
          v29 = AuthenticationServicesLibrary();
          v55[3] = dlsym(v29, "ASAuthorizationOperationLogin");
          getASAuthorizationOperationLoginSymbolLoc_ptr = *(v53[1] + 24);
          v28 = v55[3];
        }

        _Block_object_dispose(&v54, 8);
        if (!v28)
        {
          v48 = [SOKerberosExtensionProcess beginAuthorizationWithRequest:];
          _Block_object_dispose(&v54, 8);
          _Unwind_Resume(v48);
        }

        if (([requestedOperation4 isEqualToString:*v28] & 1) == 0)
        {
          v49 = [requestCopy url];
          [v49 scheme];
          v46 = v50 = requestedOperation4;
          lowercaseString = [v46 lowercaseString];
          v51 = [lowercaseString isEqualToString:@"realm"];

          if ((v51 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }
    }
  }

LABEL_23:
  [(SOKerberosContext *)v11 setReturnCredentialOnly:1];
  v30 = [httpHeaders objectForKey:@"force"];
  v31 = [v30 isEqualToString:@"1"];

  if (v31)
  {
    [(SOKerberosContext *)v11 setForceLoginViewController:1];
  }

  v32 = [httpHeaders objectForKey:@"refresh"];
  v33 = [v32 isEqualToString:@"1"];

  if (v33)
  {
    [(SOKerberosContext *)v11 setRefreshCredential:1];
  }

LABEL_27:
  requestContextMapping = [(SOKerberosExtensionProcess *)self requestContextMapping];
  [requestContextMapping setObject:v11 forKey:requestCopy];

  userName = [(SOKerberosContext *)v11 userName];
  if (userName)
  {
  }

  else
  {
    certificateUUID = [(SOKerberosExtensionData *)v9 certificateUUID];

    if (certificateUUID)
    {
      v38 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess createContextForRequest:];
      }

      keychainHelper = [(SOKerberosExtensionProcess *)self keychainHelper];
      certificateUUID2 = [(SOKerberosExtensionData *)v9 certificateUUID];
      v41 = [keychainHelper identityForUUIDString:certificateUUID2];

      if (v41)
      {
        certificateRef[0] = 0;
        SecIdentityCopyCertificate(v41, certificateRef);
        if (certificateRef[0])
        {
          v42 = SecCertificateCopyNTPrincipalNames();
          if ([v42 count])
          {
            v43 = [v42 objectAtIndex:0];
            [(SOKerberosContext *)v11 setUserName:v43];
            v44 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess createContextForRequest:];
            }
          }

          CFRelease(certificateRef[0]);
        }

        CFRelease(v41);
      }

      else
      {
        v45 = SO_LOG_SOKerberosExtensionProcess();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess createContextForRequest:];
        }
      }
    }
  }

  return v11;
}

- (void)attemptKerberosWithContext:(id)context andDelegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
  }

  if (([contextCopy requestCancelled] & 1) == 0)
  {
    if ([(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:contextCopy])
    {
      userPrincipalName = [contextCopy userPrincipalName];
      if (!userPrincipalName)
      {
        [delegateCopy handleResult:2 context:contextCopy error:0];
LABEL_22:

        goto LABEL_23;
      }

      v10 = MEMORY[0x277CCACA8];
      hostName = [contextCopy hostName];
      v12 = [v10 stringWithFormat:@"HTTP@%@", hostName];
      [contextCopy setServicePrincipalName:v12];

      kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
      realm = [contextCopy realm];
      uppercaseString = [realm uppercaseString];
      v16 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

      v31 = 0;
      v32 = 0;
      v17 = [v16 attemptKerberosWithContext:contextCopy returningToken:&v32 orError:&v31];
      v18 = v32;
      v19 = v31;
      if (v17 <= 5)
      {
        if ((v17 - 1) >= 3)
        {
          if (!v17)
          {
            v26 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
            }

            [(SOKerberosExtensionProcess *)self completeRequestWithToken:v18 andContext:contextCopy];
            goto LABEL_21;
          }

          if (v17 == 4)
          {
            v24 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
            }

            [(SOKerberosExtensionProcess *)self completeRequestWithHTTPResponseFromContext:contextCopy];
            goto LABEL_21;
          }

          goto LABEL_39;
        }
      }

      else
      {
        if (v17 <= 0x12)
        {
          if (((1 << v17) & 0x5BF00) != 0)
          {
            goto LABEL_19;
          }

          if (v17 == 14)
          {
            v30 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:v19 andDelegate:?];
            }

            [contextCopy completeRequestWithError:v19];
            goto LABEL_21;
          }

          if (v17 == 17)
          {
            v20 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:contextCopy andDelegate:?];
            }

            [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:contextCopy];
LABEL_35:
            [contextCopy completeRequestWithDoNotHandle];
            goto LABEL_21;
          }
        }

        if (v17 != 6)
        {
          if (v17 == 7)
          {
            v25 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:v19 andDelegate:?];
            }

            if ([v19 code] == -116 || objc_msgSend(v19, "code") == -113)
            {
              goto LABEL_35;
            }

            v22 = delegateCopy;
            v23 = 7;
LABEL_20:
            [v22 handleResult:v23 context:contextCopy error:v19];
LABEL_21:

            goto LABEL_22;
          }

LABEL_39:
          v27 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
          }

          unhandledKerberosResult = [MEMORY[0x277CCA9B8] unhandledKerberosResult];
          v29 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
          }

          [contextCopy completeRequestWithError:unhandledKerberosResult];
          goto LABEL_21;
        }
      }

LABEL_19:
      v22 = delegateCopy;
      v23 = v17;
      goto LABEL_20;
    }

    v21 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
    }

    [contextCopy completeRequestWithDoNotHandle];
  }

LABEL_23:
}

- (void)completeRequestWithToken:(id)token andContext:(id)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tokenCopy = token;
  [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:contextCopy];
  v8 = [tokenCopy base64EncodedStringWithOptions:16];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Negotiate %@", v8];
  v10 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess completeRequestWithToken:andContext:];
  }

  v13 = @"Authorization";
  v14[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [contextCopy completeRequestWithHeaders:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithHTTPResponseFromContext:(id)context
{
  contextCopy = context;
  [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:contextCopy];
  v5 = [(SOKerberosExtensionProcess *)self settingsForContext:contextCopy includeSiteCodeCache:0];
  v6 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }

  [contextCopy completeRequestWithHTTPResponseHeaders:v5];
}

- (void)saveValuesAfterSuccessfulAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  credentialUUID = [authenticationCopy credentialUUID];
  currentSettings = [authenticationCopy currentSettings];
  [currentSettings setCredentialUUID:credentialUUID];

  userPrincipalName = [authenticationCopy userPrincipalName];
  currentSettings2 = [authenticationCopy currentSettings];
  [currentSettings2 setUserPrincipalName:userPrincipalName];

  userName = [authenticationCopy userName];
  currentSettings3 = [authenticationCopy currentSettings];
  [currentSettings3 setUserName:userName];

  currentSettings4 = [authenticationCopy currentSettings];
  [currentSettings4 setUserCancelledLogin:0];

  currentSettings5 = [authenticationCopy currentSettings];
  [currentSettings5 setDateLoginCancelled:0];

  loginTimeStamp = [authenticationCopy loginTimeStamp];

  if (loginTimeStamp)
  {
    loginTimeStamp2 = [authenticationCopy loginTimeStamp];
    currentSettings6 = [authenticationCopy currentSettings];
    [currentSettings6 setDateLastLogin:loginTimeStamp2];
  }

  currentSettings7 = [authenticationCopy currentSettings];
  [currentSettings7 setDateUserSignedOut:0];

  currentSettings8 = [authenticationCopy currentSettings];
  [currentSettings8 setDelayUserSetupCleared:1];

  currentSettings9 = [authenticationCopy currentSettings];
  [currentSettings9 setPasswordChangeInProgress:0];

  extensionData = [authenticationCopy extensionData];
  if ([extensionData allowAutomaticLogin])
  {
    extensionUserData = [authenticationCopy extensionUserData];
    useKeychain = [extensionUserData useKeychain];

    if (!useKeychain)
    {
      goto LABEL_7;
    }

    pkinitPersistentRef = [authenticationCopy pkinitPersistentRef];
    currentSettings10 = [authenticationCopy currentSettings];
    [currentSettings10 setPkinitPersistentRef:pkinitPersistentRef];

    extensionData = [authenticationCopy certificateTokenID];
    currentSettings11 = [authenticationCopy currentSettings];
    [currentSettings11 setSmartCardTokenID:extensionData];
  }

LABEL_7:
  [(SOKerberosExtensionProcess *)self handleAddKeychainCreds:authenticationCopy];
}

- (void)handleAddKeychainCreds:(id)creds
{
  credsCopy = creds;
  extensionUserData = [credsCopy extensionUserData];
  useKeychain = [extensionUserData useKeychain];

  extensionData = [credsCopy extensionData];
  allowAutomaticLogin = [extensionData allowAutomaticLogin];

  if (([credsCopy credsCameFromKeychain] & 1) == 0 && allowAutomaticLogin && useKeychain)
  {
    keychainHelper = [(SOKerberosExtensionProcess *)self keychainHelper];
    serviceName = [credsCopy serviceName];
    userPrincipalName = [credsCopy userPrincipalName];
    password = [credsCopy password];
    extensionData2 = [credsCopy extensionData];
    [keychainHelper addCredentialsToKeychainWithService:serviceName withUsername:userPrincipalName withPassword:password requireUserPresence:{objc_msgSend(extensionData2, "requireUserPresence")}];
  }
}

- (id)mapKnownPasswordErrorToString:(id)string
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  userInfo = [stringCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kGSSMinorErrorCode"];

  v6 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v5;
    _os_log_impl(&dword_24006C000, v6, OS_LOG_TYPE_DEFAULT, "Password change error code: %@", &v26, 0xCu);
  }

  v7 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosExtensionProcess mapKnownPasswordErrorToString:];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLong:-1765328360];
  v9 = [v5 isEqualToNumber:v8];

  if (v9)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    userInfo2 = mainBundle;
    v12 = @"PASSWORD_CHANGE_PASSWORD_CHANGE_FAILED_OLD_PASSWORD_ALERT_TEXT";
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLong:-1765328353];
    v14 = [v5 isEqualToNumber:v13];

    if (v14)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      userInfo2 = mainBundle;
      v12 = @"PASSWORD_CHANGE_PASSWORD_CHANGE_FAILED_SERVER_ALERT_TEXT";
    }

    else
    {
      v15 = [MEMORY[0x277CCABB0] numberWithLong:-1765328228];
      v16 = [v5 isEqualToNumber:v15];

      if (v16)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        userInfo2 = mainBundle;
        v12 = @"KDC_UNREACHABLE";
      }

      else
      {
        v17 = [MEMORY[0x277CCABB0] numberWithLong:-1765328343];
        v18 = [v5 isEqualToNumber:v17];

        if (v18)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          userInfo2 = mainBundle;
          v12 = @"REALM_CASE_MISMATCH";
        }

        else
        {
          v19 = [MEMORY[0x277CCABB0] numberWithLong:-1765328160];
          v20 = [v5 isEqualToNumber:v19];

          if (!v20)
          {
            userInfo2 = [stringCopy userInfo];
            v24 = [userInfo2 objectForKeyedSubscript:@"NSDescription"];
            if (v24)
            {
              userInfo3 = [stringCopy userInfo];
              localizedDescription = [userInfo3 objectForKeyedSubscript:@"NSDescription"];
            }

            else
            {
              localizedDescription = [stringCopy localizedDescription];
            }

            goto LABEL_16;
          }

          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          userInfo2 = mainBundle;
          v12 = @"DEFAULT_REALM_MISSING";
        }
      }
    }
  }

  localizedDescription = [mainBundle localizedStringForKey:v12 value:&stru_285206D08 table:0];
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return localizedDescription;
}

- (id)kerberosForRealm:(id)realm
{
  realmCopy = realm;
  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  uppercaseString = [realmCopy uppercaseString];
  v7 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v7)
  {
    v8 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess kerberosForRealm:];
    }

    v9 = [SOKerberosAuthentication alloc];
    uppercaseString2 = [realmCopy uppercaseString];
    v11 = [(SOKerberosAuthentication *)v9 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    uppercaseString3 = [realmCopy uppercaseString];
    [kerberosByRealm2 setObject:v11 forKeyedSubscript:uppercaseString3];
  }

  kerberosByRealm3 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  uppercaseString4 = [realmCopy uppercaseString];
  v16 = [kerberosByRealm3 objectForKeyedSubscript:uppercaseString4];

  return v16;
}

void __45__SOKerberosExtensionProcess_handleMigration__block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 136315650;
  v6 = "[SOKerberosExtensionProcess handleMigration]_block_invoke";
  v7 = 1024;
  v8 = a2;
  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "%s Stored version: %d on %@", &v5, 0x1Cu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeSettingFile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginAuthorizationWithRequest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 realm];
  v5 = [a1 requestedOperation];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "******************* beginAuthorizationWithRequest: %@, realm: %@, operation: %@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)beginAuthorizationWithRequest:.cold.2()
{
  dlerror();
  v0 = abort_report_np();
  return [SOKerberosExtensionProcess cancelAuthorizationWithRequest:v0];
}

- (void)cancelAuthorizationWithRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cancelAuthorizationWithRequest:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 requestContextMapping];
  [v1 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelAuthorizationWithRequest:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleKerberosOperations:andDelegate:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA9B8] sourceAppNotAllowed];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(v1, v2, v3, v4, v5);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleGetSiteCode:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleGetSiteCode:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleGetSiteCode:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleGetSiteCode:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleRemoveRealm:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveRealm:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleLogoutWithContext:(void *)a1 removeRealm:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleLogoutWithContext:removeRealm:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1(&dword_24006C000, v0, v1, "error when deleting plugin settings: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleLogout:(void *)a1 removeRealm:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleLogout:removeRealm:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)destroyCredentialsWithContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)destroyCredentialsWithContext:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA9B8] sourceAppNotAllowed];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(v1, v2, v3, v4, v5);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)destroyCredentialsWithContext:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)destroyCredentialsWithContext:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleResetKeychainChoice:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleResetKeychainChoice:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleGetRealmInfo:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleGetRealmInfo:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleGetRealmInfo:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkSourceAppACLWithContext:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 callerBundleIdentifier];
  v3 = [a1 extensionData];
  v10 = [v3 credentialBundleIdACL];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)checkSourceAppACLWithContext:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createContextForRequest:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createContextForRequest:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 extensionData];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createContextForRequest:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createContextForRequest:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createContextForRequest:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:andDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:(void *)a1 andDelegate:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 servicePrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(void *)a1 andDelegate:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(void *)a1 andDelegate:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:andDelegate:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:andDelegate:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:andDelegate:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1(&dword_24006C000, v0, v1, "Result unhandled: %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:andDelegate:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1(&dword_24006C000, v0, v1, "Result error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithToken:andContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)mapKnownPasswordErrorToString:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1(&dword_24006C000, v0, v1, "Password change error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)kerberosForRealm:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end