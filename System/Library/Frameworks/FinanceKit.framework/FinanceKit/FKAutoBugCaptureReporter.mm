@interface FKAutoBugCaptureReporter
- (BOOL)shouldReportIssue;
- (void)handleResponse:(id)response;
- (void)reportIssueWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context event:(id)event;
@end

@implementation FKAutoBugCaptureReporter

- (void)reportIssueWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context event:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  typeCopy = type;
  subtypeCopy = subtype;
  contextCopy = context;
  eventCopy = event;
  if (![(FKAutoBugCaptureReporter *)self isRunningUnitTests])
  {
    v17 = os_log_create("com.apple.FinanceKit", "AutoBugCapture");
    if ([(FKAutoBugCaptureReporter *)self shouldReportIssue])
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v20 = processName;
      if (processName)
      {
        v21 = processName;
      }

      else
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];

        v21 = bundleIdentifier;
      }

      v23 = objc_alloc_init(MEMORY[0x1E69D4F80]);
      v24 = [v23 signatureWithDomain:domainCopy type:typeCopy subType:subtypeCopy subtypeContext:contextCopy detectedProcess:v21 triggerThresholdValues:0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v28 = domainCopy;
        v29 = 2112;
        v30 = typeCopy;
        v31 = 2112;
        v32 = subtypeCopy;
        v33 = 2112;
        v34 = contextCopy;
        v35 = 2112;
        v36 = eventCopy;
        _os_log_impl(&dword_1B7198000, v17, OS_LOG_TYPE_DEFAULT, "Submitting snapshot request to ABC for signature: %@.%@.%@.%@ with event: %@", buf, 0x34u);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84__FKAutoBugCaptureReporter_reportIssueWithDomain_type_subtype_subtypeContext_event___block_invoke;
      v26[3] = &unk_1E7CAA028;
      v26[4] = self;
      [v23 snapshotWithSignature:v24 duration:eventCopy event:0 payload:v26 reply:{0.0, bundleIdentifier}];
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = domainCopy;
      v29 = 2112;
      v30 = typeCopy;
      v31 = 2112;
      v32 = subtypeCopy;
      v33 = 2112;
      v34 = contextCopy;
      _os_log_impl(&dword_1B7198000, v17, OS_LOG_TYPE_DEFAULT, "Not reporting to AutoBugCapture because we are rate limited: %@.%@.%@.%@", buf, 0x2Au);
    }
  }
}

- (void)handleResponse:(id)response
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50D0]];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50C0]];
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
    v9 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50A0]];
    intValue = [v9 intValue];

    v7 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50B0]];
    v11 = [(FKAutoBugCaptureReporter *)self isExpectedFailureReason:intValue];
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