@interface ACDAutoBugCapture
+ (void)triggerAutoBugCaptureWithType:(id)a3 subType:(id)a4 subtypeContext:(id)a5 detectedProcess:(id)a6;
@end

@implementation ACDAutoBugCapture

+ (void)triggerAutoBugCaptureWithType:(id)a3 subType:(id)a4 subtypeContext:(id)a5 detectedProcess:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__onceToken != -1)
  {
    +[ACDAutoBugCapture triggerAutoBugCaptureWithType:subType:subtypeContext:detectedProcess:];
  }

  v13 = triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter;
  if (v12)
  {
    v14 = [triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter signatureWithDomain:@"Accounts" type:v9 subType:v10 subtypeContext:v11 detectedProcess:v12 triggerThresholdValues:0];
  }

  else
  {
    v15 = [MEMORY[0x277CCAC38] processInfo];
    v16 = [v15 processName];
    v14 = [v13 signatureWithDomain:@"Accounts" type:v9 subType:v10 subtypeContext:v11 detectedProcess:v16 triggerThresholdValues:0];
  }

  v17 = [triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter snapshotWithSignature:v14 duration:0 event:0 payload:&__block_literal_global_20 reply:15.0];
  v18 = _ACDLogSystem();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v22 = 138412290;
      v23 = v14;
      v20 = "Diagnostic Reporter sent snapshot for signature %@";
LABEL_11:
      _os_log_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEFAULT, v20, &v22, 0xCu);
    }
  }

  else if (v19)
  {
    v22 = 138412290;
    v23 = v14;
    v20 = "Diagnostic Reporter failed to send snapshot for signature %@";
    goto LABEL_11;
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __90__ACDAutoBugCapture_triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess___block_invoke()
{
  triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);

  return MEMORY[0x2821F96F8]();
}

void __90__ACDAutoBugCapture_triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Received response from Diagnostic Reporter - %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end