@interface SAAuthorization
+ (BOOL)connectionAuthorizedForAnyEmergency:(id)emergency;
+ (BOOL)connectionAuthorizedForCrashDetection:(id)detection;
+ (BOOL)currentConnectionAuthorizedForAnyEmergency;
+ (BOOL)currentConnectionAuthorizedForCrashDetection;
+ (BOOL)isInFlight;
+ (BOOL)setAccess:(BOOL)access forBundleId:(id)id;
+ (BOOL)startAuthorizationForBundleURL:(id)l preflightAuthorizationStatus:(int64_t)status completionHandler:(id)handler;
+ (id)SASyncedBundleId;
+ (id)approvedAppExcludingBundleId:(id)id;
+ (id)approvedBundleId;
+ (int64_t)authorizationStatusForCurrentConnection;
+ (int64_t)authorizationStatusWithTCCPreflightResult:(int)result;
+ (void)setThirdPartyBundleId:(id)id;
+ (void)showAuthorizationPrompt;
@end

@implementation SAAuthorization

+ (BOOL)isInFlight
{
  v2 = +[SAAuthorizationInFlight sharedInstance];
  isInFlight = [v2 isInFlight];

  return isInFlight;
}

+ (BOOL)currentConnectionAuthorizedForCrashDetection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = currentConnection;
  v7 = 0u;
  v8 = 0u;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  v6[0] = v7;
  v6[1] = v8;
  v4 = [SAAuthorization auditTokenAuthorizedForCrashDetection:v6];

  return v4;
}

+ (BOOL)connectionAuthorizedForCrashDetection:(id)detection
{
  v5 = 0u;
  v6 = 0u;
  if (detection)
  {
    [detection auditToken];
  }

  v4[0] = v5;
  v4[1] = v6;
  return [SAAuthorization auditTokenAuthorizedForCrashDetection:v4];
}

+ (BOOL)currentConnectionAuthorizedForAnyEmergency
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = currentConnection;
  v7 = 0u;
  v8 = 0u;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  v6[0] = v7;
  v6[1] = v8;
  v4 = [SAAuthorization auditTokenAuthorizedForCrashDetection:v6];

  return v4;
}

+ (BOOL)connectionAuthorizedForAnyEmergency:(id)emergency
{
  v5 = 0u;
  v6 = 0u;
  if (emergency)
  {
    [emergency auditToken];
  }

  v4[0] = v5;
  v4[1] = v6;
  return [SAAuthorization auditTokenAuthorizedForAnyEmergency:v4];
}

+ (int64_t)authorizationStatusWithTCCPreflightResult:(int)result
{
  if (result)
  {
    return result == 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)authorizationStatusForCurrentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  v4 = [SAAuthorization authorizationStatusWithTCCPreflightResult:TCCAccessPreflightWithAuditToken(), 0, 0];

  return v4;
}

+ (BOOL)startAuthorizationForBundleURL:(id)l preflightAuthorizationStatus:(int64_t)status completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = +[SAAuthorizationInFlight sharedInstance];
  isInFlight = [v9 isInFlight];
  if ((isInFlight & 1) == 0)
  {
    [v9 setInFlight:1];
    [v9 setPreflightAuthorizationStatus:status];
    [v9 setCompletionHandler:handlerCopy];
    v11 = [MEMORY[0x277CCA8D8] bundleWithURL:lCopy];
    bundleIdentifier = [v11 bundleIdentifier];
    [v9 setToBundleId:bundleIdentifier];

    toBundleId = [v9 toBundleId];
    v14 = [SAAuthorization approvedAppExcludingBundleId:toBundleId];
    [v9 setFromApp:v14];

    fromApp = [v9 fromApp];
    bundleId = [fromApp bundleId];
    [v9 setFromBundleId:bundleId];

    [objc_opt_class() showAuthorizationPrompt];
  }

  return isInFlight ^ 1;
}

+ (id)approvedAppExcludingBundleId:(id)id
{
  idCopy = id;
  v4 = +[SABundleManager crashDetectionManager];
  approvedApps = [v4 approvedApps];

  if ([approvedApps count])
  {
    firstObject = [approvedApps firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      bundleId = [firstObject bundleId];
      if ([bundleId isEqualToString:idCopy])
      {
      }

      else
      {
        pairedBundleId = [v7 pairedBundleId];
        v14 = [pairedBundleId isEqualToString:idCopy];

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

  bundleId2 = [v11 bundleId];
  if ([bundleId2 isEqualToString:idCopy])
  {

LABEL_15:
    if (!v19)
    {
      [SAAuthorization setThirdPartyBundleId:0];
    }

    v15 = 0;
    goto LABEL_18;
  }

  pairedBundleId2 = [v11 pairedBundleId];
  v17 = [pairedBundleId2 isEqualToString:idCopy];

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
  v2 = [self approvedAppExcludingBundleId:0];
  bundleId = [v2 bundleId];

  return bundleId;
}

+ (void)showAuthorizationPrompt
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, self, a3, "%s - Asked to display authorization prompt but not currently authorizing.", a5, a6, a7, a8, 2u);
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

+ (BOOL)setAccess:(BOOL)access forBundleId:(id)id
{
  accessCopy = access;
  idCopy = id;
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:idCopy];

  if (!v7)
  {
    if (accessCopy)
    {
      v10 = sa_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SAAuthorization *)idCopy setAccess:v10 forBundleId:v11, v12, v13, v14, v15, v16];
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

  if (!accessCopy)
  {
LABEL_10:
    selfCopy2 = self;
    v9 = 0;
    goto LABEL_11;
  }

  selfCopy2 = self;
  v9 = idCopy;
LABEL_11:
  [selfCopy2 setThirdPartyBundleId:v9];
  v17 = 1;
LABEL_13:

  return v17;
}

+ (id)SASyncedBundleId
{
  [self _synchronizePrefs];
  v3 = [self _copyPrefsValueForKey:@"SAKappaThirdPartyBundleId"];

  return v3;
}

+ (void)setThirdPartyBundleId:(id)id
{
  v12 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = idCopy;
    _os_log_impl(&dword_23AA4D000, v5, OS_LOG_TYPE_DEFAULT, "setting third party bundleId: %@", buf, 0xCu);
  }

  v6 = [self _copyPrefsValueForKey:@"SAKappaThirdPartyBundleId"];
  if (([v6 isEqual:idCopy] & 1) == 0)
  {
    [self _setPrefsValue:idCopy forKey:@"SAKappaThirdPartyBundleId"];
    v7 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SAAuthorization_setThirdPartyBundleId___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
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