@interface ATXCloudKitClient
- (ATXCloudKitClient)initWithContainerIdentifier:(id)identifier useManatee:(BOOL)manatee callbackQueue:(id)queue;
- (ATXCloudKitClient)initWithDatabase:(id)database inContainer:(id)container callbackQueue:(id)queue;
- (void)deleteRecordZone:(id)zone completionHandler:(id)handler;
- (void)fetchAccountInfoWithCompletionHandler:(id)handler;
- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)handler;
- (void)fetchRecordZone:(id)zone completionHandler:(id)handler;
- (void)fetchRecords:(id)records inZone:(id)zone completionHandler:(id)handler;
- (void)saveRecord:(id)record completionHandler:(id)handler;
- (void)saveRecordZone:(id)zone completionHandler:(id)handler;
- (void)scheduleDatabaseOperation:(id)operation;
@end

@implementation ATXCloudKitClient

- (ATXCloudKitClient)initWithContainerIdentifier:(id)identifier useManatee:(BOOL)manatee callbackQueue:(id)queue
{
  manateeCopy = manatee;
  v8 = MEMORY[0x277CBC220];
  queueCopy = queue;
  identifierCopy = identifier;
  v11 = [[v8 alloc] initWithContainerIdentifier:identifierCopy environment:2];

  if (manateeCopy)
  {
    v12 = objc_opt_new();
    [v12 setMmcsEncryptionSupport:2];
    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v11 options:v12];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v11];
  }

  privateCloudDatabase = [v13 privateCloudDatabase];
  v15 = [(ATXCloudKitClient *)self initWithDatabase:privateCloudDatabase inContainer:v13 callbackQueue:queueCopy];

  return v15;
}

- (ATXCloudKitClient)initWithDatabase:(id)database inContainer:(id)container callbackQueue:(id)queue
{
  databaseCopy = database;
  containerCopy = container;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = ATXCloudKitClient;
  v12 = [(ATXCloudKitClient *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, container);
    objc_storeStrong(&v13->_database, database);
    if (queueCopy)
    {
      v14 = queueCopy;
      callbackQueue = v13->_callbackQueue;
      v13->_callbackQueue = v14;
    }

    else
    {
      callbackQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("com.apple.duetexpertd.atxcloudkit", callbackQueue);
      v17 = v13->_callbackQueue;
      v13->_callbackQueue = v16;
    }
  }

  return v13;
}

- (void)scheduleDatabaseOperation:(id)operation
{
  operationCopy = operation;
  [operationCopy setQueuePriority:0];
  [operationCopy setQualityOfService:17];
  if (self->_callbackQueue)
  {
    [operationCopy setCallbackQueue:?];
  }

  else
  {
    callbackQueue = [operationCopy callbackQueue];
    [operationCopy setCallbackQueue:callbackQueue];
  }

  configuration = [operationCopy configuration];
  [configuration setTimeoutIntervalForResource:3600.0];

  [(CKDatabase *)self->_database addOperation:operationCopy];
}

- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = [(ATXCloudKitClient *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ATXCloudKitClient_fetchCurrentDeviceIDWithCompletionHandler___block_invoke;
  v7[3] = &unk_278596B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [container fetchCurrentDeviceIDWithCompletionHandler:v7];
}

void __63__ATXCloudKitClient_fetchCurrentDeviceIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ATXCloudKitClient_fetchCurrentDeviceIDWithCompletionHandler___block_invoke_2;
  block[3] = &unk_27859ACE0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchAccountInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = [(ATXCloudKitClient *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXCloudKitClient_fetchAccountInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_27859AD08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [container accountInfoWithCompletionHandler:v7];
}

void __59__ATXCloudKitClient_fetchAccountInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ATXCloudKitClient_fetchAccountInfoWithCompletionHandler___block_invoke_2;
  block[3] = &unk_27859ACE0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchRecordZone:(id)zone completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x277CBC3D0]);
  v20[0] = zoneCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZoneIDs:v9];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __55__ATXCloudKitClient_fetchRecordZone_completionHandler___block_invoke;
  v17 = &unk_27859AD30;
  v18 = zoneCopy;
  v19 = handlerCopy;
  v11 = zoneCopy;
  v12 = handlerCopy;
  [v10 setFetchRecordZonesCompletionBlock:&v14];
  [(ATXCloudKitClient *)self scheduleDatabaseOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

void __55__ATXCloudKitClient_fetchRecordZone_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v9 = [a2 objectForKeyedSubscript:v6];
  v8 = [v7 CKItemErrorForID:*(a1 + 32)];

  (*(v5 + 16))(v5, v9, v8);
}

- (void)saveRecordZone:(id)zone completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = zoneCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __54__ATXCloudKitClient_saveRecordZone_completionHandler___block_invoke;
  v17 = &unk_27859AD58;
  v18 = zoneCopy;
  v19 = handlerCopy;
  v11 = zoneCopy;
  v12 = handlerCopy;
  [v10 setModifyRecordZonesCompletionBlock:&v14];
  [(ATXCloudKitClient *)self scheduleDatabaseOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

void __54__ATXCloudKitClient_saveRecordZone_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v10 = [a2 firstObject];
  v8 = [*(a1 + 32) zoneID];
  v9 = [v7 CKItemErrorForID:v8];

  (*(v6 + 16))(v6, v10, v9);
}

- (void)deleteRecordZone:(id)zone completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  zoneID = [zone zoneID];
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = zoneID;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __56__ATXCloudKitClient_deleteRecordZone_completionHandler___block_invoke;
  v17 = &unk_27859AD58;
  v18 = zoneID;
  v19 = handlerCopy;
  v11 = zoneID;
  v12 = handlerCopy;
  [v10 setModifyRecordZonesCompletionBlock:&v14];
  [(ATXCloudKitClient *)self scheduleDatabaseOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

void __56__ATXCloudKitClient_deleteRecordZone_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v9 = [a3 firstObject];
  v8 = [v7 CKItemErrorForID:*(a1 + 32)];

  (*(v6 + 16))(v6, v9 != 0, v8);
}

- (void)fetchRecords:(id)records inZone:(id)zone completionHandler:(id)handler
{
  handlerCopy = handler;
  zoneCopy = zone;
  recordsCopy = records;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:recordsCopy];

  zoneID = [zoneCopy zoneID];

  [v12 setZoneID:zoneID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__ATXCloudKitClient_fetchRecords_inZone_completionHandler___block_invoke;
  v20[3] = &unk_27859AD80;
  v14 = v11;
  v21 = v14;
  [v12 setRecordMatchedBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__ATXCloudKitClient_fetchRecords_inZone_completionHandler___block_invoke_2;
  v17[3] = &unk_27859ADA8;
  v18 = v14;
  v19 = handlerCopy;
  v15 = v14;
  v16 = handlerCopy;
  [v12 setQueryCompletionBlock:v17];
  [(ATXCloudKitClient *)self scheduleDatabaseOperation:v12];
}

void __59__ATXCloudKitClient_fetchRecords_inZone_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addObject:v7];
    objc_sync_exit(v9);
  }
}

- (void)saveRecord:(id)record completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x277CBC4A0]);
  v20[0] = recordCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__ATXCloudKitClient_saveRecord_completionHandler___block_invoke;
  v17 = &unk_27859AD58;
  v18 = recordCopy;
  v19 = handlerCopy;
  v11 = recordCopy;
  v12 = handlerCopy;
  [v10 setModifyRecordsCompletionBlock:&v14];
  [(ATXCloudKitClient *)self scheduleDatabaseOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

void __50__ATXCloudKitClient_saveRecord_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v10 = [a2 firstObject];
  v8 = [*(a1 + 32) recordID];
  v9 = [v7 CKItemErrorForID:v8];

  (*(v6 + 16))(v6, v10 != 0, v9);
}

@end