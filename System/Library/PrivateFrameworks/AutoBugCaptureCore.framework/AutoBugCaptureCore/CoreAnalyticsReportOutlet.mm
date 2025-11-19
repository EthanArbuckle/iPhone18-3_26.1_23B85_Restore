@interface CoreAnalyticsReportOutlet
- (BOOL)publishReportForCase:(id)a3 options:(id)a4;
- (id)buildDiagnosticIncidentEventForCase:(id)a3;
- (id)dampeningResultForDampeningType:(signed __int16)a3;
- (id)handledResultForDampeningType:(signed __int16)a3;
@end

@implementation CoreAnalyticsReportOutlet

- (id)handledResultForDampeningType:(signed __int16)a3
{
  v3 = 2;
  if (a3 == -1)
  {
    v3 = 3;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
}

- (id)dampeningResultForDampeningType:(signed __int16)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a3 + 2) >= 0xB)
  {
    v4 = a3;
    v5 = analyticsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v4;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Found unexpected dampening type %d", v9, 8u);
    }

    v3 = 0;
  }

  else
  {
    v3 = qword_24188ACA8[(a3 + 2)];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildDiagnosticIncidentEventForCase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 caseDomain];
  [v5 setObject:v6 forKeyedSubscript:@"caseDomain"];

  v7 = [v4 caseType];
  [v5 setObject:v7 forKeyedSubscript:@"caseType"];

  v8 = [v4 caseSubType];
  [v5 setObject:v8 forKeyedSubscript:@"caseSubtype"];

  v9 = [v4 caseSubTypeContext];
  [v5 setObject:v9 forKeyedSubscript:@"caseSubtypeContext"];

  v10 = [v4 caseDetectedProcess];
  [v5 setObject:v10 forKeyedSubscript:@"caseDetectedProcess"];

  v11 = [v4 caseId];
  v12 = [v11 UUIDString];
  [v5 setObject:v12 forKeyedSubscript:@"caseIdentifier"];

  v13 = [v4 caseGroupId];

  if (v13)
  {
    v14 = [v4 caseGroupId];
    [v5 setObject:v14 forKeyedSubscript:@"groupIdentifier"];

    v15 = MEMORY[0x277CBEC38];
  }

  else
  {
    v15 = MEMORY[0x277CBEC28];
  }

  [v5 setObject:v15 forKeyedSubscript:@"hasGroupIdentifier"];
  [v4 caseClosedTime];
  if (v16 > 0.0)
  {
    [v4 caseClosedTime];
    v19 = v20;
  }

  else
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSince1970];
    v19 = v18;
  }

  v21 = MEMORY[0x277CCABB0];
  [v4 caseOpenedTime];
  v23 = [v21 numberWithDouble:v19 - v22];
  [v5 setObject:v23 forKeyedSubscript:@"duration"];

  v24 = MEMORY[0x277CCABB0];
  v25 = [v4 attachments];
  v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
  [v5 setObject:v26 forKeyedSubscript:@"attachmentCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "attachmentsFileSize")}];
  [v5 setObject:v27 forKeyedSubscript:@"totalAttachmentSize"];

  if ([v4 isRemoteTrigger])
  {
    v28 = &unk_28537A080;
  }

  else
  {
    if (![v4 wantsRemote])
    {
      goto LABEL_12;
    }

    v28 = &unk_28537A098;
  }

  [v5 setObject:v28 forKeyedSubscript:@"remoteFlags"];
LABEL_12:
  v29 = -[CoreAnalyticsReportOutlet handledResultForDampeningType:](self, "handledResultForDampeningType:", [v4 dampeningType]);
  [v5 setObject:v29 forKeyedSubscript:@"handledResult"];

  v30 = -[CoreAnalyticsReportOutlet dampeningResultForDampeningType:](self, "dampeningResultForDampeningType:", [v4 dampeningType]);
  [v5 setObject:v30 forKeyedSubscript:@"dampeningResult"];

  v31 = -[CoreAnalyticsReportOutlet closureTypeForClosure:](self, "closureTypeForClosure:", [v4 closureType]);
  [v5 setObject:v31 forKeyedSubscript:@"closureType"];

  return v5;
}

- (BOOL)publishReportForCase:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9 = v6;
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