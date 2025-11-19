@interface SAAuthorization
+ (BOOL)connectionAuthorizedForAnyEmergency:(id)a3;
+ (BOOL)connectionAuthorizedForCrashDetection:(id)a3;
+ (BOOL)currentConnectionAuthorizedForAnyEmergency;
+ (BOOL)currentConnectionAuthorizedForCrashDetection;
+ (BOOL)isInFlight;
+ (BOOL)setAccess:(BOOL)a3 forBundleId:(id)a4;
+ (BOOL)startAuthorizationForBundleURL:(id)a3 preflightAuthorizationStatus:(int64_t)a4 completionHandler:(id)a5;
+ (id)SASyncedBundleId;
+ (id)approvedAppExcludingBundleId:(id)a3;
+ (id)approvedBundleId;
+ (int64_t)authorizationStatusForCurrentConnection;
+ (int64_t)authorizationStatusWithTCCPreflightResult:(int)a3;
+ (void)setThirdPartyBundleId:(id)a3;
+ (void)showAuthorizationPrompt;
@end

@implementation SAAuthorization

+ (BOOL)isInFlight
{
  v2 = +[SAAuthorizationInFlight sharedInstance];
  v3 = [v2 isInFlight];

  return v3;
}

+ (BOOL)currentConnectionAuthorizedForCrashDetection
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
  v4 = [SAAuthorization auditTokenAuthorizedForCrashDetection:v6];

  return v4;
}

+ (BOOL)connectionAuthorizedForCrashDetection:(id)a3
{
  v5 = 0u;
  v6 = 0u;
  if (a3)
  {
    [a3 auditToken];
  }

  v4[0] = v5;
  v4[1] = v6;
  return [SAAuthorization auditTokenAuthorizedForCrashDetection:v4];
}

+ (BOOL)currentConnectionAuthorizedForAnyEmergency
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
  v4 = [SAAuthorization auditTokenAuthorizedForCrashDetection:v6];

  return v4;
}

+ (BOOL)connectionAuthorizedForAnyEmergency:(id)a3
{
  v5 = 0u;
  v6 = 0u;
  if (a3)
  {
    [a3 auditToken];
  }

  v4[0] = v5;
  v4[1] = v6;
  return [SAAuthorization auditTokenAuthorizedForAnyEmergency:v4];
}

+ (int64_t)authorizationStatusWithTCCPreflightResult:(int)a3
{
  if (a3)
  {
    return a3 == 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)authorizationStatusForCurrentConnection
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  v4 = [SAAuthorization authorizationStatusWithTCCPreflightResult:TCCAccessPreflightWithAuditToken(), 0, 0];

  return v4;
}

+ (BOOL)startAuthorizationForBundleURL:(id)a3 preflightAuthorizationStatus:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[SAAuthorizationInFlight sharedInstance];
  v10 = [v9 isInFlight];
  if ((v10 & 1) == 0)
  {
    [v9 setInFlight:1];
    [v9 setPreflightAuthorizationStatus:a4];
    [v9 setCompletionHandler:v8];
    v11 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
    v12 = [v11 bundleIdentifier];
    [v9 setToBundleId:v12];

    v13 = [v9 toBundleId];
    v14 = [SAAuthorization approvedAppExcludingBundleId:v13];
    [v9 setFromApp:v14];

    v15 = [v9 fromApp];
    v16 = [v15 bundleId];
    [v9 setFromBundleId:v16];

    [objc_opt_class() showAuthorizationPrompt];
  }

  return v10 ^ 1;
}

+ (id)approvedAppExcludingBundleId:(id)a3
{
  v3 = a3;
  v4 = +[SABundleManager crashDetectionManager];
  v5 = [v4 approvedApps];

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 bundleId];
      if ([v8 isEqualToString:v3])
      {
      }

      else
      {
        v13 = [v7 pairedBundleId];
        v14 = [v13 isEqualToString:v3];

        if ((v14 & 1) == 0)
        {
          v15 = v7;
          goto LABEL_11;
        }
      }
    }

    v15 = 0;
LABEL_11:

    goto LABEL_19;
  }

  v9 = +[SAAuthorization SASyncedBundleId];

  if (!v9)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v19 = 0;
  v10 = +[SAAuthorization SASyncedBundleId];
  v11 = [SABundleManager remoteApplicationWithBundleId:v10 error:&v19];

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = [v11 bundleId];
  if ([v12 isEqualToString:v3])
  {

LABEL_15:
    if (!v19)
    {
      [SAAuthorization setThirdPartyBundleId:0];
    }

    v15 = 0;
    goto LABEL_18;
  }

  v16 = [v11 pairedBundleId];
  v17 = [v16 isEqualToString:v3];

  if (v17)
  {
    goto LABEL_15;
  }

  v15 = v11;
LABEL_18:

LABEL_19:

  return v15;
}

+ (id)approvedBundleId
{
  v2 = [a1 approvedAppExcludingBundleId:0];
  v3 = [v2 bundleId];

  return v3;
}

+ (void)showAuthorizationPrompt
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - Asked to display authorization prompt but not currently authorizing.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [*(a1 + 32) fromApp];

  v48 = v3;
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    if (v3)
    {
      v8 = [v5 localizedStringForKey:@"ALERT_HEADER_LONG_PHONE" value:&stru_284DA6B88 table:0];
      v9 = [*(a1 + 32) getToBundleLocalizedName];
      [v7 stringWithFormat:v8, v9, v3];
    }

    else
    {
      v8 = [v5 localizedStringForKey:@"ALERT_HEADER_LONG_MISSING_APP_PHONE" value:&stru_284DA6B88 table:0];
      v9 = [*(a1 + 32) getToBundleLocalizedName];
      [v7 stringWithFormat:v8, v9, v45];
    }
    v46 = ;
    v23 = v3;

    v14 = [v5 localizedStringForKey:@"ALERT_LONG_PHONE" value:&stru_284DA6B88 table:0];
    v24 = MEMORY[0x277CCACA8];
    v25 = [*(a1 + 32) getToBundleLocalizedName];
    v17 = [v24 stringWithFormat:v14, v25];

    v26 = MEMORY[0x277CCACA8];
    v27 = [v5 localizedStringForKey:@"DEFAULT_BUTTON_TITLE_LONG" value:&stru_284DA6B88 table:0];
    v28 = [*(a1 + 32) getToBundleLocalizedName];
    v21 = [v26 stringWithFormat:v27, v28];

    if (v23)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = [v5 localizedStringForKey:@"ALTERNATE_BUTTON_TITLE_LONG" value:&stru_284DA6B88 table:0];
      v22 = [v29 stringWithFormat:v30, v23];
    }

    else
    {
      v22 = [v5 localizedStringForKey:@"ALTERNATE_BUTTON_TITLE_MISSING_APP_LONG" value:&stru_284DA6B88 table:0];
    }

    v13 = v46;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v5 localizedStringForKey:@"ALERT_HEADER_SHORT_PHONE" value:&stru_284DA6B88 table:0];
    v12 = [*(a1 + 32) getToBundleLocalizedName];
    v13 = [v10 stringWithFormat:v11, v12];

    v14 = [v5 localizedStringForKey:@"ALERT_SHORT_PHONE" value:&stru_284DA6B88 table:0];
    v15 = MEMORY[0x277CCACA8];
    v16 = [*(a1 + 32) getToBundleLocalizedName];
    v17 = [v15 stringWithFormat:v14, v16];

    v18 = MEMORY[0x277CCACA8];
    v19 = [v5 localizedStringForKey:@"DEFAULT_BUTTON_TITLE_SHORT" value:&stru_284DA6B88 table:0];
    v20 = [*(a1 + 32) getToBundleLocalizedName];
    v21 = [v18 stringWithFormat:v19, v20];

    v22 = [v5 localizedStringForKey:@"ALTERNATE_BUTTON_TITLE_SHORT" value:&stru_284DA6B88 table:0];
  }

  v31 = objc_opt_new();
  [v31 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBF188]];
  [v31 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBF198]];
  [v31 setObject:v21 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  [v31 setObject:v22 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v33 = [v32 valueForKey:@"SAServerMockAuthorizationPromptAnswer"];

  if (v33)
  {
    v34 = sa_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_1();
    }

    v35 = [v33 BOOLValue] ^ 1;
    v36 = sa_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_2();
    }

    authorizationPromptResponseHandler(0, v35);
    goto LABEL_19;
  }

  error = 0;
  v37 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, v31);
  if (v37 && !error)
  {
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v37, authorizationPromptResponseHandler, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
    CFRelease(RunLoopSource);
LABEL_19:
    v40 = v48;
    goto LABEL_20;
  }

  v47 = v13;
  if (v37)
  {
    CFRelease(v37);
  }

  v41 = [*(a1 + 32) completionHandler];
  v42 = [*(a1 + 32) preflightAuthorizationStatus];
  v43 = [SAError errorWithCode:4];
  (v41)[2](v41, v42, v43);

  [*(a1 + 32) reset];
  v44 = sa_default_log();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_3(&error, v44);
  }

  v13 = v47;
  v40 = v48;
LABEL_20:
}

+ (BOOL)setAccess:(BOOL)a3 forBundleId:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v6];

  if (!v7)
  {
    if (v4)
    {
      v10 = sa_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SAAuthorization *)v6 setAccess:v10 forBundleId:v11, v12, v13, v14, v15, v16];
      }
    }

    else if (TCCAccessSetForBundleId())
    {
      goto LABEL_10;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  if (!TCCAccessSetForBundleId())
  {
    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_10:
    v8 = a1;
    v9 = 0;
    goto LABEL_11;
  }

  v8 = a1;
  v9 = v6;
LABEL_11:
  [v8 setThirdPartyBundleId:v9];
  v17 = 1;
LABEL_13:

  return v17;
}

+ (id)SASyncedBundleId
{
  [a1 _synchronizePrefs];
  v3 = [a1 _copyPrefsValueForKey:@"SAKappaThirdPartyBundleId"];

  return v3;
}

+ (void)setThirdPartyBundleId:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_23AA4D000, v5, OS_LOG_TYPE_DEFAULT, "setting third party bundleId: %@", buf, 0xCu);
  }

  v6 = [a1 _copyPrefsValueForKey:@"SAKappaThirdPartyBundleId"];
  if (([v6 isEqual:v4] & 1) == 0)
  {
    [a1 _setPrefsValue:v4 forKey:@"SAKappaThirdPartyBundleId"];
    v7 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SAAuthorization_setThirdPartyBundleId___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SAAuthorization_setThirdPartyBundleId___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizePrefs];
  v2 = objc_opt_new();
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"SAKappaThirdPartyBundleId"];
  [v2 synchronizeUserDefaultsDomain:@"com.apple.SafetyKit" keys:v1];
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_DEBUG, "%s - Would have presented notification, details: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = 2048;
  v5 = v0;
  _os_log_debug_impl(&dword_23AA4D000, v1, OS_LOG_TYPE_DEBUG, "%s - Mocking answer to authorization prompt, mockAnswer: %@, responseFlags: %lu", v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_3(int *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "+[SAAuthorization showAuthorizationPrompt]_block_invoke";
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_ERROR, "%s - CFUserNotificationCreate failed, error: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)setAccess:(uint64_t)a3 forBundleId:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a2, a3, "attempting to set third party bundleId that doesn't exist: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end