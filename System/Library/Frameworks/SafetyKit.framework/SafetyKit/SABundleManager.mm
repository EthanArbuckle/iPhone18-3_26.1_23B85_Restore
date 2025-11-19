@interface SABundleManager
+ (id)approvedBundleIdsForService:(__CFString *)a3;
+ (id)bundleURLForAuditToken:(id *)a3;
+ (id)bundleURLForCurrentConnection;
+ (id)crashDetectionManager;
+ (id)locationBundle;
+ (id)reasonToAttributeName:(int64_t)a3;
+ (id)remoteApplicationWithBundleId:(id)a3 error:(id *)a4;
+ (void)getRemoteApplicationNameWithBundleId:(id)a3 withCompletion:(id)a4;
- (SABundleManager)initWithServiceName:(__CFString *)a3;
- (id)approvedApps;
- (id)pairedDeviceBundleIdForId:(id)a3;
- (void)approvedApps;
- (void)openApplicationInBackgroundWithBundleId:(id)a3 withReason:(int64_t)a4 completion:(id)a5;
- (void)openApplicationInForegroundWithBundleId:(id)a3 withReason:(int64_t)a4 completion:(id)a5;
- (void)wakeApprovedAppsWithReason:(int64_t)a3 completion:(id)a4;
@end

@implementation SABundleManager

+ (id)crashDetectionManager
{
  if (crashDetectionManager_onceToken != -1)
  {
    +[SABundleManager crashDetectionManager];
  }

  v3 = crashDetectionManager_manager;

  return v3;
}

- (id)approvedApps
{
  v33 = self;
  v62 = *MEMORY[0x277D85DE8];
  v2 = sa_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(SABundleManager *)v33 approvedApps];
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v54 = objc_opt_new();
  service = v33->_service;
  options = v33->_options;
  server = v33->_server;
  v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __31__SABundleManager_approvedApps__block_invoke;
  v47 = &unk_278B67DB8;
  v48 = &v49;
  tcc_server_message_get_authorization_records_by_service();
  if (![v50[5] count])
  {
    v30 = MEMORY[0x277CBEBF8];
    goto LABEL_33;
  }

  v6 = [v50[5] sortedArrayUsingComparator:&__block_literal_global_54];
  v35 = +[SAAuthorization SASyncedBundleId];
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [v7 initWithCapacity:{objc_msgSend(v50[5], "count") - 1}];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v61 count:16];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *v41;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v40 + 1) + 8 * i);
      if (!v9)
      {
        v9 = v13;
        continue;
      }

      v14 = [*(*(&v40 + 1) + 8 * i) bundleId];
      if ([v14 isEqualToString:v35])
      {

LABEL_14:
        [v8 addObject:{v9, v33}];
        v18 = v13;

        v9 = v18;
        continue;
      }

      v15 = [v13 bundleId];
      v16 = [(SABundleManager *)v33 pairedDeviceBundleIdForId:v35];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        goto LABEL_14;
      }

      [v8 addObject:v9];
    }

    v10 = [obj countByEnumeratingWithState:&v40 objects:v61 count:16];
  }

  while (v10);
LABEL_18:

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v60 count:16];
  if (v20)
  {
    v21 = *v37;
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v36 + 1) + 8 * v22);
        v24 = sa_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          v28 = [v23 bundleId];
          *buf = 136315394;
          v57 = "[SABundleManager approvedApps]";
          v58 = 2112;
          v59 = v28;
          _os_log_fault_impl(&dword_23AA4D000, v24, OS_LOG_TYPE_FAULT, "%s - Found more than one approved app for service, revoking access for duplicate app, bundleId: %@", buf, 0x16u);
        }

        v25 = [v23 bundleId];
        v26 = TCCAccessSetForBundleId() == 0;

        if (v26)
        {
          v27 = sa_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v29 = [v23 bundleId];
            *buf = 136315394;
            v57 = "[SABundleManager approvedApps]";
            v58 = 2112;
            v59 = v29;
            _os_log_error_impl(&dword_23AA4D000, v27, OS_LOG_TYPE_ERROR, "%s - Unable to revoke access for duplicate app, bundleId: %@", buf, 0x16u);
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v36 objects:v60 count:16];
    }

    while (v20);
  }

  v55 = v9;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];

LABEL_33:
  _Block_object_dispose(&v49, 8);

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __31__SABundleManager_approvedApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = tcc_authorization_record_get_subject_identity();
    if (!tcc_identity_get_type() && tcc_authorization_record_get_authorization_right() == 2)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithCString:tcc_identity_get_identifier() encoding:4];
      v6 = tcc_authorization_record_get_subject_attributed_entity();
      v7 = v6 == 0;

      v8 = [[SABundleManagerApp alloc] initWithBundleId:v5 deviceType:v7];
      [(SABundleManagerApp *)v8 setAuthorizationDate:tcc_authorization_record_get_last_modified_date()];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    }

    v3 = v9;
  }
}

uint64_t __40__SABundleManager_crashDetectionManager__block_invoke()
{
  v0 = [SABundleManager alloc];
  crashDetectionManager_manager = [(SABundleManager *)v0 initWithServiceName:*MEMORY[0x277D6C140]];

  return MEMORY[0x2821F96F8]();
}

- (SABundleManager)initWithServiceName:(__CFString *)a3
{
  v15.receiver = self;
  v15.super_class = SABundleManager;
  v3 = [(SABundleManager *)&v15 init];
  if (v3)
  {
    v4 = objc_alloc_init(SAPhoneApplicationLauncher);
    applicationLauncher = v3->_applicationLauncher;
    v3->_applicationLauncher = v4;

    v6 = tcc_server_create();
    server = v3->_server;
    v3->_server = v6;

    v8 = tcc_service_singleton_for_CF_name();
    service = v3->_service;
    v3->_service = v8;

    v10 = tcc_message_options_create();
    options = v3->_options;
    v3->_options = v10;

    v12 = v3->_options;
    tcc_message_options_set_reply_handler_policy();
    v13 = v3->_options;
    tcc_message_options_set_request_prompt_policy();
  }

  return v3;
}

+ (id)approvedBundleIdsForService:(__CFString *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = sa_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[SABundleManager approvedBundleIdsForService:];
  }

  v4 = objc_opt_new();
  v5 = TCCAccessCopyInformation();
  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      v10 = MEMORY[0x277D6C0C8];
      v11 = MEMORY[0x277D6C0D0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:{*v10, v21}];

          if (v14)
          {
            v15 = CFBundleGetIdentifier(v14);
            v16 = [v13 objectForKeyedSubscript:*v11];
            v17 = [v16 BOOLValue];

            if (v17)
            {
              [v4 addObject:v15];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v18 = [v4 allObjects];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __31__SABundleManager_approvedApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 authorizationDate];
  v6 = [v4 authorizationDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)bundleURLForCurrentConnection
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  v3 = v2;
  v7 = 0u;
  v8 = 0u;
  if (v2)
  {
    [v2 auditToken];
  }

  v6[0] = v7;
  v6[1] = v8;
  v4 = [SABundleManager bundleURLForAuditToken:v6];

  return v4;
}

+ (id)bundleURLForAuditToken:(id *)a3
{
  v13 = 0;
  v3 = *&a3->var0[4];
  v12[0] = *a3->var0;
  v12[1] = v3;
  v4 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v12 error:&v13];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([v4 bundleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v4 URL];
  }

  else
  {
    v10 = sa_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SABundleManager bundleURLForAuditToken:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)wakeApprovedAppsWithReason:(int64_t)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = sa_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SABundleManager *)self wakeApprovedAppsWithReason:a3 completion:v7];
  }

  v8 = [(SABundleManager *)self approvedApps];
  if ([v8 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = *v21;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = sa_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v14 bundleId];
          *buf = 136315394;
          v25 = "[SABundleManager wakeApprovedAppsWithReason:completion:]";
          v26 = 2112;
          v27 = v17;
          _os_log_debug_impl(&dword_23AA4D000, v15, OS_LOG_TYPE_DEBUG, "%s - Need to wake app, app: %@", buf, 0x16u);
        }

        if (a3 >= 2)
        {
          if (a3 != 2)
          {
            goto LABEL_16;
          }

          v16 = [v14 bundleId];
          [(SABundleManager *)self openApplicationInForegroundWithBundleId:v16 withReason:2 completion:v6];
        }

        else
        {
          v16 = [v14 bundleId];
          [(SABundleManager *)self openApplicationInBackgroundWithBundleId:v16 withReason:a3 completion:v6];
        }

LABEL_16:
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (!v11)
      {
LABEL_18:

        v8 = v19;
        goto LABEL_21;
      }
    }
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)openApplicationInBackgroundWithBundleId:(id)a3 withReason:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sa_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SABundleManager openApplicationInBackgroundWithBundleId:withReason:completion:];
  }

  [(SAApplicationLauncher *)self->_applicationLauncher openApplicationInBackgroundWithBundleId:v8 withReason:a4 completion:v9];
}

- (void)openApplicationInForegroundWithBundleId:(id)a3 withReason:(int64_t)a4 completion:(id)a5
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sa_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SABundleManager openApplicationInForegroundWithBundleId:withReason:completion:];
  }

  v8 = [objc_opt_class() reasonToAttributeName:a4];
  v9 = objc_opt_new();
  v17[0] = @"__LaunchOrigin";
  v17[1] = @"__PromptUnlockDevice";
  v18[0] = v8;
  v18[1] = &unk_284DA9BC8;
  v17[2] = @"__UnlockDevice ";
  v18[2] = &unk_284DA9BC8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v9 setFrontBoardOptions:v10];

  v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke;
  v14[3] = &unk_278B67E00;
  v15 = v6;
  v16 = a4;
  v12 = v6;
  [v11 openApplicationWithBundleIdentifier:v12 usingConfiguration:v9 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sa_default_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 136315650;
      v12 = "[SABundleManager openApplicationInForegroundWithBundleId:withReason:completion:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_23AA4D000, v7, OS_LOG_TYPE_DEFAULT, "%s - Successfully launched bundle application in foreground, bundleId: %@, reason: %lu", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke_cold_1(a1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)getRemoteApplicationNameWithBundleId:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D2BCF8] sharedInstance];
  v8 = [v7 getActivePairedDevice];

  if (v8)
  {
    v9 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke;
    v10[3] = &unk_278B67E28;
    v11 = v5;
    v12 = v6;
    [v9 fetchApplicationOnPairedDevice:v8 withBundleID:v11 completion:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sa_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke_cold_1(a1);
    }
  }

  v8 = *(a1 + 40);
  v9 = [v5 applicationName];
  (*(v8 + 16))(v8, v9);
}

+ (id)remoteApplicationWithBundleId:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277D2BCF8] sharedInstance];
  v7 = [v6 getActivePairedDevice];

  if (v7)
  {
    v8 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v18 = 0;
    v9 = [v8 applicationOnPairedDevice:v7 withBundleID:v5 error:&v18];
    v10 = v18;
    v11 = v18;

    if (v11 && [v11 code] != 19)
    {
      v12 = sa_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[SABundleManager remoteApplicationWithBundleId:error:];
      }

      objc_storeStrong(a4, v10);
    }

    if (v9)
    {
      v13 = [[SABundleManagerApp alloc] initWithBundleId:v5 deviceType:1];
      v14 = [v9 companionAppBundleID];
      [(SABundleManagerApp *)v13 setPairedBundleId:v14];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15 = [SAError errorWithCode:4];
    v16 = *a4;
    *a4 = v15;

    v13 = 0;
  }

  return v13;
}

+ (id)locationBundle
{
  if (locationBundle_onceToken != -1)
  {
    +[SABundleManager locationBundle];
  }

  v3 = locationBundle___bundle;

  return v3;
}

void __33__SABundleManager_locationBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:8];
  v6 = [v1 objectAtIndexedSubscript:0];

  v2 = [v6 URLByAppendingPathComponent:@"LocationBundles"];
  v3 = [v2 URLByAppendingPathComponent:@"Emergency SOS.bundle"];
  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = locationBundle___bundle;
  locationBundle___bundle = v4;
}

+ (id)reasonToAttributeName:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278B67E48[a3];
  }
}

- (id)pairedDeviceBundleIdForId:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D2BCF8] sharedInstance];
  v5 = [v4 getActivePairedDevice];

  v6 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v12 = 0;
  v7 = [v6 locallyAvailableApplicationWithBundleID:v3 forPairedDevice:v5 error:&v12];
  v8 = v12;

  v9 = [v7 bundleIdentifier];
  if (v8)
  {
    v10 = sa_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SABundleManager remoteApplicationWithBundleId:error:];
    }
  }

  return v9;
}

+ (void)approvedBundleIdsForService:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_23AA4D000, v0, v1, "%s, service: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)approvedApps
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  tcc_service_get_CF_name();
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_DEBUG, "%s, service: %@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)bundleURLForAuditToken:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_ERROR, "%s - unable to get bundle information for audit token, error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)wakeApprovedAppsWithReason:(NSObject *)a3 completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6 = 136315650;
  v7 = "[SABundleManager wakeApprovedAppsWithReason:completion:]";
  v8 = 2048;
  v9 = a2;
  v10 = 2112;
  CF_name = tcc_service_get_CF_name();
  _os_log_debug_impl(&dword_23AA4D000, a3, OS_LOG_TYPE_DEBUG, "%s, reason: %lu, service: %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openApplicationInBackgroundWithBundleId:withReason:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_23AA4D000, v0, v1, "%s - attempting to launch app in background, bundleId: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openApplicationInForegroundWithBundleId:withReason:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_23AA4D000, v0, v1, "%s - attempting to launch app in foreground, bundleId: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)remoteApplicationWithBundleId:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end