@interface CoreAnalyticsReportOutlet
- (BOOL)publishReportForCase:(id)case options:(id)options;
- (id)buildDiagnosticIncidentEventForCase:(id)case;
- (id)dampeningResultForDampeningType:(signed __int16)type;
- (id)handledResultForDampeningType:(signed __int16)type;
@end

@implementation CoreAnalyticsReportOutlet

- (id)handledResultForDampeningType:(signed __int16)type
{
  v3 = 2;
  if (type == -1)
  {
    v3 = 3;
  }

  if (type)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
}

- (id)dampeningResultForDampeningType:(signed __int16)type
{
  v10 = *MEMORY[0x277D85DE8];
  if ((type + 2) >= 0xB)
  {
    typeCopy = type;
    v5 = analyticsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = typeCopy;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Found unexpected dampening type %d", v9, 8u);
    }

    v3 = 0;
  }

  else
  {
    v3 = qword_24188ACA8[(type + 2)];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildDiagnosticIncidentEventForCase:(id)case
{
  caseCopy = case;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  caseDomain = [caseCopy caseDomain];
  [v5 setObject:caseDomain forKeyedSubscript:@"caseDomain"];

  caseType = [caseCopy caseType];
  [v5 setObject:caseType forKeyedSubscript:@"caseType"];

  caseSubType = [caseCopy caseSubType];
  [v5 setObject:caseSubType forKeyedSubscript:@"caseSubtype"];

  caseSubTypeContext = [caseCopy caseSubTypeContext];
  [v5 setObject:caseSubTypeContext forKeyedSubscript:@"caseSubtypeContext"];

  caseDetectedProcess = [caseCopy caseDetectedProcess];
  [v5 setObject:caseDetectedProcess forKeyedSubscript:@"caseDetectedProcess"];

  caseId = [caseCopy caseId];
  uUIDString = [caseId UUIDString];
  [v5 setObject:uUIDString forKeyedSubscript:@"caseIdentifier"];

  caseGroupId = [caseCopy caseGroupId];

  if (caseGroupId)
  {
    caseGroupId2 = [caseCopy caseGroupId];
    [v5 setObject:caseGroupId2 forKeyedSubscript:@"groupIdentifier"];

    v15 = MEMORY[0x277CBEC38];
  }

  else
  {
    v15 = MEMORY[0x277CBEC28];
  }

  [v5 setObject:v15 forKeyedSubscript:@"hasGroupIdentifier"];
  [caseCopy caseClosedTime];
  if (v16 > 0.0)
  {
    [caseCopy caseClosedTime];
    v19 = v20;
  }

  else
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSince1970];
    v19 = v18;
  }

  v21 = MEMORY[0x277CCABB0];
  [caseCopy caseOpenedTime];
  v23 = [v21 numberWithDouble:v19 - v22];
  [v5 setObject:v23 forKeyedSubscript:@"duration"];

  v24 = MEMORY[0x277CCABB0];
  attachments = [caseCopy attachments];
  v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(attachments, "count")}];
  [v5 setObject:v26 forKeyedSubscript:@"attachmentCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(caseCopy, "attachmentsFileSize")}];
  [v5 setObject:v27 forKeyedSubscript:@"totalAttachmentSize"];

  if ([caseCopy isRemoteTrigger])
  {
    v28 = &unk_28537A080;
  }

  else
  {
    if (![caseCopy wantsRemote])
    {
      goto LABEL_12;
    }

    v28 = &unk_28537A098;
  }

  [v5 setObject:v28 forKeyedSubscript:@"remoteFlags"];
LABEL_12:
  v29 = -[CoreAnalyticsReportOutlet handledResultForDampeningType:](self, "handledResultForDampeningType:", [caseCopy dampeningType]);
  [v5 setObject:v29 forKeyedSubscript:@"handledResult"];

  v30 = -[CoreAnalyticsReportOutlet dampeningResultForDampeningType:](self, "dampeningResultForDampeningType:", [caseCopy dampeningType]);
  [v5 setObject:v30 forKeyedSubscript:@"dampeningResult"];

  v31 = -[CoreAnalyticsReportOutlet closureTypeForClosure:](self, "closureTypeForClosure:", [caseCopy closureType]);
  [v5 setObject:v31 forKeyedSubscript:@"closureType"];

  return v5;
}

- (BOOL)publishReportForCase:(id)case options:(id)options
{
  caseCopy = case;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v9 = caseCopy;
  objc_copyWeak(&v10, &location);
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  return 1;
}

id __58__CoreAnalyticsReportOutlet_publishReportForCase_options___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) caseId];
    v4 = [v3 UUIDString];
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Submitting analytics for case id %{public}@ to CoreAnalytics", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained buildDiagnosticIncidentEventForCase:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end