@interface ASDatabaseServer
- (ASDatabaseServer)initWithUUID:(id)d client:(id)client;
- (void)connectionInvalidated;
- (void)daemonReady:(id)ready;
- (void)remote_activeDeviceUUIDWithCompletion:(id)completion;
- (void)remote_allCodableDatabaseCompetitionListEntriesWithCompletion:(id)completion;
- (void)remote_allCodableDatabaseCompetitionsWithCompletion:(id)completion;
- (void)remote_deletedHealthKitWorkoutsWithinLastNumberOfDays:(unint64_t)days maxBatchSize:(unint64_t)size anchor:(id)anchor completion:(id)completion;
- (void)remote_insertDataObjects:(id)objects completion:(id)completion;
- (void)remote_isActivityAlertSuppressionEnabledWithCompletion:(id)completion;
- (void)remote_isDataProtectedByFirstUnlockAvailableWithCompletion:(id)completion;
- (void)remote_isProtectedDataAvailableWithCompletion:(id)completion;
- (void)remote_localSourceUUIDWithCompletion:(id)completion;
- (void)remote_performWhenDaemonReady:(id)ready;
- (void)remote_performWhenDataProtectedByFirstUnlockIsAvailable:(id)available;
- (void)remote_registerFitnessAppBadgeProvider;
- (void)remote_removeAllCodableDatabaseCompetitionListsWithCompletion:(id)completion;
- (void)remote_removeAllCodableDatabaseCompetitionsWithCompletion:(id)completion;
- (void)remote_removeCodableDatabaseCompetitionsWithFriendUUID:(id)d type:(int64_t)type completion:(id)completion;
- (void)remote_saveCodableDatabaseCompetitionListEntry:(id)entry completion:(id)completion;
- (void)remote_saveCodableDatabaseCompetitions:(id)competitions completion:(id)completion;
- (void)remote_todayActivitySummaryWithCompletion:(id)completion;
- (void)remote_updateFitnessAppBadgeCount:(unint64_t)count;
- (void)remote_yesterdayActivitySummaryWithCompletion:(id)completion;
@end

@implementation ASDatabaseServer

- (ASDatabaseServer)initWithUUID:(id)d client:(id)client
{
  dCopy = d;
  clientCopy = client;
  v20.receiver = self;
  v20.super_class = ASDatabaseServer;
  v8 = [(ASDatabaseServer *)&v20 init];
  if (v8)
  {
    v9 = [dCopy copy];
    taskUUID = v8->_taskUUID;
    v8->_taskUUID = v9;

    objc_storeStrong(&v8->_client, client);
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
    profile = [(HDHealthStoreClient *)v8->_client profile];
    daemon = [profile daemon];
    [daemon registerDaemonReadyObserver:v8 queue:v8->_serialQueue];
  }

  return v8;
}

- (void)remote_performWhenDaemonReady:(id)ready
{
  readyCopy = ready;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ASDatabaseServer_remote_performWhenDaemonReady___block_invoke;
  v7[3] = &unk_278C4B1B0;
  v7[4] = self;
  v8 = readyCopy;
  v6 = readyCopy;
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

- (void)remote_isDataProtectedByFirstUnlockAvailableWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  database = [profile database];
  (*(completion + 2))(completionCopy, [database isDataProtectedByFirstUnlockAvailable]);
}

- (void)remote_performWhenDataProtectedByFirstUnlockIsAvailable:(id)available
{
  client = self->_client;
  availableCopy = available;
  profile = [(HDHealthStoreClient *)client profile];
  database = [profile database];
  [database performWhenDataProtectedByFirstUnlockIsAvailable:availableCopy];
}

- (void)remote_isProtectedDataAvailableWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  database = [profile database];
  (*(completion + 2))(completionCopy, [database isProtectedDataAvailable]);
}

- (void)remote_yesterdayActivitySummaryWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  currentActivitySummaryHelper = [profile currentActivitySummaryHelper];
  yesterdayActivitySummary = [currentActivitySummaryHelper yesterdayActivitySummary];
  (*(completion + 2))(completionCopy, yesterdayActivitySummary);
}

- (void)remote_todayActivitySummaryWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  currentActivitySummaryHelper = [profile currentActivitySummaryHelper];
  todayActivitySummary = [currentActivitySummaryHelper todayActivitySummary];
  (*(completion + 2))(completionCopy, todayActivitySummary);
}

- (void)remote_deletedHealthKitWorkoutsWithinLastNumberOfDays:(unint64_t)days maxBatchSize:(unint64_t)size anchor:(id)anchor completion:(id)completion
{
  v42[2] = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v28 = [currentCalendar dateByAddingUnit:16 value:-days toDate:date options:0];

  v14 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10408] greaterThanOrEqualToValue:v28];
  v15 = HDDataEntityPredicateForType();
  v16 = MEMORY[0x277D10B20];
  v42[0] = v14;
  v42[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v18 = [v16 predicateMatchingAllPredicates:v17];

  v19 = MEMORY[0x277D10848];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  profile = [(HDHealthStoreClient *)self->_client profile];
  v22 = [v19 entityEnumeratorWithType:workoutType profile:profile];

  [v22 setPredicate:v18];
  [v22 setAnchor:anchorCopy];
  [v22 setLimitCount:size];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5;
  v40 = __Block_byref_object_dispose__5;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  if (anchorCopy)
  {
    longValue = [anchorCopy longValue];
  }

  else
  {
    longValue = 0;
  }

  v35 = longValue;
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
  completionCopy[2](completionCopy, v25, v26, v24);

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

- (void)remote_insertDataObjects:(id)objects completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  objectsCopy = objects;
  profile = [(HDHealthStoreClient *)client profile];
  dataManager = [profile dataManager];
  profile2 = [(HDHealthStoreClient *)self->_client profile];
  dataProvenanceManager = [profile2 dataProvenanceManager];
  defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
  v16 = 0;
  v14 = [dataManager insertDataObjects:objectsCopy withProvenance:defaultLocalDataProvenance creationDate:1 skipInsertionFilter:&v16 error:CFAbsoluteTimeGetCurrent()];

  v15 = v16;
  completionCopy[2](completionCopy, v14, v15);
}

- (void)remote_allCodableDatabaseCompetitionsWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  v8 = 0;
  v6 = [ASDatabaseCompetitionEntity allDatabaseCompetitionsWithProfile:profile withError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_saveCodableDatabaseCompetitions:(id)competitions completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  competitionsCopy = competitions;
  profile = [(HDHealthStoreClient *)client profile];
  v11 = 0;
  v9 = [ASDatabaseCompetitionEntity saveCompetitions:competitionsCopy profile:profile withError:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_removeCodableDatabaseCompetitionsWithFriendUUID:(id)d type:(int64_t)type completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  dCopy = d;
  profile = [(HDHealthStoreClient *)client profile];
  v13 = 0;
  v11 = [ASDatabaseCompetitionEntity removeCompetitionsForFriendUUID:dCopy type:type profile:profile withError:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_removeAllCodableDatabaseCompetitionsWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  v8 = 0;
  v6 = [ASDatabaseCompetitionEntity removeAllCompetitionsWithProfile:profile error:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_allCodableDatabaseCompetitionListEntriesWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEB18];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  profile = [(HDHealthStoreClient *)self->_client profile];
  v11 = v6;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__ASDatabaseServer_remote_allCodableDatabaseCompetitionListEntriesWithCompletion___block_invoke;
  v10[3] = &unk_278C4B5B8;
  v8 = v6;
  [ASDatabaseCompetitionListEntryEntity enumerateAllCompetitionListsWithProfile:profile error:&v12 handler:v10];
  v9 = v12;

  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_saveCodableDatabaseCompetitionListEntry:(id)entry completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  entryCopy = entry;
  profile = [(HDHealthStoreClient *)client profile];
  v11 = 0;
  v9 = [ASDatabaseCompetitionListEntryEntity saveCompetitionList:entryCopy profile:profile withError:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_removeAllCodableDatabaseCompetitionListsWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  v8 = 0;
  v6 = [ASDatabaseCompetitionListEntryEntity removeAllCompetitionListsWithProfile:profile error:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_localSourceUUIDWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  sourceManager = [profile sourceManager];
  v14 = 0;
  v8 = [sourceManager localDeviceSourceWithError:&v14];
  v9 = v14;

  profile2 = [(HDHealthStoreClient *)self->_client profile];
  v13 = v9;
  v11 = [v8 sourceUUIDWithProfile:profile2 error:&v13];
  v12 = v13;

  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_activeDeviceUUIDWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  nanoSyncManager = [profile nanoSyncManager];
  pairedDevicesSnapshot = [nanoSyncManager pairedDevicesSnapshot];
  activeDeviceInfo = [pairedDevicesSnapshot activeDeviceInfo];
  sourceBundleIdentifier = [activeDeviceInfo sourceBundleIdentifier];

  profile2 = [(HDHealthStoreClient *)self->_client profile];
  sourceManager = [profile2 sourceManager];
  v15 = 0;
  v13 = [sourceManager sourceUUIDForBundleIdentifier:sourceBundleIdentifier error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
}

- (void)remote_isActivityAlertSuppressionEnabledWithCompletion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  profile = [(HDHealthStoreClient *)client profile];
  daemon = [profile daemon];
  alertSuppressionService = [daemon alertSuppressionService];

  if (alertSuppressionService)
  {
    [alertSuppressionService fetchActivityAlertSuppressionStateWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)remote_registerFitnessAppBadgeProvider
{
  profile = [(HDHealthStoreClient *)self->_client profile];
  v3 = CHProfileExtensionForProfile();
  [v3 registerFitnessAppBadgeCountProvider:self];
}

- (void)remote_updateFitnessAppBadgeCount:(unint64_t)count
{
  self->_fitnessAppBadgeCount = count;
  profile = [(HDHealthStoreClient *)self->_client profile];
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

- (void)daemonReady:(id)ready
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