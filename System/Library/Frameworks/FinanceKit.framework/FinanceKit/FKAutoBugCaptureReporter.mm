@interface FKAutoBugCaptureReporter
- (BOOL)shouldReportIssue;
- (void)handleResponse:(id)a3;
- (void)reportIssueWithDomain:(id)a3 type:(id)a4 subtype:(id)a5 subtypeContext:(id)a6 event:(id)a7;
@end

@implementation FKAutoBugCaptureReporter

- (void)reportIssueWithDomain:(id)a3 type:(id)a4 subtype:(id)a5 subtypeContext:(id)a6 event:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![(FKAutoBugCaptureReporter *)self isRunningUnitTests])
  {
    v17 = os_log_create("com.apple.FinanceKit", "AutoBugCapture");
    if ([(FKAutoBugCaptureReporter *)self shouldReportIssue])
    {
      v18 = [MEMORY[0x1E696AE30] processInfo];
      v19 = [v18 processName];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v22 = [MEMORY[0x1E696AAE8] mainBundle];
        v25 = [v22 bundleIdentifier];

        v21 = v25;
      }

      v23 = objc_alloc_init(MEMORY[0x1E69D4F80]);
      v24 = [v23 signatureWithDomain:v12 type:v13 subType:v14 subtypeContext:v15 detectedProcess:v21 triggerThresholdValues:0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_1B7198000, v17, OS_LOG_TYPE_DEFAULT, "Submitting snapshot request to ABC for signature: %@.%@.%@.%@ with event: %@", buf, 0x34u);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84__FKAutoBugCaptureReporter_reportIssueWithDomain_type_subtype_subtypeContext_event___block_invoke;
      v26[3] = &unk_1E7CAA028;
      v26[4] = self;
      [v23 snapshotWithSignature:v24 duration:v16 event:0 payload:v26 reply:{0.0, v25}];
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_1B7198000, v17, OS_LOG_TYPE_DEFAULT, "Not reporting to AutoBugCapture because we are rate limited: %@.%@.%@.%@", buf, 0x2Au);
    }
  }
}

- (void)handleResponse:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D50D0]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D50C0]];
    v8 = os_log_create("com.apple.FinanceKit", "AutoBugCapture");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1B7198000, v8, OS_LOG_TYPE_INFO, "Diagnostic reporter snapshot accepted with sessionID %@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D50A0]];
    v10 = [v9 intValue];

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D50B0]];
    v11 = [(FKAutoBugCaptureReporter *)self isExpectedFailureReason:v10];
    v8 = os_log_create("com.apple.FinanceKit", "AutoBugCapture");
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v12)
      {
        [FKAutoBugCaptureReporter handleResponse:];
      }
    }

    else if (v12)
    {
      [FKAutoBugCaptureReporter handleResponse:];
    }
  }
}

- (BOOL)shouldReportIssue
{
  v2 = [MEMORY[0x1E695DF00] now];
  os_unfair_lock_lock(&shouldReportIssue_lock);
  if (shouldReportIssue_lastReportDate && ([v2 timeIntervalSinceDate:?], v3 < 86400.0))
  {
    v4 = 0;
  }

  else
  {
    objc_storeStrong(&shouldReportIssue_lastReportDate, v2);
    v4 = 1;
  }

  os_unfair_lock_unlock(&shouldReportIssue_lock);

  return v4;
}

@end