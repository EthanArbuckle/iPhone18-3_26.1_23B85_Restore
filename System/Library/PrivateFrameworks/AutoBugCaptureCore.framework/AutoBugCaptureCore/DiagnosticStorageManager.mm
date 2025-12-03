@interface DiagnosticStorageManager
- (DiagnosticStorageManager)initWithPersistentStoreController:(id)controller logArchiveDirectory:(id)directory;
- (unint64_t)allowableDiskUsageSize;
- (unint64_t)deleteAttachmentFiles:(id)files;
- (unint64_t)performPeriodicPurge;
- (unint64_t)performPurgeToMeetDiskUsageLimit:(unint64_t)limit calculateOnly:(BOOL)only;
- (void)_autoBugCaptureDiskUsageSize:(id)size;
- (void)_calculatePurgableSizeForRequestedPurgeSize:(unint64_t)size reply:(id)reply;
- (void)_inspectAutoBugCaptureDiskUsage:(id)usage;
- (void)_performSizedPurge:(unint64_t)purge reply:(id)reply;
- (void)_purgeCasesWithCaseIDs:(id)ds;
- (void)_sortedAutoBugCaptureDiskUsageByCase:(id)case;
- (void)cleanupCasesAfterACentralizedCacheDeletePurgeEvent:(id)event;
- (void)deleteAttachmentsAtPaths:(id)paths;
- (void)deleteAttachmentsForCases:(id)cases;
- (void)didSaveDiagnosticCases;
- (void)fileCleanupComplete;
- (void)invalidateDiskUsageStatistics;
- (void)purgeAttachmentsAtPaths:(id)paths;
- (void)purgeAttachmentsForAllCases;
- (void)purgeDEPayloadForCase:(id)case;
- (void)removeCaseStorageAndAttachmentsForCasesWithUUIDs:(id)ds;
@end

@implementation DiagnosticStorageManager

- (DiagnosticStorageManager)initWithPersistentStoreController:(id)controller logArchiveDirectory:(id)directory
{
  controllerCopy = controller;
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = DiagnosticStorageManager;
  v9 = [(DiagnosticStorageManager *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.symptoms.diagstoragemanager.queue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_storeController, controller);
    objc_storeStrong(&v9->_logArchivePath, directory);
  }

  return v9;
}

- (unint64_t)allowableDiskUsageSize
{
  v2 = +[SystemProperties sharedInstance];
  deviceClass = [v2 deviceClass];

  if (deviceClass == 7)
  {
    return 0x40000000;
  }

  else
  {
    return 0x280000000;
  }
}

- (void)invalidateDiskUsageStatistics
{
  payloadsByCaseID = self->_payloadsByCaseID;
  self->_payloadsByCaseID = 0;

  casesSortedByDate = self->_casesSortedByDate;
  self->_casesSortedByDate = 0;

  self->_lastCalculatedDiskUsageSize = 0;
}

- (unint64_t)performPeriodicPurge
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DiagnosticStorageManager_performPeriodicPurge__block_invoke;
  block[3] = &unk_278CF15D8;
  v10 = v3;
  v11 = &v12;
  block[4] = self;
  v5 = v3;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __48__DiagnosticStorageManager_performPeriodicPurge__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__DiagnosticStorageManager_performPeriodicPurge__block_invoke_2;
  v4[3] = &unk_278CF15B0;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _sortedAutoBugCaptureDiskUsageByCase:v4];
}

void __48__DiagnosticStorageManager_performPeriodicPurge__block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-864000.0];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    v9 = *v34;
    *&v5 = 138412290;
    v29 = v5;
    do
    {
      v10 = 0;
      v11 = v7;
      v12 = v8;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * v10);
        v8 = [v13 objectForKeyedSubscript:{@"caseDate", v29}];

        v7 = [v13 objectForKeyedSubscript:@"caseID"];

        if ([v7 length])
        {
          if ([v3 compare:v8] != 1)
          {
            goto LABEL_18;
          }

          v14 = [v13 objectForKeyedSubscript:@"SymptomsAttachmentsTotalSize"];
          v15 = [v14 unsignedIntegerValue];

          v16 = [v13 objectForKeyedSubscript:@"SymptomsDiagExtAttachmentsTotalSize"];
          v17 = [v16 unsignedIntegerValue];

          *(*(*(a1 + 48) + 8) + 24) += v17 + v15;
          v18 = storageLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v38 = v7;
            v39 = 2112;
            v40 = v8;
            v41 = 2112;
            v42 = v3;
            _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "Payloads for case %@ (generated on %@) is older than the retention limit (%@) and will be purged", buf, 0x20u);
          }

          [v31 addObject:v7];
        }

        else
        {
          v19 = storageLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v29;
            v38 = v13;
            _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "This case is missing a caseID: %@", buf, 0xCu);
          }
        }

        ++v10;
        v11 = v7;
        v12 = v8;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_18:

  v20 = *(*(*(a1 + 48) + 8) + 24);
  v21 = storageLogHandle();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v23 = [v31 count];
      v24 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218240;
      v38 = v23;
      v39 = 2048;
      v40 = v24;
      v25 = "The total periodic purge size for %lu cases shall be %lu";
      v26 = v21;
      v27 = 22;
LABEL_23:
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }
  }

  else if (v22)
  {
    *buf = 0;
    v25 = "There are no stale cases which need to be purged";
    v26 = v21;
    v27 = 2;
    goto LABEL_23;
  }

  [*(a1 + 32) _purgeCasesWithCaseIDs:v31];
  dispatch_semaphore_signal(*(a1 + 40));

  v28 = *MEMORY[0x277D85DE8];
}

- (unint64_t)performPurgeToMeetDiskUsageLimit:(unint64_t)limit calculateOnly:(BOOL)only
{
  onlyCopy = only;
  v23 = *MEMORY[0x277D85DE8];
  v7 = storageLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "NO";
    if (onlyCopy)
    {
      v8 = "YES";
    }

    *buf = 134218242;
    *&buf[4] = limit;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "performPurgeToMeetDiskUsageLimit (%lu) calculateOnly:%s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v9 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DiagnosticStorageManager_performPurgeToMeetDiskUsageLimit_calculateOnly___block_invoke;
  block[3] = &unk_278CF1678;
  v20 = onlyCopy;
  v18 = buf;
  limitCopy = limit;
  block[4] = self;
  v17 = v9;
  v11 = v9;
  dispatch_async(queue, block);
  v12 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v11, v12);
  v13 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __75__DiagnosticStorageManager_performPurgeToMeetDiskUsageLimit_calculateOnly___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateDiskUsageStatistics];
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__DiagnosticStorageManager_performPurgeToMeetDiskUsageLimit_calculateOnly___block_invoke_2;
  v6[3] = &unk_278CF1650;
  v3 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = v3;
  v6[4] = v2;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [v2 _autoBugCaptureDiskUsageSize:v6];
}

void __75__DiagnosticStorageManager_performPurgeToMeetDiskUsageLimit_calculateOnly___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) >= a2)
  {
    v10 = *(a1 + 40);
    v11 = *MEMORY[0x277D85DE8];

    dispatch_semaphore_signal(v10);
  }

  else
  {
    v4 = storageLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 56);
      *buf = 134218240;
      v21 = a2;
      v22 = 2048;
      v23 = v5;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "ABC Disk Usage exceeds limit: %lu > %lu", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = a2 - *(a1 + 56);
    if (*(a1 + 64) == 1)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__DiagnosticStorageManager_performPurgeToMeetDiskUsageLimit_calculateOnly___block_invoke_29;
      v18[3] = &unk_278CF1600;
      v14 = *(a1 + 40);
      v8 = v14;
      v19 = v14;
      [v6 _calculatePurgableSizeForRequestedPurgeSize:v7 reply:v18];
      v9 = v19;
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __75__DiagnosticStorageManager_performPurgeToMeetDiskUsageLimit_calculateOnly___block_invoke_2_31;
      v16[3] = &unk_278CF1628;
      v15 = *(a1 + 40);
      v12 = v15;
      v17 = v15;
      [v6 _performSizedPurge:v7 reply:v16];
      v9 = v17;
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_performSizedPurge:(unint64_t)purge reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__DiagnosticStorageManager__performSizedPurge_reply___block_invoke;
  v8[3] = &unk_278CF16A0;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  [(DiagnosticStorageManager *)self _calculatePurgableSizeForRequestedPurgeSize:purge reply:v8];
}

uint64_t __53__DiagnosticStorageManager__performSizedPurge_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _purgeCasesWithCaseIDs:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_calculatePurgableSizeForRequestedPurgeSize:(unint64_t)size reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__DiagnosticStorageManager__calculatePurgableSizeForRequestedPurgeSize_reply___block_invoke;
  v8[3] = &unk_278CF16C8;
  v9 = replyCopy;
  sizeCopy = size;
  v7 = replyCopy;
  [(DiagnosticStorageManager *)self _sortedAutoBugCaptureDiskUsageByCase:v8];
}

void __78__DiagnosticStorageManager__calculatePurgableSizeForRequestedPurgeSize_reply___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    v9 = *v26;
    *&v5 = 138412290;
    v22 = v5;
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v10);
        v7 = [v12 objectForKeyedSubscript:{@"caseID", v22}];

        if ([v7 length])
        {
          v13 = [v12 objectForKeyedSubscript:@"SymptomsAttachmentsTotalSize"];
          v14 = [v13 unsignedIntegerValue];

          v15 = [v12 objectForKeyedSubscript:@"SymptomsDiagExtAttachmentsTotalSize"];
          v16 = [v15 unsignedIntegerValue];

          v8 += v14 + v16;
          [v3 addObject:v7];
          if (v8 >= *(a1 + 40))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v17 = storageLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v30 = v12;
            _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "This case is missing a caseID: %@", buf, 0xCu);
          }
        }

        ++v10;
        v11 = v7;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
LABEL_14:
  }

  else
  {
    v8 = 0;
  }

  v18 = storageLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    *buf = 134218240;
    v30 = v8;
    v31 = 2048;
    v32 = v19;
    _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "purge size calculated to be %lu for a requestedPurgeSize of %lu", buf, 0x16u);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))(v20, v3, v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_purgeCasesWithCaseIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * v11);
          v14 = objc_alloc(MEMORY[0x277CCAD78]);
          v9 = [v14 initWithUUIDString:{v13, v16}];

          [v5 addObject:v9];
          ++v11;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [(DiagnosticStorageManager *)self removeCaseStorageAndAttachmentsForCasesWithUUIDs:v5];
    [(DiagnosticStorageManager *)self invalidateDiskUsageStatistics];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeCaseStorageAndAttachmentsForCasesWithUUIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          uUIDString = [*(*(&v18 + 1) + 8 * v10) UUIDString];
          [v5 addObject:uUIDString];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    queue = self->_queue;
    storeController = self->_storeController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__DiagnosticStorageManager_removeCaseStorageAndAttachmentsForCasesWithUUIDs___block_invoke;
    v16[3] = &unk_278CF16F0;
    v16[4] = self;
    v17 = v5;
    v14 = v5;
    [(ABCPersistentStoreController *)storeController caseAttachmentsForDiagnosticCaseIDs:v14 queue:queue reply:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __77__DiagnosticStorageManager_removeCaseStorageAndAttachmentsForCasesWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) deleteAttachmentsForCases:v3];
    [*(*(a1 + 32) + 40) removeCaseStoragesWithCaseIDs:*(a1 + 40)];
  }
}

- (void)deleteAttachmentsForCases:(id)cases
{
  casesCopy = cases;
  if ([casesCopy count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__DiagnosticStorageManager_deleteAttachmentsForCases___block_invoke;
    v6[3] = &unk_278CF1718;
    v6[4] = self;
    [casesCopy enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v5 = storageLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Skipping deletion for empty attachments list.", buf, 2u);
    }
  }
}

void __54__DiagnosticStorageManager_deleteAttachmentsForCases___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKeyedSubscript:@"caseID"];
    v6 = [v3 objectForKeyedSubscript:@"caseAttachments"];
    v7 = [DiagnosticCase attachmentsFromStringRepresentation:v6];
    v8 = [*(a1 + 32) deleteAttachmentFiles:v7];
    v9 = storageLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Deleted %lu attachment files for case %@", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = storageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v6 = NSStringFromClass(v10);
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Found unexpected class %@ in cases array: %@", &v12, 0x16u);
LABEL_7:
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteAttachmentsAtPaths:(id)paths
{
  v15 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__DiagnosticStorageManager_deleteAttachmentsAtPaths___block_invoke;
  v8[3] = &unk_278CF1740;
  v8[4] = self;
  v8[5] = &v9;
  [pathsCopy enumerateObjectsUsingBlock:v8];
  v5 = storageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v10[3];
    *buf = 134217984;
    v14 = v6;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Deleted a total of %lu attachment files.", buf, 0xCu);
  }

  _Block_object_dispose(&v9, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void __53__DiagnosticStorageManager_deleteAttachmentsAtPaths___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) deleteAttachmentFiles:v3];
  }

  else
  {
    v4 = storageLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Found unexpected object of class %@ in attachments list (%@)", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)deleteAttachmentFiles:(id)files
{
  filesCopy = files;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DiagnosticStorageManager_deleteAttachmentFiles___block_invoke;
  v8[3] = &unk_278CF0FF8;
  v5 = defaultManager;
  v9 = v5;
  v10 = &v11;
  [filesCopy enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __50__DiagnosticStorageManager_deleteAttachmentFiles___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    if (!v8)
    {
LABEL_12:

      goto LABEL_13;
    }

    v9 = *(a1 + 32);
    v18 = 0;
    v10 = [v9 removeItemAtURL:v8 error:&v18];
    v11 = v18;
    v12 = v11;
    if (v10)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v15 = [v11 domain];
      if (v15 == *MEMORY[0x277CCA050] && [v12 code] != 4)
      {
        v17 = [v12 code];

        if (v17 == 260)
        {
          goto LABEL_11;
        }

        v15 = storageLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v7;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Failed to delete file at %@. (%@)", buf, 0x16u);
        }
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = storageLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = NSStringFromClass(v6);
    *buf = 138412546;
    v20 = v14;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found unexpected object of class %@ in attachments list (%@)", buf, 0x16u);
  }

  *a4 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)purgeAttachmentsForAllCases
{
  queue = self->_queue;
  storeController = self->_storeController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__DiagnosticStorageManager_purgeAttachmentsForAllCases__block_invoke;
  v4[3] = &unk_278CF1768;
  v4[4] = self;
  [(ABCPersistentStoreController *)storeController caseAttachmentsForAllDiagnosticCasesWithQueue:queue reply:v4];
}

- (void)cleanupCasesAfterACentralizedCacheDeletePurgeEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = storageLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = eventCopy;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Cleanup cases after Centralized CD Purge for these files %@", buf, 0xCu);
  }

  if (!eventCopy)
  {
    v8 = 0;
    goto LABEL_7;
  }

  if ([eventCopy count])
  {
    v8 = [eventCopy copy];
LABEL_7:
    queue = self->_queue;
    storeController = self->_storeController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__DiagnosticStorageManager_cleanupCasesAfterACentralizedCacheDeletePurgeEvent___block_invoke;
    v13[3] = &unk_278CF1790;
    v14 = v8;
    v15 = v5;
    v16 = defaultManager;
    selfCopy = self;
    v11 = v8;
    [(ABCPersistentStoreController *)storeController caseAttachmentsForAllDiagnosticCasesWithQueue:queue reply:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __79__DiagnosticStorageManager_cleanupCasesAfterACentralizedCacheDeletePurgeEvent___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * i);
        v6 = [v5 objectForKeyedSubscript:@"caseAttachments"];
        v7 = [v5 objectForKeyedSubscript:@"caseID"];
        v29 = v6;
        v8 = [DiagnosticCase attachmentsFromStringRepresentation:v6];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (!v10)
        {
          goto LABEL_24;
        }

        v11 = v10;
        v12 = *v31;
        while (2)
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(*(&v30 + 1) + 8 * j)];
            v15 = [v14 path];
            v16 = *(a1 + 32);
            if (v16)
            {
              if ([v16 containsObject:v15])
              {
                v17 = storageLogHandle();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v39 = v7;
                  v19 = v17;
                  v20 = "Case %@ will be purged due to purged payload files";
                  goto LABEL_22;
                }

                goto LABEL_23;
              }
            }

            else if (([*(a1 + 48) fileExistsAtPath:v15] & 1) == 0)
            {
              v17 = storageLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v39 = v7;
                v19 = v17;
                v20 = "Case %@ will be purged due to missing payload files";
LABEL_22:
                _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
              }

LABEL_23:

              [*(a1 + 40) addObject:v7];
              goto LABEL_24;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_24:
      }

      v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v28);
  }

  objc_autoreleasePoolPop(context);
  if ([*(a1 + 40) count])
  {
    v21 = storageLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(a1 + 40) count];
      v23 = *(a1 + 40);
      *buf = 134218242;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEFAULT, "Post Centralized CacheDelete cleanup for %lu cases: %@", buf, 0x16u);
    }

    [*(a1 + 56) _purgeCasesWithCaseIDs:*(a1 + 40)];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)purgeDEPayloadForCase:(id)case
{
  v13[1] = *MEMORY[0x277D85DE8];
  caseCopy = case;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uUIDString = [caseCopy UUIDString];

      caseCopy = uUIDString;
    }
  }

  storeController = self->_storeController;
  v13[0] = caseCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__DiagnosticStorageManager_purgeDEPayloadForCase___block_invoke;
  v11[3] = &unk_278CF1768;
  v12 = caseCopy;
  v9 = caseCopy;
  [(ABCPersistentStoreController *)storeController caseAttachmentsForDiagnosticCaseIDs:v7 queue:queue reply:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __50__DiagnosticStorageManager_purgeDEPayloadForCase___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a2;
  v33 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v33)
  {
    v32 = *v42;
    *&v2 = 138412802;
    v29 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v3;
        v4 = *(*(&v41 + 1) + 8 * v3);
        v5 = [MEMORY[0x277CCAA00] defaultManager];
        v6 = [v4 objectForKeyedSubscript:kStoredPayloadKeyAttachmentPaths];
        v7 = storageLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v6 count];
          *buf = 134217984;
          v46 = v8;
          _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Will purge %ld files.", buf, 0xCu);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (!v10)
        {
          v35 = 0;
          v12 = 0;
          goto LABEL_35;
        }

        v11 = v10;
        v35 = 0;
        v12 = 0;
        v13 = *v38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            v15 = v12;
            if (*v38 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = storageLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v46 = v16;
                _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "Will remove file at %@", buf, 0xCu);
              }

              v36 = v15;
              v18 = [v5 removeItemAtPath:v16 error:&v36];
              v12 = v36;

              if (v18)
              {
                v19 = storageLogHandle();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = v16;
                  _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "Removed file at %@", buf, 0xCu);
                }

                if ([v5 fileExistsAtPath:v16])
                {
                  v20 = storageLogHandle();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v46 = v16;
                    v21 = v20;
                    v22 = OS_LOG_TYPE_ERROR;
                    v23 = "This file should have been removed. Why is it still here??? - %@";
                    goto LABEL_28;
                  }

LABEL_30:

                  continue;
                }

                ++v35;
                v20 = storageLogHandle();
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_30;
                }

                *buf = 138412290;
                v46 = v16;
                v21 = v20;
                v22 = OS_LOG_TYPE_DEBUG;
                v23 = "Verified that %@ no longer exists.";
LABEL_28:
                v24 = 12;
              }

              else
              {
                if ([v12 code] == 4)
                {
                  continue;
                }

                v20 = storageLogHandle();
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_30;
                }

                *buf = 138412546;
                v46 = v16;
                v47 = 2112;
                v48 = v12;
                v21 = v20;
                v22 = OS_LOG_TYPE_ERROR;
                v23 = "Unable to remove file at %@. (%@)";
                v24 = 22;
              }

              _os_log_impl(&dword_241804000, v21, v22, v23, buf, v24);
              goto LABEL_30;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v37 objects:v51 count:16];
        }

        while (v11);
LABEL_35:

        if (v35 < [v9 count])
        {
          v25 = storageLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = *(a1 + 32);
            v27 = [v9 count];
            *buf = v29;
            v46 = v26;
            v47 = 2048;
            v48 = v27;
            v49 = 2048;
            v50 = v35;
            _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_INFO, "Case %@ has %ld attachments but only %ld were removed.", buf, 0x20u);
          }
        }

        v3 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v33);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_autoBugCaptureDiskUsageSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  if (self->_lastCalculatedDiskUsageSize)
  {
    if (sizeCopy)
    {
      sizeCopy[2](sizeCopy);
    }
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__DiagnosticStorageManager__autoBugCaptureDiskUsageSize___block_invoke;
    v6[3] = &unk_278CF17B8;
    v6[4] = self;
    v7 = sizeCopy;
    [(DiagnosticStorageManager *)self _inspectAutoBugCaptureDiskUsage:v6];
  }
}

void __57__DiagnosticStorageManager__autoBugCaptureDiskUsageSize___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [v2 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        v9 = [v8 objectForKeyedSubscript:@"SymptomsAttachmentsTotalSize"];
        v10 = [v9 unsignedIntegerValue];
        v11 = [v8 objectForKeyedSubscript:@"SymptomsDiagExtAttachmentsTotalSize"];
        v5 += v10 + [v11 unsignedIntegerValue];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v12 = storageLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = v5;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "The total ABC disk usage size is %lu", buf, 0xCu);
  }

  *(*(a1 + 32) + 8) = v5;
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(a1 + 32) + 8));
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sortedAutoBugCaptureDiskUsageByCase:(id)case
{
  caseCopy = case;
  v5 = caseCopy;
  casesSortedByDate = self->_casesSortedByDate;
  if (casesSortedByDate)
  {
    if (!caseCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = self->_casesSortedByDate;
  self->_casesSortedByDate = v7;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__DiagnosticStorageManager__sortedAutoBugCaptureDiskUsageByCase___block_invoke;
  v9[3] = &unk_278CF10C0;
  v9[4] = self;
  [(DiagnosticStorageManager *)self _inspectAutoBugCaptureDiskUsage:v9];
  if (v5)
  {
    casesSortedByDate = self->_casesSortedByDate;
LABEL_6:
    (v5)[2](v5, casesSortedByDate);
  }

LABEL_7:
}

void __65__DiagnosticStorageManager__sortedAutoBugCaptureDiskUsageByCase___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 length])
        {
          v9 = objc_alloc(MEMORY[0x277CBEB38]);
          v10 = [v3 objectForKeyedSubscript:v8];
          v11 = [v9 initWithDictionary:v10];

          [v11 setObject:v8 forKeyedSubscript:@"caseID"];
          [*(*(a1 + 32) + 16) addObject:v11];
        }

        else
        {
          v11 = storageLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "A blank caseID from _gatherAutoBugCaptureDiskUsageStatistics()", v13, 2u);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 16) sortUsingComparator:&__block_literal_global_16];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __65__DiagnosticStorageManager__sortedAutoBugCaptureDiskUsageByCase___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"caseDate"];
  v6 = [v4 objectForKeyedSubscript:@"caseDate"];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_inspectAutoBugCaptureDiskUsage:(id)usage
{
  v80[2] = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  v5 = usageCopy;
  if (self->_payloadsByCaseID)
  {
    if (usageCopy)
    {
      (*(usageCopy + 2))(usageCopy);
    }

    goto LABEL_40;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  payloadsByCaseID = self->_payloadsByCaseID;
  self->_payloadsByCaseID = v6;

  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = objc_autoreleasePoolPush();
  v55 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-3600.0];
  v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:self->_logArchivePath isDirectory:1];
  v11 = *MEMORY[0x277CBE7C0];
  v57 = *MEMORY[0x277CBE868];
  v80[0] = *MEMORY[0x277CBE868];
  v80[1] = v11;
  v59 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v74 = 0;
  v54 = defaultManager;
  v13 = [defaultManager contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v12 options:1 error:&v74];
  v14 = v74;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = v15;
  v47 = v9;
  selfCopy = self;
  v49 = v5;
  v17 = 0;
  v18 = 0;
  v58 = *v71;
  v53 = *MEMORY[0x277CCA050];
  v52 = *MEMORY[0x277CCA5B8];
  v19 = v50;
  do
  {
    v20 = 0;
    do
    {
      v21 = v18;
      v22 = v17;
      if (*v71 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v70 + 1) + 8 * v20);

      v23 = objc_autoreleasePoolPush();
      v69 = 0;
      v24 = [v18 getResourceValue:&v69 forKey:v59 error:0];
      v17 = v69;

      if (!v24 || [v17 compare:v55] != 1)
      {
        v68 = 0;
        v26 = [v18 getResourceValue:&v68 forKey:v57 error:{0, v47, selfCopy, v49}];
        v27 = v68;
        v25 = v27;
        if (v26 && [v27 BOOLValue])
        {
          v28 = storageLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v76 = v18;
            _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEFAULT, "Found an errant directory (%@) in AutoBugCapture which will be deleted", buf, 0xCu);
          }

          v67 = v14;
          v29 = [v54 removeItemAtURL:v18 error:&v67];
          v30 = v67;

          if (v29)
          {
            goto LABEL_29;
          }

          v31 = storageLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v76 = v18;
            v77 = 2112;
            v78 = v30;
            _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_ERROR, "Unable to remove directory at %@ (%@)", buf, 0x16u);
          }

          domain = [v30 domain];
          if ([domain isEqualToString:v53] && objc_msgSend(v30, "code") == 513)
          {

            goto LABEL_35;
          }

          domain2 = [v30 domain];
          if ([domain2 isEqualToString:v52])
          {
            code = [v30 code];

            v38 = code == 13;
            v19 = v50;
            if (!v38)
            {
              goto LABEL_29;
            }

LABEL_35:
            domain = [v18 path];
            [v51 addObject:domain];
          }

          else
          {
          }
        }

        else
        {
          domain = [v18 path];
          v33 = [domain rangeOfString:@"/private"];
          if (v33 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = [domain substringFromIndex:v33 + v34];

            domain = v35;
          }

          if ([domain length])
          {
            [v19 addObject:domain];
          }

          v30 = v14;
        }

LABEL_29:
        v14 = v30;
        goto LABEL_30;
      }

      v25 = storageLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v76 = v18;
        v77 = 2112;
        v78 = v17;
        _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_INFO, "This item (%@) will NOT be deleted because it's too young (%@)", buf, 0x16u);
      }

LABEL_30:

      objc_autoreleasePoolPop(v23);
      ++v20;
    }

    while (v16 != v20);
    v39 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    v16 = v39;
  }

  while (v39);

  self = selfCopy;
  v5 = v49;
  v9 = v47;
LABEL_39:

  objc_autoreleasePoolPop(v9);
  queue = self->_queue;
  storeController = self->_storeController;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __60__DiagnosticStorageManager__inspectAutoBugCaptureDiskUsage___block_invoke;
  v60[3] = &unk_278CF17E0;
  v61 = v54;
  v62 = v50;
  selfCopy2 = self;
  v64 = v14;
  v65 = v51;
  v66 = v5;
  v42 = v51;
  v43 = v14;
  v44 = v50;
  v45 = v54;
  [(ABCPersistentStoreController *)storeController caseAttachmentsForAllDiagnosticCasesWithQueue:queue reply:v60];

LABEL_40:
  v46 = *MEMORY[0x277D85DE8];
}

void __60__DiagnosticStorageManager__inspectAutoBugCaptureDiskUsage___block_invoke(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v3;
  v72 = a1;
  v62 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v62)
  {
    v60 = *v85;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v85 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v84 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        v7 = [v5 objectForKeyedSubscript:@"caseID"];
        v8 = [v5 objectForKeyedSubscript:@"caseAttachments"];
        v9 = [DiagnosticCase attachmentsFromStringRepresentation:v8];
        if ([v9 count])
        {
          v61 = v5;
          v64 = v8;
          v65 = v7;
          v66 = v6;
          v67 = i;
          v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v63 = v9;
          v70 = v9;
          v10 = [v70 countByEnumeratingWithState:&v80 objects:v93 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v13 = *v81;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v81 != v13)
                {
                  objc_enumerationMutation(v70);
                }

                v15 = *(*(&v80 + 1) + 8 * j);
                v16 = objc_autoreleasePoolPush();
                v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v15];
                v18 = [v17 path];
                v19 = [v18 rangeOfString:@"/private"];
                if (v19 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v21 = [v18 substringFromIndex:v19 + v20];

                  v18 = v21;
                  a1 = v72;
                }

                v22 = *(a1 + 32);
                v79 = 0;
                v23 = [v22 attributesOfItemAtPath:v18 error:&v79];
                v24 = v79;
                v25 = v24;
                if (v23)
                {
                  v12 += [v23 fileSize];
                }

                else if (v24)
                {
                  v26 = storageLogHandle();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v90 = v18;
                    v91 = 2112;
                    v92 = v25;
                    _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "Unable to inspect attributes of file at %@. (%@)", buf, 0x16u);
                  }

                  a1 = v72;
                }

                [v73 addObject:v18];
                if ([*(a1 + 40) containsObject:v18])
                {
                  [*(a1 + 40) removeObject:v18];
                }

                objc_autoreleasePoolPop(v16);
              }

              v11 = [v70 countByEnumeratingWithState:&v80 objects:v93 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          i = v67;
          v7 = v65;
          v9 = v63;
          if ([v73 count])
          {
            v27 = [v61 objectForKeyedSubscript:@"caseClosedTime"];
            if (v65)
            {
              v28 = objc_alloc(MEMORY[0x277CBEB38]);
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
              v30 = [v28 initWithObjectsAndKeys:{v73, @"SymptomsAttachments", v29, @"SymptomsAttachmentsTotalSize", v27, @"caseDate", 0, context}];
              [*(*(a1 + 48) + 24) setObject:v30 forKeyedSubscript:v65];
            }
          }

          v6 = v66;
          v8 = v64;
        }

        objc_autoreleasePoolPop(v6);
      }

      v62 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v62);
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v32 = *(a1 + 40);
  v33 = [v32 countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v76;
    v69 = *MEMORY[0x277CCA050];
    v68 = *MEMORY[0x277CCA5B8];
    do
    {
      v36 = 0;
      v71 = v34;
      do
      {
        if (*v76 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v75 + 1) + 8 * v36);
        v38 = objc_autoreleasePoolPush();
        v39 = storageLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v90 = v37;
          _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_DEBUG, "Will remove orphaned file at %@", buf, 0xCu);
        }

        v40 = *(v72 + 32);
        v74 = 0;
        v41 = [v40 removeItemAtPath:v37 error:&v74];
        v42 = v74;
        v43 = v42;
        if (v41)
        {
          v44 = storageLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v90 = v37;
            _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_DEFAULT, "Removed orphaned file at %@", buf, 0xCu);
          }
        }

        else
        {
          if ([v42 code] == 4)
          {
            goto LABEL_55;
          }

          v45 = v35;
          v46 = v32;
          v47 = storageLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v90 = v37;
            v91 = 2112;
            v92 = v43;
            _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_ERROR, "Unable to remove orphaned file at %@. (%@)", buf, 0x16u);
          }

          v48 = [*(v72 + 56) domain];
          if ([v48 isEqualToString:v69] && objc_msgSend(*(v72 + 56), "code") == 513)
          {

            v35 = v45;
            v34 = v71;
LABEL_53:
            [v31 addObject:v37];
            goto LABEL_55;
          }

          v49 = [*(v72 + 56) domain];
          if ([v49 isEqualToString:v68])
          {
            v50 = v31;
            v51 = [*(v72 + 56) code];

            v52 = v51 == 13;
            v31 = v50;
            v32 = v46;
            v35 = v45;
            v34 = v71;
            if (v52)
            {
              goto LABEL_53;
            }
          }

          else
          {

            v35 = v45;
            v34 = v71;
          }
        }

LABEL_55:

        objc_autoreleasePoolPop(v38);
        ++v36;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v34);
  }

  [v31 addObjectsFromArray:*(v72 + 64)];
  if ([v31 count])
  {
    v53 = storageLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = [v31 count];
      *buf = 134217984;
      v90 = v54;
      _os_log_impl(&dword_241804000, v53, OS_LOG_TYPE_DEBUG, "Will use netdiagnose to clean up %lu orphans and folders", buf, 0xCu);
    }

    v55 = [[ABCFileCleaner alloc] initWithQueue:0];
    [*(v72 + 48) setAbcCleaner:v55];

    [*(*(v72 + 48) + 56) setDelegate:?];
    [*(*(v72 + 48) + 56) cleanupFiles:v31];
  }

  objc_autoreleasePoolPop(context);
  v56 = *(v72 + 72);
  if (v56)
  {
    (*(v56 + 16))(v56, *(*(v72 + 48) + 24));
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)fileCleanupComplete
{
  v3 = storageLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "File cleanup using netdiagnose completed", v4, 2u);
  }

  [(DiagnosticStorageManager *)self setAbcCleaner:0];
}

- (void)didSaveDiagnosticCases
{
  allowableDiskUsageSize = [(DiagnosticStorageManager *)self allowableDiskUsageSize];

  [(DiagnosticStorageManager *)self performPurgeToMeetDiskUsageLimit:allowableDiskUsageSize calculateOnly:0];
}

- (void)purgeAttachmentsAtPaths:(id)paths
{
  pathsCopy = paths;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__DiagnosticStorageManager_purgeAttachmentsAtPaths___block_invoke;
  v7[3] = &unk_278CF04F8;
  v7[4] = self;
  v8 = pathsCopy;
  v6 = pathsCopy;
  dispatch_async(queue, v7);
}

@end