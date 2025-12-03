@interface SecABC
+ (void)triggerAutoBugCaptureWithType:(id)type subType:(id)subType subtypeContext:(id)context domain:(id)domain events:(id)events payload:(id)payload detectedProcess:(id)process;
@end

@implementation SecABC

+ (void)triggerAutoBugCaptureWithType:(id)type subType:(id)subType subtypeContext:(id)context domain:(id)domain events:(id)events payload:(id)payload detectedProcess:(id)process
{
  v39 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  domainCopy = domain;
  eventsCopy = events;
  payloadCopy = payload;
  processCopy = process;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v34 = typeCopy;
    v35 = 2114;
    v36 = subTypeCopy;
    v37 = 2114;
    v38 = contextCopy;
    _os_log_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "TriggerABC for %{public}@/%{public}@/%{public}@", buf, 0x20u);
  }

  if (objc_opt_class())
  {
    v21 = objc_alloc_init(MEMORY[0x1E69D4F78]);
    v22 = v21;
    if (processCopy)
    {
      v23 = [v21 signatureWithDomain:domainCopy type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:processCopy triggerThresholdValues:0];
      if (v23)
      {
LABEL_6:
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __101__SecABC_triggerAutoBugCaptureWithType_subType_subtypeContext_domain_events_payload_detectedProcess___block_invoke;
        v29[3] = &unk_1E70D68A0;
        v30 = typeCopy;
        v31 = subTypeCopy;
        v32 = contextCopy;
        [v22 snapshotWithSignature:v23 delay:eventsCopy events:payloadCopy payload:0 actions:v29 reply:5.0];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      [MEMORY[0x1E696AE30] processInfo];
      v28 = payloadCopy;
      v25 = v24 = eventsCopy;
      processName = [v25 processName];
      v23 = [v22 signatureWithDomain:domainCopy type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:processName triggerThresholdValues:0];

      eventsCopy = v24;
      payloadCopy = v28;
      if (v23)
      {
        goto LABEL_6;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "TriggerABC signature generation failed", buf, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:

  v27 = *MEMORY[0x1E69E9840];
}

void __101__SecABC_triggerAutoBugCaptureWithType_subType_subtypeContext_domain_events_payload_detectedProcess___block_invoke(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138544130;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = a2;
    _os_log_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Received response from Diagnostic Reporter - %{public}@/%{public}@/%{public}@: %{public}@", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end