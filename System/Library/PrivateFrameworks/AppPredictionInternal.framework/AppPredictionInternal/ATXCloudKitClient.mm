@interface ATXCloudKitClient
- (ATXCloudKitClient)initWithContainerIdentifier:(id)a3 useManatee:(BOOL)a4 callbackQueue:(id)a5;
- (ATXCloudKitClient)initWithDatabase:(id)a3 inContainer:(id)a4 callbackQueue:(id)a5;
- (void)deleteRecordZone:(id)a3 completionHandler:(id)a4;
- (void)fetchAccountInfoWithCompletionHandler:(id)a3;
- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)a3;
- (void)fetchRecordZone:(id)a3 completionHandler:(id)a4;
- (void)fetchRecords:(id)a3 inZone:(id)a4 completionHandler:(id)a5;
- (void)saveRecord:(id)a3 completionHandler:(id)a4;
- (void)saveRecordZone:(id)a3 completionHandler:(id)a4;
- (void)scheduleDatabaseOperation:(id)a3;
@end

@implementation ATXCloudKitClient

- (ATXCloudKitClient)initWithContainerIdentifier:(id)a3 useManatee:(BOOL)a4 callbackQueue:(id)a5
{
  v5 = a4;
  v8 = MEMORY[0x277CBC220];
  v9 = a5;
  v10 = a3;
  v11 = [[v8 alloc] initWithContainerIdentifier:v10 environment:2];

  if (v5)
  {
    v12 = objc_opt_new();
    [v12 setMmcsEncryptionSupport:2];
    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v11 options:v12];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v11];
  }

  v14 = [v13 privateCloudDatabase];
  v15 = [(ATXCloudKitClient *)self initWithDatabase:v14 inContainer:v13 callbackQueue:v9];

  return v15;
}

- (ATXCloudKitClient)initWithDatabase:(id)a3 inContainer:(id)a4 callbackQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ATXCloudKitClient;
  v12 = [(ATXCloudKitClient *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, a4);
    objc_storeStrong(&v13->_database, a3);
    if (v11)
    {
      v14 = v11;
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

- (void)scheduleDatabaseOperation:(id)a3
{
  v6 = a3;
  [v6 setQueuePriority:0];
  [v6 setQualityOfService:17];
  if (self->_callbackQueue)
  {
    [v6 setCallbackQueue:?];
  }

  else
  {
    v4 = [v6 callbackQueue];
    [v6 setCallbackQueue:v4];
  }

  v5 = [v6 configuration];
  [v5 setTimeoutIntervalForResource:3600.0];

  [(CKDatabase *)self->_database addOperation:v6];
}

- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ATXCloudKitClient *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ATXCloudKitClient_fetchCurrentDeviceIDWithCompletionHandler___block_invoke;
  v7[3] = &unk_278596B48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentDeviceIDWithCompletionHandler:v7];
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

- (void)fetchAccountInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ATXCloudKitClient *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXCloudKitClient_fetchAccountInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_27859AD08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 accountInfoWithCompletionHandler:v7];
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

- (void)fetchRecordZone:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC3D0]);
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZoneIDs:v9];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __55__ATXCloudKitClient_fetchRecordZone_completionHandler___block_invoke;
  v17 = &unk_27859AD30;
  v18 = v6;
  v19 = v7;
  v11 = v6;
  v12 = v7;
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

- (void)saveRecordZone:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __54__ATXCloudKitClient_saveRecordZone_completionHandler___block_invoke;
  v17 = &unk_27859AD58;
  v18 = v6;
  v19 = v7;
  v11 = v6;
  v12 = v7;
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

- (void)deleteRecordZone:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 zoneID];
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __56__ATXCloudKitClient_deleteRecordZone_completionHandler___block_invoke;
  v17 = &unk_27859AD58;
  v18 = v7;
  v19 = v6;
  v11 = v7;
  v12 = v6;
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

- (void)fetchRecords:(id)a3 inZone:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v10];

  v13 = [v9 zoneID];

  [v12 setZoneID:v13];
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
  v19 = v8;
  v15 = v14;
  v16 = v8;
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

- (void)saveRecord:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC4A0]);
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__ATXCloudKitClient_saveRecord_completionHandler___block_invoke;
  v17 = &unk_27859AD58;
  v18 = v6;
  v19 = v7;
  v11 = v6;
  v12 = v7;
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