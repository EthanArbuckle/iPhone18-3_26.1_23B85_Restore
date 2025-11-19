@interface ASDatabaseServer
- (ASDatabaseServer)initWithUUID:(id)a3 client:(id)a4;
- (void)connectionInvalidated;
- (void)daemonReady:(id)a3;
- (void)remote_activeDeviceUUIDWithCompletion:(id)a3;
- (void)remote_allCodableDatabaseCompetitionListEntriesWithCompletion:(id)a3;
- (void)remote_allCodableDatabaseCompetitionsWithCompletion:(id)a3;
- (void)remote_deletedHealthKitWorkoutsWithinLastNumberOfDays:(unint64_t)a3 maxBatchSize:(unint64_t)a4 anchor:(id)a5 completion:(id)a6;
- (void)remote_insertDataObjects:(id)a3 completion:(id)a4;
- (void)remote_isActivityAlertSuppressionEnabledWithCompletion:(id)a3;
- (void)remote_isDataProtectedByFirstUnlockAvailableWithCompletion:(id)a3;
- (void)remote_isProtectedDataAvailableWithCompletion:(id)a3;
- (void)remote_localSourceUUIDWithCompletion:(id)a3;
- (void)remote_performWhenDaemonReady:(id)a3;
- (void)remote_performWhenDataProtectedByFirstUnlockIsAvailable:(id)a3;
- (void)remote_registerFitnessAppBadgeProvider;
- (void)remote_removeAllCodableDatabaseCompetitionListsWithCompletion:(id)a3;
- (void)remote_removeAllCodableDatabaseCompetitionsWithCompletion:(id)a3;
- (void)remote_removeCodableDatabaseCompetitionsWithFriendUUID:(id)a3 type:(int64_t)a4 completion:(id)a5;
- (void)remote_saveCodableDatabaseCompetitionListEntry:(id)a3 completion:(id)a4;
- (void)remote_saveCodableDatabaseCompetitions:(id)a3 completion:(id)a4;
- (void)remote_todayActivitySummaryWithCompletion:(id)a3;
- (void)remote_updateFitnessAppBadgeCount:(unint64_t)a3;
- (void)remote_yesterdayActivitySummaryWithCompletion:(id)a3;
@end

@implementation ASDatabaseServer

- (ASDatabaseServer)initWithUUID:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ASDatabaseServer;
  v8 = [(ASDatabaseServer *)&v20 init];
  if (v8)
  {
    v9 = [v6 copy];
    taskUUID = v8->_taskUUID;
    v8->_taskUUID = v9;

    objc_storeStrong(&v8->_client, a4);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = HKCreateSerialDispatchQueue();
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v13;

    v8->_isDaemonReady = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queue_performWhenDaemonReadyBlocks = v8->_queue_performWhenDaemonReadyBlocks;
    v8->_queue_performWhenDaemonReadyBlocks = v15;

    v8->_fitnessAppBadgeCount = 0;
    v17 = [(HDHealthStoreClient *)v8->_client profile];
    v18 = [v17 daemon];
    [v18 registerDaemonReadyObserver:v8 queue:v8->_serialQueue];
  }

  return v8;
}

- (void)remote_performWhenDaemonReady:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ASDatabaseServer_remote_performWhenDaemonReady___block_invoke;
  v7[3] = &unk_278C4B1B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

void __50__ASDatabaseServer_remote_performWhenDaemonReady___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 40);
    v5 = MEMORY[0x23EF0EB00](*(a1 + 40));
    [v4 addObject:v5];
  }
}

- (void)remote_isDataProtectedByFirstUnlockAvailableWithCompletion:(id)a3
{
  client = self->_client;
  v5 = a3;
  v7 = [(HDHealthStoreClient *)client profile];
  v6 = [v7 database];
  (*(a3 + 2))(v5, [v6 isDataProtectedByFirstUnlockAvailable]);
}

- (void)remote_performWhenDataProtectedByFirstUnlockIsAvailable:(id)a3
{
  client = self->_client;
  v4 = a3;
  v6 = [(HDHealthStoreClient *)client profile];
  v5 = [v6 database];
  [v5 performWhenDataProtectedByFirstUnlockIsAvailable:v4];
}

- (void)remote_isProtectedDataAvailableWithCompletion:(id)a3
{
  client = self->_client;
  v5 = a3;
  v7 = [(HDHealthStoreClient *)client profile];
  v6 = [v7 database];
  (*(a3 + 2))(v5, [v6 isProtectedDataAvailable]);
}

- (void)remote_yesterdayActivitySummaryWithCompletion:(id)a3
{
  client = self->_client;
  v5 = a3;
  v8 = [(HDHealthStoreClient *)client profile];
  v6 = [v8 currentActivitySummaryHelper];
  v7 = [v6 yesterdayActivitySummary];
  (*(a3 + 2))(v5, v7);
}

- (void)remote_todayActivitySummaryWithCompletion:(id)a3
{
  client = self->_client;
  v5 = a3;
  v8 = [(HDHealthStoreClient *)client profile];
  v6 = [v8 currentActivitySummaryHelper];
  v7 = [v6 todayActivitySummary];
  (*(a3 + 2))(v5, v7);
}

- (void)remote_deletedHealthKitWorkoutsWithinLastNumberOfDays:(unint64_t)a3 maxBatchSize:(unint64_t)a4 anchor:(id)a5 completion:(id)a6
{
  v42[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [MEMORY[0x277CBEAA8] date];
  v28 = [v12 dateByAddingUnit:16 value:-a3 toDate:v13 options:0];

  v14 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10408] greaterThanOrEqualToValue:v28];
  v15 = HDDataEntityPredicateForType();
  v16 = MEMORY[0x277D10B20];
  v42[0] = v14;
  v42[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v18 = [v16 predicateMatchingAllPredicates:v17];

  v19 = MEMORY[0x277D10848];
  v20 = [MEMORY[0x277CCD720] workoutType];
  v21 = [(HDHealthStoreClient *)self->_client profile];
  v22 = [v19 entityEnumeratorWithType:v20 profile:v21];

  [v22 setPredicate:v18];
  [v22 setAnchor:v10];
  [v22 setLimitCount:a4];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5;
  v40 = __Block_byref_object_dispose__5;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  if (v10)
  {
    v23 = [v10 longValue];
  }

  else
  {
    v23 = 0;
  }

  v35 = v23;
  v30[5] = &v32;
  v31 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __105__ASDatabaseServer_remote_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_completion___block_invoke;
  v30[3] = &unk_278C4B368;
  v30[4] = &v36;
  [v22 enumerateIncludingDeletedObjects:1 error:&v31 handler:{v30, v28}];
  v24 = v31;
  v25 = v37[5];
  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v33[3]];
  v11[2](v11, v25, v26, v24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __105__ASDatabaseServer_remote_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:?];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24);
    if (v7 <= a4)
    {
      v7 = a4;
    }

    *(v6 + 24) = v7;
  }

  return 1;
}

- (void)remote_insertDataObjects:(id)a3 completion:(id)a4
{
  client = self->_client;
  v7 = a4;
  v8 = a3;
  v9 = [(HDHealthStoreClient *)client profile];
  v10 = [v9 dataManager];
  v11 = [(HDHealthStoreClient *)self->_client profile];
  v12 = [v11 dataProvenanceManager];
  v13 = [v12 defaultLocalDataProvenance];
  v16 = 0;
  v14 = [v10 insertDataObjects:v8 withProvenance:v13 creationDate:1 skipInsertionFilter:&v16 error:CFAbsoluteTimeGetCurrent()];

  v15 = v16;
  v7[2](v7, v14, v15);
}

- (void)remote_allCodableDatabaseCompetitionsWithCompletion:(id)a3
{
  client = self->_client;
  v4 = a3;
  v5 = [(HDHealthStoreClient *)client profile];
  v8 = 0;
  v6 = [ASDatabaseCompetitionEntity allDatabaseCompetitionsWithProfile:v5 withError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_saveCodableDatabaseCompetitions:(id)a3 completion:(id)a4
{
  client = self->_client;
  v6 = a4;
  v7 = a3;
  v8 = [(HDHealthStoreClient *)client profile];
  v11 = 0;
  v9 = [ASDatabaseCompetitionEntity saveCompetitions:v7 profile:v8 withError:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_removeCodableDatabaseCompetitionsWithFriendUUID:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  client = self->_client;
  v8 = a5;
  v9 = a3;
  v10 = [(HDHealthStoreClient *)client profile];
  v13 = 0;
  v11 = [ASDatabaseCompetitionEntity removeCompetitionsForFriendUUID:v9 type:a4 profile:v10 withError:&v13];

  v12 = v13;
  v8[2](v8, v11, v12);
}

- (void)remote_removeAllCodableDatabaseCompetitionsWithCompletion:(id)a3
{
  client = self->_client;
  v4 = a3;
  v5 = [(HDHealthStoreClient *)client profile];
  v8 = 0;
  v6 = [ASDatabaseCompetitionEntity removeAllCompetitionsWithProfile:v5 error:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_allCodableDatabaseCompetitionListEntriesWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HDHealthStoreClient *)self->_client profile];
  v11 = v6;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__ASDatabaseServer_remote_allCodableDatabaseCompetitionListEntriesWithCompletion___block_invoke;
  v10[3] = &unk_278C4B5B8;
  v8 = v6;
  [ASDatabaseCompetitionListEntryEntity enumerateAllCompetitionListsWithProfile:v7 error:&v12 handler:v10];
  v9 = v12;

  v5[2](v5, v8, v9);
}

- (void)remote_saveCodableDatabaseCompetitionListEntry:(id)a3 completion:(id)a4
{
  client = self->_client;
  v6 = a4;
  v7 = a3;
  v8 = [(HDHealthStoreClient *)client profile];
  v11 = 0;
  v9 = [ASDatabaseCompetitionListEntryEntity saveCompetitionList:v7 profile:v8 withError:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_removeAllCodableDatabaseCompetitionListsWithCompletion:(id)a3
{
  client = self->_client;
  v4 = a3;
  v5 = [(HDHealthStoreClient *)client profile];
  v8 = 0;
  v6 = [ASDatabaseCompetitionListEntryEntity removeAllCompetitionListsWithProfile:v5 error:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_localSourceUUIDWithCompletion:(id)a3
{
  client = self->_client;
  v5 = a3;
  v6 = [(HDHealthStoreClient *)client profile];
  v7 = [v6 sourceManager];
  v14 = 0;
  v8 = [v7 localDeviceSourceWithError:&v14];
  v9 = v14;

  v10 = [(HDHealthStoreClient *)self->_client profile];
  v13 = v9;
  v11 = [v8 sourceUUIDWithProfile:v10 error:&v13];
  v12 = v13;

  v5[2](v5, v11, v12);
}

- (void)remote_activeDeviceUUIDWithCompletion:(id)a3
{
  client = self->_client;
  v5 = a3;
  v6 = [(HDHealthStoreClient *)client profile];
  v7 = [v6 nanoSyncManager];
  v8 = [v7 pairedDevicesSnapshot];
  v9 = [v8 activeDeviceInfo];
  v10 = [v9 sourceBundleIdentifier];

  v11 = [(HDHealthStoreClient *)self->_client profile];
  v12 = [v11 sourceManager];
  v15 = 0;
  v13 = [v12 sourceUUIDForBundleIdentifier:v10 error:&v15];
  v14 = v15;

  v5[2](v5, v13, v14);
}

- (void)remote_isActivityAlertSuppressionEnabledWithCompletion:(id)a3
{
  client = self->_client;
  v4 = a3;
  v5 = [(HDHealthStoreClient *)client profile];
  v6 = [v5 daemon];
  v7 = [v6 alertSuppressionService];

  if (v7)
  {
    [v7 fetchActivityAlertSuppressionStateWithCompletion:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)remote_registerFitnessAppBadgeProvider
{
  v4 = [(HDHealthStoreClient *)self->_client profile];
  v3 = CHProfileExtensionForProfile();
  [v3 registerFitnessAppBadgeCountProvider:self];
}

- (void)remote_updateFitnessAppBadgeCount:(unint64_t)a3
{
  self->_fitnessAppBadgeCount = a3;
  v4 = [(HDHealthStoreClient *)self->_client profile];
  v3 = CHProfileExtensionForProfile();
  [v3 requestFitnessAppBadgeCountUpdate];
}

- (void)connectionInvalidated
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ASDatabaseServer_connectionInvalidated__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __41__ASDatabaseServer_connectionInvalidated__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) connection];
  [v1 invalidate];
}

- (void)daemonReady:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v20 = v7;
    v21 = 2080;
    v22 = "[ASDatabaseServer daemonReady:]";
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "%@ received %s", buf, 0x16u);
  }

  self->_isDaemonReady = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_queue_performWhenDaemonReadyBlocks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_queue_performWhenDaemonReadyBlocks removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

@end