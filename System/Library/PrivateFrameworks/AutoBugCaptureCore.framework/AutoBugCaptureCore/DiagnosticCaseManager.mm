@interface DiagnosticCaseManager
- (ABCConfigurationManager)configManager;
- (BOOL)closeCase:(id)a3;
- (BOOL)disableDampening;
- (BOOL)hasOpenCases;
- (BOOL)isAdmissible:(id)a3 dampenedBy:(signed __int16 *)a4;
- (BOOL)isAllowedTransientException:(id)a3;
- (BOOL)requestReportGenerator:(id)a3 options:(id)a4;
- (BOOL)sendReportsForCase:(id)a3;
- (BOOL)statisticsRowForDiagnosticCase:(id)a3 matchesWith:(id)a4;
- (DiagnosticCaseManager)initWithWorkspace:(id)a3 liaison:(id)a4;
- (DiagnosticCaseManagerStorageDelegate)storageDelegate;
- (DiagnosticsController)diagnosticsController;
- (id)_predicatesForCasesMatchingDomain:(id)a3 type:(id)a4 subtype:(id)a5 process:(id)a6 withinLast:(double)a7;
- (id)_updateSignatureWithBuildVariantInfoAndFlags:(id)a3;
- (id)caseStorageForCaseID:(id)a3;
- (id)caseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5;
- (id)caseSummariesWithIdentifiers:(id)a3;
- (id)casesDiagnosedInTheLast:(double)a3 from:(double)a4 matchingDomain:(id)a5;
- (id)casesMatchingDomain:(id)a3 type:(id)a4 subtype:(id)a5 process:(id)a6 withinLast:(double)a7;
- (id)createDiagnosticCaseWithSignature:(id)a3 flags:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7;
- (id)createTemporaryDiagnosticCaseStorageForUUID:(id)a3;
- (id)diagnosticCaseWithId:(id)a3;
- (id)lookUpDiagnosticCaseStorageForUUID:(id)a3;
- (int)addSignatureContentToCaseWithId:(id)a3 key:(id)a4 content:(id)a5;
- (int)addToCaseWithId:(id)a3 events:(id)a4 payload:(id)a5;
- (int)cancelCaseWithId:(id)a3;
- (int64_t)dailyCountLimitForDomain:(id)a3 type:(id)a4 subtype:(id)a5 domainPredicates:(id)a6;
- (unint64_t)_processProbeActions:(id)a3 session:(id)a4;
- (unint64_t)collectDiagnosticExtensionLogsWithParameters:(id)a3 options:(id)a4 diagCase:(id)a5 reply:(id)a6;
- (unsigned)avgCasesPerDay;
- (unsigned)dampeningFactorForSignature:(id)a3 caseTime:(id)a4 limit:(int64_t)a5;
- (unsigned)defaultDampeningFactorForSignature:(id)a3 limit:(int64_t)a4;
- (void)_forceCloseDiagnosticCaseStorage;
- (void)_processActionsForPacketCaptureProbe:(id)a3 session:(id)a4;
- (void)_processRemoteIDSTriggers:(id)a3 validFor:(double)a4 signature:(id)a5 sessionID:(id)a6 reply:(id)a7;
- (void)_processReportActions:(id)a3 session:(id)a4;
- (void)_saveAllCases;
- (void)_updateCaseStatisticsWithCase:(id)a3;
- (void)addSignatureContentForSession:(id)a3 key:(id)a4 content:(id)a5 reply:(id)a6;
- (void)addToInternalStateDictionary:(id)a3;
- (void)addToSession:(id)a3 event:(id)a4 payload:(id)a5 queue:(id)a6 reply:(id)a7;
- (void)addToSession:(id)a3 events:(id)a4 payload:(id)a5 queue:(id)a6 reply:(id)a7;
- (void)addToSession:(id)a3 events:(id)a4 payload:(id)a5 reply:(id)a6;
- (void)addTransactionForCaseID:(id)a3;
- (void)buildSpecificRestrictionsForSignature:(id)a3 result:(id)a4;
- (void)cancelProbesForSession:(id)a3;
- (void)cancelSessionWithIdentifier:(id)a3;
- (void)caseAllowanceForSignature:(id)a3 timestamp:(id)a4 result:(id)a5;
- (void)configureWithWorkspace:(id)a3;
- (void)countOfCasesMatchingDomain:(id)a3 type:(id)a4 subtype:(id)a5 process:(id)a6 groupCaseIDIsPresent:(BOOL)a7 withinLast:(double)a8 reply:(id)a9;
- (void)endSessionIfProbesCompletedFor:(id)a3;
- (void)endSessionWithIdentifier:(id)a3 forced:(BOOL)a4 onlyIfReady:(BOOL)a5;
- (void)endSessions:(id)a3 forced:(BOOL)a4;
- (void)forceCloseDiagnosticCaseStorage;
- (void)getHistoricalDiagnosicCaseDictionaryFromIdentifier:(id)a3 withEvents:(BOOL)a4 count:(unint64_t)a5 reply:(id)a6;
- (void)listCaseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5 reply:(id)a6;
- (void)listCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4;
- (void)payloadsForSignatures:(id)a3 reply:(id)a4;
- (void)periodicSessionManagement;
- (void)postProcessActionsForClosedCase:(id)a3;
- (void)promoteTemporaryCase:(id)a3;
- (void)recordDiagnosticCaseSummaryForCase:(id)a3;
- (void)remoteTriggerDeliveryUpdateEvent:(id)a3;
- (void)removeAllCases;
- (void)removeCaseStorageWithID:(id)a3;
- (void)removeClosedCasesFromTotalCases;
- (void)removeTransactionForCaseID:(id)a3;
- (void)removeTransientCasesWithSignature:(id)a3 beforeTime:(double)a4;
- (void)reportGeneratorEnded:(id)a3 reportInfo:(id)a4 error:(id)a5;
- (void)requestGroupCaseIdentifierForSignature:(id)a3 reply:(id)a4;
- (void)requestSnapshotWithSignature:(id)a3 flags:(unint64_t)a4 events:(id)a5;
- (void)resetAll;
- (void)resetAllForCustomerBuilds;
- (void)resetDiagnosticCaseStorage;
- (void)saveAllCases;
- (void)setUpGeneralCaseReportGenerators;
- (void)shutdown;
- (void)startCollectingNextReportForDiagnosticCase:(id)a3;
- (void)startPacketCaptureForSession:(id)a3 duration:(id)a4;
- (void)startPeriodicTimer;
- (void)startSessionWithSignature:(id)a3 duration:(double)a4 events:(id)a5 payload:(id)a6 triggerRemote:(BOOL)a7 queue:(id)a8 reply:(id)a9;
- (void)startSessionWithSignature:(id)a3 flags:(unint64_t)a4 preferredTimeout:(double)a5 events:(id)a6 payload:(id)a7 actions:(id)a8 reply:(id)a9;
- (void)stopPeriodicTimer;
- (void)updateAverageCasesPerDay;
- (void)updateSignatureWithBundleIdentifier:(id)a3 reply:(id)a4;
@end

@implementation DiagnosticCaseManager

uint64_t __37__DiagnosticCaseManager_saveAllCases__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveAllCases];
  *(*(a1 + 32) + 32) = 0;
  return result;
}

- (void)_saveAllCases
{
  v3 = casemanagementLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Saving all cases to storage.", buf, 2u);
  }

  [(NSMutableArray *)self->_totalCases enumerateObjectsUsingBlock:&__block_literal_global_13];
  [(DiagnosticCaseManager *)self removeClosedCasesFromTotalCases];
  [(AnalyticsWorkspace *)self->_workspace save];
  if (![(NSMutableArray *)self->_totalCases count]&& self->_shouldPurgeStorageAfterSave)
  {
    v4 = casemanagementLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "No active cases remain", v8, 2u);
    }

    v5 = casemanagementLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Requesting purge of attachments to meet disk usage limits", v7, 2u);
    }

    v6 = [(DiagnosticCaseManager *)self storageDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 didSaveDiagnosticCases];
    }

    self->_shouldPurgeStorageAfterSave = 0;
  }
}

- (ABCConfigurationManager)configManager
{
  v2 = +[ABCAdministrator sharedInstance];
  v3 = [v2 configurationManager];

  return v3;
}

- (void)removeClosedCasesFromTotalCases
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_totalCases count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_totalCases;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 caseState] == 6)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_totalCases removeObjectsInArray:v3];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (DiagnosticCaseManager)initWithWorkspace:(id)a3 liaison:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = DiagnosticCaseManager;
  v8 = [(DiagnosticCaseManager *)&v35 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeCases = v8->_activeCases;
    v8->_activeCases = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    totalCases = v8->_totalCases;
    v8->_totalCases = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingStatisticsUpdateCases = v8->_pendingStatisticsUpdateCases;
    v8->_pendingStatisticsUpdateCases = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportGenerators = v8->_reportGenerators;
    v8->_reportGenerators = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reportOutlets = v8->_reportOutlets;
    v8->_reportOutlets = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestedReportGenerators = v8->_requestedReportGenerators;
    v8->_requestedReportGenerators = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    activeProbes = v8->activeProbes;
    v8->activeProbes = v21;

    objc_storeStrong(&v8->_liaison, a4);
    [(DiagnosticLiaison *)v8->_liaison setDelegate:v8];
    v23 = casemanagementLogHandle();
    [CaseDampeningExceptions setLoggingHandle:v23];

    v24 = +[SystemProperties sharedInstance];
    +[CaseDampeningExceptions setNPIDevice:](CaseDampeningExceptions, "setNPIDevice:", [v24 npiDevice]);

    v25 = +[SystemProperties sharedInstance];
    v26 = [v25 productType];
    [CaseDampeningExceptions setProductType:v26];

    v27 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v28 = dispatch_queue_create("com.apple.autobugcapture.diagnosticCaseManagement", v27);
    queue = v8->_queue;
    v8->_queue = v28;

    v30 = v8->_queue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __51__DiagnosticCaseManager_initWithWorkspace_liaison___block_invoke;
    v32[3] = &unk_278CF04F8;
    v33 = v8;
    v34 = v6;
    dispatch_async(v30, v32);
  }

  return v8;
}

- (void)configureWithWorkspace:(id)a3
{
  v4 = [a3 copy];
  workspace = self->_workspace;
  self->_workspace = v4;

  v6 = [[DiagnosticCaseStorageAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  caseStorageAnalytics = self->_caseStorageAnalytics;
  self->_caseStorageAnalytics = v6;

  v8 = [[DiagnosticCaseSummaryAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  caseSummaryAnalytics = self->_caseSummaryAnalytics;
  self->_caseSummaryAnalytics = v8;

  v10 = [[DiagnosticStatisticsManager alloc] initWithWorkspace:self->_workspace queue:self->_queue];
  statsManager = self->_statsManager;
  self->_statsManager = v10;

  v12 = [(DiagnosticCaseManager *)self configManager];
  v13 = [v12 autoBugCaptureSignature];

  if (v13)
  {
    v14 = objc_alloc_init(CoreAnalyticsReportOutlet);
    [(DiagnosticCaseManager *)self addCaseReportOutlet:v14];
  }

  v15 = [(DiagnosticCaseManager *)self configManager];
  v16 = [v15 autoBugCaptureRegularPayloads];

  if (v16)
  {
    v17 = objc_alloc_init(DiagnosticPipelineOutlet);
    [(DiagnosticCaseManager *)self addCaseReportOutlet:v17];
  }

  [(DiagnosticCaseManager *)self setUpGeneralCaseReportGenerators];
}

- (void)addToInternalStateDictionary:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[DiagnosticCaseManager hasOpenCases](self, "hasOpenCases")}];
  [v5 setObject:v6 forKeyedSubscript:@"hasOpenCases"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[DiagnosticCaseManager avgCasesPerDay](self, "avgCasesPerDay")}];
  [v5 setObject:v7 forKeyedSubscript:@"avgCasesPerDay"];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  reportOutlets = self->_reportOutlets;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__DiagnosticCaseManager_addToInternalStateDictionary___block_invoke;
  v12[3] = &unk_278CF0E70;
  v13 = v8;
  v10 = v8;
  [(NSMutableSet *)reportOutlets enumerateObjectsUsingBlock:v12];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [v5 setObject:v11 forKeyedSubscript:@"reportOutlets"];
}

void __54__DiagnosticCaseManager_addToInternalStateDictionary___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [*(a1 + 32) addObject:v3];
}

- (BOOL)disableDampening
{
  v2 = [(DiagnosticCaseManager *)self configManager];
  v3 = [v2 arbitratorDisableDampening];

  return v3;
}

- (int64_t)dailyCountLimitForDomain:(id)a3 type:(id)a4 subtype:(id)a5 domainPredicates:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isEqualToString:@"UIPerformance"])
  {
    v14 = casemanagementLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v26 = 10;
      v27 = 2112;
      v28 = @"UIPerformance";
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEFAULT, " Applying daily case limit of %ld for %@ domain", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain == %@", @"UIPerformance"];
    v16 = 10;
  }

  else if ([v10 isEqualToString:@"Performance"])
  {
    v17 = casemanagementLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v26 = 7;
      v27 = 2112;
      v28 = @"Performance";
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, " Applying daily case limit of %ld for %@ domain", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain == %@", @"Performance"];
    v16 = 7;
  }

  else if ([v10 isEqualToString:@"Responsiveness"] && objc_msgSend(v11, "isEqualToString:", @"CoreAnimation") && objc_msgSend(v12, "isEqualToString:", @"Stall Tailspin"))
  {
    v18 = casemanagementLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v26 = 3;
      v27 = 2112;
      v28 = @"Responsiveness";
      v29 = 2112;
      v30 = @"CoreAnimation";
      v31 = 2112;
      v32 = @"Stall Tailspin";
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, " Applying daily case limit of %ld for %@/%@/%@", buf, 0x2Au);
    }

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain == %@ AND caseType == %@ AND caseSubtype == %@", @"Responsiveness", @"CoreAnimation", @"Stall Tailspin"];
    v16 = 3;
  }

  else
  {
    v19 = [(DiagnosticCaseManager *)self configManager];
    v16 = [v19 arbitratorDailyCountLimit];

    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v16;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, " Applying default daily case limit of %ld", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain != %@", @"UIPerformance"];
    [v13 addObject:v21];

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain != %@", @"Performance"];
    [v13 addObject:v22];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain != %@ AND caseType != %@ AND caseSubtype != %@", @"Responsiveness", @"CoreAnimation", @"Stall Tailspin"];
  }

  [v13 addObject:v15];

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

- (DiagnosticsController)diagnosticsController
{
  v13 = *MEMORY[0x277D85DE8];
  diagnosticsController = self->_diagnosticsController;
  if (!diagnosticsController)
  {
    v4 = [(DiagnosticCaseManager *)self configManager];
    v5 = [v4 defaultDiagnosticActions];

    if (v5)
    {
      v6 = casemanagementLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "default actions: %@", &v11, 0xCu);
      }

      v7 = [[DiagnosticsController alloc] initWithConfiguration:v5];
      v8 = self->_diagnosticsController;
      self->_diagnosticsController = v7;
    }

    diagnosticsController = self->_diagnosticsController;
  }

  v9 = *MEMORY[0x277D85DE8];

  return diagnosticsController;
}

- (void)saveAllCases
{
  v3 = [(DiagnosticCaseManager *)self queue];

  if (v3)
  {
    saveCount = self->_saveCount;
    self->_saveCount = saveCount + 1;
    if (!saveCount)
    {
      v5 = dispatch_time(0, 3000000000);
      v6 = [(DiagnosticCaseManager *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__DiagnosticCaseManager_saveAllCases__block_invoke;
      block[3] = &unk_278CEFE88;
      block[4] = self;
      dispatch_after(v5, v6, block);
    }
  }

  else
  {

    [(DiagnosticCaseManager *)self _saveAllCases];
  }
}

- (void)removeTransientCasesWithSignature:(id)a3 beforeTime:(double)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 <= 100000000.0)
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v33 = a4;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Invalid timestamp (%.0lf) passed to removeTransientCasesWithSignature:beforeTime:", buf, 0xCu);
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a4];
    v9 = [v6 objectForKeyedSubscript:@"domain"];
    v10 = [v6 objectForKeyedSubscript:@"type"];
    v11 = [v6 objectForKeyedSubscript:@"subtype"];
    v12 = [v6 objectForKeyedSubscript:@"detected"];
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"caseDampeningType", 0xFFFFFFFFLL];
    [v7 addObject:?];
    v29 = v8;
    v25 = v8;
    v13 = v9;
    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %@", @"timeStamp", v25];
    [v7 addObject:?];
    if ([v9 length])
    {
      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseDomain", v9];
      [v7 addObject:v14];

      v13 = v9;
    }

    if ([v10 length])
    {
      v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseType", v10];
      [v7 addObject:v15];

      v13 = v9;
    }

    if ([v11 length])
    {
      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseSubtype", v11];
      [v7 addObject:v16];

      v13 = v9;
    }

    if ([v12 length])
    {
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseDetectedProcess", v12];
      [v7 addObject:v17];

      v13 = v9;
    }

    if ([v7 count]>= 5)
    {
      v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
      v19 = [(ObjectAnalytics *)self->_caseStorageAnalytics fetchEntitiesFreeForm:v18 sortDesc:0];
      if ([v19 count])
      {
        v26 = [(DiagnosticCaseManager *)self storageDelegate];
        if (objc_opt_respondsToSelector())
        {
          v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __70__DiagnosticCaseManager_removeTransientCasesWithSignature_beforeTime___block_invoke;
          v30[3] = &unk_278CF0EB8;
          v31 = v20;
          v21 = v20;
          [v19 enumerateObjectsUsingBlock:v30];
          [v26 purgeAttachmentsAtPaths:v21];
        }

        v22 = [(ObjectAnalytics *)self->_caseStorageAnalytics removeEntitiesMatching:v18];
        v23 = casemanagementLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v33 = *&v22;
          v34 = 2112;
          v35 = v18;
          _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_INFO, "Removed %ld transient cases matching %@", buf, 0x16u);
        }
      }

      v13 = v9;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __70__DiagnosticCaseManager_removeTransientCasesWithSignature_beforeTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 caseAttachments];
  v4 = [DiagnosticCase attachmentsFromStringRepresentation:v3];

  [*(a1 + 32) addObject:v4];
}

- (unsigned)dampeningFactorForSignature:(id)a3 caseTime:(id)a4 limit:(int64_t)a5
{
  v59[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v49 = a4;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = [(DiagnosticCaseManager *)self defaultDampeningFactorForSignature:v8 limit:a5];
  v48 = [v8 objectForKeyedSubscript:@"domain"];
  v47 = [v8 objectForKeyedSubscript:@"type"];
  v46 = [v8 objectForKeyedSubscript:@"subtype"];
  v44 = [v8 objectForKeyedSubscript:@"additional"];
  v43 = [v8 objectForKeyedSubscript:@"detected"];
  [v49 timeIntervalSince1970];
  v10 = v9;
  v11 = [(DiagnosticCaseManager *)self configManager];
  v12 = [v11 dampeningRestrictionFactor];

  v35 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v10 + sqrt(v12) * -86400.0];
  v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timeStamp >= %@", v35];
  v13 = MEMORY[0x277CBEC28];
  v45 = [MEMORY[0x277CCAC30] predicateWithFormat:@"remoteTrigger == %@", MEMORY[0x277CBEC28]];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"remoteTrigger == nil"];
  v15 = MEMORY[0x277CCA920];
  v59[0] = v45;
  v59[1] = v14;
  v34 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v36 = [v15 orPredicateWithSubpredicates:v16];

  v42 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain == %@", v48];
  v41 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseType == %@", v47];
  v40 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSubtype == %@", v46];
  v39 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSubtypeContext == %@", v44];
  v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDetectedProcess == %@", v43];
  v17 = objc_alloc(MEMORY[0x277CCA920]);
  v58[0] = v42;
  v58[1] = v41;
  v58[2] = v40;
  v58[3] = v39;
  v58[4] = v38;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
  v19 = [v17 initWithType:1 subpredicates:v18];

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDampeningType == %@", &unk_28537A230];
  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseAttachments != nil"];
  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachmentsIncomplete == %@", v13];
  v23 = objc_alloc(MEMORY[0x277CCA920]);
  v57[0] = v37;
  v57[1] = v36;
  v57[2] = v19;
  v57[3] = v20;
  v57[4] = v21;
  v57[5] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:6];
  v25 = [v23 initWithType:1 subpredicates:v24];

  v26 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:0];
  v27 = [(ObjectAnalytics *)self->_caseStorageAnalytics fetchEntitiesFreeForm:v25 sortDesc:v26];
  v28 = casemanagementLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [v27 count];
    *buf = 134217984;
    v56 = v29;
    _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_INFO, "There are %ld records of accepted cases with logs matching this signature", buf, 0xCu);
  }

  v30 = objc_autoreleasePoolPush();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __68__DiagnosticCaseManager_dampeningFactorForSignature_caseTime_limit___block_invoke;
  v50[3] = &unk_278CF0F08;
  v50[4] = self;
  v50[5] = &v51;
  [v27 enumerateObjectsUsingBlock:v50];
  objc_autoreleasePoolPop(v30);
  v31 = *(v52 + 6);

  _Block_object_dispose(&v51, 8);
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void __68__DiagnosticCaseManager_dampeningFactorForSignature_caseTime_limit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 caseID];
  v8 = [v6 caseAttachments];
  v9 = [DiagnosticCase attachmentsFromStringRepresentation:v8];
  v10 = casemanagementLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = [v6 dpSubmissionState];
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Inspecting case %{public}@ [dbSubmissionState: %d]", buf, 0x12u);
  }

  if ([v6 dpSubmissionState] == 1)
  {
    v11 = casemanagementLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Found case ID %{public}@ which was submitted to DP", buf, 0xCu);
    }

LABEL_11:
    v16 = [v6 timeStamp];
    [v16 timeIntervalSinceNow];
    v18 = floor(v17 / -86400.0) + 1.0;
    if (v18 == 0.0)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = v18;
    }

    v20 = [*(a1 + 32) configManager];
    v21 = [v20 dampeningRestrictionFactor];
    v22 = v19;
    v23 = exp2((v19 - 1));

    v24 = vcvtad_u64_f64(1.0 / v23 * v21);
    *(*(*(a1 + 40) + 8) + 24) *= v24;
    v25 = casemanagementLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138544386;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v24;
      v37 = 2048;
      v38 = v26;
      _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEFAULT, "Found fully valid case %{public}@ from %@ (within %lu days ago). Adjusted dampening factor by %ld to %ld", buf, 0x34u);
    }

    *a4 = 1;
    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v34) = 1;
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__DiagnosticCaseManager_dampeningFactorForSignature_caseTime_limit___block_invoke_120;
  v29[3] = &unk_278CF0EE0;
  v13 = v12;
  v30 = v13;
  v14 = v7;
  v31 = v14;
  v32 = buf;
  [v9 enumerateObjectsUsingBlock:v29];
  if (*(*&buf[8] + 24))
  {
    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v39 = 138543362;
      v40 = v14;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Case ID %{public}@ matched signature with all attachment files present", v39, 0xCu);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_11;
  }

  v28 = casemanagementLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 138543362;
    v40 = v14;
    _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEFAULT, "Case ID %{public}@ matches signature but is missing attachment files on disk", v39, 0xCu);
  }

  [v6 setAttachmentsIncomplete:1];
  _Block_object_dispose(buf, 8);
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

void __68__DiagnosticCaseManager_dampeningFactorForSignature_caseTime_limit___block_invoke_120(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBC0];
  v7 = a2;
  v8 = [[v6 alloc] initWithString:v7];

  v9 = a1[4];
  v10 = [v8 path];
  LOBYTE(v9) = [v9 fileExistsAtPath:v10];

  if ((v9 & 1) == 0)
  {
    v11 = casemanagementLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a1[5];
      v13 = [v8 path];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "Case ID %{public}@ is missing attached logs on disk: %@", &v15, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unsigned)defaultDampeningFactorForSignature:(id)a3 limit:(int64_t)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(DiagnosticCaseManager *)self avgCasesPerDay:a3];
  v5 = casemanagementLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Configuring initial dampening factor to %d", v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)buildSpecificRestrictionsForSignature:(id)a3 result:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[SystemProperties sharedInstance];
    if ([v8 internalBuild])
    {
      v9 = [(DiagnosticCaseManager *)self configManager];
      if (([v9 cloudKitEnabled] & 1) == 0)
      {
        v10 = [(DiagnosticCaseManager *)self configManager];
        v11 = [v10 submitToDiagnosticPipeline];

        if ((v11 & 1) == 0)
        {
          v12 = casemanagementLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Not allowing case due to invalid configuration (no valid upload mechanism configured).", &v24, 2u);
          }

          v7[2](v7, 1, 4);
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if ([v8 carrierSeedBuild])
    {
      v9 = [v6 objectForKeyedSubscript:@"domain"];
      v13 = [v6 objectForKeyedSubscript:@"type"];
      v14 = [v6 objectForKeyedSubscript:@"subtype"];
      v15 = [v6 objectForKeyedSubscript:@"detected"];
      if (([v9 isEqualToString:@"Cellular"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"Energy") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"Baseband") & 1) == 0 && (!objc_msgSend(v9, "isEqualToString:", @"UIPerformance") || !objc_msgSend(v13, "isEqualToString:", @"Responsiveness") || !objc_msgSend(v14, "isEqualToString:", @"com.apple.signpost_emitter.emitter_category.emitter_name") || (objc_msgSend(v15, "isEqualToString:", @"signpost_emitter") & 1) == 0))
      {
        v16 = casemanagementLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 logSignatureDescription];
          v24 = 138543362;
          v25 = v17;
          _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Cases not explicitly permitted will be dampened on Carrier Seed builds: %{public}@", &v24, 0xCu);
        }

        v7[2](v7, 1, 7);
LABEL_19:

LABEL_37:
        goto LABEL_38;
      }
    }

    else
    {
      if (![v8 customerSeedBuild])
      {
        if ([v8 vendorBuild])
        {
          v20 = casemanagementLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v6 logSignatureDescription];
            v24 = 138543362;
            v25 = v21;
            _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "All cases will be dampened on Vendor builds: %{public}@", &v24, 0xCu);
          }

          v7[2](v7, 1, 6);
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v9 = [v6 objectForKeyedSubscript:@"domain"];
      v13 = [v6 objectForKeyedSubscript:@"type"];
      v14 = [v6 objectForKeyedSubscript:@"subtype"];
      v15 = [v6 objectForKeyedSubscript:@"additional"];
      v18 = [v6 objectForKeyedSubscript:@"detected"];
      if ((![v9 isEqualToString:@"Energy"] || (objc_msgSend(v13, "isEqualToString:", @"CPU") & 1) == 0) && (!objc_msgSend(v9, "isEqualToString:", @"UIPerformance") || (objc_msgSend(v13, "isEqualToString:", @"Responsiveness") & 1) == 0) && (objc_msgSend(v9, "isEqualToString:", @"Performance") & 1) == 0 && (!objc_msgSend(v9, "isEqualToString:", @"Responsiveness") || !objc_msgSend(v13, "isEqualToString:", @"CoreAnimation") || (objc_msgSend(v14, "isEqualToString:", @"Stall Tailspin") & 1) == 0) && (objc_msgSend(v9, "isEqualToString:", @"Cellular") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"Telephony") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"IMSReg") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"IMS Call KPI") & 1) == 0 && (!objc_msgSend(v9, "isEqualToString:", @"Location") || !objc_msgSend(v13, "isEqualToString:", @"GNSS") || !objc_msgSend(v14, "isEqualToString:", @"Emergency") || !objc_msgSend(v15, "isEqualToString:", @"long_EEM") || (objc_msgSend(v18, "isEqualToString:", @"locationd") & 1) == 0) && (!objc_msgSend(v9, "isEqualToString:", @"iCloudDrive") || (objc_msgSend(v13, "isEqualToString:", @"Ciconia") & 1) == 0) && (!objc_msgSend(v9, "isEqualToString:", @"SpotlightIndex") || (objc_msgSend(v13, "isEqualToString:", @"IndexCorruption") & 1) == 0))
      {
        v22 = casemanagementLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v6 logSignatureDescription];
          v24 = 138543362;
          v25 = v23;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEFAULT, "Cases not explicitly permitted will be dampened on Seed builds: %{public}@", &v24, 0xCu);
        }

        v7[2](v7, 1, 7);
        goto LABEL_19;
      }
    }

LABEL_35:
LABEL_36:
    v7[2](v7, 0, 0);
    goto LABEL_37;
  }

LABEL_38:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)caseAllowanceForSignature:(id)a3 timestamp:(id)a4 result:(id)a5
{
  v69[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([v8 count])
    {
      context = objc_autoreleasePoolPush();
      if (!v9)
      {
        v9 = [MEMORY[0x277CBEAA8] date];
      }

      v11 = [v8 objectForKeyedSubscript:@"domain"];
      v12 = [v8 objectForKeyedSubscript:@"type"];
      v13 = [v8 objectForKeyedSubscript:@"subtype"];
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v54 = self;
      v60 = v12;
      v61 = v11;
      v59 = v13;
      v48 = [(DiagnosticCaseManager *)self dailyCountLimitForDomain:v11 type:v12 subtype:v13 domainPredicates:v14];
      [v9 timeIntervalSince1970];
      v16 = v15;
      v51 = v9;
      [v9 timeIntervalSince1970];
      v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v16 - (v17 % 0x15180)];
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timeStamp >= %@", v63];
      v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"remoteTrigger == %@", MEMORY[0x277CBEC28]];
      v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"remoteTrigger == nil"];
      v21 = objc_alloc(MEMORY[0x277CCA920]);
      v56 = v20;
      v57 = v19;
      v69[0] = v19;
      v69[1] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      v23 = [v21 initWithType:2 subpredicates:v22];

      v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseClosureType == %@", &unk_28537A248];
      v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseClosureType == %@", &unk_28537A260];
      v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseClosureType == %@", &unk_28537A278];
      v27 = objc_alloc(MEMORY[0x277CCA920]);
      v52 = v25;
      v53 = v24;
      v68[0] = v24;
      v68[1] = v25;
      v50 = v26;
      v68[2] = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
      v29 = [v27 initWithType:2 subpredicates:v28];

      v49 = v29;
      v55 = v23;
      v58 = v18;
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v18, v23, v29, 0}];
      if ([v14 count])
      {
        [v30 addObjectsFromArray:v14];
      }

      v31 = casemanagementLogHandle();
      v9 = v51;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *v65 = v63;
        *&v65[8] = 2112;
        *&v65[10] = v51;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "Current window is from %@ to %@ (now)", buf, 0x16u);
      }

      v32 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v30];
      v33 = [(ObjectAnalytics *)v54->_caseStorageAnalytics countEntitiesMatching:v32];
      v34 = casemanagementLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        *v65 = v33;
        *&v65[8] = 2112;
        *&v65[10] = v63;
        v66 = 2048;
        v67 = v48;
        _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_INFO, "Accepted %ld case(s) since %@ (limit = %ld).", buf, 0x20u);
      }

      v35 = casemanagementLogHandle();
      v36 = v35;
      if (v48 <= v33)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = 2;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Reached daily limit, no more cases can be accepted.", buf, 2u);
        }

        else
        {
          v42 = 2;
        }
      }

      else
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          *v65 = v33;
          *&v65[8] = 2112;
          *&v65[10] = v63;
          v66 = 2048;
          v67 = v48;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, "Found %ld case(s) after %@ (limit = %ld), admissible.", buf, 0x20u);
        }

        v37 = [(DiagnosticCaseManager *)v54 dampeningFactorForSignature:v8 caseTime:v51 limit:v48 - v33];
        v38 = casemanagementLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v65 = v37;
          *&v65[4] = 2048;
          *&v65[6] = v48 - v33;
          _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_DEFAULT, "Current dampening probability is %u to %ld against.", buf, 0x12u);
        }

        v39 = arc4random_uniform(v37);
        v36 = casemanagementLogHandle();
        v40 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if ((v48 - v33) > v39)
        {
          if (v40)
          {
            v41 = [v8 logSignatureDescription];
            *buf = 67109378;
            *v65 = v39;
            *&v65[4] = 2114;
            *&v65[6] = v41;
            _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Randomizer check passed [%d]. Accepting case: %{public}@", buf, 0x12u);
          }

          v42 = 0;
          goto LABEL_36;
        }

        if (v40)
        {
          v43 = [v8 logSignatureDescription];
          *buf = 67109378;
          *v65 = v39;
          *&v65[4] = 2114;
          *&v65[6] = v43;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Failed to pass randomizer check [%d]. Not accepting this case: %{public}@", buf, 0x12u);
        }

        v42 = 3;
      }

      v44 = [CaseDampeningExceptions allowDampeningExceptionFor:v8];
      v45 = casemanagementLogHandle();
      v36 = v45;
      if (v44)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Dampening Exceptions: Allowing this case is as an exception.", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_INFO, "Dampening Exceptions: This case is not allowed as an exception.", buf, 2u);
        }

        if (![(DiagnosticCaseManager *)v54 isAllowedTransientException:v8])
        {
          v46 = 0;
          goto LABEL_37;
        }

        v36 = casemanagementLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Allowing this case as a transient exception.", buf, 2u);
        }

        v42 = -1;
      }

LABEL_36:

      v46 = 1;
LABEL_37:

      objc_autoreleasePoolPop(context);
      v10[2](v10, v46, v42);
      goto LABEL_38;
    }

    v10[2](v10, 0, 4);
  }

LABEL_38:

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAdmissible:(id)a3 dampenedBy:(signed __int16 *)a4
{
  v6 = a3;
  v7 = v6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (a4)
  {
    *a4 = 4;
  }

  v8 = [v6 signature];

  if (v8)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    v9 = [v7 signature];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__DiagnosticCaseManager_isAdmissible_dampenedBy___block_invoke;
    v21[3] = &unk_278CF0F30;
    v21[5] = buf;
    v21[6] = a4;
    v21[4] = &v26;
    [(DiagnosticCaseManager *)self buildSpecificRestrictionsForSignature:v9 result:v21];

    if (v23[24] == 1)
    {
LABEL_5:
      v10 = *(v27 + 24);
LABEL_25:
      _Block_object_dispose(buf, 8);
      goto LABEL_26;
    }

    if ([(NSMutableArray *)self->_totalCases count])
    {
      if (a4)
      {
        *a4 = 5;
      }

      v12 = casemanagementLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Not allowing a new case while another case is currently active.", v20, 2u);
      }

      v10 = 0;
      goto LABEL_25;
    }

    if (a4)
    {
      *a4 = 0;
    }

    if ([(DiagnosticCaseManager *)self disableDampening])
    {
      v13 = casemanagementLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v14 = "Dampening is disabled, allowing case.";
LABEL_23:
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, v14, v20, 2u);
      }
    }

    else
    {
      if (![v7 isRemoteTrigger])
      {
        v16 = [v7 signature];
        v17 = [v7 caseStorage];
        v18 = [v17 timeStamp];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__DiagnosticCaseManager_isAdmissible_dampenedBy___block_invoke_187;
        v19[3] = &unk_278CF0F58;
        v19[4] = &v26;
        v19[5] = a4;
        [(DiagnosticCaseManager *)self caseAllowanceForSignature:v16 timestamp:v18 result:v19];

        goto LABEL_5;
      }

      v13 = casemanagementLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v14 = "Allowing as a remotely triggered case.";
        goto LABEL_23;
      }
    }

    v10 = 1;
    goto LABEL_25;
  }

  v11 = casemanagementLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Not allowing case due to missing signature.", buf, 2u);
  }

  v10 = 0;
LABEL_26:
  _Block_object_dispose(&v26, 8);

  return v10 & 1;
}

void __49__DiagnosticCaseManager_isAdmissible_dampenedBy___block_invoke(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1[6];
    if (v4)
    {
      *v4 = a3;
    }

    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = 1;
    v5 = casemanagementLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [DiagnosticCase descriptionForDampeningType:a3];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Case denied by restriction, dampening: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__DiagnosticCaseManager_isAdmissible_dampenedBy___block_invoke_187(uint64_t result, char a2, __int16 a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (id)casesDiagnosedInTheLast:(double)a3 from:(double)a4 matchingDomain:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(NSMutableArray *)self->_totalCases reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = a4 - a3;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        [v15 caseOpenedTime];
        if (v16 < a4)
        {
          [v15 caseOpenedTime];
          if (v17 > v13 && [v15 closureType] != 3)
          {
            if ([v15 closureType])
            {
              if (!v8 || ([v15 signature], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v8, "isEqualToString:", v19), v19, v18, v20))
              {
                [v23 addObject:v15];
              }
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)requestGroupCaseIdentifierForSignature:(id)a3 reply:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 count])
    {
      *buf = 0;
      v29 = buf;
      v30 = 0x2020000000;
      v31 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 4;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__DiagnosticCaseManager_requestGroupCaseIdentifierForSignature_reply___block_invoke;
      v23[3] = &unk_278CF0F80;
      v23[4] = &v24;
      v23[5] = buf;
      [(DiagnosticCaseManager *)self buildSpecificRestrictionsForSignature:v6 result:v23];
      if (v29[24] == 1)
      {
        (*(v7 + 2))(v7, 0, *(v25 + 12), 0);
      }

      else
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        if ([(DiagnosticCaseManager *)self disableDampening])
        {
          *(v20 + 24) = 1;
          *(v25 + 12) = 0;
          v9 = casemanagementLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v32 = 0;
            _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "groupCaseIdentifierForSignature: Dampening is disabled, allowing case.", v32, 2u);
          }
        }

        else
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __70__DiagnosticCaseManager_requestGroupCaseIdentifierForSignature_reply___block_invoke_188;
          v18[3] = &unk_278CF0F80;
          v18[4] = &v19;
          v18[5] = &v24;
          [(DiagnosticCaseManager *)self caseAllowanceForSignature:v6 timestamp:0 result:v18];
        }

        if (*(v20 + 24) == 1)
        {
          v10 = [MEMORY[0x277CCAD78] UUID];
          v11 = [v10 UUIDString];
          v12 = [MEMORY[0x277CCAD78] UUID];
          v13 = [v12 UUIDString];
          v14 = [v11 stringByAppendingFormat:@"_%@", v13];

          v15 = casemanagementLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v32 = 138543362;
            v33 = v14;
            _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "groupCaseIdentifierForSignature: Generating group identifier: %{public}@", v32, 0xCu);
          }

          v16 = *(v20 + 24);
        }

        else
        {
          v16 = 0;
          v14 = 0;
        }

        (*(v7 + 2))(v7, v16 & 1, *(v25 + 12), v14);

        _Block_object_dispose(&v19, 8);
      }

      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v8 = casemanagementLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "groupCaseIdentifierForSignature: Denying due to missing signature.", buf, 2u);
      }

      (*(v7 + 2))(v7, 0, 4, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __70__DiagnosticCaseManager_requestGroupCaseIdentifierForSignature_reply___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = casemanagementLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [DiagnosticCase descriptionForDampeningType:a3];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "groupCaseIdentifierForSignature: case denied by restriction, dampening: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __70__DiagnosticCaseManager_requestGroupCaseIdentifierForSignature_reply___block_invoke_188(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
  v5 = casemanagementLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v6 = "allowed";
    }

    else
    {
      v6 = "denied";
    }

    v7 = [DiagnosticCase descriptionForDampeningType:a3];
    v9 = 136315394;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "groupCaseIdentifierForSignature: case: %s, dampening: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)createDiagnosticCaseWithSignature:(id)a3 flags:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [[DiagnosticCase alloc] initWithSignature:v15 flags:a4 events:v14 payload:v13 actions:v12 manager:self];

  v38 = 0;
  LODWORD(v14) = [(DiagnosticCaseManager *)self isAdmissible:v16 dampenedBy:&v38];
  v17 = casemanagementLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v18)
    {
      v19 = [(DiagnosticCase *)v16 caseId];
      v20 = [v19 UUIDString];
      v21 = [(DiagnosticCase *)v16 signature];
      v22 = [v21 logSignatureDescription];
      *buf = 138543618;
      v40 = v20;
      v41 = 2114;
      v42 = v22;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Accepting case id %{public}@ with signature %{public}@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_activeCases addObject:v16];
    if (v38 == -1)
    {
      [(DiagnosticCase *)v16 setDampeningType:0xFFFFFFFFLL];
    }

    [(DiagnosticCase *)v16 setClosureType:0];
    [(DiagnosticCase *)v16 setCaseState:1];
    [(DiagnosticCaseManager *)self promoteTemporaryCase:v16];
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v18)
  {
    v23 = [(DiagnosticCase *)v16 caseId];
    v24 = [v23 UUIDString];
    v25 = [(DiagnosticCase *)v16 signature];
    v26 = [v25 logSignatureDescription];
    v27 = [DiagnosticCase descriptionForDampeningType:v38];
    *buf = 138543874;
    v40 = v24;
    v41 = 2114;
    v42 = v26;
    v43 = 2114;
    v44 = v27;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Rejecting case id %{public}@ with signature %{public}@ (%{public}@)", buf, 0x20u);
  }

  [(DiagnosticCase *)v16 setDampeningType:v38];
  [(DiagnosticCase *)v16 setClosureType:3];
  v28 = [(DiagnosticCaseManager *)self queue];

  if (v28)
  {
    v29 = [(DiagnosticCaseManager *)self queue];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __88__DiagnosticCaseManager_createDiagnosticCaseWithSignature_flags_events_payload_actions___block_invoke;
    v36 = &unk_278CEFE88;
    v37 = v16;
    dispatch_async(v29, &v33);

    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v32 = casemanagementLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v32, OS_LOG_TYPE_DEFAULT, "No queue assigned! Finalizing case immediately.", buf, 2u);
  }

  [(DiagnosticCase *)v16 setCaseState:3];
  if (v16)
  {
LABEL_14:
    [(NSMutableArray *)self->_totalCases addObject:v16, v33, v34, v35, v36];
  }

LABEL_15:
  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)diagnosticCaseWithId:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_totalCases;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = [v10 caseId];
      v12 = [v11 isEqual:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = casemanagementLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v4 UUIDString];
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Found case with ID %@{public} in totalCases", buf, 0xCu);
    }

    v15 = v10;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:
  }

  v16 = casemanagementLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v4 UUIDString];
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Looking up case with ID %@{public} from persistent store", buf, 0xCu);
  }

  v15 = [[DiagnosticCase alloc] initWithCaseId:v4 manager:self];
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_updateCaseStatisticsWithCase:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 caseStorage];
  v6 = [v5 caseClosureType];

  if (v6 != 4)
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 caseId];
      v9 = [v8 UUIDString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Updating statistics for case %@", &buf, 0xCu);
    }

    [(NSMutableArray *)self->_pendingStatisticsUpdateCases addObject:v4];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__4;
  v50 = __Block_byref_object_dispose__4;
  v51 = 0;
  totalCases = self->_totalCases;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__DiagnosticCaseManager__updateCaseStatisticsWithCase___block_invoke;
  v41[3] = &unk_278CF0FA8;
  v41[4] = self;
  v11 = v4;
  v42 = v11;
  p_buf = &buf;
  [(NSMutableArray *)totalCases enumerateObjectsUsingBlock:v41];
  if (*(*(&buf + 1) + 40))
  {
    v12 = casemanagementLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(&buf + 1) + 40);
      v14 = [MEMORY[0x277CBEAF8] currentLocale];
      v15 = [v13 descriptionWithLocale:v14];
      *v45 = 138412290;
      v46 = v15;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Oldest unclosed case was created at %@", v45, 0xCu);
    }
  }

  else
  {
    v16 = casemanagementLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v45 = 0;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "No unclosed case, using the current time.", v45, 2u);
    }

    v17 = [MEMORY[0x277CBEAA8] date];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v17;
  }

  v18 = [MEMORY[0x277CBEB18] array];
  pendingStatisticsUpdateCases = self->_pendingStatisticsUpdateCases;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__DiagnosticCaseManager__updateCaseStatisticsWithCase___block_invoke_196;
  v37[3] = &unk_278CF0FD0;
  v37[4] = self;
  v29 = v11;
  v38 = v29;
  v40 = &buf;
  v32 = v18;
  v39 = v32;
  [(NSMutableArray *)pendingStatisticsUpdateCases enumerateObjectsUsingBlock:v37];
  v31 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"caseOpenedTime" ascending:1];
  v30 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  [v32 sortedArrayUsingDescriptors:?];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v20 = v34 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v21)
  {
    v22 = *v34;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v33 + 1) + 8 * i);
        v25 = casemanagementLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v24 caseId];
          v27 = [v26 UUIDString];
          *v45 = 138412290;
          v46 = v27;
          _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEBUG, "Updating statistics for case %@.", v45, 0xCu);
        }

        [(DiagnosticStatisticsManager *)self->_statsManager updateCaseStatisticsWith:v24];
      }

      v21 = [v20 countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v21);
  }

  [(NSMutableArray *)self->_pendingStatisticsUpdateCases removeObjectsInArray:v20];
  [v32 removeAllObjects];

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __55__DiagnosticCaseManager__updateCaseStatisticsWithCase___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) statisticsRowForDiagnosticCase:*(a1 + 40) matchesWith:?])
  {
    if ([v10 caseState] != 6)
    {
      if (!*(*(*(a1 + 48) + 8) + 40) || ([v10 caseStorage], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeStamp"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "compare:", *(*(*(a1 + 48) + 8) + 40)), v4, v3, v5 == -1))
      {
        v6 = [v10 caseStorage];
        v7 = [v6 timeStamp];
        v8 = *(*(a1 + 48) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }
    }
  }
}

void __55__DiagnosticCaseManager__updateCaseStatisticsWithCase___block_invoke_196(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) statisticsRowForDiagnosticCase:v3 matchesWith:*(a1 + 40)] && (objc_msgSend(v3, "caseStorage"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeStamp"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "compare:", *(*(*(a1 + 56) + 8) + 40)), v5, v4, v6 == -1))
  {
    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v3 caseId];
      v17 = [v16 UUIDString];
      v18 = [v3 caseStorage];
      v19 = [v18 timeStamp];
      v20 = [MEMORY[0x277CBEAF8] currentLocale];
      v21 = [v19 descriptionWithLocale:v20];
      v22 = 138412546;
      v23 = v17;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Candidate case %@ was created at %@, can update its statistics now", &v22, 0x16u);
    }

    [*(a1 + 48) addObject:v3];
  }

  else
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 caseId];
      v9 = [v8 UUIDString];
      v10 = [v3 caseStorage];
      v11 = [v10 timeStamp];
      v12 = [MEMORY[0x277CBEAF8] currentLocale];
      v13 = [v11 descriptionWithLocale:v12];
      v22 = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Candidate case %@ was created at %@, still blocked", &v22, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int)addToCaseWithId:(id)a3 events:(id)a4 payload:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ([v9 count] || objc_msgSend(v10, "count")))
  {
    v11 = 40;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_activeCases;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v23 = v10;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 caseId];
          v19 = [v18 isEqual:v8];

          if (v19)
          {
            if ([v9 count])
            {
              [v17 addEvents:v9];
            }

            v10 = v23;
            if ([v23 count])
            {
              [v17 addPayload:v23];
            }

            v11 = 0;
            goto LABEL_21;
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v10 = v23;
    }

LABEL_21:
  }

  else
  {
    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "invalid parameters: event or payload must not be empty (events: %@, payload: %@)", buf, 0x16u);
    }

    v11 = 20;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)addSignatureContentToCaseWithId:(id)a3 key:(id)a4 content:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v9 length] && objc_msgSend(v10, "length"))
  {
    v11 = 40;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = self->_activeCases;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v27 = v10;
      v15 = *v29;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v17 caseId];
          v19 = [v18 isEqual:v8];

          if (v19)
          {
            v21 = [v17 signature];
            v22 = [v21 objectForKey:v9];

            v10 = v27;
            if (v22)
            {
              [v22 stringByAppendingString:v27];
            }

            else
            {
              [MEMORY[0x277CCACA8] stringWithString:v27];
            }
            v23 = ;
            if (v23)
            {
              v24 = [v17 signature];
              [v24 setObject:v23 forKey:v9];
            }

            v11 = 0;

            goto LABEL_22;
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v10 = v27;
    }

LABEL_22:
  }

  else
  {
    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v9;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "invalid parameters: empty or missing key/content (key: %@, content: %@)", buf, 0x16u);
    }

    v11 = 20;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)cancelCaseWithId:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = 40;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_activeCases;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 caseId];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v14 = [v11 events];
            [v14 removeAllObjects];

            v15 = [v11 payloads];
            [v15 removeAllObjects];

            [v11 setClosureType:4];
            [v11 finishCase];
            [v11 setCaseState:6];
            v5 = 0;
            goto LABEL_12;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v16 = casemanagementLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Missing Case ID", buf, 2u);
    }

    v5 = 20;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setUpGeneralCaseReportGenerators
{
  v3 = [(DiagnosticCaseManager *)self configManager];
  v4 = [v3 autoBugCaptureRegularPayloads];

  if (v4)
  {
    v5 = [[GetNetworkInfoReportGenerator alloc] initWithQueue:self->_queue];
    [(NSMutableDictionary *)self->_reportGenerators setObject:v5 forKeyedSubscript:@"GetNetworkInfoReporter"];

    v6 = [[FetchCrashesSpinsEtcFilesGenerator alloc] initWithQueue:self->_queue];
    [(NSMutableDictionary *)self->_reportGenerators setObject:v6 forKeyedSubscript:@"CrashesAndSpinsReporter"];

    v7 = [[FetchLogArchivesReportGenerator alloc] initWithQueue:self->_queue];
    [(NSMutableDictionary *)self->_reportGenerators setObject:v7 forKeyedSubscript:@"FetchLogArchiveReporter"];
  }
}

- (void)reportGeneratorEnded:(id)a3 reportInfo:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 diagCase];
  [v10 setDelegate:0];
  [v10 setDiagCase:0];
  [(NSMutableArray *)self->_requestedReportGenerators removeObject:v10];
  [v11 reportGeneratorEnded:v10 reportInfo:v9 error:v8 isFinalReportGenerator:{-[NSMutableArray count](self->_requestedReportGenerators, "count") == 0}];

  if ([(NSMutableArray *)self->_requestedReportGenerators count])
  {
    [(DiagnosticCaseManager *)self startCollectingNextReportForDiagnosticCase:v11];
  }

  else
  {
    v12 = casemanagementLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "No more Requested Report Generators", v13, 2u);
    }
  }
}

- (BOOL)hasOpenCases
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  totalCases = self->_totalCases;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__DiagnosticCaseManager_hasOpenCases__block_invoke;
  v5[3] = &unk_278CF0700;
  v5[4] = &v6;
  [(NSMutableArray *)totalCases enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __37__DiagnosticCaseManager_hasOpenCases__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 caseStorage];
  v7 = [v6 caseState];

  if (v7 != 6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)addTransactionForCaseID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    if (!self->_activeTransactions)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      activeTransactions = self->_activeTransactions;
      self->_activeTransactions = v6;
    }

    v8 = casemanagementLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Taking transaction for case identifier: %@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.autobugcapture.case.%@", v5];
    [v9 UTF8String];
    v10 = os_transaction_create();
    [(NSMutableDictionary *)self->_activeTransactions setObject:v10 forKeyedSubscript:v5];
    v11 = casemanagementLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(NSMutableDictionary *)self->_activeTransactions count];
      *buf = 134217984;
      v15 = v12;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Currently holding %ld transaction(s)", buf, 0xCu);
    }
  }

  else
  {
    v9 = casemanagementLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Will not add a transaction for an invalid case identifier: %@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeTransactionForCaseID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    p_super = casemanagementLogHandle();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_241804000, p_super, OS_LOG_TYPE_ERROR, "Unable to remove a transaction for an invalid case identifier: %@", &v11, 0xCu);
    }

    goto LABEL_11;
  }

  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Releasing transaction for case identifier: %@", &v11, 0xCu);
  }

  [(NSMutableDictionary *)self->_activeTransactions setObject:0 forKeyedSubscript:v5];
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(NSMutableDictionary *)self->_activeTransactions count];
    v11 = 134217984;
    v12 = v8;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Currently holding %ld transaction(s)", &v11, 0xCu);
  }

  if (![(NSMutableDictionary *)self->_activeTransactions count])
  {
    p_super = &self->_activeTransactions->super.super;
    self->_activeTransactions = 0;
LABEL_11:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unsigned)avgCasesPerDay
{
  if (self->_avgCasesPerDay)
  {
    return self->_avgCasesPerDay;
  }

  else
  {
    return 20;
  }
}

- (id)lookUpDiagnosticCaseStorageForUUID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 UUIDString];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v6 = [(DiagnosticCaseStorageAnalytics *)self->_caseStorageAnalytics diagnosticCaseStorageWithId:v4];
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 count];
    *buf = 134218242;
    v23 = v8;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Found %ld persisted case(s) for %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DiagnosticCaseManager_lookUpDiagnosticCaseStorageForUUID___block_invoke;
  v13[3] = &unk_278CF0FF8;
  v9 = v5;
  v14 = v9;
  v15 = &v16;
  [v6 enumerateObjectsUsingBlock:v13];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __60__DiagnosticCaseManager_lookUpDiagnosticCaseStorageForUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 caseID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)caseStorageForCaseID:(id)a3
{
  v4 = a3;
  v5 = [(DiagnosticCaseManager *)self lookUpDiagnosticCaseStorageForUUID:v4];
  if (!v5)
  {
    v5 = [(DiagnosticCaseManager *)self createTemporaryDiagnosticCaseStorageForUUID:v4];
  }

  return v5;
}

- (BOOL)closeCase:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 caseStorage];
  v6 = [v5 caseClosedTime];

  if (!v6)
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 caseStorage];
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Encountered a case with a nil caseClosedTime! (caseStorage: %@)", buf, 0xCu);
    }
  }

  queue = self->_queue;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __35__DiagnosticCaseManager_closeCase___block_invoke;
  v21 = &unk_278CF04F8;
  v22 = self;
  v10 = v4;
  v23 = v10;
  dispatch_async(queue, &v18);
  [(NSMutableArray *)self->_activeCases removeObject:v10, v18, v19, v20, v21, v22];
  [(DiagnosticCaseManager *)self _updateCaseStatisticsWithCase:v10];
  v11 = [v10 closureType];
  if (v11 == 4)
  {
    v12 = [v10 caseId];
    [(DiagnosticCaseManager *)self removeCaseStorageWithID:v12];

    [(NSMutableArray *)self->_totalCases removeObject:v10];
  }

  else
  {
    if ([v10 dampeningType] == -1)
    {
      v13 = [v10 signature];
      [v10 caseOpenedTime];
      [(DiagnosticCaseManager *)self removeTransientCasesWithSignature:v13 beforeTime:?];
    }

    if ([v10 dampeningType] <= 0)
    {
      self->_shouldPurgeStorageAfterSave = 1;
      [(DiagnosticCaseManager *)self saveAllCases];
      v14 = [v10 caseId];
      v15 = [v14 UUIDString];
      [(DiagnosticCaseManager *)self removeTransactionForCaseID:v15];
    }

    else
    {
      [(DiagnosticCaseManager *)self removeClosedCasesFromTotalCases];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11 == 4;
}

- (void)postProcessActionsForClosedCase:(id)a3
{
  v7 = a3;
  if ([v7 dampeningType] >= 1)
  {
    v4 = [v7 signature];
    v5 = [v4 objectForKeyedSubscript:@"domain"];
    v6 = [v5 isEqualToString:@"UIPerformance"];

    if (v6)
    {
      [(DiagnosticLiaison *)self->_liaison checkForUIImpactScenarioForCase:v7];
    }
  }
}

- (unint64_t)collectDiagnosticExtensionLogsWithParameters:(id)a3 options:(id)a4 diagCase:(id)a5 reply:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = casemanagementLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Ready to collect from diagnostic extensions with parameters: %@", buf, 0xCu);
  }

  v15 = [(DiagnosticCaseManager *)self diagnosticsController];
  v16 = [(DiagnosticCaseManager *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__DiagnosticCaseManager_collectDiagnosticExtensionLogsWithParameters_options_diagCase_reply___block_invoke;
  v21[3] = &unk_278CF1020;
  v22 = v11;
  v17 = v11;
  v18 = [v15 collectDiagnosticExtensionFilesForDiagnosticCase:v12 parameters:v10 options:v13 queue:v16 reply:v21];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __93__DiagnosticCaseManager_collectDiagnosticExtensionLogsWithParameters_options_diagCase_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = casemanagementLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Received %ld results from Diagnostic Extensions", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordDiagnosticCaseSummaryForCase:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = casemanagementLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 caseId];
    v7 = [v6 UUIDString];
    v8 = [v4 signature];
    v9 = [v8 logSignatureDescription];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Saving summary for case id %{public}@ with signature %{public}@", &v11, 0x16u);
  }

  [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics insertEntityForDiagnosticCase:v4];
  [(DiagnosticCaseManager *)self saveAllCases];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestReportGenerator:(id)a3 options:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_reportGenerators objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    [v8 setDefaults];
    [v7 count];
    v10 = [v6 isEqualToString:@"logarchive"];
    requestedReportGenerators = self->_requestedReportGenerators;
    if (v10)
    {
      [(NSMutableArray *)requestedReportGenerators addObject:v9];
    }

    else
    {
      [(NSMutableArray *)requestedReportGenerators insertObject:v9 atIndex:0];
    }
  }

  else if (([v6 isEqualToString:@"diagext"] & 1) == 0)
  {
    v12 = casemanagementLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Could not find requested report generator named %@", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

- (void)startCollectingNextReportForDiagnosticCase:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_requestedReportGenerators count])
  {
    v5 = [(NSMutableArray *)self->_requestedReportGenerators firstObject];
    [v5 setDelegate:self];
    v6 = casemanagementLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "About to generate report by %@", &v12, 0xCu);
    }

    v9 = [v4 caseId];
    v10 = [v9 UUIDString];
    [v5 generateReportForCase:v4 reportName:v10];
  }

  else
  {
    v5 = casemanagementLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "No reports requested, but we were asked to collect reports...?", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendReportsForCase:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_reportOutlets count]!= 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = self;
  v6 = self->_reportOutlets;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * i) publishReportForCase:v4 options:0];
        v12 = casemanagementLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          if (v11)
          {
            v13 = "Successfully published";
          }

          else
          {
            v13 = "Failed to publish";
          }

          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 136315394;
          v24 = v13;
          v25 = 2112;
          v26 = v15;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "%s report to %@", buf, 0x16u);
        }

        v5 &= v11;
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)v18->_activeCases removeObject:v4];
  v16 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)statisticsRowForDiagnosticCase:(id)a3 matchesWith:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 caseStorage];
  v8 = [v7 caseDomain];
  if (v8)
  {

LABEL_4:
    v11 = [v5 caseStorage];
    v12 = [v11 caseDomain];
    v13 = [v6 caseStorage];
    v14 = [v13 caseDomain];
    v15 = [v12 isEqualToString:v14];

    goto LABEL_5;
  }

  v9 = [v6 caseStorage];
  v10 = [v9 caseDomain];

  if (v10)
  {
    goto LABEL_4;
  }

  v15 = 1;
LABEL_5:
  v16 = [v5 caseStorage];
  v17 = [v16 caseType];
  if (v17)
  {
  }

  else
  {
    v18 = [v6 caseStorage];
    v19 = [v18 caseType];

    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v20 = [v5 caseStorage];
  v21 = [v20 caseType];
  v22 = [v6 caseStorage];
  v23 = [v22 caseType];
  v15 &= [v21 isEqualToString:v23];

LABEL_9:
  v24 = [v5 caseStorage];
  v25 = [v24 caseSubtype];
  if (v25)
  {
  }

  else
  {
    v26 = [v6 caseStorage];
    v27 = [v26 caseSubtype];

    if (!v27)
    {
      goto LABEL_13;
    }
  }

  v28 = [v5 caseStorage];
  v29 = [v28 caseSubtype];
  v30 = [v6 caseStorage];
  v31 = [v30 caseSubtype];
  v15 &= [v29 isEqualToString:v31];

LABEL_13:
  v32 = [v5 caseStorage];
  v33 = [v32 caseSubtypeContext];
  if (v33)
  {
  }

  else
  {
    v34 = [v6 caseStorage];
    v35 = [v34 caseSubtypeContext];

    if (!v35)
    {
      goto LABEL_17;
    }
  }

  v36 = [v5 caseStorage];
  v37 = [v36 caseSubtypeContext];
  v38 = [v6 caseStorage];
  v39 = [v38 caseSubtypeContext];
  v15 &= [v37 isEqualToString:v39];

LABEL_17:
  v40 = [v5 caseStorage];
  v41 = [v40 caseDetectedProcess];
  if (v41)
  {

LABEL_20:
    v44 = [v5 caseStorage];
    v45 = [v44 caseDetectedProcess];
    v46 = [v6 caseStorage];
    v47 = [v46 caseDetectedProcess];
    v15 &= [v45 isEqualToString:v47];

    goto LABEL_21;
  }

  v42 = [v6 caseStorage];
  v43 = [v42 caseDetectedProcess];

  if (v43)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v15;
}

uint64_t __83__DiagnosticCaseManager_diagnosticCaseDictionariesFromIdentifier_withEvents_count___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [DiagnosticCase generateCaseSummaryFromCaseStorageDictionary:v5];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)getHistoricalDiagnosicCaseDictionaryFromIdentifier:(id)a3 withEvents:(BOOL)a4 count:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__DiagnosticCaseManager_getHistoricalDiagnosicCaseDictionaryFromIdentifier_withEvents_count_reply___block_invoke;
  block[3] = &unk_278CF1070;
  block[4] = self;
  v16 = v10;
  v19 = a4;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __99__DiagnosticCaseManager_getHistoricalDiagnosicCaseDictionaryFromIdentifier_withEvents_count_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) diagnosticCaseDictionariesFromIdentifier:*(a1 + 40) withEvents:*(a1 + 64) count:*(a1 + 56)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)listCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DiagnosticCaseManager_listCaseSummariesWithIdentifiers_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __64__DiagnosticCaseManager_listCaseSummariesWithIdentifiers_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) caseSummariesWithIdentifiers:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)caseSummariesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_autoreleasePoolPush();
  v7 = [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics fetchCaseSummariesWithIdentifiers:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__DiagnosticCaseManager_caseSummariesWithIdentifiers___block_invoke;
  v10[3] = &unk_278CF1048;
  v8 = v5;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  objc_autoreleasePoolPop(v6);

  return v8;
}

void __54__DiagnosticCaseManager_caseSummariesWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [DiagnosticCaseSummaryAnalytics listSummaryItemFromCaseSummaryDictionary:v5];
    [v3 addObject:v4];
  }
}

- (void)listCaseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__DiagnosticCaseManager_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke;
  block[3] = &unk_278CF1098;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __76__DiagnosticCaseManager_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) caseSummariesOfType:*(a1 + 40) fromIdentifier:*(a1 + 48) count:*(a1 + 64)];
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)caseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a5 - 21 <= 0xFFFFFFFFFFFFFFEBLL)
  {
    v11 = casemanagementLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20 = 20;
      v21 = 2048;
      v22 = 20;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Constraining cases listing to a max of %d (was requested %ld)", buf, 0x12u);
    }

    a5 = 20;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics fetchCaseSummariesOfType:v8 fromIdentifier:v9 count:a5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__DiagnosticCaseManager_caseSummariesOfType_fromIdentifier_count___block_invoke;
  v17[3] = &unk_278CF1048;
  v14 = v10;
  v18 = v14;
  [v13 enumerateObjectsUsingBlock:v17];

  objc_autoreleasePoolPop(v12);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __66__DiagnosticCaseManager_caseSummariesOfType_fromIdentifier_count___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [DiagnosticCaseSummaryAnalytics listSummaryItemFromCaseSummaryDictionary:v5];
    [v3 addObject:v4];
  }
}

- (id)_updateSignatureWithBuildVariantInfoAndFlags:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 mutableCopy];
  v5 = +[SystemProperties sharedInstance];
  v6 = [v5 buildVariant];
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "This case's buildVariant is %@", &v13, 0xCu);
  }

  [v4 setObject:v6 forKey:@"build_variant"];
  if ([v5 internalBuild])
  {
    v8 = [(DiagnosticCaseManager *)self configManager];
    v9 = [v8 isDeviceUnderTest];

    if (v9)
    {
      v10 = casemanagementLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Flagging this case as generated from an ABC DUT device.", &v13, 2u);
      }

      [v4 setObject:@"isABCDUT" forKey:@"internal_flags"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_processRemoteIDSTriggers:(id)a3 validFor:(double)a4 signature:(id)a5 sessionID:(id)a6 reply:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v13 objectForKeyedSubscript:@"groupID"];
  v17 = [v16 length];
  v18 = casemanagementLogHandle();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v33 = v14;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEBUG, "Ready to trigger a remote case for session %{public}@", buf, 0xCu);
    }

    if (a4 < 1.0)
    {
      a4 = 3600.0;
    }

    v20 = [(DiagnosticCaseManager *)self liaison];
    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke_215;
    v26[3] = &unk_278CF10E8;
    v22 = v27;
    v23 = v12;
    v27[0] = v23;
    v27[1] = self;
    v28 = v14;
    v29 = v15;
    [v20 remotelyTriggerSessionWithSignature:v13 forDestinations:v23 groupIdentifier:v16 validFor:queue queue:v26 reply:a4];

    goto LABEL_11;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Remote case trigger requires a group identifier.", buf, 2u);
  }

  if (v15)
  {
    v24 = [(DiagnosticCaseManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke;
    block[3] = &unk_278CF0A58;
    v22 = &v31;
    v31 = v15;
    dispatch_async(v24, block);

LABEL_11:
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke(uint64_t a1)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"name";
  v4[1] = @"result";
  v5[0] = @"IDSRemoteTrigger";
  v5[1] = @"failure";
  v4[2] = @"status";
  v5[2] = @"Cancelled";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  (*(*(a1 + 32) + 16))();

  v3 = *MEMORY[0x277D85DE8];
}

void __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke_215(id *a1, int a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"errorObj"];
  v7 = casemanagementLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [a1[4] count];
    *buf = 134217984;
    v31 = v9;
    v10 = "Remote case trigger for %ld devices was successful";
    v11 = v7;
    v12 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = [a1[4] count];
    *buf = 134218242;
    v31 = v13;
    v32 = 2112;
    v33 = v6;
    v10 = "Remote case trigger for %ld devices was NOT successful (error: %@)";
    v11 = v7;
    v12 = 22;
  }

  _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = casemanagementLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v5;
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Liaison result was: %@", buf, 0xCu);
  }

  v15 = [v5 objectForKeyedSubscript:@"IDSMessageIdentifier"];
  if ([v15 length])
  {
    v16 = *(a1[5] + 15);
    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
      v18 = a1[5];
      v19 = v18[15];
      v18[15] = v17;

      v16 = *(a1[5] + 15);
    }

    [v16 setObject:a1[6] forKeyedSubscript:v15];
  }

  v20 = a1[5];
  v21 = a1[6];
  v22 = [v20 queue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke_216;
  v28[3] = &unk_278CF10C0;
  v29 = a1[6];
  [v20 addToSession:v21 event:v5 payload:0 queue:v22 reply:v28];

  if (a1[7])
  {
    v23 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke_219;
    block[3] = &unk_278CEFF50;
    v27 = a1[7];
    v26 = v5;
    dispatch_async(v23, block);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke_216(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"success"];
  v5 = [v3 objectForKeyedSubscript:@"reason"];

  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    if ([v4 BOOLValue])
    {
      v8 = "was successful";
    }

    else
    {
      v8 = "failed";
    }

    v10 = 138543874;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    v14 = 2048;
    v15 = [v5 integerValue];
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Adding remote trigger event status to session %{public}@ %s. (Reason code %ld)", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processReportActions:(id)a3 session:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v43 = a4;
  v6 = [v5 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
    v8 = casemanagementLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "disabled";
      if (v7)
      {
        v9 = "enabled";
      }

      *buf = 136315138;
      v45 = v9;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "DiagnosticExtensions action is %s by client request", buf, 0xCu);
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v8 = casemanagementLogHandle();
    v7 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v45 = "enabled";
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "DiagnosticExtensions action is %s by client request with options %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (v6)
  {
    v8 = casemanagementLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412546;
      v45 = v6;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Found unexpected object %@ (class %@) for DiagnosticExtensions action parameter. Enabled by default", buf, 0x16u);
    }

    v10 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  v10 = 0;
  v7 = 1;
LABEL_15:
  v13 = [v5 objectForKeyedSubscript:@"logarchive"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 BOOLValue];
    v15 = casemanagementLogHandle();
    v41 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = "disabled";
      if (v14)
      {
        v16 = "enabled";
      }

      *buf = 136315138;
      v45 = v16;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Log archive collection is %s by client request", buf, 0xCu);
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v13)
  {
    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412546;
      v45 = v13;
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Found unexpected object %@ (class %@) for log archive action parameter. Enabled by default", buf, 0x16u);
    }

    v41 = 1;
    goto LABEL_24;
  }

  v41 = 1;
LABEL_25:
  v19 = [v5 objectForKeyedSubscript:@"cnslogs"];
  objc_opt_class();
  v42 = v13;
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 BOOLValue];
    v21 = casemanagementLogHandle();
    v22 = v5;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = "disabled";
      if (v7)
      {
        v23 = "enabled";
      }

      *buf = 136315138;
      v45 = v23;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Crashes and Spins log collection is %s by client request", buf, 0xCu);
    }

LABEL_34:
    v26 = v7;

    goto LABEL_35;
  }

  if (v19)
  {
    v21 = casemanagementLogHandle();
    v22 = v5;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138412546;
      v45 = v19;
      v46 = 2112;
      v47 = v25;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "Found unexpected object %@ (class %@) for crashes and spin logs action parameter. Enabled by default", buf, 0x16u);
    }

    v20 = 1;
    goto LABEL_34;
  }

  v22 = v5;
  v26 = v7;
  v20 = 1;
LABEL_35:
  v27 = v6;
  v28 = [v22 objectForKeyedSubscript:@"gni"];
  objc_opt_class();
  v29 = v10;
  if (objc_opt_isKindOfClass())
  {
    v30 = [v28 BOOLValue];
    v31 = casemanagementLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = "disabled";
      if (v26)
      {
        v32 = "enabled";
      }

      *buf = 136315138;
      v45 = v32;
      _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_INFO, "get-network-info log collection action is %s by client request", buf, 0xCu);
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v28)
  {
    v31 = casemanagementLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138412546;
      v45 = v28;
      v46 = 2112;
      v47 = v34;
      _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_ERROR, "Found unexpected object %@ (class %@) for get-network-info action parameter. Enabled by default", buf, 0x16u);
    }

    v30 = 1;
    goto LABEL_44;
  }

  v30 = 1;
LABEL_45:
  v35 = +[SystemProperties sharedInstance];
  v36 = [v35 customerSeedBuild];

  v37 = v29;
  v38 = v41;
  if (v36)
  {
    v39 = casemanagementLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_INFO, "Customer Seed installs will only enable DiagnosticExtension collection", buf, 2u);
    }

    v20 = 0;
    v30 = 0;
    v38 = 0;
  }

  if (v26)
  {
    [v43 addRequiredAction:@"diagext" option:v37 attachmentType:@"diagext" pattern:0];
    if (!v38)
    {
LABEL_51:
      if (!v20)
      {
        goto LABEL_52;
      }

LABEL_57:
      [v43 addRequiredAction:@"CrashesAndSpinsReporter" option:0 attachmentType:@"cnslogs" pattern:@"crashes_and_spins"];
      if (!v30)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else if (!v38)
  {
    goto LABEL_51;
  }

  [v43 addRequiredAction:@"FetchLogArchiveReporter" option:0 attachmentType:@"logarchive" pattern:@"logs-"];
  if (v20)
  {
    goto LABEL_57;
  }

LABEL_52:
  if (v30)
  {
LABEL_53:
    [v43 addRequiredAction:@"GetNetworkInfoReporter" option:0 attachmentType:@"gni" pattern:@"get_network_info"];
  }

LABEL_54:

  v40 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_processProbeActions:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [v7 caseId];

  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__DiagnosticCaseManager__processProbeActions_session___block_invoke;
    v12[3] = &unk_278CF1110;
    v12[4] = self;
    v13 = v7;
    v14 = &v16;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v17[3];
  }

  else
  {
    v10 = casemanagementLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Cannot process probe actions for a session with no identifier.", buf, 2u);
    }

    v9 = v17[3];
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __54__DiagnosticCaseManager__processProbeActions_session___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = casemanagementLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v9;
    v10 = "Found unexpected object %@ of class %@ as key in actions dictionary.";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
    goto LABEL_8;
  }

  v7 = v5;
  if (![v7 isEqualToString:@"pcap"])
  {
    v9 = casemanagementLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      goto LABEL_10;
    }

    v15 = 138412290;
    v16 = v7;
    v10 = "Skip processing actions key %@ (unsupported, or not a probe)";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 12;
LABEL_8:
    _os_log_impl(&dword_241804000, v11, v12, v10, &v15, v13);
    goto LABEL_9;
  }

  [*(a1 + 32) _processActionsForPacketCaptureProbe:v6 session:*(a1 + 40)];
  ++*(*(*(a1 + 48) + 8) + 24);
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_processActionsForPacketCaptureProbe:(id)a3 session:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DiagnosticCaseManager *)self configManager];
  v9 = [v8 autoBugCaptureSensitivePayloads];

  if (!v9)
  {
    v13 = casemanagementLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "Will not collect packet capture since collecting sensitive payloads are not allowed.", &v22, 2u);
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = &unk_28537A290;
      if (![v6 BOOLValue])
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v13 = casemanagementLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ as object in actions dictionary.", &v22, 0x16u);
    }

LABEL_7:

    v12 = &unk_28537A290;
    goto LABEL_18;
  }

  v10 = v6;
  v11 = [v10 objectForKeyedSubscript:@"duration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v14 = casemanagementLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ for value of duration in probe parameter dictionary.", &v22, 0x16u);
    }

    v12 = &unk_28537A290;
  }

LABEL_15:
  v17 = casemanagementLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v7 caseId];
    v22 = 138543362;
    v23 = v18;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Packet capture probe requested for case %{public}@", &v22, 0xCu);
  }

  [(DiagnosticCaseManager *)self startPacketCaptureForSession:v7 duration:v12];
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startPeriodicTimer
{
  if (!self->periodicTimer)
  {
    v14 = v2;
    v15 = v3;
    v5 = casemanagementLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Starting periodic diagnostic session management.", buf, 2u);
    }

    v6 = [(DiagnosticCaseManager *)self queue];
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);
    periodicTimer = self->periodicTimer;
    self->periodicTimer = v7;

    v9 = self->periodicTimer;
    v10 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v9, v10, 0xDF8475800uLL, 0x2540BE400uLL);
    v11 = self->periodicTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__DiagnosticCaseManager_startPeriodicTimer__block_invoke;
    handler[3] = &unk_278CEFE88;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(self->periodicTimer);
  }
}

- (void)stopPeriodicTimer
{
  if (self->periodicTimer)
  {
    v3 = casemanagementLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Stopping periodic diagnostic session management.", v5, 2u);
    }

    dispatch_source_cancel(self->periodicTimer);
    periodicTimer = self->periodicTimer;
    self->periodicTimer = 0;
  }
}

- (void)periodicSessionManagement
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(DiagnosticCaseManager *)self activeCases];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        [v12 caseOpenedTime];
        if (v5 > v13 + 900.0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v14 = casemanagementLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v6 count];
      *buf = 134217984;
      v32 = v15;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "Found %ld overdue sessions. Force closing...", buf, 0xCu);
    }

    v16 = [(DiagnosticCaseManager *)self queue];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __50__DiagnosticCaseManager_periodicSessionManagement__block_invoke;
    v24 = &unk_278CF04F8;
    v25 = self;
    v26 = v6;
    dispatch_async(v16, &v21);
  }

  v17 = [(DiagnosticCaseManager *)self activeCases:v21];
  v18 = [v17 count];

  if (!v18)
  {
    v19 = casemanagementLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "No diagnostic sessions are currently active.", buf, 2u);
    }

    [(DiagnosticCaseManager *)self stopPeriodicTimer];
    [(NSMutableDictionary *)self->activeProbes removeAllObjects];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateSignatureWithBundleIdentifier:(id)a3 reply:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 objectForKeyedSubscript:@"bundleID"];
  v7 = [v9 objectForKeyedSubscript:@"machUUID"];
  v8 = [v9 objectForKeyedSubscript:@"pid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v8 integerValue];
  }

  if (![v6 length])
  {
    [v7 length];
  }

  v5[2](v5, v9);
}

- (void)startPacketCaptureForSession:(id)a3 duration:(id)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [TCPDumpProbe alloc];
  v9 = [(DiagnosticCaseManager *)self queue];
  v10 = [(TCPDumpProbe *)v8 initWithQueue:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v6 caseId];
  v14 = [v13 UUIDString];

  v15 = [(NSMutableDictionary *)self->activeProbes objectForKeyedSubscript:v14];
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->activeProbes setObject:v15 forKeyedSubscript:v14];
  }

  [v15 setObject:v10 forKeyedSubscript:v12];
  [(TestProbe *)v10 setDiagSessionUUID:v14];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke;
  aBlock[3] = &unk_278CF1160;
  v43 = v12;
  v44 = self;
  v45 = v15;
  v32 = v15;
  v16 = v12;
  v17 = _Block_copy(aBlock);
  v18 = [MEMORY[0x277CBEB38] dictionary];
  [v18 setObject:@"probe" forKeyedSubscript:@"type"];
  [v18 setObject:v16 forKeyedSubscript:@"name"];
  [v18 setObject:@"Requesting" forKeyedSubscript:@"status"];
  v19 = MEMORY[0x277CCABB0];
  v20 = [MEMORY[0x277CBEAA8] date];
  [v20 timeIntervalSince1970];
  v21 = [v19 numberWithDouble:?];
  [v18 setObject:v21 forKeyedSubscript:@"timestamp"];

  [v18 setObject:v7 forKeyedSubscript:@"requestedDuration"];
  v46[0] = v18;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2;
  v40[3] = &unk_278CF1138;
  v23 = v14;
  v41 = v23;
  [(DiagnosticCaseManager *)self addToSession:v23 events:v22 payload:0 reply:v40];

  [v6 addRequiredAttachmentType:@"pcap" pattern:@".pcapng"];
  [v7 doubleValue];
  v25 = v24;

  v26 = [(DiagnosticCaseManager *)self configManager];
  v27 = [v26 logArchivePath];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_247;
  v37[3] = &unk_278CF11B0;
  v37[4] = self;
  v38 = v23;
  v39 = v17;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_251;
  v33[3] = &unk_278CF1200;
  v33[4] = self;
  v34 = v10;
  v35 = v38;
  v36 = v39;
  v28 = v39;
  v29 = v38;
  v30 = v10;
  [(TCPDumpProbe *)v30 startTCPDumpWithDuration:v27 destinationPath:v37 tcpDumpStarted:v33 tcpDumpCompleted:v25];

  v31 = *MEMORY[0x277D85DE8];
}

void __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke(uint64_t a1, void *a2, int a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v13 = casemanagementLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v35 = v7;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "TCPDumpProbe for session %{public}@ failed.", buf, 0xCu);
        }

        v10 = @"Finished";
        v12 = 0;
        v11 = 1;
        break;
      case 4:
        v14 = casemanagementLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v35 = v7;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "TCPDumpProbe for session %{public}@ cancelled.", buf, 0xCu);
        }

        v10 = @"Cancelled";
        v11 = 0;
        v12 = 0;
        break;
      case 5:
        v8 = casemanagementLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v35 = v7;
          _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "TCPDumpProbe for session %{public}@ pending cancellation.", buf, 0xCu);
        }

        goto LABEL_28;
      default:
LABEL_25:
        v17 = casemanagementLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v35 = v7;
          v36 = 1024;
          v37 = a3;
          _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "TCPDumpProbe for session %{public}@ returned unexpected status update (%d)", buf, 0x12u);
        }

        goto LABEL_28;
    }

LABEL_20:
    v15 = 1;
    goto LABEL_29;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_25;
    }

    if (a4)
    {
      v9 = casemanagementLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v35 = v7;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "TCPDumpProbe for session %{public}@ completed successfully.", buf, 0xCu);
      }

      v10 = @"success";
      v11 = 0;
      v12 = 1;
      goto LABEL_20;
    }

LABEL_28:
    v11 = 0;
    v12 = 0;
    v15 = 0;
    v10 = 0;
    goto LABEL_29;
  }

  if (a4)
  {
    goto LABEL_28;
  }

  v16 = casemanagementLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v35 = v7;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "TCPDumpProbe for session %{public}@ started successfully.", buf, 0xCu);
  }

  v10 = @"In Progress";
  v11 = 0;
  v12 = 0;
  v15 = 0;
LABEL_29:
  if ([(__CFString *)v10 length])
  {
    v18 = [MEMORY[0x277CBEB38] dictionary];
    [v18 setObject:@"probe" forKeyedSubscript:@"type"];
    [v18 setObject:*(a1 + 32) forKeyedSubscript:@"name"];
    [v18 setObject:v10 forKeyedSubscript:@"status"];
    v19 = MEMORY[0x277CCABB0];
    v20 = [MEMORY[0x277CBEAA8] date];
    [v20 timeIntervalSince1970];
    v21 = [v19 numberWithDouble:?];
    [v18 setObject:v21 forKeyedSubscript:@"timestamp"];

    if (v15)
    {
      v22 = kSymptomDiagnosticEventResultSuccess;
      if (!v12)
      {
        v22 = kSymptomDiagnosticEventResultFailure;
      }

      [v18 setObject:*v22 forKeyedSubscript:@"result"];
    }

    v23 = *(a1 + 40);
    v33 = v18;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_237;
    v31[3] = &unk_278CF1138;
    v32 = v7;
    [v23 addToSession:v32 events:v24 payload:0 reply:v31];
  }

  if (v15)
  {
    [*(a1 + 48) setObject:0 forKeyedSubscript:*(a1 + 32)];
    v25 = casemanagementLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_INFO, "TCPDumpProbe is finished.", buf, 2u);
    }

    if (v11)
    {
      v26 = casemanagementLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, "Canceling session due to TCPDump already being in progress", buf, 2u);
      }

      [*(a1 + 40) cancelSessionWithIdentifier:v7];
    }

    else
    {
      v27 = [*(a1 + 40) queue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_239;
      v29[3] = &unk_278CF04F8;
      v29[4] = *(a1 + 40);
      v30 = v7;
      dispatch_async(v27, v29);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_237(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = casemanagementLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Result for adding probe status event to %{public}@: %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = casemanagementLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Result for adding probe status event to %@: %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_247(id *a1, int a2)
{
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2_248;
  block[3] = &unk_278CF1188;
  v6 = a1[5];
  v8 = a2;
  v7 = a1[6];
  dispatch_async(v4, block);
}

uint64_t __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2_248(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [TestProbe testProbeStatusString:*(a1 + 48)];
    v9 = 138543618;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "tcpDumpStarted status for session %{public}@: %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_251(id *a1, int a2)
{
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2_252;
  block[3] = &unk_278CF11D8;
  v14 = a2;
  v5 = a1[5];
  v6 = a1[6];
  v10 = a1[4];
  v7 = a1[7];
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v12 = v9;
  v13 = v8;
  dispatch_async(v4, block);
}

uint64_t __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2_252(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 2)
  {
    v2 = [*(a1 + 32) probeOutputFilePaths];
    v3 = casemanagementLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 count];
      v5 = *(a1 + 40);
      *buf = 134218242;
      v21 = v4;
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Ready to add %ld files generated from a probe as payload to session %{public}@", buf, 0x16u);
    }

    if ([v2 count])
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v18[0] = @"path";
      v18[1] = @"sandbox_ext_token_dict";
      v19[0] = v2;
      v19[1] = MEMORY[0x277CBEC10];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_253;
      v16[3] = &unk_278CF1138;
      v17 = *(a1 + 40);
      [v6 addToSession:v7 events:0 payload:v8 reply:v16];
    }
  }

  v9 = casemanagementLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    v11 = [TestProbe testProbeStatusString:*(a1 + 64)];
    *buf = 138543618;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "tcpDumpCompleted status for session %{public}@: %@", buf, 0x16u);
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  result = (*(*(a1 + 56) + 16))();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_253(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = casemanagementLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Result for adding probe output files to %{public}@: %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelProbesForSession:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->activeProbes objectForKeyedSubscript:v4];
  if ([v5 count])
  {
    v6 = casemanagementLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v19 = [v5 count];
      v20 = 2114;
      v21 = v4;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Cancelling all %lu probes for session: %{public}@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 allValues];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) cancelTest:0];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)endSessionIfProbesCompletedFor:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->activeProbes objectForKeyedSubscript:v4];
  v6 = [v5 count];
  v7 = casemanagementLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v10 = 134218242;
      v11 = [v5 count];
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Waiting for %ld requested probes to complete before ending session %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "All requested probes completed for session %{public}@. Ready to end.", &v10, 0xCu);
    }

    [(NSMutableDictionary *)self->activeProbes setObject:0 forKeyedSubscript:v4];
    [(DiagnosticCaseManager *)self endSessionWithIdentifier:v4 forced:0 onlyIfReady:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteTriggerDeliveryUpdateEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = casemanagementLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "IDS remote trigger send message update: %@", buf, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"IDSMessageIdentifier"];
  v7 = [(NSMutableDictionary *)self->activeIDSMessages objectForKeyedSubscript:v6];
  v8 = casemanagementLogHandle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Found session identifier %@ for IDS message identifier %@", buf, 0x16u);
    }

    v10 = [(DiagnosticCaseManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__DiagnosticCaseManager_remoteTriggerDeliveryUpdateEvent___block_invoke;
    v12[3] = &unk_278CF10C0;
    v13 = v7;
    [(DiagnosticCaseManager *)self addToSession:v13 event:v4 payload:0 queue:v10 reply:v12];

    v9 = v13;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Could not find session identifier for IDS message identifier %{public}@ (most likely received this update after the session was closed)", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__DiagnosticCaseManager_remoteTriggerDeliveryUpdateEvent___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"success"];
  v5 = [v3 objectForKeyedSubscript:@"reason"];

  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    if ([v4 BOOLValue])
    {
      v8 = "was successful";
    }

    else
    {
      v8 = "failed";
    }

    v10 = 138543874;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    v14 = 2048;
    v15 = [v5 integerValue];
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Adding remote trigger event update to session %{public}@ %s. (Reason code %ld)", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestSnapshotWithSignature:(id)a3 flags:(unint64_t)a4 events:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = casemanagementLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Ready to request remotely triggered case with signature: %@", &v12, 0xCu);
  }

  [(DiagnosticCaseManager *)self startSessionWithSignature:v8 flags:a4 preferredTimeout:v9 events:0 payload:0 actions:&__block_literal_global_256 reply:0.0];
  v11 = *MEMORY[0x277D85DE8];
}

void __67__DiagnosticCaseManager_requestSnapshotWithSignature_flags_events___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = casemanagementLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a5)
  {
    if (v12)
    {
      v17 = 138544130;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 1024;
      LODWORD(v22[0]) = a5;
      WORD2(v22[0]) = 2112;
      *(v22 + 6) = v10;
      v13 = "RemoteTrigger: Session %{public}@ [groupID: %{public}@] was NOT accepted. (Reason code: %d) (%@)";
      v14 = v11;
      v15 = 38;
      goto LABEL_6;
    }
  }

  else if (v12)
  {
    v17 = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2112;
    v22[0] = v10;
    v13 = "RemoteTrigger: Session %{public}@ [groupID: %{public}@] accepted. (%@)";
    v14 = v11;
    v15 = 32;
LABEL_6:
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startSessionWithSignature:(id)a3 duration:(double)a4 events:(id)a5 payload:(id)a6 triggerRemote:(BOOL)a7 queue:(id)a8 reply:(id)a9
{
  v10 = a7;
  v16 = a8;
  v17 = a9;
  v18 = v17;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__DiagnosticCaseManager_startSessionWithSignature_duration_events_payload_triggerRemote_queue_reply___block_invoke;
  v22[3] = &unk_278CF0298;
  if (v10)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v23 = v16;
  v24 = v17;
  v20 = v16;
  v21 = v18;
  [(DiagnosticCaseManager *)self startSessionWithSignature:a3 flags:v19 preferredTimeout:a5 events:a6 payload:0 actions:v22 reply:a4];
}

void __101__DiagnosticCaseManager_startSessionWithSignature_duration_events_payload_triggerRemote_queue_reply___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (*(a1 + 40))
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __101__DiagnosticCaseManager_startSessionWithSignature_duration_events_payload_triggerRemote_queue_reply___block_invoke_2;
    v12[3] = &unk_278CF1248;
    v13 = v9;
    v14 = v8;
    v16 = a5;
    v15 = *(a1 + 40);
    dispatch_async(v11, v12);
  }
}

void __101__DiagnosticCaseManager_startSessionWithSignature_duration_events_payload_triggerRemote_queue_reply___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if ([*(a1 + 32) length])
  {
    [v5 setObject:*(a1 + 32) forKey:@"groupID"];
  }

  if ([*(a1 + 40) length])
  {
    [v5 setObject:*(a1 + 40) forKey:@"session"];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) == 0];
  [v5 setObject:v2 forKey:@"success"];

  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v5 setObject:v3 forKey:@"reason"];

  v4 = diagnosticErrorStringForCode(*(a1 + 56));
  [v5 setObject:v4 forKey:@"reasonStr"];

  (*(*(a1 + 48) + 16))();
}

- (void)addToSession:(id)a3 event:(id)a4 payload:(id)a5 queue:(id)a6 reply:(id)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a4)
  {
    v19 = a4;
    v16 = MEMORY[0x277CBEA60];
    v17 = a4;
    a4 = [v16 arrayWithObjects:&v19 count:1];
  }

  [(DiagnosticCaseManager *)self addToSession:v12 events:a4 payload:v13 queue:v14 reply:v15, v19, v20];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addToSession:(id)a3 events:(id)a4 payload:(id)a5 queue:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v13 | v14)
  {
    v18 = [v13 copy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke;
    v21[3] = &unk_278CF0310;
    v23 = v17;
    v22 = v15;
    [(DiagnosticCaseManager *)self addToSession:v12 events:v18 payload:v14 reply:v21];

LABEL_5:
    goto LABEL_6;
  }

  if (v16)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke_3;
    block[3] = &unk_278CF0A58;
    v20 = v16;
    dispatch_async(v15, block);
    v18 = v20;
    goto LABEL_5;
  }

LABEL_6:
}

void __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke_2;
    v5[3] = &unk_278CF1270;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8[0] = @"success";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) == 0];
  v9[0] = v3;
  v8[1] = @"reason";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v9[1] = v4;
  v8[2] = @"reasonStr";
  v5 = diagnosticErrorStringForCode(*(a1 + 40));
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  (*(v2 + 16))(v2, v6);

  v7 = *MEMORY[0x277D85DE8];
}

void __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke_3(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[0] = MEMORY[0x277CBEC28];
  v5[0] = @"success";
  v5[1] = @"reason";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:20];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  (*(v1 + 16))(v1, v3);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)startSessionWithSignature:(id)a3 flags:(unint64_t)a4 preferredTimeout:(double)a5 events:(id)a6 payload:(id)a7 actions:(id)a8 reply:(id)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v30 = v17;
  v21 = [v17 copy];
  v22 = [v18 copy];
  v23 = [v19 copy];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v24 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke;
  block[3] = &unk_278CF12C0;
  block[4] = self;
  v32 = v16;
  v33 = v21;
  v34 = v22;
  v39 = a5;
  v37 = v40;
  v38 = a4;
  v35 = v23;
  v36 = v20;
  v25 = v20;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v16;
  dispatch_async(v24, block);

  _Block_object_dispose(v40, 8);
}

void __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _updateSignatureWithBuildVariantInfoAndFlags:*(a1 + 40)];
  v3 = [*(a1 + 32) createDiagnosticCaseWithSignature:v2 flags:*(a1 + 88) events:*(a1 + 48) payload:*(a1 + 56) actions:*(a1 + 64)];
  v4 = +[DiagnosticCaseManager symptomDiagnosticErrorForDiagnosticCaseDampeningType:](DiagnosticCaseManager, "symptomDiagnosticErrorForDiagnosticCaseDampeningType:", [v3 dampeningType]);
  if (v3)
  {
    v5 = v4;
    [*(*(a1 + 32) + 64) _checkFileWritingLimits:v3];
    [v3 setPreferredDuration:*(a1 + 96)];
    if ([v3 dampeningType] > 0)
    {
      goto LABEL_30;
    }

    v6 = [v3 caseId];
    v7 = [v6 UUIDString];

    v8 = casemanagementLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v48 = *&v7;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Starting an ABC session with identifier: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) addTransactionForCaseID:v7];
    v9 = *(a1 + 96);
    if (v9 <= 0.0)
    {
      v10 = 100000000;
    }

    else
    {
      v10 = (v9 * 1000000000.0);
    }

    v11 = dispatch_time(0, v10);
    v12 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke_258;
    block[3] = &unk_278CF00E0;
    v13 = v7;
    v44 = v13;
    v14 = v3;
    v15 = *(a1 + 32);
    v45 = v14;
    v46 = v15;
    dispatch_after(v11, v12, block);

    [*(a1 + 32) _processReportActions:*(a1 + 64) session:v14];
    if (![*(a1 + 64) count])
    {
      goto LABEL_29;
    }

    if (![v14 wantsRemote])
    {
LABEL_27:
      if ([*(a1 + 32) _processProbeActions:*(a1 + 64) session:{v14, v36, v37, v38, v39}])
      {
        [*(a1 + 32) startPeriodicTimer];
      }

LABEL_29:

      goto LABEL_30;
    }

    v16 = [*(a1 + 64) objectForKeyedSubscript:@"idsdest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 3600.0;
      v18 = [*(a1 + 64) objectForKeyedSubscript:@"remotewindow"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v18 doubleValue];
        if (v19 >= 1.0)
        {
          [v18 doubleValue];
          v17 = v20;
          v21 = casemanagementLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v48 = v17;
            _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "(Remote trigger window is %.0lf seconds)", buf, 0xCu);
          }
        }
      }

      v22 = casemanagementLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_INFO, "Ready to trigger remote cases via IDS", buf, 2u);
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
      v23 = *(a1 + 32);
      v24 = [v14 signature];
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke_259;
      v39 = &unk_278CF1298;
      v41 = *(a1 + 72);
      v40 = v14;
      v42 = v5;
      [v23 _processRemoteIDSTriggers:v16 validFor:v24 signature:v13 sessionID:&v36 reply:v17];
    }

    else
    {
      if (!v16)
      {
LABEL_26:

        goto LABEL_27;
      }

      v18 = casemanagementLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412546;
        v48 = *&v27;
        v49 = 2112;
        v50 = v16;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, "Found unsupported class for remote IDS destinations: %@ (%@)", buf, 0x16u);
      }
    }

    goto LABEL_26;
  }

  v25 = casemanagementLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEBUG, "DiagnosticCase is nil", buf, 2u);
  }

  v5 = 8;
LABEL_30:
  v28 = *(*(*(a1 + 80) + 8) + 24);
  if (*(a1 + 72))
  {
    if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
    {
      v29 = [v3 signature];
      v30 = [v29 objectForKeyedSubscript:@"groupID"];

      v31 = casemanagementLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v48 = *&v30;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "Found group id %{public}@", buf, 0xCu);
      }

      v32 = *(a1 + 72);
      v33 = [v3 caseId];
      v34 = [v33 UUIDString];
      (*(v32 + 16))(v32, v34, v30, 0, v5);

LABEL_38:
      goto LABEL_39;
    }

LABEL_36:
    v30 = casemanagementLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_INFO, "Waiting for asynchronous operation to finish.", buf, 2u);
    }

    goto LABEL_38;
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    goto LABEL_36;
  }

LABEL_39:

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke_258(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEBUG, "Case duration timer fired for %{public}@", &v6, 0xCu);
  }

  [*(a1 + 40) setReadyToEndSession:1];
  result = [*(a1 + 48) endSessionIfProbesCompletedFor:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke_259(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) signature];
    v5 = [v4 objectForKeyedSubscript:@"groupID"];

    v6 = casemanagementLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Found group id %{public}@", &v18, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v3 objectForKeyedSubscript:@"result"];
    v9 = [v8 isEqualToString:@"failure"];

    if (v9)
    {
      v10 = MEMORY[0x277CBEC28];
    }

    else
    {
      v10 = MEMORY[0x277CBEC38];
    }

    if (v9)
    {
      v11 = kSymptomDiagnosticKeyError;
    }

    else
    {
      v11 = kSymptomDiagnosticKeyIDSMessageIdentifier;
    }

    [v7 setObject:v10 forKeyedSubscript:@"IDSRemoteTrigger"];
    v12 = *v11;
    v13 = [v3 objectForKeyedSubscript:v12];
    [v7 setObject:v13 forKeyedSubscript:v12];

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) caseId];
    v16 = [v15 UUIDString];
    (*(v14 + 16))(v14, v16, v5, v7, *(a1 + 48));
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addToSession:(id)a3 events:(id)a4 payload:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DiagnosticCaseManager_addToSession_events_payload_reply___block_invoke;
  block[3] = &unk_278CF12E8;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

uint64_t __59__DiagnosticCaseManager_addToSession_events_payload_reply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 138543874;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEBUG, "Adding to session with identifier: %{public}@.\n\tevents: %@\n\tpayload: %@", &v13, 0x20u);
  }

  result = [*(a1 + 32) length];
  if (result)
  {
    v7 = *(a1 + 56);
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
    [v7 addToCaseWithId:v8 events:*(a1 + 40) payload:*(a1 + 48)];

    result = *(a1 + 64);
    if (result)
    {
      v9 = *(result + 16);
LABEL_10:
      result = v9();
    }
  }

  else if (*(a1 + 64))
  {
    v10 = casemanagementLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "invalid parameters: empty or missing session identifier (%{public}@)", &v13, 0xCu);
    }

    v9 = *(*(a1 + 64) + 16);
    goto LABEL_10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addSignatureContentForSession:(id)a3 key:(id)a4 content:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DiagnosticCaseManager_addSignatureContentForSession_key_content_reply___block_invoke;
  block[3] = &unk_278CF12E8;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

uint64_t __73__DiagnosticCaseManager_addSignatureContentForSession_key_content_reply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 138543874;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEBUG, "Updating signature of session with identifier: %{public}@. key: %@ content: %@", &v13, 0x20u);
  }

  result = [*(a1 + 32) length];
  if (result)
  {
    v7 = *(a1 + 56);
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
    [v7 addSignatureContentToCaseWithId:v8 key:*(a1 + 40) content:*(a1 + 48)];

    result = *(a1 + 64);
    if (result)
    {
      v9 = *(result + 16);
LABEL_10:
      result = v9();
    }
  }

  else if (*(a1 + 64))
  {
    v10 = casemanagementLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "invalid parameters: empty or missing session identifier (%{public}@)", &v13, 0xCu);
    }

    v9 = *(*(a1 + 64) + 16);
    goto LABEL_10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)endSessions:(id)a3 forced:(BOOL)a4
{
  v6 = a3;
  v7 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DiagnosticCaseManager_endSessions_forced___block_invoke;
  block[3] = &unk_278CF1310;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __44__DiagnosticCaseManager_endSessions_forced___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) count];
    v4 = &stru_285368168;
    if (*(a1 + 48))
    {
      v4 = @" (forced)";
    }

    *buf = 134218242;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEBUG, "Ending %ld sessions%@", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 40);
        v11 = [*(*(&v13 + 1) + 8 * v9) caseId];
        [v10 endSession:v11 forced:*(a1 + 48) onlyIfReady:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)endSessionWithIdentifier:(id)a3 forced:(BOOL)a4 onlyIfReady:(BOOL)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a3;
  v10 = [[v8 alloc] initWithUUIDString:v9];

  v11 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__DiagnosticCaseManager_endSessionWithIdentifier_forced_onlyIfReady___block_invoke;
  block[3] = &unk_278CF1338;
  block[4] = self;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v12 = v10;
  dispatch_async(v11, block);
}

- (void)cancelSessionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DiagnosticCaseManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DiagnosticCaseManager_cancelSessionWithIdentifier___block_invoke;
  v7[3] = &unk_278CF04F8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__DiagnosticCaseManager_cancelSessionWithIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cancelling session with identifier: %{public}@", &v7, 0xCu);
  }

  if ([*(a1 + 32) length])
  {
    [*(a1 + 40) cancelProbesForSession:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
    [v4 cancelCaseWithId:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  v3 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DiagnosticCaseManager_shutdown__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __33__DiagnosticCaseManager_shutdown__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasOpenCases];
  if (result)
  {
    v3 = [*(a1 + 32) configManager];
    v4 = [v3 autoBugCaptureEnabled];

    v5 = *(a1 + 32);
    if (v4)
    {

      return [v5 forceCloseDiagnosticCaseStorage];
    }

    else
    {

      return [v5 removeAllCases];
    }
  }

  return result;
}

- (void)updateAverageCasesPerDay
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DiagnosticCaseManager_updateAverageCasesPerDay__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __49__DiagnosticCaseManager_updateAverageCasesPerDay__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 64) _calculateAverageCasesPerDayFromDailyAggregatedStatistics];
  v3 = v2;
  v4 = casemanagementLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 <= 0.0)
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Average cases seen per day is 0.", &v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    if (v5)
    {
      v9 = 134217984;
      v10 = v3;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Average cases seen per day is %.4f", &v9, 0xCu);
    }

    LODWORD(v6) = vcvtpd_u64_f64(v3);
  }

  result = [*(a1 + 32) setAvgCasesPerDay:v6];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetDiagnosticCaseStorage
{
  v3 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DiagnosticCaseManager_resetDiagnosticCaseStorage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __51__DiagnosticCaseManager_resetDiagnosticCaseStorage__block_invoke(uint64_t a1)
{
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Resetting DiagnosticCaseStorage", v4, 2u);
  }

  return [*(a1 + 32) removeAllCases];
}

- (void)resetAllForCustomerBuilds
{
  v3 = [(DiagnosticCaseManager *)self configManager];
  v4 = [v3 autoBugCaptureAvailable];

  if ((v4 & 1) == 0)
  {
    v5 = [(DiagnosticCaseManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DiagnosticCaseManager_resetAllForCustomerBuilds__block_invoke;
    block[3] = &unk_278CEFE88;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __50__DiagnosticCaseManager_resetAllForCustomerBuilds__block_invoke(uint64_t a1)
{
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Remove all storage and all usage except RESOURCE_NOTIFY", buf, 2u);
  }

  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %@", @"domain", @"RESOURCE_NOTIFY"];
  [*(*(a1 + 32) + 64) _removeAllDiagnosticCaseUsageFor:v3];
  [*(a1 + 32) removeAllCases];
}

- (void)resetAll
{
  v3 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DiagnosticCaseManager_resetAll__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __33__DiagnosticCaseManager_resetAll__block_invoke(uint64_t a1)
{
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Resetting DiagnosticCaseUsage and DiagnosticCaseStorage", v4, 2u);
  }

  [*(*(a1 + 32) + 64) _removeAllDiagnosticCaseUsageFor:0];
  return [*(a1 + 32) removeAllCases];
}

- (void)payloadsForSignatures:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DiagnosticCaseManager_payloadsForSignatures_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __53__DiagnosticCaseManager_payloadsForSignatures_reply___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v3 = casemanagementLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 32);
    *buf = 134218242;
    v32 = v4;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Ready to search for collected cases that match %ld signatures: %@", buf, 0x16u);
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __53__DiagnosticCaseManager_payloadsForSignatures_reply___block_invoke_274;
  v16 = &unk_278CF1360;
  v6 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = &v21;
  v7 = v2;
  v18 = v7;
  v20 = &v25;
  [v6 enumerateObjectsUsingBlock:&v13];
  if (!v26[5] && (v22[3] & 1) == 0)
  {
    v8 = casemanagementLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Did not find any collected cases that matched the provided signatures: %@", buf, 0xCu);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    if ([v7 count])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    (*(v10 + 16))(v10, v11, v26[5]);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __53__DiagnosticCaseManager_payloadsForSignatures_reply___block_invoke_274(void *a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(DiagnosticCase *)v4 objectForKeyedSubscript:@"domain"];
    v6 = [(DiagnosticCase *)v4 objectForKeyedSubscript:@"type"];
    v7 = [(DiagnosticCase *)v4 objectForKeyedSubscript:@"subtype"];
    v8 = [(DiagnosticCase *)v4 objectForKeyedSubscript:@"detected"];
    v9 = [(DiagnosticCase *)v4 objectForKeyedSubscript:@"window"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &unk_28537A720;
    }

    v11 = casemanagementLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      v49 = 2112;
      v50 = v7;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "  Searching for cases matching d:%@ t:%@ st:%@ p:%@", buf, 0x2Au);
    }

    v12 = a1[4];
    [v10 doubleValue];
    v39 = [v12 casesMatchingDomain:v5 type:v6 subtype:v7 process:v8 withinLast:?];
    if ([v39 count])
    {
      v33 = v10;
      v34 = v8;
      v35 = v7;
      v36 = v6;
      v37 = v4;
      v38 = v3;
      *(*(a1[6] + 8) + 24) = 1;
      v13 = casemanagementLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v39 count];
        *buf = 134217984;
        v46 = v14;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "  Found %ld matching cases.", buf, 0xCu);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = v39;
      v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            v21 = [[DiagnosticCase alloc] initWithCaseStorage:v20 manager:a1[4]];
            v22 = casemanagementLogHandle();
            v23 = v22;
            if (v21)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v24 = [(DiagnosticCase *)v21 attachments];
                v25 = [v24 count];
                *buf = 134218242;
                v46 = v25;
                v47 = 2112;
                v48 = v21;
                _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "    Adding %ld attachments from: %@", buf, 0x16u);
              }

              v26 = a1[5];
              v23 = [(DiagnosticCase *)v21 attachments];
              [v26 addObjectsFromArray:v23];
            }

            else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v20;
              _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_ERROR, "  Failed to allocate DiagnosticCase from DiagnosticCaseStorage: %@", buf, 0xCu);
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v17);
      }

      v4 = v37;
      v3 = v38;
      v6 = v36;
      v8 = v34;
      v7 = v35;
      v10 = v33;
    }
  }

  else
  {
    v27 = casemanagementLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138412546;
      v46 = v29;
      v47 = 2112;
      v48 = v3;
      _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_ERROR, "Found unexpected object (%@) of class (%@) in signature list.", buf, 0x16u);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v31 = *(a1[7] + 8);
    v4 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)createTemporaryDiagnosticCaseStorageForUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 UUIDString];
  v5 = [(ObjectAnalytics *)self->_caseStorageAnalytics createTemporaryEntity];
  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = [v4 UTF8String];
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Create a temporary case storage entry of %s", &v11, 0xCu);
  }

  if (v5)
  {
    [v5 setCaseID:v4];
  }

  else
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 UTF8String];
      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Couldn't create a temporary case storage entry of %s", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)promoteTemporaryCase:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 caseStorage];

  v6 = casemanagementLogHandle();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Promoting temporary case storage to permanent case storage for case %@.", &v10, 0xCu);
    }

    caseStorageAnalytics = self->_caseStorageAnalytics;
    v7 = [v4 caseStorage];
    [(ObjectAnalytics *)caseStorageAnalytics moveTemporaryEntityToMainContext:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "No temporary DiagnosticCaseStorage for case %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)countOfCasesMatchingDomain:(id)a3 type:(id)a4 subtype:(id)a5 process:(id)a6 groupCaseIDIsPresent:(BOOL)a7 withinLast:(double)a8 reply:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v21 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__DiagnosticCaseManager_countOfCasesMatchingDomain_type_subtype_process_groupCaseIDIsPresent_withinLast_reply___block_invoke;
  block[3] = &unk_278CF1388;
  block[4] = self;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v34 = a8;
  v35 = a7;
  v32 = v20;
  v33 = v36;
  v31 = v19;
  v22 = v20;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  dispatch_async(v21, block);

  _Block_object_dispose(v36, 8);
}

uint64_t __111__DiagnosticCaseManager_countOfCasesMatchingDomain_type_subtype_process_groupCaseIDIsPresent_withinLast_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _predicatesForCasesMatchingDomain:*(a1 + 40) type:*(a1 + 48) subtype:*(a1 + 56) process:*(a1 + 64) withinLast:*(a1 + 88)];
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 96) == 1)
    {
      v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"caseGroupID"];
      v5 = [v3 arrayByAddingObject:v4];

      v6 = casemanagementLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Adding predicate for caseGroupID being non-NULL", buf, 2u);
      }

      v3 = v5;
    }

    v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v3];
    *(*(*(a1 + 80) + 8) + 24) = [*(*(a1 + 32) + 48) countEntitiesMatching:v7];
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 80) + 8) + 24));
  }

  return result;
}

- (id)casesMatchingDomain:(id)a3 type:(id)a4 subtype:(id)a5 process:(id)a6 withinLast:(double)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = [(DiagnosticCaseManager *)self _predicatesForCasesMatchingDomain:a3 type:a4 subtype:a5 process:a6 withinLast:?];
  if (v9)
  {
    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v9];
    v11 = [(ObjectAnalytics *)self->_caseStorageAnalytics fetchEntitiesFreeForm:v10 sortDesc:0];
    v12 = casemanagementLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218240;
      v16 = [v11 count];
      v17 = 2048;
      v18 = a7;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Found %lu matching case(s) in the past %.0lf seconds.", &v15, 0x16u);
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_predicatesForCasesMatchingDomain:(id)a3 type:(id)a4 subtype:(id)a5 process:(id)a6 withinLast:(double)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11 || v12 || v13 || v14 || a7 > 0.0)
  {
    v17 = [MEMORY[0x277CBEB18] array];
    if (a7 <= 0.0)
    {
      v18 = casemanagementLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "No window provided. Using default window of 24 hours.", buf, 2u);
      }

      a7 = 86400.0;
    }

    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-a7];
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"timeStamp", v16];
    [v17 addObject:v19];
    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v32 = a7;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEBUG, "Adding predicate for window of %.0lf seconds", buf, 0xCu);
    }

    if ([v11 length])
    {
      v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseDomain", v11];
      [v17 addObject:v21];
      v22 = casemanagementLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = *&v11;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "Adding predicate for domain %@", buf, 0xCu);
      }
    }

    if ([v12 length])
    {
      v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseType", v12];
      [v17 addObject:v23];
      v24 = casemanagementLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = *&v12;
        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEBUG, "Adding predicate for type %@", buf, 0xCu);
      }
    }

    if ([v13 length])
    {
      v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseSubtype", v13];
      [v17 addObject:v25];
      v26 = casemanagementLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = *&v13;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "Adding predicate for subtype %@", buf, 0xCu);
      }
    }

    if ([v15 length])
    {
      v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseDetectedProcess", v15];
      [v17 addObject:v27];
      v28 = casemanagementLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = *&v15;
        _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEBUG, "Adding predicate for process %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = casemanagementLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "No matching criteria provided! Provide at least one criteria to perform a query.", buf, 2u);
    }

    v17 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)forceCloseDiagnosticCaseStorage
{
  v3 = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DiagnosticCaseManager_forceCloseDiagnosticCaseStorage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_forceCloseDiagnosticCaseStorage
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = casemanagementLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Force closing all un-closed diagnostic cases.", buf, 2u);
  }

  v4 = MEMORY[0x277CCAC30];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v6 = [v4 predicateWithFormat:@"%K != %@", @"caseState", v5];

  v7 = [(ObjectAnalytics *)self->_caseStorageAnalytics countEntitiesMatching:v6];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277CBEAC0];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:6];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:5];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"caseClosedTime", v11, @"caseState", v12, @"caseClosureType", 0}];

    v14 = [(ObjectAnalytics *)self->_caseStorageAnalytics updateEntitiesMatching:v6 properties:v13];
    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v18 = v14;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Force closed %ld un-closed diagnostic case(s) out of %ld un-closed cases.", buf, 0x16u);
    }

    if (v14)
    {
      [(DiagnosticCaseManager *)self saveAllCases];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAllowedTransientException:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"domain"];
  v5 = [v3 objectForKeyedSubscript:@"type"];
  v6 = [v3 objectForKeyedSubscript:@"subtype"];

  v7 = [v4 isEqualToString:@"Networking"] && objc_msgSend(v5, "isEqualToString:", @"Performance") && ((objc_msgSend(v6, "isEqualToString:", @"AirPlay") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"AirPlay Connection Stalled"));
  return v7;
}

- (void)removeCaseStorageWithID:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v5 = [a3 UUIDString];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"caseID", v5];

  [(ObjectAnalytics *)self->_caseStorageAnalytics removeEntitiesMatching:v6];
}

- (void)removeAllCases
{
  v10 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_activeCases removeAllObjects];
  [(NSMutableArray *)self->_totalCases removeAllObjects];
  v3 = [(DiagnosticCaseStorageAnalytics *)self->_caseStorageAnalytics removeAllDiagnosticCaseStorages];
  v4 = casemanagementLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Removed %ld cases from persistent store", &v8, 0xCu);
  }

  v5 = [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics removeAllDiagnosticCaseSummaries];
  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Removed %ld case summaries from persistent store", &v8, 0xCu);
  }

  [(DiagnosticCaseManager *)self saveAllCases];
  v7 = *MEMORY[0x277D85DE8];
}

- (DiagnosticCaseManagerStorageDelegate)storageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);

  return WeakRetained;
}

@end