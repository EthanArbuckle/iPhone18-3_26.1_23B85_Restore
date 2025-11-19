@interface ATXAnchorModelDataAnonymizer
+ (BOOL)isFirstPartyApp:(id)a3;
+ (BOOL)shouldAnonymizeActionType:(id)a3 forBundleId:(id)a4;
+ (BOOL)shouldAnonymizeBundle:(id)a3;
+ (id)readDeviceSpecificSalt;
+ (id)setSaltToUserDefaults:(id)a3 scheme:(id)a4;
+ (void)_hashAndSaltActionKeyMetadataIfNeededInList:(id)a3 withSalt:(id)a4;
+ (void)anonymizeMessage:(id)a3;
@end

@implementation ATXAnchorModelDataAnonymizer

+ (void)anonymizeMessage:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Anchor Model Data Collection: starting anonymization procedure for log entry message...", buf, 2u);
  }

  v6 = [objc_opt_class() readDeviceSpecificSalt];
  v7 = [v4 anchor];
  v8 = [v7 anchorEventIdentifier];
  v9 = _ATXAnchorModelSha256Hash(v8, v6);
  v10 = [v4 anchor];
  [v10 setAnchorEventIdentifier:v9];

  v11 = [v4 anchor];
  v12 = [v11 locationIdentifier];
  v13 = _ATXAnchorModelSha256Hash(v12, v6);
  v14 = [v4 anchor];
  [v14 setLocationIdentifier:v13];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = [v4 positiveAppLaunches];
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      v19 = 0;
      do
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * v19);
        v21 = objc_opt_class();
        v22 = [v20 bundleId];
        LODWORD(v21) = [v21 shouldAnonymizeBundle:v22];

        if (v21)
        {
          v23 = [v20 bundleId];
          v24 = _ATXAnchorModelSha256Hash(v23, v6);
          [v20 setBundleId:v24];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v17);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = [v4 negativeAppLaunches];
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * v29);
        v31 = objc_opt_class();
        v32 = [v30 bundleId];
        LODWORD(v31) = [v31 shouldAnonymizeBundle:v32];

        if (v31)
        {
          v33 = [v30 bundleId];
          v34 = _ATXAnchorModelSha256Hash(v33, v6);
          [v30 setBundleId:v34];
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v27);
  }

  v35 = [v4 positiveActions];
  [a1 _hashAndSaltActionKeyMetadataIfNeededInList:v35 withSalt:v6];

  v36 = [v4 negativeActions];
  [a1 _hashAndSaltActionKeyMetadataIfNeededInList:v36 withSalt:v6];

  v37 = __atxlog_handle_default();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "Anchor Model Data Collection: finished anonymization procedure for log entry message.", buf, 2u);
  }

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)_hashAndSaltActionKeyMetadataIfNeededInList:(id)a3 withSalt:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 appLaunchMetadata];
        v13 = [v12 bundleId];

        v14 = [v11 actionKeyMetadata];
        v15 = [v14 actionType];

        if ([objc_opt_class() shouldAnonymizeBundle:v13])
        {
          v16 = _ATXAnchorModelSha256Hash(v13, v6);
          v17 = [v11 appLaunchMetadata];
          [v17 setBundleId:v16];
        }

        if ([objc_opt_class() shouldAnonymizeActionType:v15 forBundleId:v13])
        {
          v18 = _ATXAnchorModelSha256Hash(v15, v6);
          v19 = [v11 actionKeyMetadata];
          [v19 setActionType:v18];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isFirstPartyApp:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277CEB3B8] isSystemAppForBundleId:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"com.apple."];
  }

  return v4;
}

+ (BOOL)shouldAnonymizeBundle:(id)a3
{
  v4 = a3;
  if ([a1 isFirstPartyApp:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[_ATXGlobals sharedInstance];
    v7 = [v6 whitelistedBundlesForAnchorModelLogging];
    v8 = [v7 objectForKey:v4];
    v5 = v8 == 0;
  }

  return v5;
}

+ (BOOL)shouldAnonymizeActionType:(id)a3 forBundleId:(id)a4
{
  v6 = a3;
  if ([a1 isFirstPartyApp:a4])
  {
    v7 = 0;
  }

  else
  {
    v8 = +[_ATXGlobals sharedInstance];
    v9 = [v8 whitelistedActionTypesForAnchorModelLogging];
    v10 = [v9 objectForKey:v6];
    v11 = v10 == 0;

    v12 = [v8 approvedSiriKitIntents];
    v13 = [v12 containsObject:v6];

    v7 = v11 & ~v13;
  }

  return v7;
}

+ (id)setSaltToUserDefaults:(id)a3 scheme:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, [v7 mutableBytes]))
  {
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithData:v7];

    if (v9)
    {
      [v5 setObject:v9 forKey:v6];
      goto LABEL_8;
    }
  }

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [ATXAnchorModelDataAnonymizer setSaltToUserDefaults:v8 scheme:?];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)readDeviceSpecificSalt
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 dataForKey:@"ATXAnchorModelOfflineDataHarvesterDeviceSpecificSalt"];
  if (!v4)
  {
    v4 = [objc_opt_class() setSaltToUserDefaults:v3 scheme:@"ATXAnchorModelOfflineDataHarvesterDeviceSpecificSalt"];
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Anchor Model Data Collection: Created a new salt for data collection.", v7, 2u);
    }
  }

  return v4;
}

@end