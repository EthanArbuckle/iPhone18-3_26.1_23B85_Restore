@interface DiagnosticsServiceImpl
- (BOOL)_checkRateLimitForAllowance:(id)a3 time:(id)a4;
- (BOOL)assertEntitlement:(void *)a3 entitlement:(int)a4 private:;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateSignature:(_BOOL8)a1;
- (DiagnosticsServiceImpl)initWithQueue:(id)a3;
- (id)responseDictWithSuccess:(uint64_t)a1 reasonCode:(uint64_t)a2 expiresIn:(uint64_t)a3;
- (id)responseDictWithSuccess:(uint64_t)a3 reasonCode:;
- (id)responseDictWithSuccess:(void *)a3 sessionId:;
- (id)responseDictWithSuccess:(void *)a3 sessionId:(void *)a4 groupId:(void *)a5 additionalDict:(uint64_t)a6 reasonCode:;
- (id)responseDictWithSuccess:(void *)a3 sessionId:(void *)a4 groupId:(void *)a5 additionalDict:(uint64_t)a6 reasonCode:(void *)a7 expiresIn:;
- (void)_checkRateLimitForConnection:(void *)a3 signature:(void *)a4 reply:;
- (void)abcEnabledAndReadyWithReply:(uint64_t)a1;
- (void)addSignatureContentForSession:(id)a3 key:(id)a4 content:(id)a5 reply:(id)a6;
- (void)addToSession:(id)a3 event:(id)a4 payload:(id)a5 reply:(id)a6;
- (void)addToSession:(id)a3 events:(id)a4 payload:(id)a5 reply:(id)a6;
- (void)cancelSession:(id)a3;
- (void)cloudKitUploadDecisionForCaseIdentifiers:(id)a3 reply:(id)a4;
- (void)endSession:(id)a3;
- (void)getAutoBugCaptureConfiguration:(id)a3;
- (void)getCasesListFromIdentifier:(id)a3 count:(unint64_t)a4 reply:(id)a5;
- (void)getDiagnosticPayloadsForSignatures:(id)a3 reply:(id)a4;
- (void)getExpertSystemsStatus:(id)a3;
- (void)getSessionStatisticsWithReply:(id)a3;
- (void)homeKitResidentDevicesIDSIdentifiersWithReply:(id)a3;
- (void)listCaseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5 reply:(id)a6;
- (void)listCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4;
- (void)purgeAutoBugCaptureFilesWithSubPaths:(id)a3 reply:(id)a4;
- (void)requestGroupCaseIdentifierForSignature:(id)a3 reply:(id)a4;
- (void)resetAllWithReply:(id)a3;
- (void)resetDiagnosticCaseStorageWithReply:(id)a3;
- (void)resetDiagnosticCaseUsageWithReply:(id)a3;
- (void)snapshotWithSignature:(id)a3 delay:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 wantsRemoteCase:(BOOL)a8 reply:(id)a9;
- (void)startSessionWithSignature:(id)a3 duration:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 wantsRemoteCase:(BOOL)a8 reply:(id)a9;
- (void)submitRecentCaseSummariesWithCount:(unint64_t)a3 reply:(id)a4;
- (void)submitRecentCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4;
- (void)triggerRemoteSessionForSignature:(id)a3 groupIdentifier:(id)a4 reply:(id)a5;
- (void)uploadCasesWithIdentifiersToCloudKit:(id)a3;
- (void)uploadRecentCases:(unint64_t)a3;
@end

@implementation DiagnosticsServiceImpl

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(DiagnosticsServiceImpl *)self assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.report" private:0];
  if (v6)
  {
    if (listener_shouldAcceptNewConnection__onceToken != -1)
    {
      [DiagnosticsServiceImpl listener:shouldAcceptNewConnection:];
    }

    [v5 setExportedInterface:listener_shouldAcceptNewConnection__diagnosticsServiceInterface];
    [v5 setExportedObject:self];
    [v5 resume];
  }

  else
  {
    v7 = xpcLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "DiagnosticsService: connection (%@) lacks proper entitlements", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)assertEntitlement:(void *)a3 entitlement:(int)a4 private:
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a1 != 0;
  if (a1 && a4)
  {
    v10 = [v7 valueForEntitlement:v8];
    v11 = v10;
    if (v10 && ([v10 BOOLValue] & 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v12 = xpcLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v8;
        v17 = 1024;
        v18 = [v7 processIdentifier];
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics DiagnosticsService: entitlement %@ is missing (%d)", &v15, 0x12u);
      }

      v9 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __61__DiagnosticsServiceImpl_listener_shouldAcceptNewConnection___block_invoke()
{
  listener_shouldAcceptNewConnection__diagnosticsServiceInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28537E8A8];

  return MEMORY[0x2821F96F8]();
}

- (void)_checkRateLimitForConnection:(void *)a3 signature:(void *)a4 reply:
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1 || !v9)
  {
    goto LABEL_28;
  }

  v11 = +[ABCAdministrator sharedInstance];
  v12 = [v11 configurationManager];
  v13 = [v12 disableAPIRateLimit];

  if (v13)
  {
    v10[2](v10, 0, 0.0);
    goto LABEL_28;
  }

  v14 = [v7 processIdentifier];
  v15 = a1[2];
  objc_sync_enter(v15);
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = +[ABCAdministrator sharedInstance];
  v18 = [v17 configurationManager];
  [v18 apiRateLimit];
  v20 = v19;

  v21 = +[ABCAdministrator sharedInstance];
  v22 = [v21 configurationManager];
  [v22 apiLimitWindow];
  v24 = v23;

  v25 = xpcLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v60 = v14;
    v61 = 2112;
    v62 = v8;
    _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: API rate limit check for client: %d signature:%@", buf, 0x12u);
  }

  v26 = a1[2];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28)
  {
    v28 = objc_alloc_init(RateLimitAllowance);
    [(RateLimitAllowance *)v28 setAllowance:v20];
    v29 = a1[2];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    [v29 setObject:v28 forKeyedSubscript:v30];
  }

  v31 = [a1 _checkRateLimitForAllowance:v28 time:v16];
  if (!_checkRateLimitForConnection_signature_reply__lastCleanedAt)
  {
    goto LABEL_17;
  }

  [v16 timeIntervalSinceDate:?];
  if (v32 > 3600.0)
  {
    v33 = xpcLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_INFO, "DiagnosticsService: Cleaning API rate limit cache", buf, 2u);
    }

    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = a1[2];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke;
    v54[3] = &unk_278CF0248;
    v55 = v16;
    v57 = v24;
    v58 = v20;
    v36 = v34;
    v56 = v36;
    [v35 enumerateKeysAndObjectsUsingBlock:v54];
    if ([v36 count])
    {
      [a1[2] removeObjectsForKeys:v36];
    }

    objc_storeStrong(&_checkRateLimitForConnection_signature_reply__lastCleanedAt, v16);

    goto LABEL_18;
  }

  if (!_checkRateLimitForConnection_signature_reply__lastCleanedAt)
  {
LABEL_17:
    v37 = v16;
    v36 = _checkRateLimitForConnection_signature_reply__lastCleanedAt;
    _checkRateLimitForConnection_signature_reply__lastCleanedAt = v37;
LABEL_18:
  }

  v38 = 0.0;
  if ((v31 & 1) == 0)
  {
    [(RateLimitAllowance *)v28 allowance];
    v40 = 1.0 - v39;
    v41 = v24 / v20;
    if (v20 <= 0.0)
    {
      v41 = 0.0;
    }

    v42 = v41 * v40;
    v38 = ceilf(v42);
  }

  objc_sync_exit(v15);
  if (v31)
  {
    v10[2](v10, 0, 0.0);
  }

  else
  {
    v43 = [v8 objectForKeyedSubscript:@"groupID"];

    if (v43)
    {
      v44 = +[ABCAdministrator sharedInstance];
      v45 = [v44 caseManager];
      v46 = [v8 objectForKeyedSubscript:@"domain"];
      v47 = [v8 objectForKeyedSubscript:@"type"];
      v48 = [v8 objectForKeyedSubscript:@"subtype"];
      v49 = [v8 objectForKeyedSubscript:@"detected"];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke_127;
      v51[3] = &unk_278CF0270;
      v52 = v10;
      v53 = v38;
      [v45 countOfCasesMatchingDomain:v46 type:v47 subtype:v48 process:v49 groupCaseIDIsPresent:1 withinLast:v51 reply:3600.0];
    }

    else
    {
      v10[2](v10, 1, v38);
    }
  }

LABEL_28:

  v50 = *MEMORY[0x277D85DE8];
}

void __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 lastCheckedAt];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = *(a1 + 48);
  v12 = 0.0;
  if (v11 > 0.0)
  {
    v12 = *(a1 + 56) / v11;
  }

  [v6 allowance];
  [v6 setAllowance:v13 + v10 * v12];
  [v6 setLastCheckedAt:*(a1 + 32)];
  [v6 allowance];
  if (v14 >= *(a1 + 56))
  {
    [*(a1 + 40) addObject:v5];
    v15 = xpcLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [v6 allowance];
      v18 = 138412546;
      v19 = v5;
      v20 = 2048;
      v21 = v16;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "DiagnosticsService: API rate limit allowance for client %@ has fully recovered (%.1f). Cleaning out.", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke_127(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = xpcLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "";
    if (a2)
    {
      v5 = " Not";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "DiagnosticsService:%s overriding rate limit for group case", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2 != 0, *(a1 + 40));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_checkRateLimitForAllowance:(id)a3 time:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[ABCAdministrator sharedInstance];
  v8 = [v7 configurationManager];
  [v8 apiRateLimit];
  v10 = v9;

  v11 = +[ABCAdministrator sharedInstance];
  v12 = [v11 configurationManager];
  [v12 apiLimitWindow];
  v14 = v13;

  v15 = xpcLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [v5 allowance];
    v17 = v16;
    v18 = [v5 lastCheckedAt];
    if (v18)
    {
      v19 = "last checked at: ";
    }

    else
    {
      v19 = "(no previous checks)";
    }

    v20 = [v5 lastCheckedAt];
    v21 = v20;
    *v40 = 134219010;
    v22 = &stru_285368168;
    *&v40[4] = v17;
    if (v20)
    {
      v22 = v20;
    }

    *&v40[12] = 2048;
    *&v40[14] = v10;
    v41 = 2048;
    v42 = v14;
    v43 = 2080;
    v44 = v19;
    v45 = 2112;
    v46 = v22;
    _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "DiagnosticsService: API rate limit check - allowance: %.1f  current rate: %.0f calls per %.0f seconds. %s%@", v40, 0x34u);
  }

  v23 = [v5 lastCheckedAt];

  if (v23)
  {
    v24 = [v5 lastCheckedAt];
    [v6 timeIntervalSinceDate:v24];
    v26 = v25;

    [v5 allowance];
    [v5 setAllowance:v27 + v26 * (v10 / v14)];
    [v5 allowance];
    if (v28 > v10)
    {
      [v5 setAllowance:v10];
    }

    v29 = xpcLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [v5 allowance];
      *v40 = 134217984;
      *&v40[4] = v30;
      _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEBUG, "DiagnosticsService: API rate limit allowance recovered to %.1f", v40, 0xCu);
    }
  }

  [v5 allowance];
  v32 = v31;
  if (v31 < 1.0)
  {
    v34 = xpcLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      [v5 allowance];
      *v40 = 134217984;
      *&v40[4] = v37;
      v36 = "DiagnosticsService: API rate limit allowance is insufficient (%.1f), disallowed";
      goto LABEL_19;
    }
  }

  else
  {
    [v5 allowance];
    [v5 setAllowance:v33 + -1.0];
    v34 = xpcLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      [v5 allowance];
      *v40 = 134217984;
      *&v40[4] = v35;
      v36 = "DiagnosticsService: API rate limit allowance reduced to %.1f, allowing";
LABEL_19:
      _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_INFO, v36, v40, 0xCu);
    }
  }

  [v5 setLastCheckedAt:v6];
  v38 = *MEMORY[0x277D85DE8];
  return v32 >= 1.0;
}

- (DiagnosticsServiceImpl)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DiagnosticsServiceImpl;
  v6 = [(DiagnosticsServiceImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allowanceCache = v7->allowanceCache;
    v7->allowanceCache = v8;
  }

  return v7;
}

void __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    v12 = xpcLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: snapshotWithSignature - ABC is not enabled", buf, 2u);
    }

    v13 = *(a1 + 72);
    if (!v13)
    {
      return;
    }

    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceUnavailable;
LABEL_14:
    v11 = [(DiagnosticsServiceImpl *)v14 responseDictWithSuccess:*v15 reasonCode:?];
    (*(v13 + 16))(v13, v11);
    goto LABEL_4;
  }

  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_139;
    v18[3] = &unk_278CF02C0;
    v22 = *(a1 + 72);
    v17 = *(a1 + 32);
    v7 = *(&v17 + 1);
    v8 = *(a1 + 48);
    v23 = *(a1 + 80);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v19 = v17;
    v20 = v10;
    v21 = *(a1 + 64);
    v24 = *(a1 + 88);
    [(DiagnosticsServiceImpl *)v4 _checkRateLimitForConnection:v5 signature:v6 reply:v18];

    v11 = v22;
LABEL_4:

    return;
  }

  v16 = xpcLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: snapshotWithSignature - ABC is not ready", buf, 2u);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceNotReady;
    goto LABEL_14;
  }
}

void __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_139(uint64_t a1, int a2)
{
  v54 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v14 = [(DiagnosticsServiceImpl *)*(a1 + 32) validateSignature:?];
    v15 = *(a1 + 48);
    v16 = [v15 objectForKeyedSubscript:@"sandbox_ext_token_dict"];

    if (v16)
    {
      v17 = [v15 mutableCopy];
      [v17 removeObjectForKey:@"sandbox_ext_token_dict"];

      v18 = xpcLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "> DiagnosticsService: redacting sandbox extension token", buf, 2u);
      }

      v15 = v17;
    }

    v19 = xpcLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 80);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = "invalid";
      if (v14)
      {
        v24 = "valid";
      }

      v25 = "";
      if (*(a1 + 88))
      {
        v25 = "(trigger remote diags)";
      }

      *buf = 138413826;
      v41 = v20;
      v42 = 2048;
      v43 = v21;
      v44 = 2112;
      v45 = v15;
      v46 = 2112;
      v47 = v22;
      v48 = 2112;
      v49 = v23;
      v50 = 2080;
      v51 = v24;
      v52 = 2080;
      v53 = v25;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to SNAPSHOT with signature: %@, for Delay: %ld, payload: %@, events: %@, actions: %@ (signature %s) %s", buf, 0x48u);
    }

    if (v14)
    {
      if (*(a1 + 88))
      {
        v26 = 5;
      }

      else
      {
        v29 = [*(a1 + 40) objectForKeyedSubscript:@"groupID"];

        if (v29)
        {
          v26 = 3;
        }

        else
        {
          v26 = 1;
        }
      }

      v30 = +[ABCAdministrator sharedInstance];
      v31 = [v30 caseManager];
      v32 = *(a1 + 80);
      v33 = *(a1 + 40);
      v34 = *(a1 + 48);
      v35 = *(a1 + 56);
      v36 = *(a1 + 64);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_143;
      v38[3] = &unk_278CF0298;
      v37 = *(a1 + 72);
      v38[4] = *(a1 + 32);
      v39 = v37;
      [v31 startSessionWithSignature:v33 flags:v26 preferredTimeout:v35 events:v34 payload:v36 actions:v38 reply:v32];

      v28 = v39;
    }

    else
    {
      v27 = *(a1 + 72);
      if (!v27)
      {
        goto LABEL_27;
      }

      v28 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:20 reasonCode:?];
      (*(v27 + 16))(v27, v28);
    }

    goto LABEL_27;
  }

  v3 = +[ABCAdministrator sharedInstance];
  v4 = [v3 configurationManager];
  [v4 apiRateLimit];
  v6 = v5;

  v7 = +[ABCAdministrator sharedInstance];
  v8 = [v7 configurationManager];
  [v8 apiLimitWindow];
  v10 = v9;

  v11 = xpcLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v41 = v6;
    v42 = 2048;
    v43 = v10;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: API rate limited. (Allowed limit is %.0f calls per %.0f second window)", buf, 0x16u);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v15 = [DiagnosticsServiceImpl responseDictWithSuccess:0 reasonCode:41 expiresIn:?];
    (*(v12 + 16))(v12, v15);
LABEL_27:
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_143(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:a2 sessionId:a3 groupId:a4 additionalDict:a5 reasonCode:?];
    (*(v5 + 16))(v5, v6);
  }
}

void __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    v12 = xpcLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: startSessionWithSignature - ABC is not enabled", buf, 2u);
    }

    v13 = *(a1 + 72);
    if (!v13)
    {
      return;
    }

    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceUnavailable;
LABEL_14:
    v11 = [(DiagnosticsServiceImpl *)v14 responseDictWithSuccess:*v15 reasonCode:?];
    (*(v13 + 16))(v13, v11);
    goto LABEL_4;
  }

  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_147;
    v18[3] = &unk_278CF02C0;
    v22 = *(a1 + 72);
    v17 = *(a1 + 32);
    v7 = *(&v17 + 1);
    v23 = *(a1 + 80);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v19 = v17;
    v20 = v10;
    v21 = *(a1 + 64);
    v24 = *(a1 + 88);
    [(DiagnosticsServiceImpl *)v4 _checkRateLimitForConnection:v5 signature:v6 reply:v18];

    v11 = v22;
LABEL_4:

    return;
  }

  v16 = xpcLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: startSessionWithSignature - ABC is not ready", buf, 2u);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceNotReady;
    goto LABEL_14;
  }
}

void __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_147(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) validateSignature:?];
    v7 = xpcLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 80);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = "invalid";
      if (v6)
      {
        v13 = "valid";
      }

      *buf = 138413570;
      v31 = v9;
      v32 = 2048;
      v33 = v8;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      v40 = 2080;
      v41 = v13;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to START logging session with signature: %@, duration: %ld, payload: %@, events: %@, actions: %@ (signature %s)", buf, 0x3Eu);
    }

    if (v6)
    {
      if (*(a1 + 88))
      {
        v14 = 4;
      }

      else
      {
        v18 = [*(a1 + 40) objectForKeyedSubscript:@"groupID"];
        v19 = v18 != 0;

        v14 = 2 * v19;
      }

      v20 = +[ABCAdministrator sharedInstance];
      v21 = [v20 caseManager];
      v22 = *(a1 + 80);
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_148;
      v28[3] = &unk_278CF0298;
      v27 = *(a1 + 72);
      v28[4] = *(a1 + 32);
      v29 = v27;
      [v21 startSessionWithSignature:v23 flags:v14 preferredTimeout:v25 events:v24 payload:v26 actions:v28 reply:v22];

      v17 = v29;
      goto LABEL_19;
    }

    v4 = *(a1 + 72);
    if (!v4)
    {
      goto LABEL_5;
    }

    v15 = *(a1 + 32);
    v16 = &kSymptomDiagnosticErrorInvalidParameters;
LABEL_14:
    v17 = [(DiagnosticsServiceImpl *)v15 responseDictWithSuccess:*v16 reasonCode:?];
    (*(v4 + 16))(v4, v17);
LABEL_19:

    goto LABEL_5;
  }

  v3 = xpcLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "DiagnosticsService: API rate limited.", buf, 2u);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v15 = *(a1 + 32);
    v16 = &kSymptomDiagnosticErrorRequestThrottled;
    goto LABEL_14;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

void __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_148(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:a2 sessionId:a3 groupId:a4 additionalDict:a5 reasonCode:?];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)addToSession:(id)a3 event:(id)a4 payload:(id)a5 reply:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4)
  {
    v16 = a4;
    v13 = MEMORY[0x277CBEA60];
    v14 = a4;
    a4 = [v13 arrayWithObjects:&v16 count:1];
  }

  [(DiagnosticsServiceImpl *)self addToSession:v10 events:a4 payload:v11 reply:v12, v16, v17];

  v15 = *MEMORY[0x277D85DE8];
}

void __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke(uint64_t a1, int a2, char a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138412802;
      *&buf[4] = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request ADD EVENTS to session: %@. events: %@ payload: %@", buf, 0x20u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152;
    v20[3] = &unk_278CF0310;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v20[4] = *(a1 + 32);
    v21 = v16;
    [v12 addToSession:v13 events:v14 payload:v15 reply:v20];

    v17 = v21;
    goto LABEL_6;
  }

  if (v7)
  {
    v18 = "enabled";
    if (a2)
    {
      v18 = "ready";
    }

    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: addToSession - ABC is not %{public}s", buf, 0xCu);
  }

  if (*(a1 + 64))
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1();
    v17 = *buf;
LABEL_6:
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152_cold_1(v4, a1, a2);
  }
}

void __74__DiagnosticsServiceImpl_addSignatureContentForSession_key_content_reply___block_invoke(uint64_t a1, int a2, char a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138412802;
      *&buf[4] = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request APPEND SIGNATURE to session: %@. key: %@ content: %@", buf, 0x20u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__DiagnosticsServiceImpl_addSignatureContentForSession_key_content_reply___block_invoke_154;
    v20[3] = &unk_278CF0310;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v20[4] = *(a1 + 32);
    v21 = v16;
    [v12 addSignatureContentForSession:v13 key:v14 content:v15 reply:v20];

    v17 = v21;
    goto LABEL_6;
  }

  if (v7)
  {
    v18 = "enabled";
    if (a2)
    {
      v18 = "ready";
    }

    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: addSignatureContentForSession - ABC is not %{public}s", buf, 0xCu);
  }

  if (*(a1 + 64))
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1();
    v17 = *buf;
LABEL_6:
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __74__DiagnosticsServiceImpl_addSignatureContentForSession_key_content_reply___block_invoke_154(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152_cold_1(v4, a1, a2);
  }
}

void __37__DiagnosticsServiceImpl_endSession___block_invoke(uint64_t a1, int a2, char a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to END logging session: %@", &v12, 0xCu);
    }

    v6 = +[ABCAdministrator sharedInstance];
    v9 = [v6 caseManager];
    [v9 endSessionWithIdentifier:*(a1 + 32) forced:0];
  }

  else if (v7)
  {
    v10 = "enabled";
    if (a2)
    {
      v10 = "ready";
    }

    v12 = 136446210;
    v13 = v10;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: endSession - ABC is not %{public}s", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __40__DiagnosticsServiceImpl_cancelSession___block_invoke(uint64_t a1, int a2, char a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to CANCEL logging session: %@", &v12, 0xCu);
    }

    v6 = +[ABCAdministrator sharedInstance];
    v9 = [v6 caseManager];
    [v9 cancelSessionWithIdentifier:*(a1 + 32)];
  }

  else if (v7)
  {
    v10 = "enabled";
    if (a2)
    {
      v10 = "ready";
    }

    v12 = 136446210;
    v13 = v10;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: cancelSession - ABC is not %{public}s", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
    if (a3)
    {
      if (!*(a1 + 48))
      {
        return;
      }

      v4 = *(a1 + 32);
      v5 = [MEMORY[0x277CCAE80] currentConnection];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155;
      v16[3] = &unk_278CF03B0;
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v18 = v7;
      v16[4] = v8;
      v17 = v9;
      [(DiagnosticsServiceImpl *)v4 _checkRateLimitForConnection:v5 signature:v6 reply:v16];

      v10 = v18;
      goto LABEL_14;
    }

    v15 = xpcLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: groupCaseIdentifierForSignature - ABC is not ready", buf, 2u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = &kSymptomDiagnosticErrorServiceNotReady;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = xpcLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: groupCaseIdentifierForSignature - ABC is not enabled", buf, 2u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = &kSymptomDiagnosticErrorServiceUnavailable;
LABEL_13:
      v10 = [(DiagnosticsServiceImpl *)v13 responseDictWithSuccess:*v14 reasonCode:?];
      (*(v12 + 16))(v12, v10);
LABEL_14:
    }
  }
}

void __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_2(a1, buf);
  }

  else
  {
    v4 = [(DiagnosticsServiceImpl *)*(a1 + 32) validateSignature:?];
    v5 = xpcLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "invalid";
      v7 = *(a1 + 40);
      if (v4)
      {
        v6 = "valid";
      }

      *buf = 138412546;
      *&buf[4] = v7;
      v16 = 2080;
      v17 = v6;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request for a group case identifier with signature: %@ (signature %s)", buf, 0x16u);
    }

    if (v4)
    {
      v8 = +[ABCAdministrator sharedInstance];
      v9 = [v8 caseManager];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_156;
      v13[3] = &unk_278CF0388;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13[4] = *(a1 + 32);
      v14 = v11;
      [v9 requestGroupCaseIdentifierForSignature:v10 reply:v13];

      v3 = v14;
      goto LABEL_10;
    }

    __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_1(a1, (a1 + 32));
  }

  v3 = *buf;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

void __81__DiagnosticsServiceImpl_triggerRemoteSessionForSignature_groupIdentifier_reply___block_invoke(uint64_t a1, int a2, char a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    v7 = xpcLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: remote trigger authorized", buf, 2u);
      }

      v9 = +[ABCAdministrator sharedInstance];
      v10 = [v9 diagnosticLiaison];
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(*(a1 + 32) + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__DiagnosticsServiceImpl_triggerRemoteSessionForSignature_groupIdentifier_reply___block_invoke_162;
      v19[3] = &unk_278CF0090;
      v20 = *(a1 + 56);
      [v10 remotelyTriggerSessionForSignature:v12 groupIdentifier:v11 event:0 queue:v13 reply:v19];

      v14 = v20;
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: not entitled to access private API", buf, 2u);
      }

      v17 = *(a1 + 56);
      if (!v17)
      {
        goto LABEL_18;
      }

      v21 = @"success";
      v22 = MEMORY[0x277CBEC28];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      (*(v17 + 16))(v17, v14);
    }

LABEL_18:
    goto LABEL_19;
  }

  v15 = xpcLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "enabled";
    if (a2)
    {
      v16 = "ready";
    }

    *buf = 136446210;
    *&buf[4] = v16;
    _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): triggerRemoteSessionForSignature - ABC is not %{public}s", buf, 0xCu);
  }

  if (*(a1 + 56))
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1();
    v5 = *buf;
    goto LABEL_18;
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
}

void __81__DiagnosticsServiceImpl_triggerRemoteSessionForSignature_groupIdentifier_reply___block_invoke_162(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = @"success";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    (*(v2 + 16))(v2, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __56__DiagnosticsServiceImpl_getSessionStatisticsWithReply___block_invoke(uint64_t a1, int a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(DiagnosticsServiceImpl *)*(a1 + 32) assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
    {
      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: statistics authorized", &v15, 2u);
      }

      v7 = +[ABCAdministrator sharedInstance];
      v8 = [v7 caseManager];
      v9 = [v8 statsManager];
      [v9 getDiagnosticCaseUsageStatistics:*(a1 + 40)];
    }

    else if (*(a1 + 40))
    {
      v13 = xpcLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to access private API", &v15, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v10 = xpcLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "enabled";
      if (a2)
      {
        v11 = "ready";
      }

      v15 = 136446210;
      v16 = v11;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): getSessionStatisticsWithReply - ABC is not %{public}s", &v15, 0xCu);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __65__DiagnosticsServiceImpl_getCasesListFromIdentifier_count_reply___block_invoke(uint64_t *a1, int a2, char a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(DiagnosticsServiceImpl *)a1[4] assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
    {
      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: incremental case listing authorized", &v14, 2u);
      }

      v7 = +[ABCAdministrator sharedInstance];
      v8 = [v7 caseManager];
      [v8 getHistoricalDiagnosicCaseDictionaryFromIdentifier:a1[5] withEvents:0 count:a1[7] reply:a1[6]];
    }

    else if (a1[6])
    {
      v12 = xpcLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to access private API", &v14, 2u);
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    v9 = xpcLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "enabled";
      if (a2)
      {
        v10 = "ready";
      }

      v14 = 136446210;
      v15 = v10;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): getCasesListFromIdentifier - ABC is not %{public}s", &v14, 0xCu);
    }

    v11 = a1[6];
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetDiagnosticCaseStorageWithReply:(id)a3
{
  v4 = a3;
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reqeust to reset DiagnosticCaseStorage backing store", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(DiagnosticsServiceImpl *)self assertEntitlement:v7 entitlement:@"com.apple.symptom_diagnostics.reset" private:1];
  v9 = xpcLogHandle();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reset case storage authorized", v14, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    [v12 resetDiagnosticCaseStorage];

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4[2](v4, v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagnosticsService: no entitlement to execute reset", v13, 2u);
  }

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)resetDiagnosticCaseUsageWithReply:(id)a3
{
  v4 = a3;
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to reset DiagnosticCaseUsage backing store", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(DiagnosticsServiceImpl *)self assertEntitlement:v7 entitlement:@"com.apple.symptom_diagnostics.reset" private:1];
  v9 = xpcLogHandle();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reset case usage authorized", v15, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    v13 = [v12 statsManager];
    [v13 resetDiagnosticCaseUsage];

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4[2](v4, v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagnosticsService: no entitlement to execute reset", v14, 2u);
  }

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)resetAllWithReply:(id)a3
{
  v4 = a3;
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to reset DiagnosticCaseStorage and DiagnosticCaseUsage backing store", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(DiagnosticsServiceImpl *)self assertEntitlement:v7 entitlement:@"com.apple.symptom_diagnostics.reset" private:1];
  v9 = xpcLogHandle();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reset all authorized", v14, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    [v12 resetAll];

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4[2](v4, v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagnosticsService: no entitlement to execute reset", v13, 2u);
  }

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void __49__DiagnosticsServiceImpl_getExpertSystemsStatus___block_invoke(uint64_t a1, char a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [MEMORY[0x277CCAE80] currentConnection];
    v5 = [(DiagnosticsServiceImpl *)*(a1 + 32) assertEntitlement:v4 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    v6 = xpcLogHandle();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request service status authorized", v13, 2u);
      }

      v7 = +[ABCAdministrator sharedInstance];
      v8 = [v7 internalStateDictionary];
      [v3 setObject:v8 forKeyedSubscript:@"AutoBugCaptureAdministrator"];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to request service status", v13, 2u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v3);
    }

    goto LABEL_15;
  }

  v9 = xpcLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): getExpertSystemsStatus - ABC is not enabled", v13, 2u);
  }

  if (*(a1 + 40))
  {
    v16 = @"AutoBugCaptureAdministrator";
    v14 = @"serviceEnabled";
    v15 = MEMORY[0x277CBEC28];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v10;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    (*(*(a1 + 40) + 16))();
LABEL_15:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getDiagnosticPayloadsForSignatures:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpcLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request collected payloads for the given signatures: %@", buf, 0xCu);
  }

  v9 = +[ABCAdministrator sharedInstance];
  v10 = [v9 caseManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__DiagnosticsServiceImpl_getDiagnosticPayloadsForSignatures_reply___block_invoke;
  v13[3] = &unk_278CF04A0;
  v13[4] = self;
  v14 = v7;
  v11 = v7;
  [v10 payloadsForSignatures:v6 reply:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__DiagnosticsServiceImpl_getDiagnosticPayloadsForSignatures_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__DiagnosticsServiceImpl_getDiagnosticPayloadsForSignatures_reply___block_invoke_2;
    block[3] = &unk_278CF0478;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)homeKitResidentDevicesIDSIdentifiersWithReply:(id)a3
{
  v4 = a3;
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request IDS identifiers of HomeKit resident devices", buf, 2u);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [(DiagnosticsServiceImpl *)self assertEntitlement:v6 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  v8 = xpcLogHandle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized request for IDS identifiers of HomeKit resident devices", buf, 2u);
    }

    v10 = +[ABCAdministrator sharedInstance];
    v11 = [v10 diagnosticLiaison];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__DiagnosticsServiceImpl_homeKitResidentDevicesIDSIdentifiersWithReply___block_invoke;
    v12[3] = &unk_278CF00B8;
    v13 = v4;
    [v11 residentDevicesIDSIdentifiersWithReply:v12];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to request IDS identifiers of HomeKit resident devices", buf, 2u);
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

uint64_t __72__DiagnosticsServiceImpl_homeKitResidentDevicesIDSIdentifiersWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getAutoBugCaptureConfiguration:(id)a3
{
  v4 = a3;
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request current AutoBugCapture configuration", buf, 2u);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [(DiagnosticsServiceImpl *)self assertEntitlement:v6 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  v8 = xpcLogHandle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized request for current AutoBugCapture configuration", v13, 2u);
    }

    v10 = +[ABCAdministrator sharedInstance];
    v9 = [v10 configurationManager];

    v11 = [v9 getAutoBugCaptureConfiguration];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to retrive current AutoBugCapture configuration", v12, 2u);
    }

    v11 = 0;
  }

  if (v4)
  {
    v4[2](v4, v11);
  }
}

- (void)purgeAutoBugCaptureFilesWithSubPaths:(id)a3 reply:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpcLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request purge AutoBugCapture files with subpaths: %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [(DiagnosticsServiceImpl *)self assertEntitlement:v9 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  v11 = xpcLogHandle();
  v12 = v11;
  if (v10)
  {
    v33 = v9;
    v34 = v7;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized purging of AutoBugCapture files", buf, 2u);
    }

    v13 = +[ABCAdministrator sharedInstance];
    v14 = [v13 configurationManager];

    v32 = v14;
    v15 = [v14 logArchivePath];
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    context = objc_autoreleasePoolPush();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v6;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 0;
      v22 = *v39;
      v36 = 1;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v15 copy];

          v21 = [v25 stringByAppendingPathComponent:v24];

          if ([v16 fileExistsAtPath:v21])
          {
            v37 = v20;
            v26 = [v16 removeItemAtPath:v21 error:&v37];
            v27 = v37;

            if ((v26 & 1) == 0)
            {
              v28 = xpcLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v43 = v21;
                v44 = 2112;
                v45 = v27;
                _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "DiagnosticsService: Couldn't delete file: %@ because %@", buf, 0x16u);
              }

              v36 = 0;
            }

            v20 = v27;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v36 = 1;
    }

    objc_autoreleasePoolPop(context);
    v7 = v34;
    v6 = v35;
    v12 = v32;
    v9 = v33;
    v29 = v36;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to purge AutoBugCapture files", buf, 2u);
    }

    v29 = 0;
  }

  if (v7)
  {
    v7[2](v7, v29 & 1);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)uploadCasesWithIdentifiersToCloudKit:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v4;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request CloudKit upload for case identifiers %@", &v19, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(DiagnosticsServiceImpl *)self assertEntitlement:v6 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
  {
    v7 = xpcLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized CloudKit upload of ABC cases", &v19, 2u);
    }

    v8 = +[ABCAdministrator sharedInstance];
    v9 = [v8 configurationManager];
    v10 = [v9 cloudKitEnabled];

    if (v10)
    {
      v11 = +[ABCAdministrator sharedInstance];
      v12 = [v11 ckUploadController];

      if (v12)
      {
        v13 = +[ABCAdministrator sharedInstance];
        v14 = [v13 ckUploadController];
        [v14 uploadCasesWithIdentifiers:v4];

LABEL_14:
        goto LABEL_15;
      }

      v13 = xpcLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      LOWORD(v19) = 0;
      v15 = "CloudKit upload controller is not instantiated!";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v13 = xpcLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      LOWORD(v19) = 0;
      v15 = "CloudKit upload is disabled";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_241804000, v16, v17, v15, &v19, 2u);
    goto LABEL_14;
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)uploadRecentCases:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = a3;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request CloudKit upload for recent %ld cases", &v19, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(DiagnosticsServiceImpl *)self assertEntitlement:v6 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
  {
    v7 = xpcLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized CloudKit upload of recent ABC cases", &v19, 2u);
    }

    v8 = +[ABCAdministrator sharedInstance];
    v9 = [v8 configurationManager];
    v10 = [v9 cloudKitEnabled];

    if (v10)
    {
      v11 = +[ABCAdministrator sharedInstance];
      v12 = [v11 ckUploadController];

      if (v12)
      {
        v13 = +[ABCAdministrator sharedInstance];
        v14 = [v13 ckUploadController];
        [v14 uploadMostRecentCases:a3];

LABEL_14:
        goto LABEL_15;
      }

      v13 = xpcLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      LOWORD(v19) = 0;
      v15 = "CloudKit upload controller is not instantiated!";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v13 = xpcLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      LOWORD(v19) = 0;
      v15 = "CloudKit upload is disabled";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_241804000, v16, v17, v15, &v19, 2u);
    goto LABEL_14;
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)cloudKitUploadDecisionForCaseIdentifiers:(id)a3 reply:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpcLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request CloudKit upload decision for case identifiers %@", &v21, 0xCu);
  }

  v9 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(DiagnosticsServiceImpl *)self assertEntitlement:v9 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
  {
    v10 = xpcLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized CloudKit Upload Decision of ABC cases", &v21, 2u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 configurationManager];
    v13 = [v12 cloudKitEnabled];

    if (v13)
    {
      v14 = +[ABCAdministrator sharedInstance];
      v15 = [v14 ckUploadController];

      if (v15)
      {
        v16 = +[ABCAdministrator sharedInstance];
        v17 = [v16 ckUploadController];
        [v17 uploadDecisionWithIdentifiers:v6 reply:v7];

LABEL_17:
        goto LABEL_18;
      }

      v19 = xpcLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "CloudKit upload controller is not instantiated!", &v21, 2u);
      }

      if (v7)
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
        v7[2](v7, &unk_285379F68, v16);
        goto LABEL_17;
      }
    }

    else
    {
      v18 = xpcLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "CloudKit upload is disabled", &v21, 2u);
      }

      if (v7)
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
        v7[2](v7, &unk_285379F90, v16);
        goto LABEL_17;
      }
    }
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
}

void __65__DiagnosticsServiceImpl_listCaseSummariesWithIdentifiers_reply___block_invoke(uint64_t *a1, int a2, char a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(DiagnosticsServiceImpl *)a1[4] assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
    {
      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized for CloudKit ABC activities", &v23, 2u);
      }

      v7 = +[ABCAdministrator sharedInstance];
      v8 = [v7 configurationManager];
      v9 = [v8 cloudKitEnabled];

      v10 = +[ABCAdministrator sharedInstance];
      v11 = [v10 configurationManager];
      v12 = [v11 caseSummaryEnabled];

      v13 = xpcLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = @"disabled";
        if (v9)
        {
          v15 = @"enabled";
        }

        else
        {
          v15 = @"disabled";
        }

        if (v12)
        {
          v14 = @"enabled";
        }

        v23 = 138412546;
        v24 = v15;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: CloudKitUpload is %@, CaseSummary is %@", &v23, 0x16u);
      }

      v16 = +[ABCAdministrator sharedInstance];
      v17 = [v16 caseManager];
      [v17 listCaseSummariesWithIdentifiers:a1[5] reply:a1[6]];
    }

    else if (a1[6])
    {
      v21 = xpcLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v23, 2u);
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    v18 = xpcLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "enabled";
      if (a2)
      {
        v19 = "ready";
      }

      v23 = 136446210;
      v24 = v19;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService(PRIVATE): listCaseSummariesWithIdentifiers - ABC is not %{public}s", &v23, 0xCu);
    }

    v20 = a1[6];
    if (v20)
    {
      (*(v20 + 16))(v20, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __77__DiagnosticsServiceImpl_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke(uint64_t *a1, int a2, char a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(DiagnosticsServiceImpl *)a1[4] assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
    {
      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized for CloudKit ABC activities", &v23, 2u);
      }

      v7 = +[ABCAdministrator sharedInstance];
      v8 = [v7 configurationManager];
      v9 = [v8 cloudKitEnabled];

      v10 = +[ABCAdministrator sharedInstance];
      v11 = [v10 configurationManager];
      v12 = [v11 caseSummaryEnabled];

      v13 = xpcLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = @"disabled";
        if (v9)
        {
          v15 = @"enabled";
        }

        else
        {
          v15 = @"disabled";
        }

        if (v12)
        {
          v14 = @"enabled";
        }

        v23 = 138412546;
        v24 = v15;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: CloudKitUpload is %@, CaseSummary is %@", &v23, 0x16u);
      }

      v16 = +[ABCAdministrator sharedInstance];
      v17 = [v16 caseManager];
      [v17 listCaseSummariesOfType:a1[5] fromIdentifier:a1[6] count:a1[8] reply:a1[7]];
    }

    else if (a1[7])
    {
      v21 = xpcLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v23, 2u);
      }

      (*(a1[7] + 16))();
    }
  }

  else
  {
    v18 = xpcLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "enabled";
      if (a2)
      {
        v19 = "ready";
      }

      v23 = 136446210;
      v24 = v19;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService(PRIVATE): listCaseSummariesOfType - ABC is not %{public}s", &v23, 0xCu);
    }

    v20 = a1[7];
    if (v20)
    {
      (*(v20 + 16))(v20, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)submitRecentCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpcLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: request CloudKit submission for identifiers %@", &v26, 0xCu);
  }

  v9 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(DiagnosticsServiceImpl *)self assertEntitlement:v9 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
  {
    v10 = xpcLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized CloudKit submission for ABC case summaries", &v26, 2u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 configurationManager];
    v13 = [v12 cloudKitEnabled];

    v14 = +[ABCAdministrator sharedInstance];
    v15 = [v14 configurationManager];
    v16 = [v15 caseSummaryEnabled];

    if (v13 && v16)
    {
      v17 = +[ABCAdministrator sharedInstance];
      v18 = [v17 ckUploadController];

      if (v18)
      {
        v19 = +[ABCAdministrator sharedInstance];
        v20 = [v19 ckUploadController];
        [v20 submitCaseSummariesWithIdentifiers:v6 reply:v7];
      }

      else
      {
        v19 = xpcLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: CloudKit upload controller is not instantiated!", &v26, 2u);
        }
      }
    }

    else
    {
      v22 = xpcLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = @"disabled";
        if (v13)
        {
          v24 = @"enabled";
        }

        else
        {
          v24 = @"disabled";
        }

        if (v16)
        {
          v23 = @"enabled";
        }

        v26 = 138412546;
        v27 = v24;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: cannot submit! CloudKitUpload is %@, CaseSummary is %@", &v26, 0x16u);
      }
    }
  }

  else if (v7)
  {
    v21 = xpcLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v26, 2u);
    }

    v7[2](v7, @"No access to private API");
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)submitRecentCaseSummariesWithCount:(unint64_t)a3 reply:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = xpcLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134217984;
    v30 = a3;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: request CloudKit submission for recent %ld case summaries", &v29, 0xCu);
  }

  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(DiagnosticsServiceImpl *)self assertEntitlement:v8 entitlement:@"com.apple.symptom_diagnostics.private" private:1])
  {
    v9 = xpcLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized CloudKit submission for recent ABC case summaries", &v29, 2u);
    }

    v10 = +[ABCAdministrator sharedInstance];
    v11 = [v10 configurationManager];
    v12 = [v11 cloudKitEnabled];

    v13 = +[ABCAdministrator sharedInstance];
    v14 = [v13 configurationManager];
    v15 = [v14 caseSummaryEnabled];

    if (v12 && v15)
    {
      v16 = +[ABCAdministrator sharedInstance];
      v17 = [v16 ckUploadController];

      if (v17)
      {
        v18 = +[ABCAdministrator sharedInstance];
        v19 = [v18 ckUploadController];
        [v19 submitRecentCaseSummaries:a3 reply:v6];

        goto LABEL_25;
      }

      v21 = xpcLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        v24 = "DiagnosticCaseSummaryLog: CloudKit upload controller is not instantiated!";
        v25 = v21;
        v26 = OS_LOG_TYPE_INFO;
        v27 = 2;
LABEL_23:
        _os_log_impl(&dword_241804000, v25, v26, v24, &v29, v27);
      }
    }

    else
    {
      v21 = xpcLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"disabled";
        if (v12)
        {
          v23 = @"enabled";
        }

        else
        {
          v23 = @"disabled";
        }

        if (v15)
        {
          v22 = @"enabled";
        }

        v29 = 138412546;
        v30 = v23;
        v31 = 2112;
        v32 = v22;
        v24 = "DiagnosticCaseSummaryLog: cannot submit! CloudKitUpload is %@, CaseSummary is %@";
        v25 = v21;
        v26 = OS_LOG_TYPE_DEFAULT;
        v27 = 22;
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

  if (v6)
  {
    v20 = xpcLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v29, 2u);
    }

    v6[2](v6, @"No access to private API");
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)responseDictWithSuccess:(void *)a3 sessionId:(void *)a4 groupId:(void *)a5 additionalDict:(uint64_t)a6 reasonCode:(void *)a7 expiresIn:
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (a1)
  {
    v17 = MEMORY[0x277CBEB38];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v19 = [v17 dictionaryWithObjectsAndKeys:{v18, @"success", 0}];

    if (v15)
    {
      [v19 addEntriesFromDictionary:v15];
    }

    if ([v13 length])
    {
      [v19 setObject:v13 forKey:@"session"];
    }

    if ([v14 length])
    {
      [v19 setObject:v14 forKey:@"groupID"];
    }

    if (a6)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
      [v19 setObject:v20 forKey:@"reason"];

      v21 = diagnosticErrorStringForCode(a6);
      [v19 setObject:v21 forKey:@"reasonStr"];
    }

    if (v16)
    {
      [v19 setObject:v16 forKey:@"expiresIn"];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)responseDictWithSuccess:(uint64_t)a3 reasonCode:
{
  if (a1)
  {
    a1 = [(DiagnosticsServiceImpl *)a1 responseDictWithSuccess:a2 sessionId:0 groupId:0 additionalDict:0 reasonCode:a3 expiresIn:0];
    v3 = vars8;
  }

  return a1;
}

- (id)responseDictWithSuccess:(uint64_t)a1 reasonCode:(uint64_t)a2 expiresIn:(uint64_t)a3
{
  if (a1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v7 = [(DiagnosticsServiceImpl *)a1 responseDictWithSuccess:a2 sessionId:0 groupId:0 additionalDict:0 reasonCode:a3 expiresIn:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)responseDictWithSuccess:(void *)a3 sessionId:
{
  if (a1)
  {
    a1 = [(DiagnosticsServiceImpl *)a1 responseDictWithSuccess:a2 sessionId:a3 groupId:0 additionalDict:0 reasonCode:0 expiresIn:0];
    v3 = vars8;
  }

  return a1;
}

- (id)responseDictWithSuccess:(void *)a3 sessionId:(void *)a4 groupId:(void *)a5 additionalDict:(uint64_t)a6 reasonCode:
{
  if (a1)
  {
    a1 = [(DiagnosticsServiceImpl *)a1 responseDictWithSuccess:a2 sessionId:a3 groupId:a4 additionalDict:a5 reasonCode:a6 expiresIn:0];
    v6 = vars8;
  }

  return a1;
}

- (BOOL)validateSignature:(_BOOL8)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = v3 != 0;
    v5 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];

    if (!v5)
    {
      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_13(&dword_241804000, v6, v8, "DiagnosticsService: signature validation failed! '%@' must be specified: %@", v15);
      }

      a1 = 0;
    }

    v9 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];

    if (!v9)
    {
      v10 = xpcLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_13(&dword_241804000, v10, v12, "DiagnosticsService: signature validation failed! '%@' must be specified: %@", v15);
      }

      a1 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)abcEnabledAndReadyWithReply:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[ABCAdministrator sharedInstance];
    v5 = [v4 configurationManager];
    v6 = [v5 autoBugCaptureEnabled];

    if ((v6 & 1) == 0)
    {
      v7 = xpcLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "DiagnosticsService: AutoBugCapture is disabled", buf, 2u);
      }
    }

    v8 = [v4 caseManager];

    if (!v8)
    {
      v9 = xpcLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "DiagnosticsService: AutoBugCapture is not ready yet", v12, 2u);
      }
    }

    if (v3)
    {
      v10 = OUTLINED_FUNCTION_4();
      v11(v10, v6);
    }
  }
}

- (void)snapshotWithSignature:(id)a3 delay:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 wantsRemoteCase:(BOOL)a8 reply:(id)a9
{
  v13 = OUTLINED_FUNCTION_7(self, a2, a3);
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v18 = OUTLINED_FUNCTION_10();
  v19 = v14;
  v20 = v15;
  v21 = v13;
  v22 = v17;
  OUTLINED_FUNCTION_12(v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

- (void)startSessionWithSignature:(id)a3 duration:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 wantsRemoteCase:(BOOL)a8 reply:(id)a9
{
  v13 = OUTLINED_FUNCTION_7(self, a2, a3);
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v18 = OUTLINED_FUNCTION_10();
  v19 = v14;
  v20 = v15;
  v21 = v13;
  v22 = v17;
  OUTLINED_FUNCTION_12(v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

- (void)addToSession:(id)a3 events:(id)a4 payload:(id)a5 reply:(id)a6
{
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v11 = v7;
  v12 = v6;
  v13 = a6;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v20 = v12;
  v21 = v14;
  v18 = v10;
  v19 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  OUTLINED_FUNCTION_8(v13);
}

- (void)addSignatureContentForSession:(id)a3 key:(id)a4 content:(id)a5 reply:(id)a6
{
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v11 = v7;
  v12 = v6;
  v13 = a6;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v20 = v12;
  v21 = v14;
  v18 = v10;
  v19 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  OUTLINED_FUNCTION_8(v13);
}

- (void)endSession:(id)a3
{
  v4 = a3;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_8(v5);
}

- (void)cancelSession:(id)a3
{
  v4 = a3;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_8(v5);
}

- (void)requestGroupCaseIdentifierForSignature:(id)a3 reply:(id)a4
{
  OUTLINED_FUNCTION_15();
  v7 = v6;
  v8 = v4;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v13 = __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke;
  v14 = &unk_278CF03D8;
  v16 = v7;
  v17 = v9;
  v15 = v5;
  v10 = v7;
  v11 = v8;
  [(DiagnosticsServiceImpl *)v5 abcEnabledAndReadyWithReply:v12];
}

void __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_156(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [DiagnosticCaseManager symptomDiagnosticErrorForDiagnosticCaseDampeningType:a3];
  v9 = *(a1 + 40);
  v12 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:a2 sessionId:0 groupId:v7 additionalDict:0 reasonCode:v8];

  v10 = OUTLINED_FUNCTION_4();
  v11(v10, v12);
}

- (void)triggerRemoteSessionForSignature:(id)a3 groupIdentifier:(id)a4 reply:(id)a5
{
  OUTLINED_FUNCTION_9();
  v32 = *MEMORY[0x277D85DE8];
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = xpcLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = v9;
    v30 = 2112;
    v31 = v8;
    OUTLINED_FUNCTION_13(&dword_241804000, v11, v12, "DiagnosticsService(PRIVATE): request to trigger remote session with group identifier %@ and signature %@", &v28);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  OUTLINED_FUNCTION_12(v15, v16, v17, v18, v19, v20, v21, v22, v24);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)getSessionStatisticsWithReply:(id)a3
{
  v3 = a3;
  v4 = xpcLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16(&dword_241804000, v5, v6, "DiagnosticsService(PRIVATE): request to get statistics", v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, 0);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v25 = v3;
  v11 = v3;
  OUTLINED_FUNCTION_12(v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

- (void)getCasesListFromIdentifier:(id)a3 count:(unint64_t)a4 reply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = xpcLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218242;
    v24 = a4;
    v25 = 2112;
    v26 = v7;
    OUTLINED_FUNCTION_13(&dword_241804000, v9, v10, "DiagnosticsService(PRIVATE): request to get list of %ld cases from identifier %@", &v23);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v22 = v7;
  v11 = v7;
  v12 = v8;
  OUTLINED_FUNCTION_12(v12, v13, v14, v15, v16, v17, v18, v19, v21);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)getExpertSystemsStatus:(id)a3
{
  v3 = a3;
  v4 = xpcLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16(&dword_241804000, v5, v6, "DiagnosticsService: requesting service status", v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, 0);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v25 = v3;
  v11 = v3;
  OUTLINED_FUNCTION_12(v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

- (void)listCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpcLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: list case summaries with identifiers %@", buf, 0xCu);
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v13 = __65__DiagnosticsServiceImpl_listCaseSummariesWithIdentifiers_reply___block_invoke;
  v14 = &unk_278CF03D8;
  v16 = v6;
  v17 = v7;
  v15 = self;
  v9 = v6;
  v10 = v7;
  [(DiagnosticsServiceImpl *)self abcEnabledAndReadyWithReply:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)listCaseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5 reply:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = xpcLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: list '%@' case summaries", buf, 0xCu);
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v19 = __77__DiagnosticsServiceImpl_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke;
  v20 = &unk_278CF04C8;
  v21 = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a5;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [(DiagnosticsServiceImpl *)self abcEnabledAndReadyWithReply:v18];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_3(v2, &kSymptomDiagnosticErrorServiceUnavailable);
  v6 = [(DiagnosticsServiceImpl *)v3 responseDictWithSuccess:v4 reasonCode:v5];
  v7 = OUTLINED_FUNCTION_2(v6);
  return v8(v7);
}

void __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152_cold_1(uint64_t a1, uint64_t a2, int a3)
{
  v5 = [(DiagnosticsServiceImpl *)*(a2 + 32) responseDictWithSuccess:a3 reasonCode:?];
  v3 = OUTLINED_FUNCTION_4();
  v4(v3);
}

uint64_t __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_1(uint64_t a1, void **a2)
{
  v2 = *(a1 + 48);
  v3 = [(DiagnosticsServiceImpl *)*a2 responseDictWithSuccess:20 reasonCode:?];
  v4 = OUTLINED_FUNCTION_2(v3);
  return v5(v4);
}

uint64_t __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_2(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  [v5 apiRateLimit];
  v7 = v6;

  v8 = +[ABCAdministrator sharedInstance];
  v9 = [v8 configurationManager];
  [v9 apiLimitWindow];
  v11 = v10;

  v12 = xpcLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = v7;
    v20 = 2048;
    v21 = v11;
    OUTLINED_FUNCTION_13(&dword_241804000, v12, v13, "DiagnosticsService: API rate limited. (Allowed limit is %.0f calls per %.0f second window)", &v18);
  }

  v14 = *(a1 + 48);
  v15 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:41 reasonCode:?];
  *a2 = v15;
  result = (*(v14 + 16))(v14, v15);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end