@interface DiagnosticPipelineOutlet
- (BOOL)logRequiresUploadConsent:(id)a3;
- (BOOL)publishReportForCase:(id)a3 options:(id)a4;
- (id)caseSignatureFieldFromCase:(uint64_t)a1;
- (id)contextDictionaryFromCase:(uint64_t)a1;
- (id)issueDescriptionFromCase:(uint64_t)a1;
- (uint64_t)shouldPublishReportForCase:(uint64_t)a1;
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

- (BOOL)logRequiresUploadConsent:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  v6 = [v5 autoBugCaptureUploadPreapproved];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 hasSuffix:@".pcapng"];
  }

  return v7;
}

- (id)contextDictionaryFromCase:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [v3 caseId];
    v6 = [v5 UUIDString];
    OUTLINED_FUNCTION_3_0();

    v7 = [v3 caseGroupId];
    OUTLINED_FUNCTION_2_0();

    v8 = [v3 caseDomain];
    OUTLINED_FUNCTION_2_0();

    v9 = [v3 caseType];
    OUTLINED_FUNCTION_2_0();

    v10 = [v3 caseSubType];
    OUTLINED_FUNCTION_2_0();

    v11 = [v3 caseSubTypeContext];
    OUTLINED_FUNCTION_2_0();

    v12 = [v3 caseDetectedProcess];
    OUTLINED_FUNCTION_2_0();

    v13 = MEMORY[0x277CCABB0];
    [v3 caseOpenedTime];
    v14 = [v13 numberWithDouble:?];
    OUTLINED_FUNCTION_2_0();

    v15 = [(DiagnosticPipelineOutlet *)a1 caseSignatureFieldFromCase:v3];
    [v4 setObject:v15 forKeyedSubscript:@"caseSignature"];

    v16 = +[SystemProperties sharedInstance];
    v17 = [v3 buildVariant];
    if (v17)
    {
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      v18 = [v16 buildVariant];
      OUTLINED_FUNCTION_3_0();
    }

    v19 = [v3 buildVersion];
    if (v19)
    {
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      v20 = [v16 buildVersion];
      OUTLINED_FUNCTION_3_0();
    }

    v21 = +[ABCAdministrator sharedInstance];
    v22 = [v21 configurationManager];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "hasAppleEmail")}];
    OUTLINED_FUNCTION_3_0();

    v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "isCarryDevice")}];
    OUTLINED_FUNCTION_3_0();

    v25 = [v3 basebandChipset];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [v16 basebandChipset];
    }

    v28 = v27;

    if ([v28 length])
    {
      OUTLINED_FUNCTION_3_0();
    }

    v29 = [v3 basebandFirmwareVersion];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [v16 basebandFirmwareVersion];
    }

    v32 = v31;

    if ([v32 length])
    {
      [v4 setObject:v32 forKeyedSubscript:@"basebandFirmwareVersion"];
    }

    v33 = [v3 regulatoryDomainCountry];
    if ([v33 length])
    {
      [v4 setObject:v33 forKeyedSubscript:@"regulatoryDomainCountry"];
    }

    v34 = [v3 homeCarrier];
    if ([v34 length])
    {
      [v4 setObject:v34 forKeyedSubscript:@"homeCarrier"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)caseSignatureFieldFromCase:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEB18];
    v3 = a2;
    v4 = objc_alloc_init(v2);
    v5 = [v3 caseDomain];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_285368168;
    }

    [v4 addObject:v7];

    v8 = [v3 caseType];
    OUTLINED_FUNCTION_1_1(v8);

    v9 = [v3 caseSubType];
    OUTLINED_FUNCTION_1_1(v9);

    v10 = [v3 caseSubTypeContext];
    OUTLINED_FUNCTION_1_1(v10);

    v11 = [v3 caseDetectedProcess];

    if (v11)
    {
      v12 = v11;
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

- (id)issueDescriptionFromCase:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = a2;
    v4 = [v2 alloc];
    v5 = [v3 caseDomain];
    v6 = [v3 caseType];
    v7 = [v3 caseSubType];

    v8 = [v4 initWithFormat:@"AutoBugCapture case for %@, type:%@ subtype:%@", v5, v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)shouldPublishReportForCase:(uint64_t)a1
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];

  if (![v5 submitToDiagnosticPipeline])
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
    v16 = [v3 attachments];
    v17 = [v16 count];

    if (v17)
    {
      [v5 diagnosticPipelineSubmissionRate];
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

- (BOOL)publishReportForCase:(id)a3 options:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(DiagnosticPipelineOutlet *)self shouldPublishReportForCase:v6])
  {
    v8 = [v6 caseDomain];
    v9 = [(DiagnosticPipelineOutlet *)self issueDescriptionFromCase:v6];
    v10 = [(DiagnosticPipelineOutlet *)self contextDictionaryFromCase:v6];
    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 configurationManager];
    v13 = [v12 cloudKitEnabled];

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
    v14 = [v6 attachments];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__DiagnosticPipelineOutlet_publishReportForCase_options___block_invoke;
    v33[3] = &unk_278CF0C18;
    v34 = v13 ^ 1;
    v33[4] = self;
    v33[5] = &v41;
    v33[6] = buf;
    [v14 enumerateObjectsUsingBlock:v33];

    if (*(v42 + 24) == 1)
    {
      v15 = casemanagementLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 caseId];
        v17 = [v16 UUIDString];
        *v45 = 138543362;
        v46 = v17;
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
          v48 = v6;
          _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_DEFAULT, "Error occurred when submitting case to DiagnosticPipeline: %@ (case: %@)", v45, 0x16u);
        }

        v23 = 4;
      }

      [v6 setDPSubmissionState:v23];
    }

    else
    {
      v25 = casemanagementLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 caseId];
        v27 = [v26 UUIDString];
        *v45 = 138543362;
        v46 = v27;
        OUTLINED_FUNCTION_4_0(&dword_241804000, v28, v29, "Skipping submission of case id %{public}@ to DiagnosticPipeline due to preflight errors");
      }

      [v6 setDPSubmissionState:3];
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

    [v6 setDPSubmissionState:2];
    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

@end