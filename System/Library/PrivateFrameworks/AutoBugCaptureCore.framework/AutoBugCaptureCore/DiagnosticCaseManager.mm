@interface DiagnosticCaseManager
- (ABCConfigurationManager)configManager;
- (BOOL)closeCase:(id)case;
- (BOOL)disableDampening;
- (BOOL)hasOpenCases;
- (BOOL)isAdmissible:(id)admissible dampenedBy:(signed __int16 *)by;
- (BOOL)isAllowedTransientException:(id)exception;
- (BOOL)requestReportGenerator:(id)generator options:(id)options;
- (BOOL)sendReportsForCase:(id)case;
- (BOOL)statisticsRowForDiagnosticCase:(id)case matchesWith:(id)with;
- (DiagnosticCaseManager)initWithWorkspace:(id)workspace liaison:(id)liaison;
- (DiagnosticCaseManagerStorageDelegate)storageDelegate;
- (DiagnosticsController)diagnosticsController;
- (id)_predicatesForCasesMatchingDomain:(id)domain type:(id)type subtype:(id)subtype process:(id)process withinLast:(double)last;
- (id)_updateSignatureWithBuildVariantInfoAndFlags:(id)flags;
- (id)caseStorageForCaseID:(id)d;
- (id)caseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count;
- (id)caseSummariesWithIdentifiers:(id)identifiers;
- (id)casesDiagnosedInTheLast:(double)last from:(double)from matchingDomain:(id)domain;
- (id)casesMatchingDomain:(id)domain type:(id)type subtype:(id)subtype process:(id)process withinLast:(double)last;
- (id)createDiagnosticCaseWithSignature:(id)signature flags:(unint64_t)flags events:(id)events payload:(id)payload actions:(id)actions;
- (id)createTemporaryDiagnosticCaseStorageForUUID:(id)d;
- (id)diagnosticCaseWithId:(id)id;
- (id)lookUpDiagnosticCaseStorageForUUID:(id)d;
- (int)addSignatureContentToCaseWithId:(id)id key:(id)key content:(id)content;
- (int)addToCaseWithId:(id)id events:(id)events payload:(id)payload;
- (int)cancelCaseWithId:(id)id;
- (int64_t)dailyCountLimitForDomain:(id)domain type:(id)type subtype:(id)subtype domainPredicates:(id)predicates;
- (unint64_t)_processProbeActions:(id)actions session:(id)session;
- (unint64_t)collectDiagnosticExtensionLogsWithParameters:(id)parameters options:(id)options diagCase:(id)case reply:(id)reply;
- (unsigned)avgCasesPerDay;
- (unsigned)dampeningFactorForSignature:(id)signature caseTime:(id)time limit:(int64_t)limit;
- (unsigned)defaultDampeningFactorForSignature:(id)signature limit:(int64_t)limit;
- (void)_forceCloseDiagnosticCaseStorage;
- (void)_processActionsForPacketCaptureProbe:(id)probe session:(id)session;
- (void)_processRemoteIDSTriggers:(id)triggers validFor:(double)for signature:(id)signature sessionID:(id)d reply:(id)reply;
- (void)_processReportActions:(id)actions session:(id)session;
- (void)_saveAllCases;
- (void)_updateCaseStatisticsWithCase:(id)case;
- (void)addSignatureContentForSession:(id)session key:(id)key content:(id)content reply:(id)reply;
- (void)addToInternalStateDictionary:(id)dictionary;
- (void)addToSession:(id)session event:(id)event payload:(id)payload queue:(id)queue reply:(id)reply;
- (void)addToSession:(id)session events:(id)events payload:(id)payload queue:(id)queue reply:(id)reply;
- (void)addToSession:(id)session events:(id)events payload:(id)payload reply:(id)reply;
- (void)addTransactionForCaseID:(id)d;
- (void)buildSpecificRestrictionsForSignature:(id)signature result:(id)result;
- (void)cancelProbesForSession:(id)session;
- (void)cancelSessionWithIdentifier:(id)identifier;
- (void)caseAllowanceForSignature:(id)signature timestamp:(id)timestamp result:(id)result;
- (void)configureWithWorkspace:(id)workspace;
- (void)countOfCasesMatchingDomain:(id)domain type:(id)type subtype:(id)subtype process:(id)process groupCaseIDIsPresent:(BOOL)present withinLast:(double)last reply:(id)reply;
- (void)endSessionIfProbesCompletedFor:(id)for;
- (void)endSessionWithIdentifier:(id)identifier forced:(BOOL)forced onlyIfReady:(BOOL)ready;
- (void)endSessions:(id)sessions forced:(BOOL)forced;
- (void)forceCloseDiagnosticCaseStorage;
- (void)getHistoricalDiagnosicCaseDictionaryFromIdentifier:(id)identifier withEvents:(BOOL)events count:(unint64_t)count reply:(id)reply;
- (void)listCaseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count reply:(id)reply;
- (void)listCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)payloadsForSignatures:(id)signatures reply:(id)reply;
- (void)periodicSessionManagement;
- (void)postProcessActionsForClosedCase:(id)case;
- (void)promoteTemporaryCase:(id)case;
- (void)recordDiagnosticCaseSummaryForCase:(id)case;
- (void)remoteTriggerDeliveryUpdateEvent:(id)event;
- (void)removeAllCases;
- (void)removeCaseStorageWithID:(id)d;
- (void)removeClosedCasesFromTotalCases;
- (void)removeTransactionForCaseID:(id)d;
- (void)removeTransientCasesWithSignature:(id)signature beforeTime:(double)time;
- (void)reportGeneratorEnded:(id)ended reportInfo:(id)info error:(id)error;
- (void)requestGroupCaseIdentifierForSignature:(id)signature reply:(id)reply;
- (void)requestSnapshotWithSignature:(id)signature flags:(unint64_t)flags events:(id)events;
- (void)resetAll;
- (void)resetAllForCustomerBuilds;
- (void)resetDiagnosticCaseStorage;
- (void)saveAllCases;
- (void)setUpGeneralCaseReportGenerators;
- (void)shutdown;
- (void)startCollectingNextReportForDiagnosticCase:(id)case;
- (void)startPacketCaptureForSession:(id)session duration:(id)duration;
- (void)startPeriodicTimer;
- (void)startSessionWithSignature:(id)signature duration:(double)duration events:(id)events payload:(id)payload triggerRemote:(BOOL)remote queue:(id)queue reply:(id)reply;
- (void)startSessionWithSignature:(id)signature flags:(unint64_t)flags preferredTimeout:(double)timeout events:(id)events payload:(id)payload actions:(id)actions reply:(id)reply;
- (void)stopPeriodicTimer;
- (void)updateAverageCasesPerDay;
- (void)updateSignatureWithBundleIdentifier:(id)identifier reply:(id)reply;
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

    storageDelegate = [(DiagnosticCaseManager *)self storageDelegate];
    if (objc_opt_respondsToSelector())
    {
      [storageDelegate didSaveDiagnosticCases];
    }

    self->_shouldPurgeStorageAfterSave = 0;
  }
}

- (ABCConfigurationManager)configManager
{
  v2 = +[ABCAdministrator sharedInstance];
  configurationManager = [v2 configurationManager];

  return configurationManager;
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

- (DiagnosticCaseManager)initWithWorkspace:(id)workspace liaison:(id)liaison
{
  workspaceCopy = workspace;
  liaisonCopy = liaison;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeProbes = v8->activeProbes;
    v8->activeProbes = dictionary;

    objc_storeStrong(&v8->_liaison, liaison);
    [(DiagnosticLiaison *)v8->_liaison setDelegate:v8];
    v23 = casemanagementLogHandle();
    [CaseDampeningExceptions setLoggingHandle:v23];

    v24 = +[SystemProperties sharedInstance];
    +[CaseDampeningExceptions setNPIDevice:](CaseDampeningExceptions, "setNPIDevice:", [v24 npiDevice]);

    v25 = +[SystemProperties sharedInstance];
    productType = [v25 productType];
    [CaseDampeningExceptions setProductType:productType];

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
    v34 = workspaceCopy;
    dispatch_async(v30, v32);
  }

  return v8;
}

- (void)configureWithWorkspace:(id)workspace
{
  v4 = [workspace copy];
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

  configManager = [(DiagnosticCaseManager *)self configManager];
  autoBugCaptureSignature = [configManager autoBugCaptureSignature];

  if (autoBugCaptureSignature)
  {
    v14 = objc_alloc_init(CoreAnalyticsReportOutlet);
    [(DiagnosticCaseManager *)self addCaseReportOutlet:v14];
  }

  configManager2 = [(DiagnosticCaseManager *)self configManager];
  autoBugCaptureRegularPayloads = [configManager2 autoBugCaptureRegularPayloads];

  if (autoBugCaptureRegularPayloads)
  {
    v17 = objc_alloc_init(DiagnosticPipelineOutlet);
    [(DiagnosticCaseManager *)self addCaseReportOutlet:v17];
  }

  [(DiagnosticCaseManager *)self setUpGeneralCaseReportGenerators];
}

- (void)addToInternalStateDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCABB0];
  dictionaryCopy = dictionary;
  v6 = [v4 numberWithBool:{-[DiagnosticCaseManager hasOpenCases](self, "hasOpenCases")}];
  [dictionaryCopy setObject:v6 forKeyedSubscript:@"hasOpenCases"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[DiagnosticCaseManager avgCasesPerDay](self, "avgCasesPerDay")}];
  [dictionaryCopy setObject:v7 forKeyedSubscript:@"avgCasesPerDay"];

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
  [dictionaryCopy setObject:v11 forKeyedSubscript:@"reportOutlets"];
}

void __54__DiagnosticCaseManager_addToInternalStateDictionary___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [*(a1 + 32) addObject:v3];
}

- (BOOL)disableDampening
{
  configManager = [(DiagnosticCaseManager *)self configManager];
  arbitratorDisableDampening = [configManager arbitratorDisableDampening];

  return arbitratorDisableDampening;
}

- (int64_t)dailyCountLimitForDomain:(id)domain type:(id)type subtype:(id)subtype domainPredicates:(id)predicates
{
  v33 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  subtypeCopy = subtype;
  predicatesCopy = predicates;
  if ([domainCopy isEqualToString:@"UIPerformance"])
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
    arbitratorDailyCountLimit = 10;
  }

  else if ([domainCopy isEqualToString:@"Performance"])
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
    arbitratorDailyCountLimit = 7;
  }

  else if ([domainCopy isEqualToString:@"Responsiveness"] && objc_msgSend(typeCopy, "isEqualToString:", @"CoreAnimation") && objc_msgSend(subtypeCopy, "isEqualToString:", @"Stall Tailspin"))
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
    arbitratorDailyCountLimit = 3;
  }

  else
  {
    configManager = [(DiagnosticCaseManager *)self configManager];
    arbitratorDailyCountLimit = [configManager arbitratorDailyCountLimit];

    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = arbitratorDailyCountLimit;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, " Applying default daily case limit of %ld", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain != %@", @"UIPerformance"];
    [predicatesCopy addObject:v21];

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain != %@", @"Performance"];
    [predicatesCopy addObject:v22];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDomain != %@ AND caseType != %@ AND caseSubtype != %@", @"Responsiveness", @"CoreAnimation", @"Stall Tailspin"];
  }

  [predicatesCopy addObject:v15];

  v23 = *MEMORY[0x277D85DE8];
  return arbitratorDailyCountLimit;
}

- (DiagnosticsController)diagnosticsController
{
  v13 = *MEMORY[0x277D85DE8];
  diagnosticsController = self->_diagnosticsController;
  if (!diagnosticsController)
  {
    configManager = [(DiagnosticCaseManager *)self configManager];
    defaultDiagnosticActions = [configManager defaultDiagnosticActions];

    if (defaultDiagnosticActions)
    {
      v6 = casemanagementLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = defaultDiagnosticActions;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "default actions: %@", &v11, 0xCu);
      }

      v7 = [[DiagnosticsController alloc] initWithConfiguration:defaultDiagnosticActions];
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
  queue = [(DiagnosticCaseManager *)self queue];

  if (queue)
  {
    saveCount = self->_saveCount;
    self->_saveCount = saveCount + 1;
    if (!saveCount)
    {
      v5 = dispatch_time(0, 3000000000);
      queue2 = [(DiagnosticCaseManager *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__DiagnosticCaseManager_saveAllCases__block_invoke;
      block[3] = &unk_278CEFE88;
      block[4] = self;
      dispatch_after(v5, queue2, block);
    }
  }

  else
  {

    [(DiagnosticCaseManager *)self _saveAllCases];
  }
}

- (void)removeTransientCasesWithSignature:(id)signature beforeTime:(double)time
{
  v36 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if (time <= 100000000.0)
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      timeCopy = time;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Invalid timestamp (%.0lf) passed to removeTransientCasesWithSignature:beforeTime:", buf, 0xCu);
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:time];
    v9 = [signatureCopy objectForKeyedSubscript:@"domain"];
    v10 = [signatureCopy objectForKeyedSubscript:@"type"];
    v11 = [signatureCopy objectForKeyedSubscript:@"subtype"];
    v12 = [signatureCopy objectForKeyedSubscript:@"detected"];
    0xFFFFFFFFLL = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"caseDampeningType", 0xFFFFFFFFLL];
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
        storageDelegate = [(DiagnosticCaseManager *)self storageDelegate];
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
          [storageDelegate purgeAttachmentsAtPaths:v21];
        }

        v22 = [(ObjectAnalytics *)self->_caseStorageAnalytics removeEntitiesMatching:v18];
        v23 = casemanagementLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          timeCopy = *&v22;
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

- (unsigned)dampeningFactorForSignature:(id)signature caseTime:(id)time limit:(int64_t)limit
{
  v59[2] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  timeCopy = time;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = [(DiagnosticCaseManager *)self defaultDampeningFactorForSignature:signatureCopy limit:limit];
  v48 = [signatureCopy objectForKeyedSubscript:@"domain"];
  v47 = [signatureCopy objectForKeyedSubscript:@"type"];
  v46 = [signatureCopy objectForKeyedSubscript:@"subtype"];
  v44 = [signatureCopy objectForKeyedSubscript:@"additional"];
  v43 = [signatureCopy objectForKeyedSubscript:@"detected"];
  [timeCopy timeIntervalSince1970];
  v10 = v9;
  configManager = [(DiagnosticCaseManager *)self configManager];
  dampeningRestrictionFactor = [configManager dampeningRestrictionFactor];

  v35 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v10 + sqrt(dampeningRestrictionFactor) * -86400.0];
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

- (unsigned)defaultDampeningFactorForSignature:(id)signature limit:(int64_t)limit
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(DiagnosticCaseManager *)self avgCasesPerDay:signature];
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

- (void)buildSpecificRestrictionsForSignature:(id)signature result:(id)result
{
  v26 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  resultCopy = result;
  if (resultCopy)
  {
    v8 = +[SystemProperties sharedInstance];
    if ([v8 internalBuild])
    {
      configManager = [(DiagnosticCaseManager *)self configManager];
      if (([configManager cloudKitEnabled] & 1) == 0)
      {
        configManager2 = [(DiagnosticCaseManager *)self configManager];
        submitToDiagnosticPipeline = [configManager2 submitToDiagnosticPipeline];

        if ((submitToDiagnosticPipeline & 1) == 0)
        {
          v12 = casemanagementLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Not allowing case due to invalid configuration (no valid upload mechanism configured).", &v24, 2u);
          }

          resultCopy[2](resultCopy, 1, 4);
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if ([v8 carrierSeedBuild])
    {
      configManager = [signatureCopy objectForKeyedSubscript:@"domain"];
      v13 = [signatureCopy objectForKeyedSubscript:@"type"];
      v14 = [signatureCopy objectForKeyedSubscript:@"subtype"];
      v15 = [signatureCopy objectForKeyedSubscript:@"detected"];
      if (([configManager isEqualToString:@"Cellular"] & 1) == 0 && (objc_msgSend(configManager, "isEqualToString:", @"Energy") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"Baseband") & 1) == 0 && (!objc_msgSend(configManager, "isEqualToString:", @"UIPerformance") || !objc_msgSend(v13, "isEqualToString:", @"Responsiveness") || !objc_msgSend(v14, "isEqualToString:", @"com.apple.signpost_emitter.emitter_category.emitter_name") || (objc_msgSend(v15, "isEqualToString:", @"signpost_emitter") & 1) == 0))
      {
        v16 = casemanagementLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          logSignatureDescription = [signatureCopy logSignatureDescription];
          v24 = 138543362;
          v25 = logSignatureDescription;
          _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Cases not explicitly permitted will be dampened on Carrier Seed builds: %{public}@", &v24, 0xCu);
        }

        resultCopy[2](resultCopy, 1, 7);
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
            logSignatureDescription2 = [signatureCopy logSignatureDescription];
            v24 = 138543362;
            v25 = logSignatureDescription2;
            _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "All cases will be dampened on Vendor builds: %{public}@", &v24, 0xCu);
          }

          resultCopy[2](resultCopy, 1, 6);
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      configManager = [signatureCopy objectForKeyedSubscript:@"domain"];
      v13 = [signatureCopy objectForKeyedSubscript:@"type"];
      v14 = [signatureCopy objectForKeyedSubscript:@"subtype"];
      v15 = [signatureCopy objectForKeyedSubscript:@"additional"];
      v18 = [signatureCopy objectForKeyedSubscript:@"detected"];
      if ((![configManager isEqualToString:@"Energy"] || (objc_msgSend(v13, "isEqualToString:", @"CPU") & 1) == 0) && (!objc_msgSend(configManager, "isEqualToString:", @"UIPerformance") || (objc_msgSend(v13, "isEqualToString:", @"Responsiveness") & 1) == 0) && (objc_msgSend(configManager, "isEqualToString:", @"Performance") & 1) == 0 && (!objc_msgSend(configManager, "isEqualToString:", @"Responsiveness") || !objc_msgSend(v13, "isEqualToString:", @"CoreAnimation") || (objc_msgSend(v14, "isEqualToString:", @"Stall Tailspin") & 1) == 0) && (objc_msgSend(configManager, "isEqualToString:", @"Cellular") & 1) == 0 && (objc_msgSend(configManager, "isEqualToString:", @"Telephony") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"IMSReg") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"IMS Call KPI") & 1) == 0 && (!objc_msgSend(configManager, "isEqualToString:", @"Location") || !objc_msgSend(v13, "isEqualToString:", @"GNSS") || !objc_msgSend(v14, "isEqualToString:", @"Emergency") || !objc_msgSend(v15, "isEqualToString:", @"long_EEM") || (objc_msgSend(v18, "isEqualToString:", @"locationd") & 1) == 0) && (!objc_msgSend(configManager, "isEqualToString:", @"iCloudDrive") || (objc_msgSend(v13, "isEqualToString:", @"Ciconia") & 1) == 0) && (!objc_msgSend(configManager, "isEqualToString:", @"SpotlightIndex") || (objc_msgSend(v13, "isEqualToString:", @"IndexCorruption") & 1) == 0))
      {
        v22 = casemanagementLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          logSignatureDescription3 = [signatureCopy logSignatureDescription];
          v24 = 138543362;
          v25 = logSignatureDescription3;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEFAULT, "Cases not explicitly permitted will be dampened on Seed builds: %{public}@", &v24, 0xCu);
        }

        resultCopy[2](resultCopy, 1, 7);
        goto LABEL_19;
      }
    }

LABEL_35:
LABEL_36:
    resultCopy[2](resultCopy, 0, 0);
    goto LABEL_37;
  }

LABEL_38:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)caseAllowanceForSignature:(id)signature timestamp:(id)timestamp result:(id)result
{
  v69[2] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  timestampCopy = timestamp;
  resultCopy = result;
  if (resultCopy)
  {
    if ([signatureCopy count])
    {
      context = objc_autoreleasePoolPush();
      if (!timestampCopy)
      {
        timestampCopy = [MEMORY[0x277CBEAA8] date];
      }

      v11 = [signatureCopy objectForKeyedSubscript:@"domain"];
      v12 = [signatureCopy objectForKeyedSubscript:@"type"];
      v13 = [signatureCopy objectForKeyedSubscript:@"subtype"];
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      selfCopy = self;
      v60 = v12;
      v61 = v11;
      v59 = v13;
      v48 = [(DiagnosticCaseManager *)self dailyCountLimitForDomain:v11 type:v12 subtype:v13 domainPredicates:v14];
      [timestampCopy timeIntervalSince1970];
      v16 = v15;
      v51 = timestampCopy;
      [timestampCopy timeIntervalSince1970];
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
      timestampCopy = v51;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *v65 = v63;
        *&v65[8] = 2112;
        *&v65[10] = v51;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "Current window is from %@ to %@ (now)", buf, 0x16u);
      }

      v32 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v30];
      v33 = [(ObjectAnalytics *)selfCopy->_caseStorageAnalytics countEntitiesMatching:v32];
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

        v37 = [(DiagnosticCaseManager *)selfCopy dampeningFactorForSignature:signatureCopy caseTime:v51 limit:v48 - v33];
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
            logSignatureDescription = [signatureCopy logSignatureDescription];
            *buf = 67109378;
            *v65 = v39;
            *&v65[4] = 2114;
            *&v65[6] = logSignatureDescription;
            _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Randomizer check passed [%d]. Accepting case: %{public}@", buf, 0x12u);
          }

          v42 = 0;
          goto LABEL_36;
        }

        if (v40)
        {
          logSignatureDescription2 = [signatureCopy logSignatureDescription];
          *buf = 67109378;
          *v65 = v39;
          *&v65[4] = 2114;
          *&v65[6] = logSignatureDescription2;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEFAULT, "Failed to pass randomizer check [%d]. Not accepting this case: %{public}@", buf, 0x12u);
        }

        v42 = 3;
      }

      v44 = [CaseDampeningExceptions allowDampeningExceptionFor:signatureCopy];
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

        if (![(DiagnosticCaseManager *)selfCopy isAllowedTransientException:signatureCopy])
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
      resultCopy[2](resultCopy, v46, v42);
      goto LABEL_38;
    }

    resultCopy[2](resultCopy, 0, 4);
  }

LABEL_38:

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAdmissible:(id)admissible dampenedBy:(signed __int16 *)by
{
  admissibleCopy = admissible;
  v7 = admissibleCopy;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (by)
  {
    *by = 4;
  }

  signature = [admissibleCopy signature];

  if (signature)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    signature2 = [v7 signature];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__DiagnosticCaseManager_isAdmissible_dampenedBy___block_invoke;
    v21[3] = &unk_278CF0F30;
    v21[5] = buf;
    v21[6] = by;
    v21[4] = &v26;
    [(DiagnosticCaseManager *)self buildSpecificRestrictionsForSignature:signature2 result:v21];

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
      if (by)
      {
        *by = 5;
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

    if (by)
    {
      *by = 0;
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
        signature3 = [v7 signature];
        caseStorage = [v7 caseStorage];
        timeStamp = [caseStorage timeStamp];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__DiagnosticCaseManager_isAdmissible_dampenedBy___block_invoke_187;
        v19[3] = &unk_278CF0F58;
        v19[4] = &v26;
        v19[5] = by;
        [(DiagnosticCaseManager *)self caseAllowanceForSignature:signature3 timestamp:timeStamp result:v19];

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

- (id)casesDiagnosedInTheLast:(double)last from:(double)from matchingDomain:(id)domain
{
  v29 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_totalCases reverseObjectEnumerator];
  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = from - last;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        [v15 caseOpenedTime];
        if (v16 < from)
        {
          [v15 caseOpenedTime];
          if (v17 > v13 && [v15 closureType] != 3)
          {
            if ([v15 closureType])
            {
              if (!domainCopy || ([v15 signature], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(domainCopy, "isEqualToString:", v19), v19, v18, v20))
              {
                [array addObject:v15];
              }
            }
          }
        }
      }

      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)requestGroupCaseIdentifierForSignature:(id)signature reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([signatureCopy count])
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
      [(DiagnosticCaseManager *)self buildSpecificRestrictionsForSignature:signatureCopy result:v23];
      if (v29[24] == 1)
      {
        (*(replyCopy + 2))(replyCopy, 0, *(v25 + 12), 0);
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
          [(DiagnosticCaseManager *)self caseAllowanceForSignature:signatureCopy timestamp:0 result:v18];
        }

        if (*(v20 + 24) == 1)
        {
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          uUID2 = [MEMORY[0x277CCAD78] UUID];
          uUIDString2 = [uUID2 UUIDString];
          v14 = [uUIDString stringByAppendingFormat:@"_%@", uUIDString2];

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

        (*(replyCopy + 2))(replyCopy, v16 & 1, *(v25 + 12), v14);

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

      (*(replyCopy + 2))(replyCopy, 0, 4, 0);
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

- (id)createDiagnosticCaseWithSignature:(id)signature flags:(unint64_t)flags events:(id)events payload:(id)payload actions:(id)actions
{
  v45 = *MEMORY[0x277D85DE8];
  if (!signature)
  {
    v16 = 0;
    goto LABEL_15;
  }

  actionsCopy = actions;
  payloadCopy = payload;
  eventsCopy = events;
  signatureCopy = signature;
  v16 = [[DiagnosticCase alloc] initWithSignature:signatureCopy flags:flags events:eventsCopy payload:payloadCopy actions:actionsCopy manager:self];

  v38 = 0;
  LODWORD(eventsCopy) = [(DiagnosticCaseManager *)self isAdmissible:v16 dampenedBy:&v38];
  v17 = casemanagementLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (eventsCopy)
  {
    if (v18)
    {
      caseId = [(DiagnosticCase *)v16 caseId];
      uUIDString = [caseId UUIDString];
      signature = [(DiagnosticCase *)v16 signature];
      logSignatureDescription = [signature logSignatureDescription];
      *buf = 138543618;
      v40 = uUIDString;
      v41 = 2114;
      v42 = logSignatureDescription;
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
    caseId2 = [(DiagnosticCase *)v16 caseId];
    uUIDString2 = [caseId2 UUIDString];
    signature2 = [(DiagnosticCase *)v16 signature];
    logSignatureDescription2 = [signature2 logSignatureDescription];
    v27 = [DiagnosticCase descriptionForDampeningType:v38];
    *buf = 138543874;
    v40 = uUIDString2;
    v41 = 2114;
    v42 = logSignatureDescription2;
    v43 = 2114;
    v44 = v27;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Rejecting case id %{public}@ with signature %{public}@ (%{public}@)", buf, 0x20u);
  }

  [(DiagnosticCase *)v16 setDampeningType:v38];
  [(DiagnosticCase *)v16 setClosureType:3];
  queue = [(DiagnosticCaseManager *)self queue];

  if (queue)
  {
    queue2 = [(DiagnosticCaseManager *)self queue];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __88__DiagnosticCaseManager_createDiagnosticCaseWithSignature_flags_events_payload_actions___block_invoke;
    v36 = &unk_278CEFE88;
    v37 = v16;
    dispatch_async(queue2, &v33);

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

- (id)diagnosticCaseWithId:(id)id
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
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
      caseId = [v10 caseId];
      v12 = [caseId isEqual:idCopy];

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
      uUIDString = [idCopy UUIDString];
      *buf = 138412290;
      v25 = uUIDString;
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
    uUIDString2 = [idCopy UUIDString];
    *buf = 138412290;
    v25 = uUIDString2;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Looking up case with ID %@{public} from persistent store", buf, 0xCu);
  }

  v15 = [[DiagnosticCase alloc] initWithCaseId:idCopy manager:self];
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_updateCaseStatisticsWithCase:(id)case
{
  v52 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  caseStorage = [caseCopy caseStorage];
  caseClosureType = [caseStorage caseClosureType];

  if (caseClosureType != 4)
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      caseId = [caseCopy caseId];
      uUIDString = [caseId UUIDString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = uUIDString;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Updating statistics for case %@", &buf, 0xCu);
    }

    [(NSMutableArray *)self->_pendingStatisticsUpdateCases addObject:caseCopy];
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
  v11 = caseCopy;
  v42 = v11;
  p_buf = &buf;
  [(NSMutableArray *)totalCases enumerateObjectsUsingBlock:v41];
  if (*(*(&buf + 1) + 40))
  {
    v12 = casemanagementLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(&buf + 1) + 40);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v15 = [v13 descriptionWithLocale:currentLocale];
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

    date = [MEMORY[0x277CBEAA8] date];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = date;
  }

  array = [MEMORY[0x277CBEB18] array];
  pendingStatisticsUpdateCases = self->_pendingStatisticsUpdateCases;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__DiagnosticCaseManager__updateCaseStatisticsWithCase___block_invoke_196;
  v37[3] = &unk_278CF0FD0;
  v37[4] = self;
  v29 = v11;
  v38 = v29;
  v40 = &buf;
  v32 = array;
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
          caseId2 = [v24 caseId];
          uUIDString2 = [caseId2 UUIDString];
          *v45 = 138412290;
          v46 = uUIDString2;
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

- (int)addToCaseWithId:(id)id events:(id)events payload:(id)payload
{
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  eventsCopy = events;
  payloadCopy = payload;
  if (idCopy && ([eventsCopy count] || objc_msgSend(payloadCopy, "count")))
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
      v23 = payloadCopy;
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
          caseId = [v17 caseId];
          v19 = [caseId isEqual:idCopy];

          if (v19)
          {
            if ([eventsCopy count])
            {
              [v17 addEvents:eventsCopy];
            }

            payloadCopy = v23;
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

      payloadCopy = v23;
    }

LABEL_21:
  }

  else
  {
    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = eventsCopy;
      v31 = 2112;
      v32 = payloadCopy;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "invalid parameters: event or payload must not be empty (events: %@, payload: %@)", buf, 0x16u);
    }

    v11 = 20;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)addSignatureContentToCaseWithId:(id)id key:(id)key content:(id)content
{
  v37 = *MEMORY[0x277D85DE8];
  idCopy = id;
  keyCopy = key;
  contentCopy = content;
  if (idCopy && [keyCopy length] && objc_msgSend(contentCopy, "length"))
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
      v27 = contentCopy;
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
          caseId = [v17 caseId];
          v19 = [caseId isEqual:idCopy];

          if (v19)
          {
            signature = [v17 signature];
            v22 = [signature objectForKey:keyCopy];

            contentCopy = v27;
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
              signature2 = [v17 signature];
              [signature2 setObject:v23 forKey:keyCopy];
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

      contentCopy = v27;
    }

LABEL_22:
  }

  else
  {
    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = keyCopy;
      v35 = 2112;
      v36 = contentCopy;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "invalid parameters: empty or missing key/content (key: %@, content: %@)", buf, 0x16u);
    }

    v11 = 20;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)cancelCaseWithId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (idCopy)
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
          caseId = [v11 caseId];
          v13 = [caseId isEqual:idCopy];

          if (v13)
          {
            events = [v11 events];
            [events removeAllObjects];

            payloads = [v11 payloads];
            [payloads removeAllObjects];

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
  configManager = [(DiagnosticCaseManager *)self configManager];
  autoBugCaptureRegularPayloads = [configManager autoBugCaptureRegularPayloads];

  if (autoBugCaptureRegularPayloads)
  {
    v5 = [[GetNetworkInfoReportGenerator alloc] initWithQueue:self->_queue];
    [(NSMutableDictionary *)self->_reportGenerators setObject:v5 forKeyedSubscript:@"GetNetworkInfoReporter"];

    v6 = [[FetchCrashesSpinsEtcFilesGenerator alloc] initWithQueue:self->_queue];
    [(NSMutableDictionary *)self->_reportGenerators setObject:v6 forKeyedSubscript:@"CrashesAndSpinsReporter"];

    v7 = [[FetchLogArchivesReportGenerator alloc] initWithQueue:self->_queue];
    [(NSMutableDictionary *)self->_reportGenerators setObject:v7 forKeyedSubscript:@"FetchLogArchiveReporter"];
  }
}

- (void)reportGeneratorEnded:(id)ended reportInfo:(id)info error:(id)error
{
  errorCopy = error;
  infoCopy = info;
  endedCopy = ended;
  diagCase = [endedCopy diagCase];
  [endedCopy setDelegate:0];
  [endedCopy setDiagCase:0];
  [(NSMutableArray *)self->_requestedReportGenerators removeObject:endedCopy];
  [diagCase reportGeneratorEnded:endedCopy reportInfo:infoCopy error:errorCopy isFinalReportGenerator:{-[NSMutableArray count](self->_requestedReportGenerators, "count") == 0}];

  if ([(NSMutableArray *)self->_requestedReportGenerators count])
  {
    [(DiagnosticCaseManager *)self startCollectingNextReportForDiagnosticCase:diagCase];
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

- (void)addTransactionForCaseID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
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

- (void)removeTransactionForCaseID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (!dCopy || ![dCopy length])
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

- (id)lookUpDiagnosticCaseStorageForUUID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v6 = [(DiagnosticCaseStorageAnalytics *)self->_caseStorageAnalytics diagnosticCaseStorageWithId:dCopy];
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 count];
    *buf = 134218242;
    v23 = v8;
    v24 = 2112;
    v25 = uUIDString;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Found %ld persisted case(s) for %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DiagnosticCaseManager_lookUpDiagnosticCaseStorageForUUID___block_invoke;
  v13[3] = &unk_278CF0FF8;
  v9 = uUIDString;
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

- (id)caseStorageForCaseID:(id)d
{
  dCopy = d;
  v5 = [(DiagnosticCaseManager *)self lookUpDiagnosticCaseStorageForUUID:dCopy];
  if (!v5)
  {
    v5 = [(DiagnosticCaseManager *)self createTemporaryDiagnosticCaseStorageForUUID:dCopy];
  }

  return v5;
}

- (BOOL)closeCase:(id)case
{
  v26 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  caseStorage = [caseCopy caseStorage];
  caseClosedTime = [caseStorage caseClosedTime];

  if (!caseClosedTime)
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      caseStorage2 = [caseCopy caseStorage];
      *buf = 138412290;
      v25 = caseStorage2;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Encountered a case with a nil caseClosedTime! (caseStorage: %@)", buf, 0xCu);
    }
  }

  queue = self->_queue;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __35__DiagnosticCaseManager_closeCase___block_invoke;
  v21 = &unk_278CF04F8;
  selfCopy = self;
  v10 = caseCopy;
  v23 = v10;
  dispatch_async(queue, &v18);
  [(NSMutableArray *)self->_activeCases removeObject:v10, v18, v19, v20, v21, selfCopy];
  [(DiagnosticCaseManager *)self _updateCaseStatisticsWithCase:v10];
  closureType = [v10 closureType];
  if (closureType == 4)
  {
    caseId = [v10 caseId];
    [(DiagnosticCaseManager *)self removeCaseStorageWithID:caseId];

    [(NSMutableArray *)self->_totalCases removeObject:v10];
  }

  else
  {
    if ([v10 dampeningType] == -1)
    {
      signature = [v10 signature];
      [v10 caseOpenedTime];
      [(DiagnosticCaseManager *)self removeTransientCasesWithSignature:signature beforeTime:?];
    }

    if ([v10 dampeningType] <= 0)
    {
      self->_shouldPurgeStorageAfterSave = 1;
      [(DiagnosticCaseManager *)self saveAllCases];
      caseId2 = [v10 caseId];
      uUIDString = [caseId2 UUIDString];
      [(DiagnosticCaseManager *)self removeTransactionForCaseID:uUIDString];
    }

    else
    {
      [(DiagnosticCaseManager *)self removeClosedCasesFromTotalCases];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return closureType == 4;
}

- (void)postProcessActionsForClosedCase:(id)case
{
  caseCopy = case;
  if ([caseCopy dampeningType] >= 1)
  {
    signature = [caseCopy signature];
    v5 = [signature objectForKeyedSubscript:@"domain"];
    v6 = [v5 isEqualToString:@"UIPerformance"];

    if (v6)
    {
      [(DiagnosticLiaison *)self->_liaison checkForUIImpactScenarioForCase:caseCopy];
    }
  }
}

- (unint64_t)collectDiagnosticExtensionLogsWithParameters:(id)parameters options:(id)options diagCase:(id)case reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  replyCopy = reply;
  caseCopy = case;
  optionsCopy = options;
  v14 = casemanagementLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = parametersCopy;
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Ready to collect from diagnostic extensions with parameters: %@", buf, 0xCu);
  }

  diagnosticsController = [(DiagnosticCaseManager *)self diagnosticsController];
  queue = [(DiagnosticCaseManager *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__DiagnosticCaseManager_collectDiagnosticExtensionLogsWithParameters_options_diagCase_reply___block_invoke;
  v21[3] = &unk_278CF1020;
  v22 = replyCopy;
  v17 = replyCopy;
  v18 = [diagnosticsController collectDiagnosticExtensionFilesForDiagnosticCase:caseCopy parameters:parametersCopy options:optionsCopy queue:queue reply:v21];

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

- (void)recordDiagnosticCaseSummaryForCase:(id)case
{
  v15 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = casemanagementLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    caseId = [caseCopy caseId];
    uUIDString = [caseId UUIDString];
    signature = [caseCopy signature];
    logSignatureDescription = [signature logSignatureDescription];
    v11 = 138543618;
    v12 = uUIDString;
    v13 = 2114;
    v14 = logSignatureDescription;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Saving summary for case id %{public}@ with signature %{public}@", &v11, 0x16u);
  }

  [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics insertEntityForDiagnosticCase:caseCopy];
  [(DiagnosticCaseManager *)self saveAllCases];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestReportGenerator:(id)generator options:(id)options
{
  v17 = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  optionsCopy = options;
  v8 = [(NSMutableDictionary *)self->_reportGenerators objectForKeyedSubscript:generatorCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setDefaults];
    [optionsCopy count];
    v10 = [generatorCopy isEqualToString:@"logarchive"];
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

  else if (([generatorCopy isEqualToString:@"diagext"] & 1) == 0)
  {
    v12 = casemanagementLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = generatorCopy;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Could not find requested report generator named %@", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

- (void)startCollectingNextReportForDiagnosticCase:(id)case
{
  v14 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  if ([(NSMutableArray *)self->_requestedReportGenerators count])
  {
    firstObject = [(NSMutableArray *)self->_requestedReportGenerators firstObject];
    [firstObject setDelegate:self];
    v6 = casemanagementLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "About to generate report by %@", &v12, 0xCu);
    }

    caseId = [caseCopy caseId];
    uUIDString = [caseId UUIDString];
    [firstObject generateReportForCase:caseCopy reportName:uUIDString];
  }

  else
  {
    firstObject = casemanagementLogHandle();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_241804000, firstObject, OS_LOG_TYPE_ERROR, "No reports requested, but we were asked to collect reports...?", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendReportsForCase:(id)case
{
  v28 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = [(NSMutableSet *)self->_reportOutlets count]!= 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
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

        v11 = [*(*(&v19 + 1) + 8 * i) publishReportForCase:caseCopy options:0];
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

  [(NSMutableArray *)selfCopy->_activeCases removeObject:caseCopy];
  v16 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)statisticsRowForDiagnosticCase:(id)case matchesWith:(id)with
{
  caseCopy = case;
  withCopy = with;
  caseStorage = [caseCopy caseStorage];
  caseDomain = [caseStorage caseDomain];
  if (caseDomain)
  {

LABEL_4:
    caseStorage2 = [caseCopy caseStorage];
    caseDomain2 = [caseStorage2 caseDomain];
    caseStorage3 = [withCopy caseStorage];
    caseDomain3 = [caseStorage3 caseDomain];
    v15 = [caseDomain2 isEqualToString:caseDomain3];

    goto LABEL_5;
  }

  caseStorage4 = [withCopy caseStorage];
  caseDomain4 = [caseStorage4 caseDomain];

  if (caseDomain4)
  {
    goto LABEL_4;
  }

  v15 = 1;
LABEL_5:
  caseStorage5 = [caseCopy caseStorage];
  caseType = [caseStorage5 caseType];
  if (caseType)
  {
  }

  else
  {
    caseStorage6 = [withCopy caseStorage];
    caseType2 = [caseStorage6 caseType];

    if (!caseType2)
    {
      goto LABEL_9;
    }
  }

  caseStorage7 = [caseCopy caseStorage];
  caseType3 = [caseStorage7 caseType];
  caseStorage8 = [withCopy caseStorage];
  caseType4 = [caseStorage8 caseType];
  v15 &= [caseType3 isEqualToString:caseType4];

LABEL_9:
  caseStorage9 = [caseCopy caseStorage];
  caseSubtype = [caseStorage9 caseSubtype];
  if (caseSubtype)
  {
  }

  else
  {
    caseStorage10 = [withCopy caseStorage];
    caseSubtype2 = [caseStorage10 caseSubtype];

    if (!caseSubtype2)
    {
      goto LABEL_13;
    }
  }

  caseStorage11 = [caseCopy caseStorage];
  caseSubtype3 = [caseStorage11 caseSubtype];
  caseStorage12 = [withCopy caseStorage];
  caseSubtype4 = [caseStorage12 caseSubtype];
  v15 &= [caseSubtype3 isEqualToString:caseSubtype4];

LABEL_13:
  caseStorage13 = [caseCopy caseStorage];
  caseSubtypeContext = [caseStorage13 caseSubtypeContext];
  if (caseSubtypeContext)
  {
  }

  else
  {
    caseStorage14 = [withCopy caseStorage];
    caseSubtypeContext2 = [caseStorage14 caseSubtypeContext];

    if (!caseSubtypeContext2)
    {
      goto LABEL_17;
    }
  }

  caseStorage15 = [caseCopy caseStorage];
  caseSubtypeContext3 = [caseStorage15 caseSubtypeContext];
  caseStorage16 = [withCopy caseStorage];
  caseSubtypeContext4 = [caseStorage16 caseSubtypeContext];
  v15 &= [caseSubtypeContext3 isEqualToString:caseSubtypeContext4];

LABEL_17:
  caseStorage17 = [caseCopy caseStorage];
  caseDetectedProcess = [caseStorage17 caseDetectedProcess];
  if (caseDetectedProcess)
  {

LABEL_20:
    caseStorage18 = [caseCopy caseStorage];
    caseDetectedProcess2 = [caseStorage18 caseDetectedProcess];
    caseStorage19 = [withCopy caseStorage];
    caseDetectedProcess3 = [caseStorage19 caseDetectedProcess];
    v15 &= [caseDetectedProcess2 isEqualToString:caseDetectedProcess3];

    goto LABEL_21;
  }

  caseStorage20 = [withCopy caseStorage];
  caseDetectedProcess4 = [caseStorage20 caseDetectedProcess];

  if (caseDetectedProcess4)
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

- (void)getHistoricalDiagnosicCaseDictionaryFromIdentifier:(id)identifier withEvents:(BOOL)events count:(unint64_t)count reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__DiagnosticCaseManager_getHistoricalDiagnosicCaseDictionaryFromIdentifier_withEvents_count_reply___block_invoke;
  block[3] = &unk_278CF1070;
  block[4] = self;
  v16 = identifierCopy;
  eventsCopy = events;
  v17 = replyCopy;
  countCopy = count;
  v13 = replyCopy;
  v14 = identifierCopy;
  dispatch_async(queue, block);
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

- (void)listCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DiagnosticCaseManager_listCaseSummariesWithIdentifiers_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
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

- (id)caseSummariesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_autoreleasePoolPush();
  v7 = [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics fetchCaseSummariesWithIdentifiers:identifiersCopy];
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

- (void)listCaseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count reply:(id)reply
{
  typeCopy = type;
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__DiagnosticCaseManager_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke;
  block[3] = &unk_278CF1098;
  block[4] = self;
  v18 = typeCopy;
  v20 = replyCopy;
  countCopy = count;
  v19 = identifierCopy;
  v14 = replyCopy;
  v15 = identifierCopy;
  v16 = typeCopy;
  dispatch_async(queue, block);
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

- (id)caseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (count - 21 <= 0xFFFFFFFFFFFFFFEBLL)
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

    count = 20;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics fetchCaseSummariesOfType:typeCopy fromIdentifier:identifierCopy count:count];
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

- (id)_updateSignatureWithBuildVariantInfoAndFlags:(id)flags
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [flags mutableCopy];
  v5 = +[SystemProperties sharedInstance];
  buildVariant = [v5 buildVariant];
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = buildVariant;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "This case's buildVariant is %@", &v13, 0xCu);
  }

  [v4 setObject:buildVariant forKey:@"build_variant"];
  if ([v5 internalBuild])
  {
    configManager = [(DiagnosticCaseManager *)self configManager];
    isDeviceUnderTest = [configManager isDeviceUnderTest];

    if (isDeviceUnderTest)
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

- (void)_processRemoteIDSTriggers:(id)triggers validFor:(double)for signature:(id)signature sessionID:(id)d reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  signatureCopy = signature;
  dCopy = d;
  replyCopy = reply;
  v16 = [signatureCopy objectForKeyedSubscript:@"groupID"];
  v17 = [v16 length];
  v18 = casemanagementLogHandle();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v33 = dCopy;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEBUG, "Ready to trigger a remote case for session %{public}@", buf, 0xCu);
    }

    if (for < 1.0)
    {
      for = 3600.0;
    }

    liaison = [(DiagnosticCaseManager *)self liaison];
    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke_215;
    v26[3] = &unk_278CF10E8;
    v22 = v27;
    v23 = triggersCopy;
    v27[0] = v23;
    v27[1] = self;
    v28 = dCopy;
    v29 = replyCopy;
    [liaison remotelyTriggerSessionWithSignature:signatureCopy forDestinations:v23 groupIdentifier:v16 validFor:queue queue:v26 reply:for];

    goto LABEL_11;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Remote case trigger requires a group identifier.", buf, 2u);
  }

  if (replyCopy)
  {
    queue = [(DiagnosticCaseManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__DiagnosticCaseManager__processRemoteIDSTriggers_validFor_signature_sessionID_reply___block_invoke;
    block[3] = &unk_278CF0A58;
    v22 = &v31;
    v31 = replyCopy;
    dispatch_async(queue, block);

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

- (void)_processReportActions:(id)actions session:(id)session
{
  v48 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  sessionCopy = session;
  v6 = [actionsCopy objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
    v8 = casemanagementLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "disabled";
      if (bOOLValue)
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
    bOOLValue = 1;
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
    bOOLValue = 1;
    goto LABEL_14;
  }

  v10 = 0;
  bOOLValue = 1;
LABEL_15:
  v13 = [actionsCopy objectForKeyedSubscript:@"logarchive"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue2 = [v13 BOOLValue];
    v15 = casemanagementLogHandle();
    v41 = bOOLValue2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = "disabled";
      if (bOOLValue2)
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
  v19 = [actionsCopy objectForKeyedSubscript:@"cnslogs"];
  objc_opt_class();
  v42 = v13;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue3 = [v19 BOOLValue];
    v21 = casemanagementLogHandle();
    v22 = actionsCopy;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = "disabled";
      if (bOOLValue)
      {
        v23 = "enabled";
      }

      *buf = 136315138;
      v45 = v23;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Crashes and Spins log collection is %s by client request", buf, 0xCu);
    }

LABEL_34:
    v26 = bOOLValue;

    goto LABEL_35;
  }

  if (v19)
  {
    v21 = casemanagementLogHandle();
    v22 = actionsCopy;
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

    bOOLValue3 = 1;
    goto LABEL_34;
  }

  v22 = actionsCopy;
  v26 = bOOLValue;
  bOOLValue3 = 1;
LABEL_35:
  v27 = v6;
  v28 = [v22 objectForKeyedSubscript:@"gni"];
  objc_opt_class();
  v29 = v10;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue4 = [v28 BOOLValue];
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

    bOOLValue4 = 1;
    goto LABEL_44;
  }

  bOOLValue4 = 1;
LABEL_45:
  v35 = +[SystemProperties sharedInstance];
  customerSeedBuild = [v35 customerSeedBuild];

  v37 = v29;
  v38 = v41;
  if (customerSeedBuild)
  {
    v39 = casemanagementLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_INFO, "Customer Seed installs will only enable DiagnosticExtension collection", buf, 2u);
    }

    bOOLValue3 = 0;
    bOOLValue4 = 0;
    v38 = 0;
  }

  if (v26)
  {
    [sessionCopy addRequiredAction:@"diagext" option:v37 attachmentType:@"diagext" pattern:0];
    if (!v38)
    {
LABEL_51:
      if (!bOOLValue3)
      {
        goto LABEL_52;
      }

LABEL_57:
      [sessionCopy addRequiredAction:@"CrashesAndSpinsReporter" option:0 attachmentType:@"cnslogs" pattern:@"crashes_and_spins"];
      if (!bOOLValue4)
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

  [sessionCopy addRequiredAction:@"FetchLogArchiveReporter" option:0 attachmentType:@"logarchive" pattern:@"logs-"];
  if (bOOLValue3)
  {
    goto LABEL_57;
  }

LABEL_52:
  if (bOOLValue4)
  {
LABEL_53:
    [sessionCopy addRequiredAction:@"GetNetworkInfoReporter" option:0 attachmentType:@"gni" pattern:@"get_network_info"];
  }

LABEL_54:

  v40 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_processProbeActions:(id)actions session:(id)session
{
  actionsCopy = actions;
  sessionCopy = session;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  caseId = [sessionCopy caseId];

  if (caseId)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__DiagnosticCaseManager__processProbeActions_session___block_invoke;
    v12[3] = &unk_278CF1110;
    v12[4] = self;
    v13 = sessionCopy;
    v14 = &v16;
    [actionsCopy enumerateKeysAndObjectsUsingBlock:v12];
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

- (void)_processActionsForPacketCaptureProbe:(id)probe session:(id)session
{
  v26 = *MEMORY[0x277D85DE8];
  probeCopy = probe;
  sessionCopy = session;
  configManager = [(DiagnosticCaseManager *)self configManager];
  autoBugCaptureSensitivePayloads = [configManager autoBugCaptureSensitivePayloads];

  if (!autoBugCaptureSensitivePayloads)
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
      if (![probeCopy BOOLValue])
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
      v23 = probeCopy;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ as object in actions dictionary.", &v22, 0x16u);
    }

LABEL_7:

    v12 = &unk_28537A290;
    goto LABEL_18;
  }

  v10 = probeCopy;
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
    caseId = [sessionCopy caseId];
    v22 = 138543362;
    v23 = caseId;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Packet capture probe requested for case %{public}@", &v22, 0xCu);
  }

  [(DiagnosticCaseManager *)self startPacketCaptureForSession:sessionCopy duration:v12];
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

    queue = [(DiagnosticCaseManager *)self queue];
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
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
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;

  array = [MEMORY[0x277CBEB18] array];
  activeCases = [(DiagnosticCaseManager *)self activeCases];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [activeCases countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(activeCases);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        [v12 caseOpenedTime];
        if (v5 > v13 + 900.0)
        {
          [array addObject:v12];
        }
      }

      v9 = [activeCases countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v14 = casemanagementLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [array count];
      *buf = 134217984;
      v32 = v15;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "Found %ld overdue sessions. Force closing...", buf, 0xCu);
    }

    queue = [(DiagnosticCaseManager *)self queue];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __50__DiagnosticCaseManager_periodicSessionManagement__block_invoke;
    v24 = &unk_278CF04F8;
    selfCopy = self;
    v26 = array;
    dispatch_async(queue, &v21);
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

- (void)updateSignatureWithBundleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v6 = [identifierCopy objectForKeyedSubscript:@"bundleID"];
  v7 = [identifierCopy objectForKeyedSubscript:@"machUUID"];
  v8 = [identifierCopy objectForKeyedSubscript:@"pid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v8 integerValue];
  }

  if (![v6 length])
  {
    [v7 length];
  }

  replyCopy[2](replyCopy, identifierCopy);
}

- (void)startPacketCaptureForSession:(id)session duration:(id)duration
{
  v46[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  durationCopy = duration;
  v8 = [TCPDumpProbe alloc];
  queue = [(DiagnosticCaseManager *)self queue];
  v10 = [(TCPDumpProbe *)v8 initWithQueue:queue];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  caseId = [sessionCopy caseId];
  uUIDString = [caseId UUIDString];

  dictionary = [(NSMutableDictionary *)self->activeProbes objectForKeyedSubscript:uUIDString];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->activeProbes setObject:dictionary forKeyedSubscript:uUIDString];
  }

  [dictionary setObject:v10 forKeyedSubscript:v12];
  [(TestProbe *)v10 setDiagSessionUUID:uUIDString];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke;
  aBlock[3] = &unk_278CF1160;
  v43 = v12;
  selfCopy = self;
  v45 = dictionary;
  v32 = dictionary;
  v16 = v12;
  v17 = _Block_copy(aBlock);
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:@"probe" forKeyedSubscript:@"type"];
  [dictionary2 setObject:v16 forKeyedSubscript:@"name"];
  [dictionary2 setObject:@"Requesting" forKeyedSubscript:@"status"];
  v19 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v21 = [v19 numberWithDouble:?];
  [dictionary2 setObject:v21 forKeyedSubscript:@"timestamp"];

  [dictionary2 setObject:durationCopy forKeyedSubscript:@"requestedDuration"];
  v46[0] = dictionary2;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __63__DiagnosticCaseManager_startPacketCaptureForSession_duration___block_invoke_2;
  v40[3] = &unk_278CF1138;
  v23 = uUIDString;
  v41 = v23;
  [(DiagnosticCaseManager *)self addToSession:v23 events:v22 payload:0 reply:v40];

  [sessionCopy addRequiredAttachmentType:@"pcap" pattern:@".pcapng"];
  [durationCopy doubleValue];
  v25 = v24;

  configManager = [(DiagnosticCaseManager *)self configManager];
  logArchivePath = [configManager logArchivePath];
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
  [(TCPDumpProbe *)v30 startTCPDumpWithDuration:logArchivePath destinationPath:v37 tcpDumpStarted:v33 tcpDumpCompleted:v25];

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

- (void)cancelProbesForSession:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [(NSMutableDictionary *)self->activeProbes objectForKeyedSubscript:sessionCopy];
  if ([v5 count])
  {
    v6 = casemanagementLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v19 = [v5 count];
      v20 = 2114;
      v21 = sessionCopy;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Cancelling all %lu probes for session: %{public}@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [v5 allValues];
    v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v13 + 1) + 8 * v11++) cancelTest:0];
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)endSessionIfProbesCompletedFor:(id)for
{
  v14 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = [(NSMutableDictionary *)self->activeProbes objectForKeyedSubscript:forCopy];
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
      v13 = forCopy;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Waiting for %ld requested probes to complete before ending session %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = 138543362;
      v11 = forCopy;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "All requested probes completed for session %{public}@. Ready to end.", &v10, 0xCu);
    }

    [(NSMutableDictionary *)self->activeProbes setObject:0 forKeyedSubscript:forCopy];
    [(DiagnosticCaseManager *)self endSessionWithIdentifier:forCopy forced:0 onlyIfReady:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteTriggerDeliveryUpdateEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = casemanagementLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = eventCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "IDS remote trigger send message update: %@", buf, 0xCu);
  }

  v6 = [eventCopy objectForKeyedSubscript:@"IDSMessageIdentifier"];
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

    queue = [(DiagnosticCaseManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__DiagnosticCaseManager_remoteTriggerDeliveryUpdateEvent___block_invoke;
    v12[3] = &unk_278CF10C0;
    v13 = v7;
    [(DiagnosticCaseManager *)self addToSession:v13 event:eventCopy payload:0 queue:queue reply:v12];

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

- (void)requestSnapshotWithSignature:(id)signature flags:(unint64_t)flags events:(id)events
{
  v14 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  eventsCopy = events;
  v10 = casemanagementLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = signatureCopy;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Ready to request remotely triggered case with signature: %@", &v12, 0xCu);
  }

  [(DiagnosticCaseManager *)self startSessionWithSignature:signatureCopy flags:flags preferredTimeout:eventsCopy events:0 payload:0 actions:&__block_literal_global_256 reply:0.0];
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

- (void)startSessionWithSignature:(id)signature duration:(double)duration events:(id)events payload:(id)payload triggerRemote:(BOOL)remote queue:(id)queue reply:(id)reply
{
  remoteCopy = remote;
  queueCopy = queue;
  replyCopy = reply;
  v18 = replyCopy;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__DiagnosticCaseManager_startSessionWithSignature_duration_events_payload_triggerRemote_queue_reply___block_invoke;
  v22[3] = &unk_278CF0298;
  if (remoteCopy)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v23 = queueCopy;
  v24 = replyCopy;
  v20 = queueCopy;
  v21 = v18;
  [(DiagnosticCaseManager *)self startSessionWithSignature:signature flags:v19 preferredTimeout:events events:payload payload:0 actions:v22 reply:duration];
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

- (void)addToSession:(id)session event:(id)event payload:(id)payload queue:(id)queue reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  payloadCopy = payload;
  queueCopy = queue;
  replyCopy = reply;
  if (event)
  {
    eventCopy = event;
    v16 = MEMORY[0x277CBEA60];
    eventCopy2 = event;
    event = [v16 arrayWithObjects:&eventCopy count:1];
  }

  [(DiagnosticCaseManager *)self addToSession:sessionCopy events:event payload:payloadCopy queue:queueCopy reply:replyCopy, eventCopy, v20];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addToSession:(id)session events:(id)events payload:(id)payload queue:(id)queue reply:(id)reply
{
  sessionCopy = session;
  eventsCopy = events;
  payloadCopy = payload;
  queueCopy = queue;
  replyCopy = reply;
  v17 = replyCopy;
  if (eventsCopy | payloadCopy)
  {
    v18 = [eventsCopy copy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke;
    v21[3] = &unk_278CF0310;
    v23 = v17;
    v22 = queueCopy;
    [(DiagnosticCaseManager *)self addToSession:sessionCopy events:v18 payload:payloadCopy reply:v21];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DiagnosticCaseManager_addToSession_events_payload_queue_reply___block_invoke_3;
    block[3] = &unk_278CF0A58;
    v20 = replyCopy;
    dispatch_async(queueCopy, block);
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

- (void)startSessionWithSignature:(id)signature flags:(unint64_t)flags preferredTimeout:(double)timeout events:(id)events payload:(id)payload actions:(id)actions reply:(id)reply
{
  signatureCopy = signature;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  replyCopy = reply;
  v30 = eventsCopy;
  v21 = [eventsCopy copy];
  v22 = [payloadCopy copy];
  v23 = [actionsCopy copy];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__DiagnosticCaseManager_startSessionWithSignature_flags_preferredTimeout_events_payload_actions_reply___block_invoke;
  block[3] = &unk_278CF12C0;
  block[4] = self;
  v32 = signatureCopy;
  v33 = v21;
  v34 = v22;
  timeoutCopy = timeout;
  v37 = v40;
  flagsCopy = flags;
  v35 = v23;
  v36 = replyCopy;
  v25 = replyCopy;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = signatureCopy;
  dispatch_async(queue, block);

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

- (void)addToSession:(id)session events:(id)events payload:(id)payload reply:(id)reply
{
  sessionCopy = session;
  eventsCopy = events;
  payloadCopy = payload;
  replyCopy = reply;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DiagnosticCaseManager_addToSession_events_payload_reply___block_invoke;
  block[3] = &unk_278CF12E8;
  v20 = sessionCopy;
  v21 = eventsCopy;
  v22 = payloadCopy;
  selfCopy = self;
  v24 = replyCopy;
  v15 = replyCopy;
  v16 = payloadCopy;
  v17 = eventsCopy;
  v18 = sessionCopy;
  dispatch_async(queue, block);
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

- (void)addSignatureContentForSession:(id)session key:(id)key content:(id)content reply:(id)reply
{
  sessionCopy = session;
  keyCopy = key;
  contentCopy = content;
  replyCopy = reply;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DiagnosticCaseManager_addSignatureContentForSession_key_content_reply___block_invoke;
  block[3] = &unk_278CF12E8;
  v20 = sessionCopy;
  v21 = keyCopy;
  v22 = contentCopy;
  selfCopy = self;
  v24 = replyCopy;
  v15 = replyCopy;
  v16 = contentCopy;
  v17 = keyCopy;
  v18 = sessionCopy;
  dispatch_async(queue, block);
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

- (void)endSessions:(id)sessions forced:(BOOL)forced
{
  sessionsCopy = sessions;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DiagnosticCaseManager_endSessions_forced___block_invoke;
  block[3] = &unk_278CF1310;
  forcedCopy = forced;
  v10 = sessionsCopy;
  selfCopy = self;
  v8 = sessionsCopy;
  dispatch_async(queue, block);
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

- (void)endSessionWithIdentifier:(id)identifier forced:(BOOL)forced onlyIfReady:(BOOL)ready
{
  v8 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  v10 = [[v8 alloc] initWithUUIDString:identifierCopy];

  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__DiagnosticCaseManager_endSessionWithIdentifier_forced_onlyIfReady___block_invoke;
  block[3] = &unk_278CF1338;
  block[4] = self;
  v14 = v10;
  forcedCopy = forced;
  readyCopy = ready;
  v12 = v10;
  dispatch_async(queue, block);
}

- (void)cancelSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(DiagnosticCaseManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DiagnosticCaseManager_cancelSessionWithIdentifier___block_invoke;
  v7[3] = &unk_278CF04F8;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
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
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DiagnosticCaseManager_shutdown__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_sync(queue, block);
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
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DiagnosticCaseManager_resetDiagnosticCaseStorage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
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
  configManager = [(DiagnosticCaseManager *)self configManager];
  autoBugCaptureAvailable = [configManager autoBugCaptureAvailable];

  if ((autoBugCaptureAvailable & 1) == 0)
  {
    queue = [(DiagnosticCaseManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DiagnosticCaseManager_resetAllForCustomerBuilds__block_invoke;
    block[3] = &unk_278CEFE88;
    block[4] = self;
    dispatch_async(queue, block);
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
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DiagnosticCaseManager_resetAll__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)payloadsForSignatures:(id)signatures reply:(id)reply
{
  signaturesCopy = signatures;
  replyCopy = reply;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DiagnosticCaseManager_payloadsForSignatures_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  v12 = signaturesCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = signaturesCopy;
  dispatch_async(queue, block);
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

- (id)createTemporaryDiagnosticCaseStorageForUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  uUIDString = [d UUIDString];
  createTemporaryEntity = [(ObjectAnalytics *)self->_caseStorageAnalytics createTemporaryEntity];
  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    uTF8String = [uUIDString UTF8String];
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Create a temporary case storage entry of %s", &v11, 0xCu);
  }

  if (createTemporaryEntity)
  {
    [createTemporaryEntity setCaseID:uUIDString];
  }

  else
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [uUIDString UTF8String];
      v11 = 136315138;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Couldn't create a temporary case storage entry of %s", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return createTemporaryEntity;
}

- (void)promoteTemporaryCase:(id)case
{
  v12 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  caseStorage = [caseCopy caseStorage];

  v6 = casemanagementLogHandle();
  caseStorage2 = v6;
  if (caseStorage)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = caseCopy;
      _os_log_impl(&dword_241804000, caseStorage2, OS_LOG_TYPE_DEBUG, "Promoting temporary case storage to permanent case storage for case %@.", &v10, 0xCu);
    }

    caseStorageAnalytics = self->_caseStorageAnalytics;
    caseStorage2 = [caseCopy caseStorage];
    [(ObjectAnalytics *)caseStorageAnalytics moveTemporaryEntityToMainContext:caseStorage2];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = caseCopy;
    _os_log_impl(&dword_241804000, caseStorage2, OS_LOG_TYPE_ERROR, "No temporary DiagnosticCaseStorage for case %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)countOfCasesMatchingDomain:(id)domain type:(id)type subtype:(id)subtype process:(id)process groupCaseIDIsPresent:(BOOL)present withinLast:(double)last reply:(id)reply
{
  domainCopy = domain;
  typeCopy = type;
  subtypeCopy = subtype;
  processCopy = process;
  replyCopy = reply;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__DiagnosticCaseManager_countOfCasesMatchingDomain_type_subtype_process_groupCaseIDIsPresent_withinLast_reply___block_invoke;
  block[3] = &unk_278CF1388;
  block[4] = self;
  v28 = domainCopy;
  v29 = typeCopy;
  v30 = subtypeCopy;
  lastCopy = last;
  presentCopy = present;
  v32 = replyCopy;
  v33 = v36;
  v31 = processCopy;
  v22 = replyCopy;
  v23 = processCopy;
  v24 = subtypeCopy;
  v25 = typeCopy;
  v26 = domainCopy;
  dispatch_async(queue, block);

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

- (id)casesMatchingDomain:(id)domain type:(id)type subtype:(id)subtype process:(id)process withinLast:(double)last
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = [(DiagnosticCaseManager *)self _predicatesForCasesMatchingDomain:domain type:type subtype:subtype process:process withinLast:?];
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
      lastCopy = last;
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

- (id)_predicatesForCasesMatchingDomain:(id)domain type:(id)type subtype:(id)subtype process:(id)process withinLast:(double)last
{
  v33 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  subtypeCopy = subtype;
  processCopy = process;
  v15 = processCopy;
  if (domainCopy || typeCopy || subtypeCopy || processCopy || last > 0.0)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (last <= 0.0)
    {
      v18 = casemanagementLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "No window provided. Using default window of 24 hours.", buf, 2u);
      }

      last = 86400.0;
    }

    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-last];
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"timeStamp", v16];
    [array addObject:v19];
    v20 = casemanagementLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      lastCopy = last;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEBUG, "Adding predicate for window of %.0lf seconds", buf, 0xCu);
    }

    if ([domainCopy length])
    {
      domainCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseDomain", domainCopy];
      [array addObject:domainCopy];
      v22 = casemanagementLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        lastCopy = *&domainCopy;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "Adding predicate for domain %@", buf, 0xCu);
      }
    }

    if ([typeCopy length])
    {
      typeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseType", typeCopy];
      [array addObject:typeCopy];
      v24 = casemanagementLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        lastCopy = *&typeCopy;
        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEBUG, "Adding predicate for type %@", buf, 0xCu);
      }
    }

    if ([subtypeCopy length])
    {
      subtypeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseSubtype", subtypeCopy];
      [array addObject:subtypeCopy];
      v26 = casemanagementLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        lastCopy = *&subtypeCopy;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "Adding predicate for subtype %@", buf, 0xCu);
      }
    }

    if ([v15 length])
    {
      v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"caseDetectedProcess", v15];
      [array addObject:v27];
      v28 = casemanagementLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        lastCopy = *&v15;
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

    array = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)forceCloseDiagnosticCaseStorage
{
  queue = [(DiagnosticCaseManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DiagnosticCaseManager_forceCloseDiagnosticCaseStorage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
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
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:6];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:5];
    v13 = [v9 dictionaryWithObjectsAndKeys:{date, @"caseClosedTime", v11, @"caseState", v12, @"caseClosureType", 0}];

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

- (BOOL)isAllowedTransientException:(id)exception
{
  exceptionCopy = exception;
  v4 = [exceptionCopy objectForKeyedSubscript:@"domain"];
  v5 = [exceptionCopy objectForKeyedSubscript:@"type"];
  v6 = [exceptionCopy objectForKeyedSubscript:@"subtype"];

  v7 = [v4 isEqualToString:@"Networking"] && objc_msgSend(v5, "isEqualToString:", @"Performance") && ((objc_msgSend(v6, "isEqualToString:", @"AirPlay") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"AirPlay Connection Stalled"));
  return v7;
}

- (void)removeCaseStorageWithID:(id)d
{
  v4 = MEMORY[0x277CCAC30];
  uUIDString = [d UUIDString];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"caseID", uUIDString];

  [(ObjectAnalytics *)self->_caseStorageAnalytics removeEntitiesMatching:v6];
}

- (void)removeAllCases
{
  v10 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_activeCases removeAllObjects];
  [(NSMutableArray *)self->_totalCases removeAllObjects];
  removeAllDiagnosticCaseStorages = [(DiagnosticCaseStorageAnalytics *)self->_caseStorageAnalytics removeAllDiagnosticCaseStorages];
  v4 = casemanagementLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = removeAllDiagnosticCaseStorages;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Removed %ld cases from persistent store", &v8, 0xCu);
  }

  removeAllDiagnosticCaseSummaries = [(DiagnosticCaseSummaryAnalytics *)self->_caseSummaryAnalytics removeAllDiagnosticCaseSummaries];
  v6 = casemanagementLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = removeAllDiagnosticCaseSummaries;
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