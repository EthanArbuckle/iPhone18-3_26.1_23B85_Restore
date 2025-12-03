@interface ABCPersistentStoreController
- (ABCPersistentStoreController)init;
- (ABCPersistentStoreController)initWithName:(id)name inDirectory:(id)directory;
- (ABCPersistentStoreControllerDelegate)delegate;
- (AnalyticsWorkspace)workspace;
- (BOOL)prepareWorkspaceWithDirectoryPath:(id)path;
- (id)caseStorageAnalytics;
- (id)caseSummaryAnalytics;
- (id)caseUsageAnalytics;
- (id)prepareDataDirectoryWithName:(id)name containerPath:(id)path;
- (id)uploadRecordAnalytics;
- (void)caseAttachmentsForAllDiagnosticCasesWithQueue:(id)queue reply:(id)reply;
- (void)caseAttachmentsForDiagnosticCaseIDs:(id)ds queue:(id)queue reply:(id)reply;
- (void)cleanupDiagnosticCaseStorage;
- (void)cleanupDiagnosticCaseSummary;
- (void)cleanupDiagnosticCaseUsage;
- (void)cleanupUploadRecord;
- (void)removeAllCaseStorages;
- (void)removeCaseStorageWithID:(id)d;
- (void)removeCaseStoragesWithCaseIDs:(id)ds;
- (void)removeCaseStoragesWithUUIDs:(id)ds;
- (void)save:(BOOL)save;
@end

@implementation ABCPersistentStoreController

- (ABCPersistentStoreController)initWithName:(id)name inDirectory:(id)directory
{
  nameCopy = name;
  directoryCopy = directory;
  v20.receiver = self;
  v20.super_class = ABCPersistentStoreController;
  v8 = [(ABCPersistentStoreController *)&v20 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.autobugcapture.persistentStore", v9);
    storeQueue = v8->storeQueue;
    v8->storeQueue = v10;

    v12 = [(ABCPersistentStoreController *)v8 prepareDataDirectoryWithName:nameCopy containerPath:directoryCopy];
    if ([v12 length])
    {
      v13 = v8->storeQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ABCPersistentStoreController_initWithName_inDirectory___block_invoke;
      block[3] = &unk_278CF04F8;
      v18 = v8;
      v19 = v12;
      dispatch_async(v13, block);

      p_super = &v18->super;
    }

    else
    {
      p_super = persistenceLogHandle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_241804000, p_super, OS_LOG_TYPE_ERROR, "Unable to prepare data directory. Will NOT initialize persistent storage", v16, 2u);
      }
    }
  }

  return v8;
}

- (ABCPersistentStoreController)init
{
  v3 = +[ABCConfigurationManager autoBugCapturePrefix];
  v4 = +[ABCConfigurationManager defaultLibraryDirectory];
  v5 = [(ABCPersistentStoreController *)self initWithName:v3 inDirectory:v4];

  return v5;
}

- (AnalyticsWorkspace)workspace
{
  workspace = self->_workspace;
  if (workspace && self->workspaceReady)
  {
    v4 = workspace;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)prepareDataDirectoryWithName:(id)name containerPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  if ([pathCopy length])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (nameCopy)
    {
      v8 = [pathCopy stringByAppendingPathComponent:nameCopy];
    }

    else
    {
      v8 = pathCopy;
    }

    v10 = v8;
    v18 = 0;
    v11 = [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v18];
    v12 = v18;
    v13 = persistenceLogHandle();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "ABC data directory is ready at: %@", buf, 0xCu);
      }

      v9 = v10;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        localizedFailureReason = [v12 localizedFailureReason];
        *buf = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = localizedFailureReason;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "Unable to create ABC data directory: %@ (%@)", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    defaultManager = persistenceLogHandle();
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = pathCopy;
      _os_log_impl(&dword_241804000, defaultManager, OS_LOG_TYPE_ERROR, "Invalid container directory specified: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)prepareWorkspaceWithDirectoryPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!self->tempWorkspace)
  {
    v5 = persistenceLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Preparing workspace", buf, 2u);
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [AnalyticsWorkspace workspaceWithName:@"autobugcapture" atPath:pathCopy objectModelName:@"AutoBugCapture" objectModelBundle:v6 useReadOnly:0];
    tempWorkspace = self->tempWorkspace;
    self->tempWorkspace = v7;
  }

  ++prepareWorkspaceWithDirectoryPath__attempts;
  v9 = persistenceLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Bootstrapping persistent store", buf, 2u);
  }

  save = [(AnalyticsWorkspace *)self->tempWorkspace save];
  if (save)
  {
    objc_storeStrong(&self->_workspace, self->tempWorkspace);
    self->workspaceReady = 1;
    v11 = persistenceLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Workspace and persistent store is ready for use", buf, 2u);
    }

    delegate = [(ABCPersistentStoreController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)delegate persistentStoreControllerReadyForUse:self];
    }
  }

  else
  {
    if (prepareWorkspaceWithDirectoryPath__attempts < 2)
    {
      delegate = &stru_285368168;
    }

    else
    {
      delegate = [MEMORY[0x277CCACA8] stringWithFormat:@" (%ld attempts)", prepareWorkspaceWithDirectoryPath__attempts];
    }

    v13 = persistenceLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = delegate;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Workspace and persistent store failed to initialize.%@", buf, 0xCu);
    }

    if (prepareWorkspaceWithDirectoryPath__attempts > 0x13)
    {
      v18 = persistenceLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, "Exhausted retry attempts. Unable to provide a functioning workspace and persistent store", buf, 2u);
      }
    }

    else
    {
      v14 = (pow(1.5, (prepareWorkspaceWithDirectoryPath__attempts - 1)) * 5.0);
      v15 = persistenceLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v14;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "Retrying persistent store initialization after %lu seconds", buf, 0xCu);
      }

      v16 = dispatch_time(0, 1000000000 * v14);
      storeQueue = self->storeQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__ABCPersistentStoreController_prepareWorkspaceWithDirectoryPath___block_invoke;
      block[3] = &unk_278CF04F8;
      block[4] = self;
      v22 = pathCopy;
      dispatch_after(v16, storeQueue, block);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return save;
}

uint64_t __66__ABCPersistentStoreController_prepareWorkspaceWithDirectoryPath___block_invoke(uint64_t a1)
{
  v2 = persistenceLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Retrying persistent store initialization", v4, 2u);
  }

  return [*(a1 + 32) prepareWorkspaceWithDirectoryPath:*(a1 + 40)];
}

- (id)caseStorageAnalytics
{
  v3 = caseStorageAnalytics__caseStorageAnalytics;
  if (!caseStorageAnalytics__caseStorageAnalytics)
  {
    if (self->_workspace)
    {
      v4 = [[DiagnosticCaseStorageAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
      v5 = caseStorageAnalytics__caseStorageAnalytics;
      caseStorageAnalytics__caseStorageAnalytics = v4;

      v3 = caseStorageAnalytics__caseStorageAnalytics;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)caseUsageAnalytics
{
  v3 = caseUsageAnalytics__caseUsageAnalytics;
  if (!caseUsageAnalytics__caseUsageAnalytics)
  {
    if (self->_workspace)
    {
      v4 = [[DiagnosticCaseUsageAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
      v5 = caseUsageAnalytics__caseUsageAnalytics;
      caseUsageAnalytics__caseUsageAnalytics = v4;

      v3 = caseUsageAnalytics__caseUsageAnalytics;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)uploadRecordAnalytics
{
  v3 = uploadRecordAnalytics__uploadRecordAnalytics;
  if (!uploadRecordAnalytics__uploadRecordAnalytics)
  {
    if (self->_workspace)
    {
      v4 = [[UploadRecordAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
      v5 = uploadRecordAnalytics__uploadRecordAnalytics;
      uploadRecordAnalytics__uploadRecordAnalytics = v4;

      v3 = uploadRecordAnalytics__uploadRecordAnalytics;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)caseSummaryAnalytics
{
  v3 = caseSummaryAnalytics__caseSummaryAnalytics;
  if (!caseSummaryAnalytics__caseSummaryAnalytics)
  {
    if (self->_workspace)
    {
      v4 = [[DiagnosticCaseSummaryAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
      v5 = caseSummaryAnalytics__caseSummaryAnalytics;
      caseSummaryAnalytics__caseSummaryAnalytics = v4;

      v3 = caseSummaryAnalytics__caseSummaryAnalytics;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)save:(BOOL)save
{
  storeQueue = self->storeQueue;
  if (save)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ABCPersistentStoreController_save___block_invoke;
    block[3] = &unk_278CEFE88;
    block[4] = self;
    dispatch_sync(storeQueue, block);
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__ABCPersistentStoreController_save___block_invoke_2;
    v5[3] = &unk_278CEFE88;
    v5[4] = self;
    dispatch_async(storeQueue, v5);
  }
}

void __37__ABCPersistentStoreController_save___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) workspace];
  [v1 save];
}

void __37__ABCPersistentStoreController_save___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) workspace];
  [v1 save];
}

- (void)cleanupDiagnosticCaseUsage
{
  storeQueue = self->storeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ABCPersistentStoreController_cleanupDiagnosticCaseUsage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(storeQueue, block);
}

void __58__ABCPersistentStoreController_cleanupDiagnosticCaseUsage__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = persistenceLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cleaning out old DiagnosticCaseUsage objects...", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-1209600.0];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastSeen <= %@", v4];
  v6 = [*(a1 + 32) caseUsageAnalytics];
  v7 = [v6 removeEntitiesMatching:v5];
  v8 = symptomsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v11 = v7;
    v12 = 1024;
    v13 = 14;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Removed %ld DiagnosticCaseUsage object(s) with lastSeen older than %d days.", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cleanupDiagnosticCaseStorage
{
  storeQueue = self->storeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ABCPersistentStoreController_cleanupDiagnosticCaseStorage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(storeQueue, block);
}

void __60__ABCPersistentStoreController_cleanupDiagnosticCaseStorage__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = symptomsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cleaning out old DiagnosticCaseStorage objects...", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-864000.0];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"timeStamp", v4];
  v6 = [*(a1 + 32) caseStorageAnalytics];
  v7 = [v6 removeEntitiesMatching:v5];
  v8 = symptomsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v11 = v7;
    v12 = 1024;
    v13 = 10;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Removed %ld DiagnosticCaseStorage object(s) older than %d days.", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cleanupDiagnosticCaseSummary
{
  storeQueue = self->storeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ABCPersistentStoreController_cleanupDiagnosticCaseSummary__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(storeQueue, block);
}

void __60__ABCPersistentStoreController_cleanupDiagnosticCaseSummary__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = symptomsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cleaning out old DiagnosticCaseSummary objects...", &v15, 2u);
  }

  v3 = [*(a1 + 32) caseSummaryAnalytics];
  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  v6 = [v5 submittedCaseSummaryRetentionDays];

  v7 = [v3 removeDiagnosticCaseSummariesWithState:1 olderThan:v6];
  v8 = symptomsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = v7;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Removed %ld submitted object(s) older than %ld days.", &v15, 0x16u);
  }

  v9 = +[ABCAdministrator sharedInstance];
  v10 = [v9 configurationManager];
  v11 = [v10 unsubmittedCaseSummaryRetentionDays];

  v12 = [v3 removeDiagnosticCaseSummariesWithState:0 olderThan:v11];
  v13 = symptomsLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = v12;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Removed %ld unsubmitted object(s) older than %ld days.", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cleanupUploadRecord
{
  storeQueue = self->storeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ABCPersistentStoreController_cleanupUploadRecord__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(storeQueue, block);
}

void __51__ABCPersistentStoreController_cleanupUploadRecord__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = symptomsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cleaning out orphaned UploadRecord objects...", &v8, 2u);
  }

  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseStorage == NULL"];
  v4 = [*(a1 + 32) uploadRecordAnalytics];
  v5 = [v4 removeEntitiesMatching:v3];
  v6 = symptomsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Removed %ld orphaned UploadRecord object(s)", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)caseAttachmentsForAllDiagnosticCasesWithQueue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  storeQueue = self->storeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ABCPersistentStoreController_caseAttachmentsForAllDiagnosticCasesWithQueue_reply___block_invoke;
  block[3] = &unk_278CF21A8;
  v12 = queueCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = queueCopy;
  v10 = replyCopy;
  dispatch_async(storeQueue, block);
}

void __84__ABCPersistentStoreController_caseAttachmentsForAllDiagnosticCasesWithQueue_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) caseStorageAnalytics];
  v3 = [v2 fetchAllEntityDictionariesWithProperties:&unk_28537A6E0];
  v4 = [v3 copy];

  [*(*(a1 + 32) + 8) reset];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__ABCPersistentStoreController_caseAttachmentsForAllDiagnosticCasesWithQueue_reply___block_invoke_2;
    v7[3] = &unk_278CEFF50;
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)caseAttachmentsForDiagnosticCaseIDs:(id)ds queue:(id)queue reply:(id)reply
{
  dsCopy = ds;
  queueCopy = queue;
  replyCopy = reply;
  if ([dsCopy count])
  {
    storeQueue = self->storeQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__ABCPersistentStoreController_caseAttachmentsForDiagnosticCaseIDs_queue_reply___block_invoke;
    v12[3] = &unk_278CF21D0;
    v12[4] = self;
    v13 = dsCopy;
    v15 = replyCopy;
    v14 = queueCopy;
    dispatch_async(storeQueue, v12);
  }
}

void __80__ABCPersistentStoreController_caseAttachmentsForDiagnosticCaseIDs_queue_reply___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) caseStorageAnalytics];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", *(*(&v19 + 1) + 8 * v8)];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v3];
  v11 = [v2 fetchEntityDictionariesWithProperties:&unk_28537A6F8 predicate:v10];
  v12 = [v11 copy];

  [*(*(a1 + 32) + 8) reset];
  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__ABCPersistentStoreController_caseAttachmentsForDiagnosticCaseIDs_queue_reply___block_invoke_2;
    block[3] = &unk_278CEFF50;
    v18 = v13;
    v17 = v12;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeCaseStoragesWithUUIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    storeQueue = self->storeQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__ABCPersistentStoreController_removeCaseStoragesWithUUIDs___block_invoke;
    v6[3] = &unk_278CF04F8;
    v7 = dsCopy;
    selfCopy = self;
    dispatch_async(storeQueue, v6);
  }
}

void __60__ABCPersistentStoreController_removeCaseStoragesWithUUIDs___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) UUIDString];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) removeCaseStoragesWithCaseIDs:v2];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeCaseStoragesWithCaseIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    storeQueue = self->storeQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__ABCPersistentStoreController_removeCaseStoragesWithCaseIDs___block_invoke;
    v6[3] = &unk_278CF04F8;
    v6[4] = self;
    v7 = dsCopy;
    dispatch_async(storeQueue, v6);
  }
}

void __62__ABCPersistentStoreController_removeCaseStoragesWithCaseIDs___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) caseStorageAnalytics];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", *(*(&v12 + 1) + 8 * v8)];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v3];
  [v2 removeEntitiesMatching:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeCaseStorageWithID:(id)d
{
  dCopy = d;
  storeQueue = self->storeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ABCPersistentStoreController_removeCaseStorageWithID___block_invoke;
  v7[3] = &unk_278CF04F8;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(storeQueue, v7);
}

void __56__ABCPersistentStoreController_removeCaseStorageWithID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) UUIDString];
  v5 = [v2 predicateWithFormat:@"caseID == %@", v3];

  v4 = [*(a1 + 40) caseStorageAnalytics];
  [v4 removeEntitiesMatching:v5];
}

- (void)removeAllCaseStorages
{
  storeQueue = self->storeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ABCPersistentStoreController_removeAllCaseStorages__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(storeQueue, block);
}

void __53__ABCPersistentStoreController_removeAllCaseStorages__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) caseStorageAnalytics];
  v2 = [v1 removeAllDiagnosticCaseStorages];
  v3 = casemanagementLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Removed %ld cases from persistent store", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (ABCPersistentStoreControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end