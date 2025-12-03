@interface DiagnosticPipelineOutlet
- (BOOL)logRequiresUploadConsent:(id)consent;
- (BOOL)publishReportForCase:(id)case options:(id)options;
- (id)caseSignatureFieldFromCase:(uint64_t)case;
- (id)contextDictionaryFromCase:(uint64_t)case;
- (id)issueDescriptionFromCase:(uint64_t)case;
- (uint64_t)shouldPublishReportForCase:(uint64_t)case;
@end

@implementation DiagnosticPipelineOutlet

void __57__DiagnosticPipelineOutlet_publishReportForCase_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBC0];
  v7 = a2;
  v8 = [[v6 alloc] initWithString:v7];

  v9 = [*(a1 + 32) logRequiresUploadConsent:v8];
  v10 = objc_alloc(MEMORY[0x277D051F0]);
  v11 = [v8 path];
  v12 = *(a1 + 56);
  v23 = 0;
  v13 = [v10 initWithPath:v11 transferOwnership:v12 errorOut:&v23];
  v14 = v23;

  if (v14 || !v13)
  {
    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 path];
      *buf = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v14;
      v17 = " Failed to create DRClientLog object representing %@: %@";
      v18 = v15;
      v19 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v9)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v13];
      goto LABEL_11;
    }

    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 path];
      *buf = 138412290;
      v25 = v16;
      v17 = " Log file at %@ is privacy sensitive and requires user consent for automatic upload";
      v18 = v15;
      v19 = 12;
LABEL_8:
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;

  *a4 = 1;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)logRequiresUploadConsent:(id)consent
{
  lastPathComponent = [consent lastPathComponent];
  v4 = +[ABCAdministrator sharedInstance];
  configurationManager = [v4 configurationManager];
  autoBugCaptureUploadPreapproved = [configurationManager autoBugCaptureUploadPreapproved];

  if (autoBugCaptureUploadPreapproved)
  {
    v7 = 0;
  }

  else
  {
    v7 = [lastPathComponent hasSuffix:@".pcapng"];
  }

  return v7;
}

- (id)contextDictionaryFromCase:(uint64_t)case
{
  v3 = a2;
  if (case)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    caseId = [v3 caseId];
    uUIDString = [caseId UUIDString];
    OUTLINED_FUNCTION_3_0();

    caseGroupId = [v3 caseGroupId];
    OUTLINED_FUNCTION_2_0();

    caseDomain = [v3 caseDomain];
    OUTLINED_FUNCTION_2_0();

    caseType = [v3 caseType];
    OUTLINED_FUNCTION_2_0();

    caseSubType = [v3 caseSubType];
    OUTLINED_FUNCTION_2_0();

    caseSubTypeContext = [v3 caseSubTypeContext];
    OUTLINED_FUNCTION_2_0();

    caseDetectedProcess = [v3 caseDetectedProcess];
    OUTLINED_FUNCTION_2_0();

    v13 = MEMORY[0x277CCABB0];
    [v3 caseOpenedTime];
    v14 = [v13 numberWithDouble:?];
    OUTLINED_FUNCTION_2_0();

    v15 = [(DiagnosticPipelineOutlet *)case caseSignatureFieldFromCase:v3];
    [v4 setObject:v15 forKeyedSubscript:@"caseSignature"];

    v16 = +[SystemProperties sharedInstance];
    buildVariant = [v3 buildVariant];
    if (buildVariant)
    {
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      buildVariant2 = [v16 buildVariant];
      OUTLINED_FUNCTION_3_0();
    }

    buildVersion = [v3 buildVersion];
    if (buildVersion)
    {
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      buildVersion2 = [v16 buildVersion];
      OUTLINED_FUNCTION_3_0();
    }

    v21 = +[ABCAdministrator sharedInstance];
    configurationManager = [v21 configurationManager];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationManager, "hasAppleEmail")}];
    OUTLINED_FUNCTION_3_0();

    v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationManager, "isCarryDevice")}];
    OUTLINED_FUNCTION_3_0();

    basebandChipset = [v3 basebandChipset];
    v26 = basebandChipset;
    if (basebandChipset)
    {
      basebandChipset2 = basebandChipset;
    }

    else
    {
      basebandChipset2 = [v16 basebandChipset];
    }

    v28 = basebandChipset2;

    if ([v28 length])
    {
      OUTLINED_FUNCTION_3_0();
    }

    basebandFirmwareVersion = [v3 basebandFirmwareVersion];
    v30 = basebandFirmwareVersion;
    if (basebandFirmwareVersion)
    {
      basebandFirmwareVersion2 = basebandFirmwareVersion;
    }

    else
    {
      basebandFirmwareVersion2 = [v16 basebandFirmwareVersion];
    }

    v32 = basebandFirmwareVersion2;

    if ([v32 length])
    {
      [v4 setObject:v32 forKeyedSubscript:@"basebandFirmwareVersion"];
    }

    regulatoryDomainCountry = [v3 regulatoryDomainCountry];
    if ([regulatoryDomainCountry length])
    {
      [v4 setObject:regulatoryDomainCountry forKeyedSubscript:@"regulatoryDomainCountry"];
    }

    homeCarrier = [v3 homeCarrier];
    if ([homeCarrier length])
    {
      [v4 setObject:homeCarrier forKeyedSubscript:@"homeCarrier"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)caseSignatureFieldFromCase:(uint64_t)case
{
  if (case)
  {
    v2 = MEMORY[0x277CBEB18];
    v3 = a2;
    v4 = objc_alloc_init(v2);
    caseDomain = [v3 caseDomain];
    v6 = caseDomain;
    if (caseDomain)
    {
      v7 = caseDomain;
    }

    else
    {
      v7 = &stru_285368168;
    }

    [v4 addObject:v7];

    caseType = [v3 caseType];
    OUTLINED_FUNCTION_1_1(caseType);

    caseSubType = [v3 caseSubType];
    OUTLINED_FUNCTION_1_1(caseSubType);

    caseSubTypeContext = [v3 caseSubTypeContext];
    OUTLINED_FUNCTION_1_1(caseSubTypeContext);

    caseDetectedProcess = [v3 caseDetectedProcess];

    if (caseDetectedProcess)
    {
      v12 = caseDetectedProcess;
    }

    else
    {
      v12 = &stru_285368168;
    }

    [v4 addObject:v12];

    v13 = [v4 componentsJoinedByString:@"^"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)issueDescriptionFromCase:(uint64_t)case
{
  if (case)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = a2;
    v4 = [v2 alloc];
    caseDomain = [v3 caseDomain];
    caseType = [v3 caseType];
    caseSubType = [v3 caseSubType];

    v8 = [v4 initWithFormat:@"AutoBugCapture case for %@, type:%@ subtype:%@", caseDomain, caseType, caseSubType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)shouldPublishReportForCase:(uint64_t)case
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!case)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v4 = +[ABCAdministrator sharedInstance];
  configurationManager = [v4 configurationManager];

  if (![configurationManager submitToDiagnosticPipeline])
  {
    v6 = casemanagementLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    LOWORD(v34) = 0;
LABEL_8:
    OUTLINED_FUNCTION_0_2();
    goto LABEL_9;
  }

  if (![v3 dampeningType])
  {
    attachments = [v3 attachments];
    v17 = [attachments count];

    if (v17)
    {
      [configurationManager diagnosticPipelineSubmissionRate];
      v19 = (v18 * 100.0);
      if (v19 > 0x63)
      {
        v6 = casemanagementLogHandle();
        v13 = 1;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        LOWORD(v34) = 0;
        OUTLINED_FUNCTION_0_2();
        v33 = 2;
      }

      else
      {
        v20 = arc4random_uniform(0x64u);
        v21 = casemanagementLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v34 = 67109376;
          v35 = 100;
          v36 = 1024;
          v37 = v19;
          OUTLINED_FUNCTION_0_2();
          _os_log_impl(v22, v23, v24, v25, v26, 0xEu);
        }

        v27 = casemanagementLogHandle();
        v6 = v27;
        if (v20 >= v19)
        {
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          v34 = 67109632;
          v35 = 100;
          v36 = 1024;
          v37 = v19;
          v38 = 1024;
          v39 = v20;
          v7 = &dword_241804000;
          v8 = "Failed to pass probability check (%u to %u against). Will not submit this case to DiagnosticPipeline. [%d]";
          v9 = &v34;
          v10 = v6;
          v11 = OS_LOG_TYPE_DEFAULT;
          v12 = 20;
          goto LABEL_10;
        }

        v13 = 1;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        v34 = 67109120;
        v35 = v20;
        OUTLINED_FUNCTION_0_2();
        v33 = 8;
      }

      _os_log_impl(v28, v29, v30, v31, v32, v33);
      goto LABEL_12;
    }

    v6 = casemanagementLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    LOWORD(v34) = 0;
    goto LABEL_8;
  }

  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v34) = 0;
    v7 = &dword_241804000;
    v8 = "Dampened cases will not be submitted to DP";
    v9 = &v34;
    v10 = v6;
    v11 = OS_LOG_TYPE_DEBUG;
LABEL_9:
    v12 = 2;
LABEL_10:
    _os_log_impl(v7, v10, v11, v8, v9, v12);
  }

LABEL_11:
  v13 = 0;
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)publishReportForCase:(id)case options:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  optionsCopy = options;
  if ([(DiagnosticPipelineOutlet *)self shouldPublishReportForCase:caseCopy])
  {
    caseDomain = [caseCopy caseDomain];
    v9 = [(DiagnosticPipelineOutlet *)self issueDescriptionFromCase:caseCopy];
    v10 = [(DiagnosticPipelineOutlet *)self contextDictionaryFromCase:caseCopy];
    v11 = +[ABCAdministrator sharedInstance];
    configurationManager = [v11 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 1;
    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attachments = [caseCopy attachments];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__DiagnosticPipelineOutlet_publishReportForCase_options___block_invoke;
    v33[3] = &unk_278CF0C18;
    v34 = cloudKitEnabled ^ 1;
    v33[4] = self;
    v33[5] = &v41;
    v33[6] = buf;
    [attachments enumerateObjectsUsingBlock:v33];

    if (*(v42 + 24) == 1)
    {
      v15 = casemanagementLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        caseId = [caseCopy caseId];
        uUIDString = [caseId UUIDString];
        *v45 = 138543362;
        v46 = uUIDString;
        OUTLINED_FUNCTION_4_0(&dword_241804000, v18, v19, "Submitting case id %{public}@ to DiagnosticPipeline");
      }

      v20 = *(v36 + 5);
      v21 = DRSubmitLogs();
      v22 = 0;
      if (v21)
      {
        v23 = 1;
      }

      else
      {
        v30 = casemanagementLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 138412546;
          v46 = v22;
          v47 = 2112;
          v48 = caseCopy;
          _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_DEFAULT, "Error occurred when submitting case to DiagnosticPipeline: %@ (case: %@)", v45, 0x16u);
        }

        v23 = 4;
      }

      [caseCopy setDPSubmissionState:v23];
    }

    else
    {
      v25 = casemanagementLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        caseId2 = [caseCopy caseId];
        uUIDString2 = [caseId2 UUIDString];
        *v45 = 138543362;
        v46 = uUIDString2;
        OUTLINED_FUNCTION_4_0(&dword_241804000, v28, v29, "Skipping submission of case id %{public}@ to DiagnosticPipeline due to preflight errors");
      }

      [caseCopy setDPSubmissionState:3];
      v21 = 0;
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v24 = casemanagementLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "Case not eligible for submission to DiagnosticPipeline", buf, 2u);
    }

    [caseCopy setDPSubmissionState:2];
    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

@end