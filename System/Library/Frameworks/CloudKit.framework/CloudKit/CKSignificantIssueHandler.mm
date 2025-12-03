@interface CKSignificantIssueHandler
+ (CKSignificantIssueHandler)currentHandler;
- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions;
@end

@implementation CKSignificantIssueHandler

+ (CKSignificantIssueHandler)currentHandler
{
  if (qword_1ED4B65B0 != -1)
  {
    dispatch_once(&qword_1ED4B65B0, &unk_1EFA308D0);
  }

  v3 = qword_1ED4B65A8;

  return v3;
}

- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions
{
  actionsCopy = actions;
  v76[4] = *MEMORY[0x1E69E9840];
  issueCopy = issue;
  if ((byte_1EA919CC8 & 1) == 0 && (__sTestOverridesAvailable[0] & 1) == 0)
  {
    v75[0] = @"processName";
    v8 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v5, v6);
    v11 = objc_msgSend_processName(v8, v9, v10);
    v76[0] = v11;
    v75[1] = @"detectedProcessName";
    v14 = objc_msgSend_processName(issueCopy, v12, v13);
    v76[1] = v14;
    v75[2] = @"sourceCodeLocation";
    v17 = objc_msgSend_sourceCodeLocation(issueCopy, v15, v16);
    v20 = objc_msgSend_ckShortDescription(v17, v18, v19);
    v76[2] = v20;
    v75[3] = @"reason";
    v23 = objc_msgSend_reason(issueCopy, v21, v22);
    v25 = v23;
    v26 = @"Unknown";
    if (v23)
    {
      v26 = v23;
    }

    v76[3] = v26;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v76, v75, 4);

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_1886C40D4;
    v69[3] = &unk_1E70BC048;
    v28 = issueCopy;
    v70 = v28;
    objc_msgSend_reportWithEventType_event_bundleIdentifier_completionHandler_(CKCloudTelemetryReporter, v29, @"SignificantIssue", v27, 0, v69);
    if ((actionsCopy & 2) != 0)
    {
      v32 = objc_msgSend_defaultReporter(CKSymptomDiagnosticsReporter, v30, v31);
      v35 = objc_msgSend_sourceCodeLocation(v28, v33, v34);
      v38 = objc_msgSend_ckShortDescription(v35, v36, v37);
      v41 = objc_msgSend_reason(v28, v39, v40);
      v44 = objc_msgSend_processName(v28, v42, v43);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = sub_1886C4278;
      v67[3] = &unk_1E70BC048;
      v68 = v28;
      objc_msgSend_reportWithType_subType_reason_context_processName_completionHandler_(v32, v45, @"Functional", @"SignificantIssue", v38, v41, v44, v67);
    }
  }

  if (actionsCopy)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v57 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v47 = v57;
      v50 = objc_msgSend_sourceCodeLocation(issueCopy, v61, v62);
      v53 = objc_msgSend_ckShortDescription(v50, v63, v64);
      v56 = objc_msgSend_reason(issueCopy, v65, v66);
      *buf = 138412546;
      v72 = v53;
      v73 = 2112;
      v74 = v56;
      _os_log_fault_impl(&dword_1883EA000, v47, OS_LOG_TYPE_FAULT, "Significant issue at %@: %@", buf, 0x16u);
LABEL_23:

      if ((actionsCopy & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v46 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v47 = v46;
      v50 = objc_msgSend_sourceCodeLocation(issueCopy, v48, v49);
      v53 = objc_msgSend_ckShortDescription(v50, v51, v52);
      v56 = objc_msgSend_reason(issueCopy, v54, v55);
      *buf = 138412546;
      v72 = v53;
      v73 = 2112;
      v74 = v56;
      _os_log_error_impl(&dword_1883EA000, v47, OS_LOG_TYPE_ERROR, "Significant issue at %@: %@", buf, 0x16u);
      goto LABEL_23;
    }
  }

  if ((actionsCopy & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (CKIsDebuggerAttached())
  {
    v58 = getpid();
    kill(v58, 5);
  }

LABEL_19:
  if ((actionsCopy & 8) != 0)
  {
    v59 = getpid();
    kill(v59, 5);
  }

  v60 = *MEMORY[0x1E69E9840];
}

@end