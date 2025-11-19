@interface SOKerberosExtensionProcess
- (BOOL)checkSourceAppACLWithContext:(id)a3;
- (SOKerberosExtensionProcess)init;
- (id)createContextForRequest:(id)a3;
- (id)kerberosForRealm:(id)a3;
- (id)mapKnownPasswordErrorToString:(id)a3;
- (id)settingsForContext:(id)a3 includeSiteCodeCache:(BOOL)a4;
- (void)attemptKerberosWithContext:(id)a3 andDelegate:(id)a4;
- (void)beginAuthorizationWithRequest:(id)a3;
- (void)cancelAuthorizationWithRequest:(id)a3;
- (void)completeRequestWithHTTPResponseFromContext:(id)a3;
- (void)completeRequestWithToken:(id)a3 andContext:(id)a4;
- (void)destroyCredentialsWithContext:(id)a3;
- (void)handleAddKeychainCreds:(id)a3;
- (void)handleGetRealmInfo:(id)a3;
- (void)handleGetSiteCode:(id)a3;
- (void)handleKerberosOperations:(id)a3 andDelegate:(id)a4;
- (void)handleLogoutWithContext:(id)a3 removeRealm:(BOOL)a4;
- (void)handleMigration;
- (void)handleRemoveRealm:(id)a3;
- (void)handleResetKeychainChoice:(id)a3;
- (void)removeSettingFile:(int)a3;
- (void)saveValuesAfterSuccessfulAuthentication:(id)a3;
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

    v5 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    requestContextMapping = v2->_requestContextMapping;
    v2->_requestContextMapping = v5;

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

- (void)removeSettingFile:(int)a3
{
  if (a3 <= 0)
  {
    v3 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess removeSettingFile:];
    }

    v4 = [SOKerberosFileManager documentsDirectoryURLForFileName:@"realmSettings.plist"];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 removeItemAtURL:v4 error:0];
  }
}

- (void)beginAuthorizationWithRequest:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SOKerberosExtensionProcess *)v4 beginAuthorizationWithRequest:v5];
  }

  [(SOKerberosExtensionProcess *)self handleMigration];
  v6 = [v4 requestedOperation];
  if (![v6 isEqualToString:@"logout"])
  {
    v7 = [v4 requestedOperation];
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
      v10 = [v7 isEqualToString:*v8];

      if (v10)
      {
        goto LABEL_9;
      }

      v14 = [v4 requestedOperation];
      v15 = [v14 isEqualToString:@"get_site_code"];

      if (v15)
      {
        [(SOKerberosExtensionProcess *)self handleGetSiteCode:v4];
        goto LABEL_11;
      }

      v16 = [v4 requestedOperation];
      v17 = [v16 isEqualToString:@"remove_realm"];

      if (v17)
      {
        [(SOKerberosExtensionProcess *)self handleRemoveRealm:v4];
        goto LABEL_11;
      }

      v18 = [v4 requestedOperation];
      v19 = [v18 isEqualToString:@"reset_keychain_preference"];

      if (v19)
      {
        [(SOKerberosExtensionProcess *)self handleResetKeychainChoice:v4];
        goto LABEL_11;
      }

      v20 = [v4 requestedOperation];
      v21 = [v20 isEqualToString:@"get_realm_info"];

      if (v21)
      {
        [(SOKerberosExtensionProcess *)self handleGetRealmInfo:v4];
        goto LABEL_11;
      }

      v22 = [v4 requestedOperation];
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
        v25 = [v22 isEqualToString:*v23];

        if (!v25)
        {
          v26 = [MEMORY[0x277CCA9B8] invalidKerberosOperation];
          [v4 completeWithError:v26];

          goto LABEL_11;
        }

        v11 = self;
        v12 = v4;
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
  v11 = self;
  v12 = v4;
  v13 = 0;
LABEL_10:
  [(SOKerberosExtensionProcess *)v11 handleLogout:v12 removeRealm:v13];
LABEL_11:
}

- (void)cancelAuthorizationWithRequest:(id)a3
{
  v4 = a3;
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

  v7 = [(SOKerberosExtensionProcess *)self requestContextMapping];
  v8 = [v7 objectForKey:v4];

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

- (void)handleKerberosOperations:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:v6 andDelegate:?];
  }

  v9 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v10 = [v6 realm];
  v11 = [v10 uppercaseString];
  v12 = [v9 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:v6 andDelegate:?];
    }

    v14 = [SOKerberosAuthentication alloc];
    v15 = [v6 realm];
    v16 = [v15 uppercaseString];
    v17 = [(SOKerberosAuthentication *)v14 initWithRealm:v16];
    v18 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    v19 = [v6 realm];
    v20 = [v19 uppercaseString];
    [v18 setObject:v17 forKeyedSubscript:v20];
  }

  v21 = [(SOKerberosExtensionProcess *)self createContextForRequest:v6];
  if ([(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:v21])
  {
    v22 = [v21 extensionData];
    if ([v22 usePlatformSSOTGT])
    {
      v23 = [v21 currentSettings];
      if ([v23 platformSSOLoginInProgress])
      {
        v24 = [v21 currentSettings];
        v25 = [v24 platformSSOLoginSemaphore];

        if (!v25)
        {
          goto LABEL_20;
        }

        v26 = [v21 currentSettings];
        v27 = [v26 platformSSOLoginSemaphore];
        v28 = dispatch_time(0, 120000000000);
        v29 = dispatch_semaphore_wait(v27, v28);

        if (!v29)
        {
LABEL_20:
          if ([v21 forceLoginViewController])
          {
            v32 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess handleKerberosOperations:v6 andDelegate:?];
            }

            [v7 handleResult:2 context:v21 error:0];
          }

          else
          {
            [(SOKerberosExtensionProcess *)self attemptKerberosWithContext:v21 andDelegate:v7];
          }

          goto LABEL_25;
        }

        v30 = SO_LOG_SOKerberosExtensionProcess();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess handleKerberosOperations:v6 andDelegate:?];
        }

        v22 = [v21 currentSettings];
        [v22 setPlatformSSOLoginInProgress:0];
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

- (void)handleGetSiteCode:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetSiteCode:v4];
  }

  v6 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v7 = [v4 realm];
  v8 = [v7 uppercaseString];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:v4 andDelegate:?];
    }

    v11 = [SOKerberosAuthentication alloc];
    v12 = [v4 realm];
    v13 = [v12 uppercaseString];
    v14 = [(SOKerberosAuthentication *)v11 initWithRealm:v13];
    v15 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    v16 = [v4 realm];
    v17 = [v16 uppercaseString];
    [v15 setObject:v14 forKeyedSubscript:v17];
  }

  v18 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v19 = [v4 realm];
  v20 = [v19 uppercaseString];
  v21 = [v18 objectForKeyedSubscript:v20];

  v22 = [(SOKerberosExtensionProcess *)self createContextForRequest:v4];
  v23 = [v22 extensionData];
  LODWORD(v19) = [v23 useSiteAutoDiscovery];

  if (v19)
  {
    v24 = [v22 networkIdentity];
    [v24 determineNetworkFingerprint];

    v25 = [v4 httpHeaders];
    v26 = [v25 objectForKey:@"force"];
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

    v32 = [v4 httpHeaders];
    v33 = [v32 objectForKey:@"verbose"];
    v34 = [v33 isEqualToString:@"1"];

    if (v34)
    {
      v57 = v22;
      v35 = [SOKerberosRealmSettings alloc];
      v36 = [v4 realm];
      v37 = [(SOKerberosRealmSettings *)v35 initWithRealm:v36];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v38 = [(SOKerberosRealmSettings *)v37 dumpSiteCodeCache];
      v39 = [v38 countByEnumeratingWithState:&v58 objects:v68 count:16];
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
              objc_enumerationMutation(v38);
            }

            v46 = [*(*(&v58 + 1) + 8 * v44) description];
            v47 = [(__CFString *)v43 stringByAppendingString:v46];

            v42 = [v45 stringByAppendingString:v47];

            ++v44;
            v45 = v42;
            v43 = @"\n";
          }

          while (v40 != v44);
          v40 = [v38 countByEnumeratingWithState:&v58 objects:v68 count:16];
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
      [v4 completeWithHTTPAuthorizationHeaders:v54];

      v55 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }

      v22 = v57;
      goto LABEL_36;
    }

    v48 = [v4 callerBundleIdentifier];
    v49 = [v22 networkIdentity];
    v50 = [v49 networkFingerprint];
    v37 = [v21 retrieveCachedSiteCodeFromCacheForBundleIdentifier:v48 networkFingerprint:v50];
  }

  else
  {
    v37 = [v22 siteCode];
  }

  v51 = [(SOKerberosRealmSettings *)v37 code];

  if (v51)
  {
    v64 = @"site_code";
    v52 = [(SOKerberosRealmSettings *)v37 code];
    v65 = v52;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [v4 completeWithHTTPAuthorizationHeaders:v53];
  }

  else
  {
    v62 = @"site_code";
    v63 = @"no site code";
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [v4 completeWithHTTPAuthorizationHeaders:v52];
  }

  v42 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetSiteCode:];
  }

LABEL_36:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveRealm:(id)a3
{
  v3 = a3;
  v4 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleRemoveRealm:v3];
  }

  v5 = [SOKerberosRealmSettings alloc];
  v6 = [v3 realm];
  v7 = [(SOKerberosRealmSettings *)v5 initWithRealm:v6];
  [(SOKerberosRealmSettings *)v7 removeAllValues];

  [v3 complete];
  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleRemoveRealm:];
  }
}

- (void)handleLogoutWithContext:(id)a3 removeRealm:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_sync_enter(0);
  v7 = [v6 impersonationBundleIdentifier];

  if (v7)
  {
    [v6 impersonationBundleIdentifier];
  }

  else
  {
    [v6 callerBundleIdentifier];
  }
  v8 = ;
  HeimCredSetImpersonateBundle();

  v9 = [(SOKerberosExtensionProcess *)self kerberosHelper];
  v10 = [v6 credentialUUID];
  [v9 destroyCredential:v10];

  HeimCredSetImpersonateBundle();
  objc_sync_exit(0);
  v11 = [v6 currentSettings];
  [v11 setUserPrincipalName:0];

  v12 = [v6 currentSettings];
  [v12 setUserName:0];

  [v6 setCredentialUUID:0];
  [v6 setUserNameIsReadOnly:0];
  [v6 setUserName:0];
  v13 = [v6 currentSettings];
  [v13 setCredentialUUID:0];

  v14 = [v6 currentSettings];
  [v14 setPkinitPersistentRef:0];

  v15 = [v6 currentSettings];
  [v15 setSmartCardTokenID:0];

  v16 = [v6 currentSettings];
  [v16 setDateLastLogin:0];

  v17 = [v6 currentSettings];
  [v17 setDateNextPacRefresh:0];

  v18 = [v6 currentSettings];
  [v18 setDatePasswordLastChangedAtLogin:0];

  v19 = [v6 currentSettings];
  [v19 setDatePasswordLastChanged:0];

  v20 = [v6 currentSettings];
  [v20 setDatePasswordExpires:0];

  v21 = [v6 currentSettings];
  [v21 setPasswordNeverExpires:0];

  v22 = [v6 currentSettings];
  [v22 setNetworkHomeDirectory:0];

  v23 = [v6 currentSettings];
  [v23 setDateADPasswordCanChange:0];

  v24 = [v6 currentSettings];
  [v24 setDateLocalPasswordLastChanged:0];

  v25 = [v6 currentSettings];
  [v25 setDateExpirationChecked:0];

  v26 = [v6 currentSettings];
  [v26 setDateExpirationNotificationSent:0];

  v27 = [v6 currentSettings];
  [v27 setUserCancelledLogin:0];

  v28 = [v6 currentSettings];
  [v28 setDateLoginCancelled:0];

  v29 = [v6 currentSettings];
  [v29 setPasswordChangeInProgress:0];

  v30 = [(SOKerberosExtensionProcess *)self keychainHelper];
  v31 = [v6 serviceName];
  [v30 removeCredentialsFromKeychainWithService:v31];

  v32 = [v6 extensionUserData];
  [v32 setUserSetKeychainChoice:0];

  v33 = [v6 extensionUserData];
  [v33 setUseKeychain:1];

  if (v4)
  {
    v34 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleLogoutWithContext:v6 removeRealm:?];
    }

    v35 = [v6 currentSettings];
    [v35 removeAllValues];

    v36 = [v6 realm];
    v40 = 0;
    v37 = [SOKerberosHeimdalPluginSettings deleteSettingsForRealm:v36 error:&v40];
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
    [SOKerberosAuthentication saveValuesForPlugins:v6];
  }
}

- (void)destroyCredentialsWithContext:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess destroyCredentialsWithContext:];
  }

  if ([(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:v4])
  {
    v6 = [v4 credentialUUID];

    if (v6)
    {
      v7 = [v4 credentialUUID];
      v8 = [v7 UUIDString];

      v9 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess destroyCredentialsWithContext:];
      }

      objc_sync_enter(0);
      v10 = [v4 impersonationBundleIdentifier];

      if (v10)
      {
        [v4 impersonationBundleIdentifier];
      }

      else
      {
        [v4 callerBundleIdentifier];
      }
      v11 = ;
      HeimCredSetImpersonateBundle();

      v20 = [(SOKerberosExtensionProcess *)self kerberosHelper];
      v21 = [v4 credentialUUID];
      [v20 destroyCredential:v21];

      HeimCredSetImpersonateBundle();
      objc_sync_exit(0);
    }

    else
    {
      v13 = [v4 userPrincipalName];
      if (v13)
      {
        v14 = v13;
        v15 = [v4 userPrincipalName];
        v16 = [v15 isEqualToString:&stru_285206D08];

        if ((v16 & 1) == 0)
        {
          v17 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosExtensionProcess destroyCredentialsWithContext:v4];
          }

          objc_sync_enter(0);
          v18 = [v4 impersonationBundleIdentifier];

          if (v18)
          {
            [v4 impersonationBundleIdentifier];
          }

          else
          {
            [v4 callerBundleIdentifier];
          }
          v19 = ;
          HeimCredSetImpersonateBundle();

          v22 = [(SOKerberosExtensionProcess *)self kerberosHelper];
          v23 = [v4 userPrincipalName];
          [v22 destroyCredentialForUPN:v23];

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

    [v4 completeRequestWithDoNotHandle];
  }
}

- (void)handleResetKeychainChoice:(id)a3
{
  v3 = a3;
  v4 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleResetKeychainChoice:v3];
  }

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 removeObjectForKey:@"useKeychain"];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 removeObjectForKey:@"userSetKeychainChoice"];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 removeObjectForKey:@"rememberKeychainChoice"];

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 synchronize];

  [v3 complete];
  v9 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleResetKeychainChoice:];
  }
}

- (void)handleGetRealmInfo:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:v4];
  }

  v6 = [v4 httpHeaders];
  v7 = [v6 objectForKey:@"verbose"];
  v8 = [v7 isEqualToString:@"1"];

  v9 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v10 = [v4 realm];
  v11 = [v10 uppercaseString];
  v12 = [v9 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:v4 andDelegate:?];
    }

    v14 = [SOKerberosAuthentication alloc];
    v15 = [v4 realm];
    v16 = [v15 uppercaseString];
    v17 = [(SOKerberosAuthentication *)v14 initWithRealm:v16];
    v18 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    v19 = [v4 realm];
    v20 = [v19 uppercaseString];
    [v18 setObject:v17 forKeyedSubscript:v20];
  }

  v21 = [(SOKerberosExtensionProcess *)self createContextForRequest:v4];
  v22 = [v21 extensionData];
  v23 = [v22 useSiteAutoDiscovery];

  if (v23)
  {
    v24 = [v21 networkIdentity];
    [v24 determineNetworkFingerprint];
  }

  v25 = [(SOKerberosExtensionProcess *)self settingsForContext:v21 includeSiteCodeCache:v8];
  v26 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }

  [v4 completeWithHTTPAuthorizationHeaders:v25];
  v27 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }
}

- (id)settingsForContext:(id)a3 includeSiteCodeCache:(BOOL)a4
{
  v4 = a4;
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [SOKerberosRealmSettings alloc];
  v8 = [v6 realm];
  v9 = [(SOKerberosRealmSettings *)v7 initWithRealm:v8];

  v10 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v11 = [v6 realm];
  v12 = [v11 uppercaseString];
  v13 = [v10 objectForKeyedSubscript:v12];

  v14 = objc_opt_new();
  v15 = [v6 realm];

  if (v15)
  {
    v16 = [v6 realm];
    [v14 setObject:v16 forKeyedSubscript:@"realm"];
  }

  v17 = [(SOKerberosRealmSettings *)v9 userPrincipalName];

  if (v17)
  {
    v18 = [(SOKerberosRealmSettings *)v9 userPrincipalName];
    [v14 setObject:v18 forKeyedSubscript:@"upn"];
  }

  v19 = [(SOKerberosRealmSettings *)v9 userName];

  if (v19)
  {
    v20 = [(SOKerberosRealmSettings *)v9 userName];
    [v14 setObject:v20 forKeyedSubscript:@"user_name"];
  }

  v21 = [(SOKerberosRealmSettings *)v9 credentialUUID];

  if (v21)
  {
    v22 = [(SOKerberosRealmSettings *)v9 credentialUUID];
    v23 = [v22 UUIDString];
    [v14 setObject:v23 forKeyedSubscript:@"gss_cred_uuid"];
  }

  v24 = [v6 extensionData];
  v25 = [v24 useSiteAutoDiscovery];

  v69 = v13;
  if (v25)
  {
    v26 = [v6 callerBundleIdentifier];
    v27 = [v6 networkIdentity];
    v28 = [v27 networkFingerprint];
    v29 = [v13 retrieveCachedSiteCodeFromCacheForBundleIdentifier:v26 networkFingerprint:v28];

    v30 = [v29 code];

    if (v30)
    {
      v31 = [v29 code];
      [v14 setObject:v31 forKeyedSubscript:@"site_code"];

      if (!v4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [v14 setObject:@"no site code" forKeyedSubscript:@"site_code"];
      if (!v4)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    v67 = v29;
    v68 = v6;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v35 = [(SOKerberosRealmSettings *)v9 dumpSiteCodeCache];
    v36 = [v35 countByEnumeratingWithState:&v70 objects:v74 count:16];
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
            objc_enumerationMutation(v35);
          }

          v43 = [*(*(&v70 + 1) + 8 * v41) description];
          v44 = [(__CFString *)v40 stringByAppendingString:v43];

          v39 = [(__CFString *)v42 stringByAppendingString:v44];

          ++v41;
          v42 = v39;
          v40 = @"\n";
        }

        while (v37 != v41);
        v37 = [v35 countByEnumeratingWithState:&v70 objects:v74 count:16];
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
    v6 = v68;
    goto LABEL_27;
  }

  v32 = [v6 siteCode];

  if (v32)
  {
    v33 = [v6 siteCode];
    v34 = [v33 code];
    [v14 setObject:v34 forKeyedSubscript:@"site_code"];
  }

  else
  {
    [v14 setObject:@"no site code" forKeyedSubscript:@"site_code"];
  }

LABEL_28:
  v45 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v45 setFormatOptions:1907];
  v46 = [(SOKerberosRealmSettings *)v9 dateLastLogin];

  if (v46)
  {
    v47 = [(SOKerberosRealmSettings *)v9 dateLastLogin];
    v48 = [v45 stringFromDate:v47];

    [v14 setObject:v48 forKeyedSubscript:@"login_date"];
  }

  v49 = [(SOKerberosRealmSettings *)v9 datePasswordLastChanged];
  if (v49)
  {
    v50 = v49;
    v51 = [(SOKerberosRealmSettings *)v9 dateExpirationChecked];

    if (v51)
    {
      v52 = [(SOKerberosRealmSettings *)v9 datePasswordLastChanged];
      v53 = [v45 stringFromDate:v52];
      [v14 setObject:v53 forKeyedSubscript:@"password_changed_date"];
    }
  }

  v54 = [(SOKerberosRealmSettings *)v9 dateLocalPasswordLastChanged];

  if (v54)
  {
    v55 = [(SOKerberosRealmSettings *)v9 dateLocalPasswordLastChanged];
    v56 = [v45 stringFromDate:v55];
    [v14 setObject:v56 forKeyedSubscript:@"local_password_changed_date"];
  }

  v57 = [(SOKerberosRealmSettings *)v9 datePasswordExpires];

  if (v57)
  {
    v58 = [(SOKerberosRealmSettings *)v9 datePasswordExpires];
    v59 = [v45 stringFromDate:v58];
    [v14 setObject:v59 forKeyedSubscript:@"password_expires_date"];
  }

  v60 = [(SOKerberosRealmSettings *)v9 networkHomeDirectory];

  if (v60)
  {
    v61 = [(SOKerberosRealmSettings *)v9 networkHomeDirectory];
    [v14 setObject:v61 forKeyedSubscript:@"home_directory"];
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

- (BOOL)checkSourceAppACLWithContext:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 extensionData];
  v5 = [v4 credentialBundleIdACL];
  if (v5)
  {
  }

  else
  {
    v6 = [v3 extensionData];
    v7 = [v6 includeManagedAppsInBundleIdACL];

    if (!v7)
    {
LABEL_20:
      LOBYTE(v11) = 1;
      goto LABEL_25;
    }
  }

  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess checkSourceAppACLWithContext:v3];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v3 extensionData];
  v10 = [v9 credentialBundleIdACL];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v23 + 1) + 8 * i) lowercaseString];
        v15 = [v3 callerBundleIdentifier];
        v16 = [v15 lowercaseString];
        v17 = [v14 isEqualToString:v16];

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

      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v18 = [v3 extensionData];
  if ([v18 includeManagedAppsInBundleIdACL])
  {
    v19 = [v3 isManagedApp];

    if ((v11 | v19))
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

- (id)createContextForRequest:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess createContextForRequest:v4];
  }

  v6 = [v4 httpHeaders];
  v7 = [SOKerberosExtensionData alloc];
  v8 = [v4 extensionData];
  v9 = [(SOKerberosExtensionData *)v7 initWithDictionary:v8];

  if (!v9)
  {
    v10 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess createContextForRequest:v4];
    }
  }

  v11 = [[SOKerberosContext alloc] initWithRequest:v4 extensionData:v9];
  v12 = [(SOKerberosExtensionData *)v9 siteCode];
  if (v12)
  {
    v13 = v12;
    v14 = [(SOKerberosExtensionData *)v9 siteCode];

    if (v14 != @"no site code")
    {
      [(SOKerberosExtensionData *)v9 setUseSiteAutoDiscovery:0];
      v15 = [SOSiteCode alloc];
      v16 = [(SOKerberosExtensionData *)v9 siteCode];
      v17 = [(SOSiteCode *)v15 initWithSiteCode:v16 forNetworkFingerprint:@"profile"];
      [(SOKerberosContext *)v11 setSiteCode:v17];
    }
  }

  if ([(SOKerberosExtensionData *)v9 useSiteAutoDiscovery])
  {
    v18 = [SONetworkIdentity alloc];
    v19 = [v4 realm];
    v20 = [v19 uppercaseString];
    v21 = [(SOKerberosContext *)v11 callerBundleIdentifier];
    v22 = [(SOKerberosContext *)v11 auditToken];
    v23 = [(SONetworkIdentity *)v18 initForRealm:v20 bundleIdentifier:v21 auditToken:v22];
    [(SOKerberosContext *)v11 setNetworkIdentity:v23];
  }

  v24 = [v4 requestedOperation];
  if (([v24 isEqualToString:@"login"] & 1) == 0)
  {
    v25 = [v4 requestedOperation];
    if (([v25 isEqualToString:@"get_credential_uuid"] & 1) == 0)
    {
      v26 = [v4 requestedOperation];
      if (([v26 isEqualToString:@"change_password"] & 1) == 0)
      {
        v27 = [v4 requestedOperation];
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

        if (([v27 isEqualToString:*v28] & 1) == 0)
        {
          v49 = [v4 url];
          [v49 scheme];
          v46 = v50 = v27;
          v47 = [v46 lowercaseString];
          v51 = [v47 isEqualToString:@"realm"];

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
  v30 = [v6 objectForKey:@"force"];
  v31 = [v30 isEqualToString:@"1"];

  if (v31)
  {
    [(SOKerberosContext *)v11 setForceLoginViewController:1];
  }

  v32 = [v6 objectForKey:@"refresh"];
  v33 = [v32 isEqualToString:@"1"];

  if (v33)
  {
    [(SOKerberosContext *)v11 setRefreshCredential:1];
  }

LABEL_27:
  v34 = [(SOKerberosExtensionProcess *)self requestContextMapping];
  [v34 setObject:v11 forKey:v4];

  v35 = [(SOKerberosContext *)v11 userName];
  if (v35)
  {
  }

  else
  {
    v37 = [(SOKerberosExtensionData *)v9 certificateUUID];

    if (v37)
    {
      v38 = SO_LOG_SOKerberosExtensionProcess();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess createContextForRequest:];
      }

      v39 = [(SOKerberosExtensionProcess *)self keychainHelper];
      v40 = [(SOKerberosExtensionData *)v9 certificateUUID];
      v41 = [v39 identityForUUIDString:v40];

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

- (void)attemptKerberosWithContext:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
  }

  if (([v6 requestCancelled] & 1) == 0)
  {
    if ([(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:v6])
    {
      v9 = [v6 userPrincipalName];
      if (!v9)
      {
        [v7 handleResult:2 context:v6 error:0];
LABEL_22:

        goto LABEL_23;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = [v6 hostName];
      v12 = [v10 stringWithFormat:@"HTTP@%@", v11];
      [v6 setServicePrincipalName:v12];

      v13 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
      v14 = [v6 realm];
      v15 = [v14 uppercaseString];
      v16 = [v13 objectForKeyedSubscript:v15];

      v31 = 0;
      v32 = 0;
      v17 = [v16 attemptKerberosWithContext:v6 returningToken:&v32 orError:&v31];
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

            [(SOKerberosExtensionProcess *)self completeRequestWithToken:v18 andContext:v6];
            goto LABEL_21;
          }

          if (v17 == 4)
          {
            v24 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
            }

            [(SOKerberosExtensionProcess *)self completeRequestWithHTTPResponseFromContext:v6];
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

            [v6 completeRequestWithError:v19];
            goto LABEL_21;
          }

          if (v17 == 17)
          {
            v20 = SO_LOG_SOKerberosExtensionProcess();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:v6 andDelegate:?];
            }

            [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:v6];
LABEL_35:
            [v6 completeRequestWithDoNotHandle];
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

            v22 = v7;
            v23 = 7;
LABEL_20:
            [v22 handleResult:v23 context:v6 error:v19];
LABEL_21:

            goto LABEL_22;
          }

LABEL_39:
          v27 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
          }

          v28 = [MEMORY[0x277CCA9B8] unhandledKerberosResult];
          v29 = SO_LOG_SOKerberosExtensionProcess();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
          }

          [v6 completeRequestWithError:v28];
          goto LABEL_21;
        }
      }

LABEL_19:
      v22 = v7;
      v23 = v17;
      goto LABEL_20;
    }

    v21 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
    }

    [v6 completeRequestWithDoNotHandle];
  }

LABEL_23:
}

- (void)completeRequestWithToken:(id)a3 andContext:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:v6];
  v8 = [v7 base64EncodedStringWithOptions:16];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Negotiate %@", v8];
  v10 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess completeRequestWithToken:andContext:];
  }

  v13 = @"Authorization";
  v14[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 completeRequestWithHeaders:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)completeRequestWithHTTPResponseFromContext:(id)a3
{
  v4 = a3;
  [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:v4];
  v5 = [(SOKerberosExtensionProcess *)self settingsForContext:v4 includeSiteCodeCache:0];
  v6 = SO_LOG_SOKerberosExtensionProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }

  [v4 completeRequestWithHTTPResponseHeaders:v5];
}

- (void)saveValuesAfterSuccessfulAuthentication:(id)a3
{
  v24 = a3;
  v4 = [v24 credentialUUID];
  v5 = [v24 currentSettings];
  [v5 setCredentialUUID:v4];

  v6 = [v24 userPrincipalName];
  v7 = [v24 currentSettings];
  [v7 setUserPrincipalName:v6];

  v8 = [v24 userName];
  v9 = [v24 currentSettings];
  [v9 setUserName:v8];

  v10 = [v24 currentSettings];
  [v10 setUserCancelledLogin:0];

  v11 = [v24 currentSettings];
  [v11 setDateLoginCancelled:0];

  v12 = [v24 loginTimeStamp];

  if (v12)
  {
    v13 = [v24 loginTimeStamp];
    v14 = [v24 currentSettings];
    [v14 setDateLastLogin:v13];
  }

  v15 = [v24 currentSettings];
  [v15 setDateUserSignedOut:0];

  v16 = [v24 currentSettings];
  [v16 setDelayUserSetupCleared:1];

  v17 = [v24 currentSettings];
  [v17 setPasswordChangeInProgress:0];

  v18 = [v24 extensionData];
  if ([v18 allowAutomaticLogin])
  {
    v19 = [v24 extensionUserData];
    v20 = [v19 useKeychain];

    if (!v20)
    {
      goto LABEL_7;
    }

    v21 = [v24 pkinitPersistentRef];
    v22 = [v24 currentSettings];
    [v22 setPkinitPersistentRef:v21];

    v18 = [v24 certificateTokenID];
    v23 = [v24 currentSettings];
    [v23 setSmartCardTokenID:v18];
  }

LABEL_7:
  [(SOKerberosExtensionProcess *)self handleAddKeychainCreds:v24];
}

- (void)handleAddKeychainCreds:(id)a3
{
  v13 = a3;
  v4 = [v13 extensionUserData];
  v5 = [v4 useKeychain];

  v6 = [v13 extensionData];
  v7 = [v6 allowAutomaticLogin];

  if (([v13 credsCameFromKeychain] & 1) == 0 && v7 && v5)
  {
    v8 = [(SOKerberosExtensionProcess *)self keychainHelper];
    v9 = [v13 serviceName];
    v10 = [v13 userPrincipalName];
    v11 = [v13 password];
    v12 = [v13 extensionData];
    [v8 addCredentialsToKeychainWithService:v9 withUsername:v10 withPassword:v11 requireUserPresence:{objc_msgSend(v12, "requireUserPresence")}];
  }
}

- (id)mapKnownPasswordErrorToString:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kGSSMinorErrorCode"];

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
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = v10;
    v12 = @"PASSWORD_CHANGE_PASSWORD_CHANGE_FAILED_OLD_PASSWORD_ALERT_TEXT";
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLong:-1765328353];
    v14 = [v5 isEqualToNumber:v13];

    if (v14)
    {
      v10 = [MEMORY[0x277CCA8D8] mainBundle];
      v11 = v10;
      v12 = @"PASSWORD_CHANGE_PASSWORD_CHANGE_FAILED_SERVER_ALERT_TEXT";
    }

    else
    {
      v15 = [MEMORY[0x277CCABB0] numberWithLong:-1765328228];
      v16 = [v5 isEqualToNumber:v15];

      if (v16)
      {
        v10 = [MEMORY[0x277CCA8D8] mainBundle];
        v11 = v10;
        v12 = @"KDC_UNREACHABLE";
      }

      else
      {
        v17 = [MEMORY[0x277CCABB0] numberWithLong:-1765328343];
        v18 = [v5 isEqualToNumber:v17];

        if (v18)
        {
          v10 = [MEMORY[0x277CCA8D8] mainBundle];
          v11 = v10;
          v12 = @"REALM_CASE_MISMATCH";
        }

        else
        {
          v19 = [MEMORY[0x277CCABB0] numberWithLong:-1765328160];
          v20 = [v5 isEqualToNumber:v19];

          if (!v20)
          {
            v11 = [v3 userInfo];
            v24 = [v11 objectForKeyedSubscript:@"NSDescription"];
            if (v24)
            {
              v25 = [v3 userInfo];
              v21 = [v25 objectForKeyedSubscript:@"NSDescription"];
            }

            else
            {
              v21 = [v3 localizedDescription];
            }

            goto LABEL_16;
          }

          v10 = [MEMORY[0x277CCA8D8] mainBundle];
          v11 = v10;
          v12 = @"DEFAULT_REALM_MISSING";
        }
      }
    }
  }

  v21 = [v10 localizedStringForKey:v12 value:&stru_285206D08 table:0];
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)kerberosForRealm:(id)a3
{
  v4 = a3;
  v5 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v6 = [v4 uppercaseString];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = SO_LOG_SOKerberosExtensionProcess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess kerberosForRealm:];
    }

    v9 = [SOKerberosAuthentication alloc];
    v10 = [v4 uppercaseString];
    v11 = [(SOKerberosAuthentication *)v9 initWithRealm:v10];
    v12 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    v13 = [v4 uppercaseString];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  v14 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  v15 = [v4 uppercaseString];
  v16 = [v14 objectForKeyedSubscript:v15];

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