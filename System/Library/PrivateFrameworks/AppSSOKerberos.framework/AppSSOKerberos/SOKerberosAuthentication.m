@interface SOKerberosAuthentication
+ (void)savePacValues:(id)a3 atLogin:(BOOL)a4;
+ (void)saveValuesForPlugins:(id)a3;
- (BOOL)changePasswordWithContext:(id)a3 withError:(id *)a4;
- (SOKerberosAuthentication)initWithRealm:(id)a3;
- (id)retrieveCachedSiteCodeFromCacheForBundleIdentifier:(id)a3 networkFingerprint:(id)a4;
- (unint64_t)attemptKerberosWithContext:(id)a3 returningToken:(id *)a4 orError:(id *)a5;
- (unint64_t)createNewCredentialUsingContext:(id)a3 returningCredential:(gss_cred_id_t_desc_struct *)a4 orError:(id *)a5;
- (unint64_t)findExistingCredentialUsingContext:(id)a3 returningCredential:(gss_cred_id_t_desc_struct *)a4 orError:(id *)a5;
- (unint64_t)mapErrorToKnownError:(id)a3;
- (void)_determineSiteCodeUsingDispatchGroup:(id)a3 bundleIdentifier:(id)a4 auditTokenData:(id)a5 networkFingerprint:(id)a6 requireTLSForLDAP:(BOOL)a7;
- (void)determineSiteCodeUsingContext:(id)a3;
- (void)setSiteCodeUsingContext:(id)a3;
- (void)triggerVPNIfNeededUsingRealm:(id)a3 bundleIdentifier:(id)a4 auditToken:(id)a5;
@end

@implementation SOKerberosAuthentication

- (SOKerberosAuthentication)initWithRealm:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SOKerberosAuthentication;
  v6 = [(SOKerberosAuthentication *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_realm, a3);
    if (initWithRealm__onceToken != -1)
    {
      [SOKerberosAuthentication initWithRealm:];
    }

    v7->_siteDiscoveryInProgress = 0;
    v8 = objc_alloc_init(SOKerberosHelper);
    kerberosHelper = v7->_kerberosHelper;
    v7->_kerberosHelper = v8;

    v10 = objc_alloc_init(SOKeychainHelper);
    keychainHelper = v7->_keychainHelper;
    v7->_keychainHelper = v10;

    v12 = [[SOADSiteDiscovery alloc] initWithRealm:v7->_realm];
    siteDiscovery = v7->_siteDiscovery;
    v7->_siteDiscovery = v12;
  }

  return v7;
}

uint64_t __42__SOKerberosAuthentication_initWithRealm___block_invoke()
{
  _lock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)attemptKerberosWithContext:(id)a3 returningToken:(id *)a4 orError:(id *)a5
{
  v8 = a3;
  v9 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
  }

  cred_handle = 0;
  minor_status = 0;
  v10 = [v8 realm];
  v11 = [v8 callerBundleIdentifier];
  v12 = [v8 auditToken];
  [(SOKerberosAuthentication *)self triggerVPNIfNeededUsingRealm:v10 bundleIdentifier:v11 auditToken:v12];

  v13 = [v8 credentialUUID];
  if (v13)
  {
    v14 = v13;
    v15 = [v8 refreshCredential];

    if ((v15 & 1) == 0)
    {
      v16 = _lock;
      objc_sync_enter(v16);
      v17 = [v8 impersonationBundleIdentifier];

      if (v17)
      {
        [v8 impersonationBundleIdentifier];
      }

      else
      {
        [v8 callerBundleIdentifier];
      }
      v18 = ;
      HeimCredSetImpersonateBundle();

      v19 = [(SOKerberosAuthentication *)self kerberosHelper];
      v20 = [v8 credentialUUID];
      cred_handle = [v19 acquireCredentialForUUID:v20];

      HeimCredSetImpersonateBundle();
      objc_sync_exit(v16);

      if (cred_handle)
      {
        v21 = SO_LOG_SOKerberosAuthentication();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:v8 returningToken:? orError:?];
        }
      }
    }
  }

  v22 = [v8 extensionData];
  v23 = [v22 useSiteAutoDiscovery];

  if (v23)
  {
    v24 = [v8 networkIdentity];
    [v24 determineNetworkFingerprint];

    v25 = [v8 callerBundleIdentifier];
    v26 = [v8 networkIdentity];
    v27 = [v26 networkFingerprint];
    v28 = [(SOKerberosAuthentication *)self retrieveCachedSiteCodeFromCacheForBundleIdentifier:v25 networkFingerprint:v27];

    if (!v28)
    {
      goto LABEL_18;
    }

    v29 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    [v8 setSiteCode:v28];
    if (!cred_handle || ([v28 age], v30 > 86400.0))
    {
LABEL_18:
      v31 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
      }

      [(SOKerberosAuthentication *)self determineSiteCodeUsingContext:v8];
    }
  }

  v32 = [v8 userPrincipalName];
  if (!v32 || (v33 = v32, [v8 userPrincipalName], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", &stru_285206D08), v34, v33, (v35 & 1) != 0))
  {
    v36 = 2;
    goto LABEL_25;
  }

  if (!cred_handle)
  {
    if ([v8 refreshCredential])
    {
      v38 = 0;
      v36 = 0;
      goto LABEL_46;
    }

    v39 = [(SOKerberosAuthentication *)self findExistingCredentialUsingContext:v8 returningCredential:&cred_handle orError:a5];
    v36 = v39;
    if (v39 == 2)
    {
      v43 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
      }

      v38 = 0;
    }

    else
    {
      if (v39 != 4)
      {
        v38 = 0;
        goto LABEL_46;
      }

      v40 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:? returningToken:? orError:?];
      }

      v41 = GSSCredentialCopyUUID(cred_handle);
      if (v41)
      {
        v42 = v41;
        v43 = CFUUIDCreateString(0, v41);
        CFRelease(v42);
        v44 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v43];
        [v8 setCredentialUUID:v44];
      }

      else
      {
        v43 = SO_LOG_SOKerberosAuthentication();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:v8 returningToken:? orError:?];
        }
      }

      v38 = 1;
    }

LABEL_46:
    if (!cred_handle)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v36 = 0;
  v38 = 0;
LABEL_47:
  if (![v8 refreshCredential])
  {
    goto LABEL_79;
  }

LABEL_48:
  v45 = [v8 extensionData];
  v46 = [v45 usePlatformSSOTGT];

  if (v46)
  {
    if (([v8 returnCredentialOnly] & 1) == 0)
    {
      if (!a5)
      {
LABEL_86:
        v36 = 7;
        goto LABEL_25;
      }

      v52 = [MEMORY[0x277CCA9B8] invalidKerberosOperation];
LABEL_85:
      *a5 = v52;
      goto LABEL_86;
    }

    if ([v8 returnCredentialOnly])
    {
      v47 = [v8 extensionData];
      v46 = [v47 allowPlatformSSOAuthFallback];

      if ((v46 & 1) == 0)
      {
        if (!a5)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }
    }
  }

  v48 = [v8 password];
  if (v48)
  {
    v46 = [v8 password];
    if (([v46 isEqualToString:&stru_285206D08] & 1) == 0)
    {

      goto LABEL_66;
    }
  }

  v109 = a5;
  v111 = a4;
  v49 = [v8 extensionData];
  v50 = [v49 certificateUUID];
  if (!v50 || ([v8 extensionData], a4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a4, "certificateUUID"), a5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a5, "isEqualToString:", &stru_285206D08)))
  {
    v53 = [v8 pkinitPersistentRef];
    v51 = [v53 length] == 0;

    if (!v50)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v51 = 0;
  }

LABEL_62:
  if (v48)
  {
  }

  a5 = v109;
  a4 = v111;
  if (v51)
  {
    v36 = 1;
    goto LABEL_25;
  }

LABEL_66:
  v54 = [v8 extensionData];
  if ([v54 requireUserPresence])
  {
    v55 = [v8 extensionData];
    v56 = [v55 certificateUUID];
    if (v56)
    {
      v57 = v56;
      v58 = [v8 keychainLAContext];

      if (!v58)
      {
        v59 = SO_LOG_SOKerberosAuthentication();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
        }

        v36 = 18;
        goto LABEL_25;
      }

      goto LABEL_74;
    }
  }

LABEL_74:
  [(SOKerberosAuthentication *)self setSiteCodeUsingContext:v8];
  v36 = [(SOKerberosAuthentication *)self createNewCredentialUsingContext:v8 returningCredential:&cred_handle orError:a5];
  v60 = SO_LOG_SOKerberosAuthentication();
  v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);
  if (v36 != 4)
  {
    if (v61)
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    if (*a5)
    {
      v70 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:a5 returningToken:? orError:?];
      }
    }

    goto LABEL_25;
  }

  if (v61)
  {
    [SOKerberosAuthentication attemptKerberosWithContext:? returningToken:? orError:?];
  }

  v62 = GSSCredentialCopyUUID(cred_handle);
  if (!v62)
  {
    v103 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:v8 returningToken:? orError:?];
    }

    if (!a5)
    {
      goto LABEL_86;
    }

    v52 = [MEMORY[0x277CCA9B8] sourceAppNotAllowed];
    goto LABEL_85;
  }

  v63 = v62;
  v64 = CFUUIDCreateString(0, v62);
  CFRelease(v63);
  v65 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v64];
  [v8 setCredentialUUID:v65];

  v38 = 1;
  v36 = 4;
LABEL_79:
  if (!cred_handle)
  {
    if (!a5)
    {
      v36 = 7;
      goto LABEL_27;
    }

LABEL_84:
    v52 = [MEMORY[0x277CCA9B8] credentialMissing];
    goto LABEL_85;
  }

  v66 = [v8 extensionData];
  v112 = a4;
  if ([v66 usePlatformSSOTGT])
  {
    v67 = [v8 currentSettings];
    v68 = [v67 dateExpirationChecked];
    if (v68)
    {
      v69 = 0;
    }

    else
    {
      v71 = [v8 extensionData];
      v69 = [v71 performKerberosOnly] ^ 1;
    }
  }

  else
  {
    v69 = 0;
  }

  v72 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication attemptKerberosWithContext:v8 returningToken:? orError:?];
  }

  if ((v38 | v69))
  {
    goto LABEL_102;
  }

  if ([v8 refreshCredential])
  {
    goto LABEL_102;
  }

  v73 = [v8 currentSettings];
  v74 = [v73 dateNextPacRefresh];
  [v74 timeIntervalSinceNow];
  v76 = v75;

  if (v76 < 0.0)
  {
LABEL_102:
    v77 = _lock;
    objc_sync_enter(v77);
    v78 = [v8 impersonationBundleIdentifier];

    if (v78)
    {
      [v8 impersonationBundleIdentifier];
    }

    else
    {
      [v8 callerBundleIdentifier];
    }
    v79 = ;
    HeimCredSetImpersonateBundle();

    [(SOKerberosAuthentication *)self refreshPacValuesWithContext:v8 credential:cred_handle atLogin:v38 | v69];
    HeimCredSetImpersonateBundle();
    objc_sync_exit(v77);
  }

  [SOKerberosAuthentication saveValuesForPlugins:v8];
  v80 = [v8 credentialUUID];
  v81 = [v8 currentSettings];
  [v81 setCredentialUUID:v80];

  v82 = [v8 userPrincipalName];
  v83 = [v8 currentSettings];
  [v83 setUserPrincipalName:v82];

  v84 = [v8 currentSettings];
  [v84 setUserCancelledLogin:0];

  v85 = [v8 currentSettings];
  [v85 setDateLoginCancelled:0];

  v86 = [v8 loginTimeStamp];

  if (v86)
  {
    v87 = [v8 loginTimeStamp];
    v88 = [v8 currentSettings];
    [v88 setDateLastLogin:v87];
  }

  v89 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication attemptKerberosWithContext:v8 returningToken:v89 orError:?];
  }

  v90 = [v8 extensionData];
  if ([v90 performKerberosOnly])
  {
    goto LABEL_115;
  }

  v91 = [v8 currentSettings];
  v92 = [v91 dateExpirationChecked];
  if (!v92)
  {

LABEL_115:
    goto LABEL_116;
  }

  v93 = v92;
  v94 = [v8 currentSettings];
  v95 = [v94 datePasswordLastChangedAtLogin];
  [v8 currentSettings];
  v96 = v110 = a5;
  v97 = [v96 datePasswordLastChanged];
  v108 = [v95 isEqualToDate:v97];

  a5 = v110;
  if ((v108 & 1) == 0)
  {
    [v8 setRefreshCredential:1];
    v36 = 16;
    goto LABEL_25;
  }

LABEL_116:
  if (([v8 returnCredentialOnly] & 1) == 0)
  {
    v98 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:? returningToken:? orError:?];
    }

    v99 = [v8 servicePrincipalName];

    if (v99)
    {
      v100 = _lock;
      objc_sync_enter(v100);
      v101 = [v8 impersonationBundleIdentifier];

      if (v101)
      {
        [v8 impersonationBundleIdentifier];
      }

      else
      {
        [v8 callerBundleIdentifier];
      }
      v102 = ;
      HeimCredSetImpersonateBundle();

      v104 = [(SOKerberosAuthentication *)self kerberosHelper];
      v105 = cred_handle;
      v106 = [v8 servicePrincipalName];
      LODWORD(v105) = [v104 authenticate:v105 toServer:v106 returningToken:v112 andError:a5];

      HeimCredSetImpersonateBundle();
      HeimCredSetImpersonateAuditToken();
      objc_sync_exit(v100);

      if (v105 && *v112)
      {
        v107 = SO_LOG_SOKerberosAuthentication();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:v112 returningToken:? orError:?];
        }

        v36 = 0;
      }

      else if (*a5)
      {
        v36 = [(SOKerberosAuthentication *)self mapErrorToKnownError:?];
      }

      goto LABEL_25;
    }

    if (!a5)
    {
      goto LABEL_86;
    }

    v52 = [MEMORY[0x277CCA9B8] servicePrincipalNameMissing];
    goto LABEL_85;
  }

  v36 = 4;
LABEL_25:
  if (cred_handle)
  {
    gss_release_cred(&minor_status, &cred_handle);
  }

LABEL_27:

  return v36;
}

+ (void)saveValuesForPlugins:(id)a3
{
  v3 = a3;
  v4 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[SOKerberosAuthentication saveValuesForPlugins:];
  }

  v5 = [SOKerberosHeimdalPluginSettings alloc];
  v6 = [v3 realm];
  v7 = [(SOKerberosHeimdalPluginSettings *)v5 initWithRealm:v6];

  v8 = [v3 siteCode];
  v9 = [v8 code];
  [(SOKerberosHeimdalPluginSettings *)v7 setSiteCode:v9];

  v10 = [v3 credentialUUID];

  [(SOKerberosHeimdalPluginSettings *)v7 setCurrentCredential:v10];
}

+ (void)savePacValues:(id)a3 atLogin:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 currentSettings];
  v7 = v6;
  if (v4)
  {
    [v6 setDateExpirationChecked:0];
    [v7 setPasswordNeverExpires:0];
    [v7 setDatePasswordExpires:0];
    [v7 setDatePasswordLastChanged:0];
    [v7 setDateADPasswordCanChange:0];
    [v7 setDatePasswordLastChangedAtLogin:0];
  }

  v8 = [v5 pacData];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [v7 setDateExpirationChecked:v9];

    [v7 setPasswordNeverExpires:{objc_msgSend(v8, "passwordNeverExpires")}];
    v10 = [v8 passwordMustChange];
    [v7 setDatePasswordExpires:v10];

    v11 = [v8 passwordLastSet];
    [v7 setDatePasswordLastChanged:v11];

    v12 = [v8 passwordCanChange];
    [v7 setDateADPasswordCanChange:v12];

    v13 = [v8 homeDirectory];
    [v7 setNetworkHomeDirectory:v13];

    if (v4)
    {
      v14 = [v7 datePasswordLastChanged];
      [v7 setDatePasswordLastChangedAtLogin:v14];
    }

    v15 = [v7 datePasswordExpires];
    [v15 timeIntervalSinceNow];
    if (v16 >= 0.0 && v16 >= 86400.0)
    {
      if (v16 >= 259200.0)
      {
        v18 = MEMORY[0x277CBEAA8];
        if (v16 >= 604800.0)
        {
          v19 = 10800.0;
        }

        else
        {
          v19 = 3600.0;
        }
      }

      else
      {
        v18 = MEMORY[0x277CBEAA8];
        v19 = 900.0;
      }

      v17 = [v18 dateWithTimeIntervalSinceNow:v19];
    }

    else
    {
      v17 = [MEMORY[0x277CBEAA8] date];
    }

    v20 = v17;
    [v7 setDateNextPacRefresh:v17];

    v21 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication savePacValues:v7 atLogin:?];
    }
  }
}

- (void)setSiteCodeUsingContext:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication setSiteCodeUsingContext:];
  }

  v6 = [v4 extensionData];
  v7 = [v6 useSiteAutoDiscovery];

  if (v7)
  {
    v8 = [v4 siteCodeGroup];
    v9 = dispatch_time(0, 15000000000);
    v10 = dispatch_group_wait(v8, v9);

    if (v10 >= 1)
    {
      v11 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }
    }

    v12 = [v4 callerBundleIdentifier];
    v13 = [v4 networkIdentity];
    v14 = [v13 networkFingerprint];
    v15 = [(SOKerberosAuthentication *)self retrieveCachedSiteCodeFromCacheForBundleIdentifier:v12 networkFingerprint:v14];

    v16 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    [v4 setSiteCode:v15];
  }
}

- (id)retrieveCachedSiteCodeFromCacheForBundleIdentifier:(id)a3 networkFingerprint:(id)a4
{
  v5 = a4;
  v6 = [SOKerberosRealmSettings alloc];
  v7 = [(SOKerberosAuthentication *)self realm];
  v8 = [(SOKerberosRealmSettings *)v6 initWithRealm:v7];

  v9 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:];
  }

  v10 = [(SOKerberosRealmSettings *)v8 siteCodeForNetworkFingerprint:v5];

  v11 = SO_LOG_SOKerberosAuthentication();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      [SOKerberosAuthentication retrieveCachedSiteCodeFromCacheForBundleIdentifier:v10 networkFingerprint:?];
    }

    v13 = v10;
  }

  else
  {
    if (v12)
    {
      [SOKerberosAuthentication retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:];
    }
  }

  return v10;
}

- (void)determineSiteCodeUsingContext:(id)a3
{
  v4 = a3;
  v10 = [v4 siteCodeGroup];
  v5 = [v4 callerBundleIdentifier];
  v6 = [v4 auditToken];
  v7 = [v4 networkIdentity];
  v8 = [v7 networkFingerprint];
  v9 = [v4 extensionData];

  -[SOKerberosAuthentication _determineSiteCodeUsingDispatchGroup:bundleIdentifier:auditTokenData:networkFingerprint:requireTLSForLDAP:](self, "_determineSiteCodeUsingDispatchGroup:bundleIdentifier:auditTokenData:networkFingerprint:requireTLSForLDAP:", v10, v5, v6, v8, [v9 requireTLSForLDAP]);
}

- (void)_determineSiteCodeUsingDispatchGroup:(id)a3 bundleIdentifier:(id)a4 auditTokenData:(id)a5 networkFingerprint:(id)a6 requireTLSForLDAP:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [SOKerberosRealmSettings alloc];
  v17 = [(SOKerberosAuthentication *)self realm];
  v18 = [(SOKerberosRealmSettings *)v16 initWithRealm:v17];

  if (![(SOKerberosAuthentication *)self siteDiscoveryInProgress])
  {
    [(SOKerberosAuthentication *)self setSiteDiscoveryInProgress:1];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = v12;
    dispatch_group_enter(v29[5]);
    v19 = v29[5];
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke;
    block[3] = &unk_278C93268;
    block[4] = self;
    v22 = v13;
    v23 = v14;
    v27 = a7;
    v24 = v15;
    v25 = v18;
    v26 = &v28;
    dispatch_group_async(v19, v20, block);

    _Block_object_dispose(&v28, 8);
  }
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) siteDiscovery];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11;
  v9[3] = &unk_278C93240;
  v10 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 72);
  [v3 performLDAPPingUsingSite:0 bundleIdentifier:v4 auditTokenData:v5 requireTLSForLDAP:v6 inBackground:0 completion:v9];
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_1();
  }

  if (*(a1 + 32))
  {
    if (v3)
    {
      v5 = [(__CFString *)v3 isEqualToString:&stru_285206D08];
      v6 = [SOSiteCode alloc];
      if (v5)
      {
        v7 = @"no site code";
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = *(a1 + 32);
        v7 = v3;
      }

      v9 = [(SOSiteCode *)v6 initWithSiteCode:v7 forNetworkFingerprint:v8];
      [*(a1 + 40) cacheSiteCode:v9];
    }

    v10 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_2();
    }
  }

  [*(a1 + 48) setSiteDiscoveryInProgress:0];
  dispatch_group_leave(*(*(*(a1 + 56) + 8) + 40));
}

- (unint64_t)createNewCredentialUsingContext:(id)a3 returningCredential:(gss_cred_id_t_desc_struct *)a4 orError:(id *)a5
{
  v92[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
  }

  v10 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication createNewCredentialUsingContext:v8 returningCredential:? orError:?];
  }

  v11 = [MEMORY[0x277CBEC10] mutableCopy];
  v12 = [v8 extensionData];
  v13 = [v12 certificateUUID];
  if (v13)
  {
    v14 = v13;
    v15 = [v8 useKerberosPasswordInsteadOfMDMIdentity];

    if ((v15 & 1) == 0)
    {
      v16 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
      }

      v17 = [(SOKerberosAuthentication *)self keychainHelper];
      v18 = [v8 extensionData];
      v19 = [v18 certificateUUID];
      v20 = [v17 identityForUUIDString:v19];

      v21 = SO_LOG_SOKerberosAuthentication();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (!v20)
      {
        if (v22)
        {
          [SOKerberosAuthentication createNewCredentialUsingContext:v8 returningCredential:? orError:?];
        }

        v35 = 15;
        goto LABEL_80;
      }

      if (v22)
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:v20 returningCredential:v8 orError:?];
      }

      [v11 setObject:v20 forKeyedSubscript:@"kGSSICCertificate"];
      goto LABEL_38;
    }
  }

  else
  {
  }

  v23 = [v8 pkinitPersistentRef];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [v8 pkinitPersistentRef];
    v26 = [v8 certificateTokenID];
    v21 = [SOSmartcard searchForCachedIdentityPersistentRef:v25 tokenID:v26];

    if ([v21 count])
    {
      v27 = [v21 objectForKeyedSubscript:*MEMORY[0x277CDBEC0]];

      if (v27)
      {
        v28 = [v8 smartCardLAContext];

        if (!v28)
        {
          v29 = objc_alloc_init(MEMORY[0x277CD4790]);
          [v8 setSmartCardLAContext:v29];

          v30 = [v8 smartCardLAContext];
          [v30 setOptionCallerName:@"Kerberos"];
        }

        v31 = [v8 smartCardLAContext];
        v20 = [SOSmartcard getLocalAuthIdentityForCert:v21 withLAContext:v31];

        if (!v20)
        {
          goto LABEL_69;
        }

        goto LABEL_31;
      }

      v36 = *MEMORY[0x277CDC5F0];
      v37 = [v21 objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];

      if (!v37)
      {
LABEL_69:
        v34 = SO_LOG_SOKerberosAuthentication();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication createNewCredentialUsingContext:v8 returningCredential:? orError:?];
        }

        v35 = 6;
        goto LABEL_72;
      }

      v38 = [(SOKerberosAuthentication *)self keychainHelper];
      v39 = [v21 objectForKeyedSubscript:v36];
      v20 = [v38 identityForPersistentRef:v39];

      if (v20)
      {
LABEL_31:
        v40 = SO_LOG_SOKerberosAuthentication();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication createNewCredentialUsingContext:v20 returningCredential:v8 orError:?];
        }

        [v11 setObject:v20 forKeyedSubscript:@"kGSSICCertificate"];
        v41 = [v8 smartCardLAContext];

        if (v41)
        {
          v42 = SO_LOG_SOKerberosAuthentication();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosAuthentication createNewCredentialUsingContext:v8 returningCredential:? orError:?];
          }

          v43 = [v8 smartCardLAContext];
          [v11 setObject:v43 forKeyedSubscript:@"kGSSICAuthenticationContext"];
        }

        goto LABEL_38;
      }

      v34 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
      }
    }

    else
    {
      v34 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:v8 returningCredential:? orError:?];
      }
    }

    v35 = 3;
LABEL_72:

    goto LABEL_80;
  }

  v32 = [v8 password];

  if (!v32)
  {
    v21 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
    }

    v35 = 1;
    goto LABEL_80;
  }

  v33 = [v8 password];
  [v11 setObject:v33 forKeyedSubscript:@"kGSSICPassword"];

  v20 = 0;
LABEL_38:
  v44 = [v8 cacheName];

  if (v44)
  {
    v45 = MEMORY[0x277CCACA8];
    v46 = [v8 cacheName];
    v47 = [v45 stringWithFormat:@"API:%@", v46];
    [v11 setObject:v47 forKeyedSubscript:@"kGSSICKerberosCacheName"];

    v48 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v11 returningCredential:? orError:?];
    }
  }

  cf = v20;
  v49 = a4;
  v50 = self;
  v51 = [v8 siteCode];
  v52 = [v51 code];
  if (!v52)
  {
    goto LABEL_46;
  }

  v53 = v52;
  v54 = [v8 siteCode];
  [v54 code];
  v56 = v55 = a5;
  v57 = [v56 isEqualToString:@"no site code"];

  a5 = v55;
  if ((v57 & 1) == 0)
  {
    v58 = [v8 siteCode];
    v59 = [v58 code];
    [v11 setObject:v59 forKeyedSubscript:@"kGSSICSiteName"];

    v51 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v11 returningCredential:? orError:?];
    }

LABEL_46:
  }

  v60 = [v8 extensionData];
  v61 = [v60 credentialBundleIdACL];
  if (v61 || ([v8 extensionData], v61 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v61, "includeManagedAppsInBundleIdACL") & 1) != 0))
  {
  }

  else
  {
    v82 = [v8 extensionData];
    v83 = [v82 includeKerberosAppsInBundleIdACL];

    if ((v83 & 1) == 0)
    {
      v21 = &unk_28520B988;
      goto LABEL_54;
    }
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v62 = [v8 extensionData];
  v63 = [v62 credentialBundleIdACL];
  v64 = [v63 count];

  if (v64)
  {
    v65 = [v8 extensionData];
    v66 = [v65 credentialBundleIdACL];
    [v21 addObjectsFromArray:v66];
  }

  v67 = [v8 extensionData];
  v68 = [v67 includeManagedAppsInBundleIdACL];

  if (v68)
  {
    [v21 addObject:@"com.apple.private.gssapi.allowmanagedapps"];
  }

LABEL_54:
  [v11 setObject:v21 forKeyedSubscript:@"kGSSICAppIdentifierACL"];
  v69 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
  }

  v70 = [v8 impersonationBundleIdentifier];

  if (v70)
  {
    v91 = @"kGSSICAppleSourceAppSigningIdentity";
    v71 = [v8 impersonationBundleIdentifier];
    v92[0] = v71;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
    [v11 setObject:v72 forKeyedSubscript:@"kGSSICAppleSourceApp"];

    v73 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v11 returningCredential:? orError:?];
    }

LABEL_62:

    goto LABEL_63;
  }

  v74 = [v8 callerBundleIdentifier];

  if (v74)
  {
    v89 = @"kGSSICAppleSourceAppSigningIdentity";
    v75 = [v8 callerBundleIdentifier];
    v90 = v75;
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    [v11 setObject:v76 forKeyedSubscript:@"kGSSICAppleSourceApp"];

    v73 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v11 returningCredential:? orError:?];
    }

    goto LABEL_62;
  }

LABEL_63:
  v77 = [(SOKerberosAuthentication *)v50 kerberosHelper];
  v78 = [v8 userPrincipalName];
  *v49 = [v77 createCredential:v78 withOptions:v11 andError:a5];

  if (*v49)
  {
    v79 = [MEMORY[0x277CBEAA8] date];
    [v8 setLoginTimeStamp:v79];

    minor_status = 0;
    input_name = GSSCredentialCopyName(*v49);
    DisplayString = GSSNameCreateDisplayString(input_name);
    gss_release_name(&minor_status, &input_name);
    [v8 setUserPrincipalNameAfterAuth:DisplayString];

    v35 = 4;
    v81 = cf;
    if (!cf)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v81 = cf;
  if (*a5)
  {
    v35 = [(SOKerberosAuthentication *)v50 mapErrorToKnownError:?];
    if (!cf)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v35 = 5;
  if (cf)
  {
LABEL_79:
    CFRelease(v81);
  }

LABEL_80:

  v84 = *MEMORY[0x277D85DE8];
  return v35;
}

- (unint64_t)findExistingCredentialUsingContext:(id)a3 returningCredential:(gss_cred_id_t_desc_struct *)a4 orError:(id *)a5
{
  v7 = a3;
  v8 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication findExistingCredentialUsingContext:returningCredential:orError:];
  }

  v9 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication findExistingCredentialUsingContext:v7 returningCredential:? orError:?];
  }

  v10 = _lock;
  objc_sync_enter(v10);
  v11 = [v7 impersonationBundleIdentifier];

  if (v11)
  {
    [v7 impersonationBundleIdentifier];
  }

  else
  {
    [v7 callerBundleIdentifier];
  }
  v12 = ;
  HeimCredSetImpersonateBundle();

  v13 = [(SOKerberosAuthentication *)self kerberosHelper];
  v14 = [v7 userPrincipalName];
  *a4 = [v13 acquireCredentialForUPN:v14];

  HeimCredSetImpersonateBundle();
  objc_sync_exit(v10);

  if (*a4)
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

  return v15;
}

- (BOOL)changePasswordWithContext:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication changePasswordWithContext:v6 withError:?];
  }

  v8 = [v6 realm];
  v9 = [v6 callerBundleIdentifier];
  v10 = [v6 auditToken];
  [(SOKerberosAuthentication *)self triggerVPNIfNeededUsingRealm:v8 bundleIdentifier:v9 auditToken:v10];

  v11 = _lock;
  objc_sync_enter(v11);
  v12 = [v6 impersonationBundleIdentifier];

  if (v12)
  {
    [v6 impersonationBundleIdentifier];
  }

  else
  {
    [v6 callerBundleIdentifier];
  }
  v13 = ;
  HeimCredSetImpersonateBundle();

  v14 = [(SOKerberosAuthentication *)self kerberosHelper];
  v15 = [v6 userPrincipalName];
  v16 = [v6 realm];
  v17 = [v6 password];
  v18 = [v6 changedPassword];
  v19 = [v14 changePasswordForUPN:v15 realm:v16 withOldPassword:v17 withNewPassword:v18 withError:a4];

  HeimCredSetImpersonateBundle();
  HeimCredSetImpersonateAuditToken();
  objc_sync_exit(v11);

  v20 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication changePasswordWithContext:withError:];
  }

  if (*a4)
  {
    v21 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosAuthentication changePasswordWithContext:a4 withError:?];
    }
  }

  return v19;
}

- (unint64_t)mapErrorToKnownError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kGSSMinorErrorCode"];

  v6 = [MEMORY[0x277CCABB0] numberWithLong:-1765328361];
  v7 = [v5 isEqualToNumber:v6];

  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLong:-1765328360];
    v10 = [v5 isEqualToNumber:v9];

    if (v10)
    {
      v8 = 10;
    }

    else
    {
      v11 = [MEMORY[0x277CCABB0] numberWithLong:-1765328378];
      v12 = [v5 isEqualToNumber:v11];

      if (v12)
      {
        v8 = 11;
      }

      else
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLong:-1765328366];
        v14 = [v5 isEqualToNumber:v13];

        if (v14)
        {
          v8 = 9;
        }

        else
        {
          v15 = [MEMORY[0x277CCABB0] numberWithLong:-1765328228];
          v16 = [v5 isEqualToNumber:v15];

          if (v16)
          {
            v8 = 12;
          }

          else
          {
            v17 = [MEMORY[0x277CCABB0] numberWithLong:-1765328165];
            v18 = [v5 isEqualToNumber:v17];

            if (v18)
            {
              v8 = 13;
            }

            else
            {
              v19 = [MEMORY[0x277CCABB0] numberWithLong:-1765328370];
              v20 = [v5 isEqualToNumber:v19];

              if (v20)
              {
                v8 = 14;
              }

              else
              {
                v21 = [MEMORY[0x277CCABB0] numberWithLong:-1765328377];
                v22 = [v5 isEqualToNumber:v21];

                if (v22)
                {
                  v8 = 17;
                }

                else
                {
                  v23 = [v3 userInfo];
                  v24 = [v23 objectForKeyedSubscript:@"kGSSMechanism"];

                  if ([v5 isEqualToNumber:&unk_28520B9D0] && objc_msgSend(v3, "code") == 0x10000 && (objc_msgSend(v24, "isEqualToString:", @"SPNEGO") & 1) != 0)
                  {
                    v8 = 17;
                  }

                  else
                  {
                    v8 = 7;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (void)triggerVPNIfNeededUsingRealm:(id)a3 bundleIdentifier:(id)a4 auditToken:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v31 = a5;
  v9 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
  }

  v10 = v7;
  [v7 UTF8String];
  srv = nw_endpoint_create_srv();
  v12 = MEMORY[0x245CB78B0]();
  xarray = xpc_array_create(0, 0);
  xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, "NetworkExtension");
  v13 = xpc_array_create(0, 0);
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "VPN");
  nw_parameters_set_required_netagent_classes();
  if (v8)
  {
    v14 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }

    v15 = v8;
    [v8 UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
    v37 = 0u;
    v38 = 0u;
    if (v31 && [MEMORY[0x277CEBF10] auditTokenFromData:v31 auditToken:&v37])
    {
      v16 = SO_LOG_SOKerberosAuthentication();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
      }

      v33 = v37;
      v34 = v38;
      nw_parameters_set_source_application();
    }
  }

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v18 = nw_path_evaluator_copy_path();
  v19 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
  }

  v41 = 0;
  v42 = 0;
  if (nw_path_get_vpn_config_id())
  {
    is_per_app_vpn = nw_path_is_per_app_vpn();
    v21 = SO_LOG_SOKerberosAuthentication();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (is_per_app_vpn)
    {
      if (v22)
      {
        [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
      }
    }

    else if (v22)
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }

    ne_session_create();
    *&v37 = 0;
    *(&v37 + 1) = &v37;
    *&v38 = 0x3032000000;
    *(&v38 + 1) = __Block_byref_object_copy__0;
    v39 = __Block_byref_object_dispose__0;
    v40 = dispatch_semaphore_create(0);
    *&v33 = 0;
    *(&v33 + 1) = &v33;
    *&v34 = 0x3032000000;
    *(&v34 + 1) = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = dispatch_semaphore_create(0);
    v24 = dispatch_get_global_queue(0, 0);
    ne_session_set_event_handler();

    v25 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }

    ne_session_start();
    v26 = *(*(&v37 + 1) + 40);
    v27 = dispatch_time(0, 120000000000);
    dispatch_semaphore_wait(v26, v27);
    ne_session_cancel();
    v28 = *(*(&v33 + 1) + 40);
    v29 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v28, v29);
    ne_session_release();
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v23 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke(void *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = a1[6];
    v4 = dispatch_get_global_queue(0, 0);
    v6 = a1[4];
    ne_session_get_status();
  }

  else
  {
    v5 = *(*(a1[5] + 8) + 40);

    dispatch_semaphore_signal(v5);
  }
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2(uint64_t a1, int a2)
{
  v4 = ne_session_status_to_string();
  v5 = SO_LOG_SOKerberosAuthentication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_1(v4);
  }

  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v6 = SO_LOG_SOKerberosAuthentication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_2();
    }

    dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  }
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 credentialUUID];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_24006C000, v3, v4, "using credential from cache: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(uint64_t *)a1 returningToken:orError:.cold.6(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.7(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 callerBundleIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "UUID nil after find credential for calling app: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(uint64_t *)a1 returningToken:orError:.cold.10(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_24006C000, v1, OS_LOG_TYPE_ERROR, "error for new credential: %{public}@", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(uint64_t *)a1 returningToken:orError:.cold.11(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.12(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 currentSettings];
  v2 = [v1 dateNextPacRefresh];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_24006C000, v3, v4, "Next pac refresh: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:(NSObject *)a2 orError:.cold.13(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 currentSettings];
  v5 = [v4 datePasswordLastChanged];
  v6 = [a1 currentSettings];
  v7 = [v6 datePasswordLastChangedAtLogin];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "password last changed: %@, at login: %@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(uint64_t *)a1 returningToken:orError:.cold.14(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(id *)a1 returningToken:orError:.cold.15(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 length];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.16(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 callerBundleIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "UUID nil after authentication for calling app: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)saveValuesForPlugins:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)savePacValues:(void *)a1 atLogin:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dateNextPacRefresh];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setSiteCodeUsingContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCachedSiteCodeFromCacheForBundleIdentifier:(void *)a1 networkFingerprint:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 code];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createNewCredentialUsingContext:(uint64_t)a1 returningCredential:(void *)a2 orError:.cold.4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a2 extensionData];
  v3 = [v2 certificateUUID];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.5(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 extensionData];
  v2 = [v1 certificateUUID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(uint64_t)a1 returningCredential:(void *)a2 orError:.cold.6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 certificateTokenID];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.7(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 smartCardLAContext];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.9(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 certificateTokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.10(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 certificateTokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.11(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"kGSSICKerberosCacheName"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.12(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"kGSSICSiteName"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.14(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"kGSSICAppleSourceApp"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.15(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"kGSSICAppleSourceApp"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.16()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findExistingCredentialUsingContext:returningCredential:orError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findExistingCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)changePasswordWithContext:(void *)a1 withError:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)changePasswordWithContext:withError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)changePasswordWithContext:(id *)a1 withError:.cold.3(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "error during changePasswordForUPN: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshPacValuesWithContext:atLogin:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)refreshPacValuesWithContext:(uint64_t *)a1 atLogin:error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  v5 = 134218242;
  v6 = v1;
  v7 = 2112;
  v8 = v2;
  _os_log_error_impl(&dword_24006C000, v3, OS_LOG_TYPE_ERROR, "Error retrieving new TGT after password change: %lu, %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)refreshPacValuesWithContext:(char)a1 credential:(uint64_t)a2 atLogin:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[SOKerberosAuthentication refreshPacValuesWithContext:credential:atLogin:]";
  v6 = 1024;
  v7 = a1 & 1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "%s login: %d on %@", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)refreshPacValuesWithContext:credential:atLogin:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end