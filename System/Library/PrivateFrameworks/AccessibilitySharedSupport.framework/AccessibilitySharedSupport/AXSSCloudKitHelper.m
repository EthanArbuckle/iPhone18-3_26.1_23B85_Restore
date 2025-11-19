@interface AXSSCloudKitHelper
- (AXSSCloudKitHelper)initWithContainerIdentifier:(id)a3 zoneName:(id)a4;
- (BOOL)_checkAccountStatus:(id *)a3;
- (BOOL)_createSchemaIfNecessary:(id *)a3;
- (BOOL)_createZoneIfNecessary:(id *)a3;
- (BOOL)_setupPushConnection:(id *)a3;
- (BOOL)_setupZoneSubscriptionIfNecessary:(id *)a3;
- (BOOL)shouldExportManagedObject:(id)a3;
- (NSPersistentStore)observedStore;
- (id)apsEnvironment;
- (id)createCKRecordFromObject:(id)a3;
- (id)recordType;
- (id)serverChangeTokenMetadataKey;
- (id)testRecordForSchemaCreation:(id)a3;
- (id)zoneCreatedKey;
- (id)zoneSubscriptionKey;
- (void)_initializeCloudkitForObservedStore;
- (void)_processAccumulatedQueueData;
- (void)_setObservedStore:(id)a3 observedCoordinator:(id)a4;
- (void)beginWatchingForChanges;
- (void)clearRecordsForPurging:(id)a3;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
- (void)fetchChangesAndUpdateObservedStore;
- (void)logMessage:(id)a3;
- (void)managedObjectContextDidSave:(id)a3;
- (void)observeChangesForManagedContext:(id)a3;
- (void)openTransactionWithLabel:(id)a3 andExecuteWorkBlock:(id)a4;
- (void)processAccumulatedChangesForServerChangeToken:(id)a3 withAccumulatedUpdates:(id)a4 andDeletes:(id)a5 inTransaction:(id)a6;
- (void)processLocalChangesAndPush;
- (void)processRecordDeletionsFromServer:(id)a3;
- (void)processServerUpdateChanges:(id)a3 moc:(id)a4 recordNameToManagedObject:(id)a5;
- (void)retrieveLocalChangesForCloud:(id)a3;
- (void)setIsProtectedDataAvailable:(BOOL)a3;
@end

@implementation AXSSCloudKitHelper

- (AXSSCloudKitHelper)initWithContainerIdentifier:(id)a3 zoneName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = AXSSCloudKitHelper;
  v9 = [(AXSSCloudKitHelper *)&v23 init];
  if (v9)
  {
    if (initWithContainerIdentifier_zoneName__onceToken != -1)
    {
      [AXSSCloudKitHelper initWithContainerIdentifier:zoneName:];
    }

    objc_storeStrong(&v9->_containerIdentifier, a3);
    v10 = dispatch_semaphore_create(0);
    cloudKitQueueSemaphore = v9->_cloudKitQueueSemaphore;
    v9->_cloudKitQueueSemaphore = v10;

    objc_storeStrong(&v9->_cloudkitQueue, __sharedQueue);
    v12 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:v8];
    recordZone = v9->_recordZone;
    v9->_recordZone = v12;

    v14 = objc_alloc(MEMORY[0x1E695BAA0]);
    v15 = [(CKRecordZone *)v9->_recordZone zoneID];
    v16 = [v14 initWithZoneID:v15 subscriptionID:@"com.apple.accessibility.zone.subscription"];
    zoneSubscription = v9->_zoneSubscription;
    v9->_zoneSubscription = v16;

    v18 = [(AXSSCloudKitHelper *)v9 recordType];
    [(CKRecordZoneSubscription *)v9->_zoneSubscription setRecordType:v18];

    v19 = [MEMORY[0x1E695DF70] array];
    accumulatedQueuedData = v9->_accumulatedQueuedData;
    v9->_accumulatedQueuedData = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695B9F0]);
    [v21 setShouldSendContentAvailable:1];
    [(CKRecordZoneSubscription *)v9->_zoneSubscription setNotificationInfo:v21];
  }

  return v9;
}

uint64_t __59__AXSSCloudKitHelper_initWithContainerIdentifier_zoneName___block_invoke()
{
  __sharedQueue = dispatch_queue_create("com.apple.coredata.cloudkit.queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "Helper removed: %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v6.receiver = self;
  v6.super_class = AXSSCloudKitHelper;
  [(AXSSCloudKitHelper *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)observeChangesForManagedContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_managedObjectContext, a3);
  v6 = [v5 persistentStoreCoordinator];
  v7 = [v6 persistentStores];
  v8 = [v7 firstObject];

  v9 = [v5 persistentStoreCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_observedStore);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_observedStore, v8);
    objc_storeStrong(&self->_observedCoordinator, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__AXSSCloudKitHelper_observeChangesForManagedContext___block_invoke;
    v11[3] = &unk_1E81350A8;
    v11[4] = self;
    [(AXSSCloudKitHelper *)self openTransactionWithLabel:@"com.apple.axcloudkithelper.initialize" andExecuteWorkBlock:v11];
  }
}

- (void)_initializeCloudkitForObservedStore
{
  v16 = 0;
  v3 = [(AXSSCloudKitHelper *)self _checkAccountStatus:&v16];
  v4 = v16;
  v5 = v4;
  if (!v3)
  {
    goto LABEL_8;
  }

  v15 = v4;
  v6 = [(AXSSCloudKitHelper *)self _createZoneIfNecessary:&v15];
  v7 = v15;

  if (!v6)
  {
    goto LABEL_7;
  }

  v14 = v7;
  v8 = [(AXSSCloudKitHelper *)self _setupZoneSubscriptionIfNecessary:&v14];
  v5 = v14;

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_lastInitializationError, v5);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CloudKit integration setup failed with error:\n%@", v5];
    [(AXSSCloudKitHelper *)self logMessage:v11];

    goto LABEL_9;
  }

  v13 = v5;
  v9 = [(AXSSCloudKitHelper *)self _createSchemaIfNecessary:&v13];
  v7 = v13;

  if (!v9)
  {
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  v12 = v7;
  v10 = [(AXSSCloudKitHelper *)self _setupPushConnection:&v12];
  v5 = v12;

  if (!v10)
  {
    goto LABEL_8;
  }

  [(AXSSCloudKitHelper *)self beginWatchingForChanges];
  [(AXSSCloudKitHelper *)self fetchChangesAndUpdateObservedStore];
  [(AXSSCloudKitHelper *)self logMessage:@"Successfully set up CloudKit integration."];
LABEL_9:
}

- (BOOL)_checkAccountStatus:(id *)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  if ([MEMORY[0x1E695B888] currentProcessCanUseCloudKit])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v5 = [MEMORY[0x1E695B888] containerWithIdentifier:self->_containerIdentifier];
    container = self->_container;
    self->_container = v5;

    v7 = self->_container;
    if (v7)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __42__AXSSCloudKitHelper__checkAccountStatus___block_invoke;
      v31[3] = &unk_1E81350D0;
      v31[5] = &v32;
      v31[6] = &v36;
      v31[4] = self;
      [(CKContainer *)v7 accountStatusWithCompletionHandler:v31];
      dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A588];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get a container back for the identifier: %@", self->_containerIdentifier];
      v47 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v15 = [v12 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v14];
      v16 = v37[5];
      v37[5] = v15;
    }

    v17 = v33;
    if (*(v33 + 24) == 1)
    {
      v18 = [(CKContainer *)self->_container privateCloudDatabase];
      database = self->_database;
      self->_database = v18;

      v17 = v33;
      if (!self->_database)
      {
        *(v33 + 24) = 0;
        v20 = MEMORY[0x1E696ABC0];
        v44 = *MEMORY[0x1E696A588];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get a database back from -privateCloudDatabase for container: %@", self->_container];
        v45 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v23 = [v20 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v22];
        v24 = v37[5];
        v37[5] = v23;

        v17 = v33;
      }
    }

    if (v17[3])
    {
      v25 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = self->_container;
        *buf = 138412290;
        v43 = v26;
        _os_log_impl(&dword_1C0E8A000, v25, OS_LOG_TYPE_INFO, "Account status valid: %@", buf, 0xCu);
      }
    }

    else
    {
      v29 = self->_container;
      self->_container = 0;

      if (a3)
      {
        v30 = v37[5];
        if (v30)
        {
          *a3 = v30;
        }
      }
    }

    v11 = *(v33 + 24);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A588];
    v49[0] = @"Current process can't use cloud kit";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    *a3 = [v8 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v9];

    v10 = v37[5];
    v11 = 0;
    if (v10)
    {
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v36, 8);

  v27 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void __42__AXSSCloudKitHelper__checkAccountStatus___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = *(a1[5] + 8);
  if (a2 == 1)
  {
    *(v5 + 24) = 1;
  }

  else
  {
    *(v5 + 24) = 0;
    if (a2)
    {
      if (a2 == 3)
      {
        v6 = @"Unable to initialize without an iCloud account (CKAccountStatusNoAccount).";
      }

      else if (a2 == 2)
      {
        v6 = @"Unable to initialize without a valid iCloud account (CKAccountStatusRestricted).";
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown account status: %d", a2];
      }
    }

    else
    {
      v6 = @"Unable to determine the status of the iCloud account (CKAccountStatusCouldNotDetermine).";
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v6 forKey:*MEMORY[0x1E696A588]];
    if (v13)
    {
      [v7 setObject:v13 forKey:*MEMORY[0x1E696AA08]];
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = [v7 copy];
    v10 = [v8 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v9];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1[4] + 96));
}

- (id)zoneCreatedKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CKRecordZone *)self->_recordZone zoneID];
  v4 = [v3 zoneName];
  v5 = [v2 stringWithFormat:@"AXCloudKitZoneCreated-%@", v4];

  return v5;
}

- (id)zoneSubscriptionKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CKRecordZone *)self->_recordZone zoneID];
  v4 = [v3 zoneName];
  v5 = [v2 stringWithFormat:@"AXCloudKitSubscriptionCreated-%@", v4];

  return v5;
}

- (BOOL)_createZoneIfNecessary:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v5 = self->_recordZone;
  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    recordZone = self->_recordZone;
    *buf = 138412290;
    v39 = recordZone;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_INFO, "Creating zone: %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [(AXSSCloudKitHelper *)self zoneCreatedKey];
  v10 = [v8 BOOLForKey:v9];

  if (v10)
  {
    v11 = AXLogPunctuationStorage();
    v12 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_INFO, "Already created zone", buf, 2u);
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695B9B0]);
    v37 = v5;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v11 = [v13 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

    [v11 setQueuePriority:4];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__AXSSCloudKitHelper__createZoneIfNecessary___block_invoke;
    v22[3] = &unk_1E81350F8;
    v25 = &v33;
    v26 = &v27;
    v23 = v5;
    v24 = self;
    [v11 setModifyRecordZonesCompletionBlock:v22];
    [(CKDatabase *)self->_database addOperation:v11];
    dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (v34[3])
    {
      v15 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = self->_recordZone;
        *buf = 138412290;
        v39 = v16;
        _os_log_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_INFO, "Zone created: %@", buf, 0xCu);
      }

      v17 = [MEMORY[0x1E695E000] standardUserDefaults];
      v18 = [(AXSSCloudKitHelper *)self zoneCreatedKey];
      [v17 setBool:1 forKey:v18];
    }

    else if (a3)
    {
      v21 = v28[5];
      if (v21)
      {
        *a3 = v21;
      }
    }

    v12 = *(v34 + 24);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

void __45__AXSSCloudKitHelper__createZoneIfNecessary___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([a2 containsObject:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

- (BOOL)_createSchemaIfNecessary:(id *)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_observedStore);
  v6 = [WeakRetained metadata];
  v7 = [v6 objectForKey:@"AXCloudKitFinishedSchemaCheckKey"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    *(v45 + 24) = 1;
    goto LABEL_7;
  }

  v9 = objc_alloc(MEMORY[0x1E695BA70]);
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v10 stringWithFormat:@"CD_FAKE_RECORD_%@", v11];
  v13 = [v9 initWithRecordName:v12];

  v14 = [(AXSSCloudKitHelper *)self testRecordForSchemaCreation:v13];
  v15 = objc_alloc(MEMORY[0x1E695B9B8]);
  v51[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v17 = [v15 initWithRecordsToSave:v16 recordIDsToDelete:0];

  [v17 setQueuePriority:4];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke;
  v33[3] = &unk_1E81350F8;
  v18 = v14;
  v36 = &v44;
  v37 = &v38;
  v34 = v18;
  v35 = self;
  [v17 setModifyRecordsCompletionBlock:v33];
  [(CKDatabase *)self->_database addOperation:v17];
  dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v45 + 24) == 1)
  {
    v19 = objc_alloc(MEMORY[0x1E695B9B8]);
    v50 = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v21 = [v19 initWithRecordsToSave:0 recordIDsToDelete:v20];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke_2;
    v28[3] = &unk_1E8135120;
    v29 = v13;
    v30 = self;
    v31 = &v44;
    v32 = &v38;
    [v21 setModifyRecordsCompletionBlock:v28];
    [(CKDatabase *)self->_database addOperation:v21];
    dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v21 = v17;
  }

  if (*(v45 + 24))
  {
LABEL_7:
    v22 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_loadWeakRetained(&self->_observedStore);
      *buf = 138412290;
      v49 = v23;
      _os_log_impl(&dword_1C0E8A000, v22, OS_LOG_TYPE_INFO, "Schema created: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (a3)
  {
    v27 = v39[5];
    if (v27)
    {
      *a3 = v27;
    }
  }

LABEL_10:
  v24 = *(v45 + 24);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

void __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([a2 containsObject:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

void __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a4;
  v6 = [a3 containsObject:a1[4]];
  v7 = *(a1[6] + 8);
  if (v6)
  {
    *(v7 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1[5] + 24));
    v9 = [WeakRetained metadata];
    v10 = [v9 mutableCopy];

    [v10 setObject:MEMORY[0x1E695E118] forKey:@"AXCloudKitFinishedSchemaCheckKey"];
    v11 = objc_loadWeakRetained((a1[5] + 24));
    [v11 setMetadata:v10];
  }

  else
  {
    *(v7 + 24) = 0;
    v12 = *(a1[7] + 8);
    v13 = v14;
    v10 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

- (BOOL)_setupZoneSubscriptionIfNecessary:(id *)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [(AXSSCloudKitHelper *)self zoneSubscriptionKey];
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    v8 = AXLogPunctuationStorage();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0E8A000, v8, OS_LOG_TYPE_INFO, "Already setup zone subcription", buf, 2u);
    }
  }

  else
  {
    v10 = self->_zoneSubscription;
    v11 = objc_alloc(MEMORY[0x1E695B9C8]);
    v41[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v13 = [v11 initWithSubscriptionsToSave:v12 subscriptionIDsToDelete:0];

    [v13 setQueuePriority:4];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __56__AXSSCloudKitHelper__setupZoneSubscriptionIfNecessary___block_invoke;
    v24 = &unk_1E81350F8;
    v8 = v10;
    v27 = &v35;
    v28 = &v29;
    v25 = v8;
    v26 = self;
    [v13 setModifySubscriptionsCompletionBlock:&v21];
    [(CKDatabase *)self->_database addOperation:v13, v21, v22, v23, v24];
    dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (v36[3])
    {
      v14 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        zoneSubscription = self->_zoneSubscription;
        *buf = 138412290;
        v40 = zoneSubscription;
        _os_log_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_INFO, "Zone subscription created: %@", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E695E000] standardUserDefaults];
      v17 = [(AXSSCloudKitHelper *)self zoneSubscriptionKey];
      [v16 setBool:1 forKey:v17];
    }

    else if (a3)
    {
      v20 = v30[5];
      if (v20)
      {
        *a3 = v20;
      }
    }

    v9 = *(v36 + 24);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

void __56__AXSSCloudKitHelper__setupZoneSubscriptionIfNecessary___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([a2 containsObject:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

- (void)beginWatchingForChanges
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(AXSSCloudKitHelper *)self managedObjectContext];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "Watching for changes now on: %@", &v9, 0xCu);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E695D360];
  v7 = [(AXSSCloudKitHelper *)self managedObjectContext];
  [v5 addObserver:self selector:sel_managedObjectContextDidSave_ name:v6 object:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)openTransactionWithLabel:(id)a3 andExecuteWorkBlock:(id)a4
{
  v6 = a4;
  [a3 cStringUsingEncoding:1];
  v7 = os_transaction_create();
  cloudkitQueue = self->_cloudkitQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AXSSCloudKitHelper_openTransactionWithLabel_andExecuteWorkBlock___block_invoke;
  v11[3] = &unk_1E8135148;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(cloudkitQueue, v11);
}

- (BOOL)shouldExportManagedObject:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v5 persistentStore];
  v7 = [(AXSSCloudKitHelper *)self observedStore];
  if (![v6 isEqual:v7])
  {

    goto LABEL_5;
  }

  [(AXSSCloudKitHelper *)self managedObjectClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    LOBYTE(v9) = 0;
    goto LABEL_6;
  }

  v9 = [v4 inCloud] ^ 1;
LABEL_6:

  return v9;
}

- (id)serverChangeTokenMetadataKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AXSSCloudKitHelper *)self recordType];
  v4 = [v2 stringWithFormat:@"CloudKitServerChangeToken-%@", v3];

  return v4;
}

- (void)fetchChangesAndUpdateObservedStore
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke;
  v2[3] = &unk_1E81350A8;
  v2[4] = self;
  [(AXSSCloudKitHelper *)self openTransactionWithLabel:@"com.apple.axcloudkithelper.import" andExecuteWorkBlock:v2];
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = [WeakRetained metadata];
  v6 = [*(a1 + 32) serverChangeTokenMetadataKey];
  v7 = [v5 objectForKey:v6];

  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
  v9 = objc_alloc_init(MEMORY[0x1E695B908]);
  [v9 setPreviousServerChangeToken:v8];
  v10 = objc_alloc(MEMORY[0x1E695B918]);
  v11 = [*(*(a1 + 32) + 64) zoneID];
  v34[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v13 = [*(*(a1 + 32) + 64) zoneID];
  v32 = v13;
  v33 = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v15 = [v10 initWithRecordZoneIDs:v12 configurationsByRecordZoneID:v14];

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2;
  v30[3] = &unk_1E8135170;
  v30[4] = *(a1 + 32);
  v18 = v16;
  v31 = v18;
  [v15 setRecordWasChangedBlock:v30];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_111;
  v28[3] = &unk_1E8135198;
  v28[4] = *(a1 + 32);
  v19 = v17;
  v29 = v19;
  [v15 setRecordWithIDWasDeletedBlock:v28];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_113;
  v24[3] = &unk_1E81351E8;
  v24[4] = *(a1 + 32);
  v25 = v18;
  v26 = v19;
  v27 = v3;
  v20 = v3;
  v21 = v19;
  v22 = v18;
  [v15 setRecordZoneFetchCompletionBlock:v24];
  [*(*(a1 + 32) + 80) addOperation:v15];

  v23 = *MEMORY[0x1E69E9840];
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [*(a1 + 32) recordType];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v4];
    v8 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_cold_1(v4, v8);
    }
  }
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 recordType];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
  }
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_113(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  v8 = v7;
  if ((a5 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_3;
    block[3] = &unk_1E81351C0;
    block[4] = v9;
    v12 = v7;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    dispatch_async(v10, block);
  }
}

- (void)setIsProtectedDataAvailable:(BOOL)a3
{
  isProtectedDataAvailable = self->_isProtectedDataAvailable;
  self->_isProtectedDataAvailable = a3;
  if (!isProtectedDataAvailable && a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AXSSCloudKitHelper_setIsProtectedDataAvailable___block_invoke;
    block[3] = &unk_1E8134870;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

_BYTE *__50__AXSSCloudKitHelper_setIsProtectedDataAvailable___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[17] == 1)
  {
    return [result _processAccumulatedQueueData];
  }

  return result;
}

- (void)_processAccumulatedQueueData
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, a1, a3, "Assertion failed: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)processAccumulatedChangesForServerChangeToken:(id)a3 withAccumulatedUpdates:(id)a4 andDeletes:(id)a5 inTransaction:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(AXSSCloudKitHelper *)self isProtectedDataAvailable])
  {
    v14 = [(AXSSCloudKitHelper *)self observedCoordinator];

    if (v14)
    {
      v15 = [(AXSSCloudKitHelper *)self observedCoordinator];
      v16 = [v15 persistentStores];
      v17 = [v16 count];

      if (v17)
      {
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy__4;
        v46 = __Block_byref_object_dispose__4;
        v47 = 0;
        v18 = v13;
        v19 = [[AXSSCloudKitHelperManagedObjectContext alloc] initWithConcurrencyType:1];
        v20 = [(AXSSCloudKitHelper *)self observedCoordinator];
        [(AXSSCloudKitHelperManagedObjectContext *)v19 setPersistentStoreCoordinator:v20];

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __116__AXSSCloudKitHelper_processAccumulatedChangesForServerChangeToken_withAccumulatedUpdates_andDeletes_inTransaction___block_invoke;
        v34[3] = &unk_1E8135210;
        v34[4] = self;
        v35 = v11;
        v21 = v19;
        v36 = v21;
        v37 = &v39;
        p_buf = &buf;
        [(AXSSCloudKitHelperManagedObjectContext *)v21 performBlockAndWait:v34];
        [(AXSSCloudKitHelper *)self processRecordDeletionsFromServer:v12];
        if (*(v40 + 24) == 1)
        {
          v22 = [(AXSSCloudKitHelper *)self observedStore];
          v23 = [v22 metadata];
          v24 = [v23 mutableCopy];

          if (!v24)
          {
            v24 = [MEMORY[0x1E695DF90] dictionary];
          }

          v25 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
          v26 = [(AXSSCloudKitHelper *)self serverChangeTokenMetadataKey];
          [v24 setObject:v25 forKey:v26];

          v27 = [(AXSSCloudKitHelper *)self observedStore];
          [v27 setMetadata:v24];

          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished importing changes for token: %@, metadata %@", v10, v24];
          [(AXSSCloudKitHelper *)self logMessage:v28];

          v29 = [MEMORY[0x1E696ABB0] defaultCenter];
          [v29 postNotificationName:@"AXSSVoiceOverPunctuationCloudKitUpdateNotification" object:0];
        }

        else
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to process changes for token (%@):\n%@", v10, *(*(&buf + 1) + 40)];
          [(AXSSCloudKitHelper *)self logMessage:v24];
        }

        [(AXSSCloudKitHelper *)self processLocalChangesAndPush];
        _Block_object_dispose(&buf, 8);

        _Block_object_dispose(&v39, 8);
        goto LABEL_19;
      }

      v32 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [AXSSCloudKitHelper processAccumulatedChangesForServerChangeToken:withAccumulatedUpdates:andDeletes:inTransaction:];
      }
    }

    else
    {
      v32 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [AXSSCloudKitHelper processAccumulatedChangesForServerChangeToken:withAccumulatedUpdates:andDeletes:inTransaction:];
      }
    }

    goto LABEL_19;
  }

  v30 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1C0E8A000, v30, OS_LOG_TYPE_INFO, "Device is locked, queueing change: %@", &buf, 0xCu);
  }

  v31 = objc_opt_new();
  [v31 setServerChangeToken:v10];
  [v31 setRecordsToUpdate:v11];
  [v31 setRecordIDsToDelete:v12];
  [v31 setOpenTransaction:v13];
  [(NSMutableArray *)self->_accumulatedQueuedData addObject:v31];

LABEL_19:
  v33 = *MEMORY[0x1E69E9840];
}

void __116__AXSSCloudKitHelper_processAccumulatedChangesForServerChangeToken_withAccumulatedUpdates_andDeletes_inTransaction___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [*(a1 + 32) processServerUpdateChanges:*(a1 + 40) moc:*(a1 + 48) recordNameToManagedObject:v2];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v3 save:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
}

- (void)processLocalChangesAndPush
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke;
  v2[3] = &unk_1E81352F0;
  v2[4] = self;
  [(AXSSCloudKitHelper *)self retrieveLocalChangesForCloud:v2];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v10 = *(a1 + 32);
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v10 recordType];
    v13 = [v11 stringWithFormat:@"com.apple.axcloudkithelper.export.%@", v12];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_129;
    v21[3] = &unk_1E81352C8;
    v14 = v7;
    v22 = v14;
    v15 = v8;
    v16 = *(a1 + 32);
    v23 = v15;
    v24 = v16;
    v25 = v9;
    [v10 openTransactionWithLabel:v13 andExecuteWorkBlock:v21];

    v17 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_1C0E8A000, v17, OS_LOG_TYPE_INFO, "CloudKit: save %@, %@", buf, 0x16u);
    }

    v18 = v22;
  }

  else
  {
    v18 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&dword_1C0E8A000, v18, OS_LOG_TYPE_INFO, "No changes needed for cloud kit: %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_129(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:*(a1 + 32) recordIDsToDelete:*(a1 + 40)];
  [v2 setSavePolicy:1];
  [v2 setAtomic:0];
  [v2 setPerRecordDeleteBlock:&__block_literal_global_132];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_133;
  v12[3] = &unk_1E8135258;
  v3 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v13 = v3;
  [v2 setPerRecordSaveBlock:v12];
  [v2 setPerRecordProgressBlock:&__block_literal_global_140];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141;
  v10[3] = &unk_1E81352A0;
  v9 = *(a1 + 40);
  v4 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  [v2 setModifyRecordsCompletionBlock:v10];
  v5 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v15 = v2;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1C0E8A000, v5, OS_LOG_TYPE_INFO, "CloudKit: add operator for %@, %@", buf, 0x16u);
  }

  v7 = [*(a1 + 48) database];
  [v7 addOperation:v2];

  v8 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_INFO, "Delete record: %@, err: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_133(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1C0E8A000, v8, OS_LOG_TYPE_INFO, "Completion record: %@, err: %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write record: %@\n%@", v6, v7];
    [v9 logMessage:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_137(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_137_cold_1(v4, v5, a1);
  }
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AXLogPunctuationStorage();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_INFO, "CloudKit local changes complete: save: %@", buf, 0xCu);
    }

    v11 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_INFO, "CloudKit local changes complete: delete: %@", buf, 0xCu);
    }
  }

  v12 = dispatch_time(0, 0);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142;
  v19 = &unk_1E8134950;
  v13 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = v13;
  dispatch_after(v12, MEMORY[0x1E69E96A0], &v16);
  v14 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v14 postNotificationName:@"AXSSVoiceOverPunctuationCloudKitUpdateNotification" object:0];

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142(uint64_t a1)
{
  v2 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142_cold_1(a1, v2);
  }

  return [*(a1 + 32) clearRecordsForPurging:*(a1 + 40)];
}

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setupPushConnection:(id *)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E698CF30]);
  v6 = [(AXSSCloudKitHelper *)self apsEnvironment];
  v7 = [v5 initWithEnvironmentName:v6 namedDelegatePort:*MEMORY[0x1E698CF08] queue:self->_cloudkitQueue];
  apsConnection = self->_apsConnection;
  self->_apsConnection = v7;

  if (self->_apsConnection && ([(AXSSCloudKitHelper *)self cloudKitPushTopic], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(AXSSCloudKitHelper *)self cloudKitPushTopic];
    v25[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(APSConnection *)self->_apsConnection _setEnabledTopics:v11];

    [(APSConnection *)self->_apsConnection setDelegate:self];
    v12 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_apsConnection;
      v21 = 138412290;
      v22 = v13;
      _os_log_impl(&dword_1C0E8A000, v12, OS_LOG_TYPE_INFO, "Setup push connection: %@", &v21, 0xCu);
    }

    v14 = 0;
    v15 = 1;
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A588];
    v24 = @"Failed to create APSConnection (got nil from init).";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v16 errorWithDomain:@"AXCloudKitErrorDomain" code:1 userInfo:v17];

    v15 = 0;
    if (a3 && v14)
    {
      v18 = v14;
      v15 = 0;
      *a3 = v14;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (self->_apsConnection == a3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection:\n%@\nSent public token: %@", a3, a4];
    [(AXSSCloudKitHelper *)self logMessage:v6];
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection:\n%@\nSent token: %@\nFor topic: %@\nWith identifier: %@", a3, a4, a5, a6];
  [(AXSSCloudKitHelper *)self logMessage:v7];
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a3;
  v12 = [v10 stringWithFormat:@"Connection:\n%@\nMessage for topic: %@\nuserInfo: %@", v11, v8, v9];
  [(AXSSCloudKitHelper *)self logMessage:v12];

  apsConnection = self->_apsConnection;
  if (apsConnection == v11)
  {
    v14 = [(AXSSCloudKitHelper *)self cloudKitPushTopic];
    v15 = [v8 isEqualToString:v14];

    if (v15)
    {
      v16 = [MEMORY[0x1E695B9D8] notificationFromRemoteNotificationDictionary:v9];
      if ([v16 notificationType] == 2)
      {
        cloudkitQueue = self->_cloudkitQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __68__AXSSCloudKitHelper_connection_didReceiveMessageForTopic_userInfo___block_invoke;
        block[3] = &unk_1E8134870;
        block[4] = self;
        dispatch_async(cloudkitQueue, block);
      }
    }
  }
}

- (void)managedObjectContextDidSave:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40 = v4;
  if (self->_observeLocalDatabaseChanges)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Managed object context saved: %@", self, v4];
    [(AXSSCloudKitHelper *)self logMessage:v5];

    v39 = [v40 object];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Responding to context save: %@", v40];
      [(AXSSCloudKitHelper *)self logMessage:v6];

      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x2020000000;
      v65 = 0;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = [v40 userInfo];
      v8 = [v7 objectForKey:*MEMORY[0x1E695D328]];

      v9 = [v8 countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v9)
      {
        v10 = *v61;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v61 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v60 + 1) + 8 * i);
            if ([(AXSSCloudKitHelper *)self shouldExportManagedObject:v12])
            {
              v13 = [(AXSSCloudKitHelper *)self createCKRecordFromObject:v12];
              [v43 addObject:v13];
            }

            v14 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v69 = v43;
              _os_log_debug_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_DEBUG, "Inserting: %@", buf, 0xCu);
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v60 objects:v70 count:16];
        }

        while (v9);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v15 = [v40 userInfo];
      v16 = [v15 objectForKey:*MEMORY[0x1E695D4D0]];

      v17 = [v16 countByEnumeratingWithState:&v56 objects:v67 count:16];
      if (v17)
      {
        v18 = *v57;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v57 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v56 + 1) + 8 * j);
            if ([(AXSSCloudKitHelper *)self shouldExportManagedObject:v20])
            {
              v21 = [(AXSSCloudKitHelper *)self createCKRecordFromObject:v20];
              [v43 addObject:v21];
            }

            v22 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v69 = v43;
              _os_log_debug_impl(&dword_1C0E8A000, v22, OS_LOG_TYPE_DEBUG, "Updating: %@", buf, 0xCu);
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v56 objects:v67 count:16];
        }

        while (v17);
      }

      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      v52 = 0u;
      v23 = [v40 userInfo];
      obj = [v23 objectForKey:*MEMORY[0x1E695D2F8]];

      v24 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
      if (v24)
      {
        v25 = *v53;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v53 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = [*(*(&v52 + 1) + 8 * k) valueForKey:@"uuid"];
            if (v27)
            {
              v28 = objc_alloc(MEMORY[0x1E695BA70]);
              v29 = [v27 UUIDString];
              v30 = [(AXSSCloudKitHelper *)self recordZone];
              v31 = [v30 zoneID];
              v32 = [v28 initWithRecordName:v29 zoneID:v31];

              [v42 addObject:v32];
            }

            v33 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v69 = v42;
              _os_log_debug_impl(&dword_1C0E8A000, v33, OS_LOG_TYPE_DEBUG, "Deleting: %@", buf, 0xCu);
            }
          }

          v24 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
        }

        while (v24);
      }

      if (![v43 count])
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke;
        v49[3] = &unk_1E8134848;
        v49[4] = self;
        v50 = v39;
        v51 = v43;
        [v50 performBlockAndWait:v49];
      }

      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished processing notification with records to save: %@", v43];
      [(AXSSCloudKitHelper *)self logMessage:v34];

      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Records to delete: %@", v42];
      [(AXSSCloudKitHelper *)self logMessage:v35];

      if ([v43 count] || objc_msgSend(v42, "count"))
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_2;
        v44[3] = &unk_1E8135368;
        v45 = v43;
        v47 = self;
        v48 = v64;
        v46 = v42;
        [(AXSSCloudKitHelper *)self openTransactionWithLabel:@"com.apple.axcloudkithelper.export" andExecuteWorkBlock:v44];
      }

      _Block_object_dispose(v64, 8);
    }

    v36 = v39;
  }

  else
  {
    v37 = AXLogPunctuationStorage();
    v36 = v37;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [AXSSCloudKitHelper managedObjectContextDidSave:v37];
      v36 = v37;
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "managedObjectClass")];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"inCloud == NO"];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v19 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v19];
  v6 = v19;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) shouldExportManagedObject:{v12, v15}])
        {
          v13 = [*(a1 + 32) createCKRecordFromObject:v12];
          [*(a1 + 48) addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:*(a1 + 32) recordIDsToDelete:*(a1 + 40)];
  [v4 setSavePolicy:1];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_3;
    v15[3] = &unk_1E8135318;
    v15[4] = *(a1 + 48);
    [v4 setPerRecordSaveBlock:v15];
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_4;
  v11 = &unk_1E8135340;
  v5 = *(a1 + 48);
  v12 = v3;
  v13 = v5;
  v14 = *(a1 + 32);
  v6 = v3;
  [v4 setModifyRecordsCompletionBlock:&v8];
  v7 = [*(a1 + 48) database];
  [v7 addOperation:v4];
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write record: %@\n%@", a3, a4];
    [v4 logMessage:v5];
  }
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[5];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1[4];
  v11 = [v9 stringWithFormat:@"Modify records finished: %@\n%@\n%@", a2, a3, a4];
  [v8 logMessage:v11];

  v12 = [[AXSSCloudKitHelperManagedObjectContext alloc] initWithConcurrencyType:1];
  v13 = [a1[5] observedCoordinator];
  [(AXSSCloudKitHelperManagedObjectContext *)v12 setPersistentStoreCoordinator:v13];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_5;
  v17[3] = &unk_1E8134848;
  v14 = a1[6];
  v15 = a1[5];
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v16 = v12;
  [(AXSSCloudKitHelperManagedObjectContext *)v16 performBlockAndWait:v17];
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_5(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v33 + 1) + 8 * i) recordID];
        v9 = [v8 recordName];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  v10 = [objc_msgSend(*(a1 + 40) "managedObjectClass")];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN (%@)", v2];
  [v10 setPredicate:v11];

  v12 = *(a1 + 48);
  v32 = 0;
  v13 = [v12 executeFetchRequest:v10 error:&v32];
  v14 = v32;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v28 + 1) + 8 * j) setInCloud:1];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v17);
  }

  v20 = *(a1 + 48);
  v27 = v14;
  v21 = [v20 save:&v27];
  v22 = v27;

  v23 = *(a1 + 40);
  if (v21)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Marked histories uploaded: %@", v15, v26];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to mark histories uploaded:\n%@\n%@", v15, v22];
  }
  v24 = ;
  [v23 logMessage:v24];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setObservedStore:(id)a3 observedCoordinator:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_observedStore, a3);
  observedCoordinator = self->_observedCoordinator;
  self->_observedCoordinator = v6;
}

- (NSPersistentStore)observedStore
{
  WeakRetained = objc_loadWeakRetained(&self->_observedStore);

  return WeakRetained;
}

- (id)recordType
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)testRecordForSchemaCreation:(id)a3
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)createCKRecordFromObject:(id)a3
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)processServerUpdateChanges:(id)a3 moc:(id)a4 recordNameToManagedObject:(id)a5
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)processRecordDeletionsFromServer:(id)a3
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)retrieveLocalChangesForCloud:(id)a3
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)clearRecordsForPurging:(id)a3
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (id)apsEnvironment
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 recordType];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "recording remote change: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)processAccumulatedChangesForServerChangeToken:withAccumulatedUpdates:andDeletes:inTransaction:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "The observed coordinator has no persistent stores: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)processAccumulatedChangesForServerChangeToken:withAccumulatedUpdates:andDeletes:inTransaction:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "No coordinator at this time: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_137_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a3;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "Progress: %f, %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, v0, v1, "CloudKit local change push error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "%@ Purged these records %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end