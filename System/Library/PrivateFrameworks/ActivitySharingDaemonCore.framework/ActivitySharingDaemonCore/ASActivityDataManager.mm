@interface ASActivityDataManager
- (ASActivitySharingManager)activitySharingManager;
- (ASCloudKitManager)cloudKitManager;
- (ASFriendListManager)friendListManager;
- (ASPeriodicUpdateManager)periodicUpdateManager;
- (BOOL)_hasMoveGoalForActivitySummary:(id)summary;
- (BOOL)_isAlertSuppressionEnabled;
- (BOOL)_queue_deleteActivityDataForFriendWithUUID:(id)d;
- (BOOL)_queue_deleteAllActivitySharingData;
- (BOOL)deleteActivityDataForFriendWithUUID:(id)d;
- (BOOL)deleteAllActivitySharingData;
- (HKActivitySummary)currentActivitySummary;
- (HKActivitySummary)yesterdayActivitySummary;
- (NSSet)currentAchievements;
- (NSSet)currentWorkouts;
- (NSSet)yesterdayWorkouts;
- (_HKFitnessFriendActivitySnapshot)currentActivitySnapshot;
- (_HKFitnessFriendActivitySnapshot)yesterdayActivitySnapshot;
- (id)_achievementsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot currentTodayAchievementAnchorToken:(id)token currentYesterdayAchievementAnchorToken:(id)anchorToken;
- (id)_activitySnapshotsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot;
- (id)_endDatePredicate;
- (id)_filterAchievements:(id)achievements forSnapshotIndex:(int64_t)index;
- (id)_fitnessFriendAchievementPredicateForFriendUUID:(id)d;
- (id)_fitnessFriendActivitySnapshotPredicateForFriendUUID:(id)d;
- (id)_fitnessFriendSamplePredicateForFriendUUID:(id)d;
- (id)_fitnessFriendWorkoutPredicateForFriendUUID:(id)d;
- (id)_persistedAnchorTokenWithKey:(id)key;
- (id)_persistedAnchorWithKey:(id)key;
- (id)_workoutsAfterAnchor:(id *)anchor withPredicate:(id)predicate;
- (id)_workoutsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot currentWorkoutAnchor:(id)anchor;
- (id)achievementsFromFitnessFriendSamples:(id)samples;
- (id)activitySnapshotsFromFitnessFriendSamples:(id)samples;
- (id)fitnessFriendSamplesForFriendWithUUID:(id)d;
- (id)localSourceUUID;
- (id)notificationEventsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot achievements:(id)achievements workouts:(id)workouts currentDeletedWorkoutAnchor:(id)anchor currentGoalCompletionAnchor:(id)completionAnchor;
- (id)recordIDsToDelete;
- (id)recordsFromActivityDataCodables:(id)codables recordEncryptionType:(int64_t)type;
- (id)recordsToSave;
- (id)workoutsFromFitnessFriendSamples:(id)samples;
- (void)_ckQueue_handleDeletedWorkoutEvents:(id)events completion:(id)completion;
- (void)_ckQueue_handleNewSnapshotsForSelf:(id)self moreComing:(BOOL)coming;
- (void)_ckQueue_processActivitySnapshotsForSelf:(id)self;
- (void)_handleNewSnapshots:(id)snapshots workouts:(id)workouts achievements:(id)achievements moreComing:(BOOL)coming;
- (void)_isAlertSuppressionEnabled;
- (void)_queue_getAndHandleAllActivitySharingData;
- (void)_queue_handleNewSnapshots:(id)snapshots workouts:(id)workouts achievements:(id)achievements;
- (void)_queue_insertSamples:(id)samples;
- (void)_queue_persistAnchorTokenValue:(id)value forKey:(id)key;
- (void)_queue_persistAnchorValue:(id)value forKey:(id)key;
- (void)_queue_samplesAdded:(id)added;
- (void)_queue_setLastPushedDeletedWorkoutAnchor:(id)anchor;
- (void)_queue_setLastPushedGoalCompletionAnchor:(id)anchor;
- (void)_queue_setLastPushedTodayAchievementAnchorToken:(id)token;
- (void)_queue_setLastPushedWorkoutAnchor:(id)anchor;
- (void)_queue_setSecureCloudGoalCompletionAnchor:(id)anchor;
- (void)_workoutsForActivitySnapshot:(id)snapshot anchor:(id)anchor completion:(id)completion;
- (void)activitySharingManagerReady:(id)ready;
- (void)addObserver:(id)observer;
- (void)beginObservingData;
- (void)cloudKitManager:(id)manager didReceiveNewActivitySnapshots:(id)snapshots moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewActivitySnapshotsForSelf:(id)self moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewFriendAchievements:(id)achievements moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewFriendWorkouts:(id)workouts moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewNotificationEvents:(id)events moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)currentAchievements;
- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)endObservingData;
- (void)fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)index withCompletion:(id)completion;
- (void)findDeletedWorkoutEventsWithAnchor:(id)anchor completion:(id)completion;
- (void)loadLocalActivityDataIfNeeded;
- (void)periodicUpdateManager:(id)manager didFailToSaveRecords:(id)records activity:(id)activity;
- (void)periodicUpdateManager:(id)manager didSaveRecords:(id)records activity:(id)activity;
- (void)removeObserver:(id)observer;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)saveActivitySnapshots:(id)snapshots workouts:(id)workouts achievements:(id)achievements isInvitationData:(BOOL)data;
- (void)updateSecureCloudGoalCompletionAnchor:(id)anchor;
@end

@implementation ASActivityDataManager

- (void)activitySharingManagerReady:(id)ready
{
  readyCopy = ready;
  [(ASActivityDataManager *)self setActivitySharingManager:readyCopy];
  cloudKitManager = [readyCopy cloudKitManager];
  [(ASActivityDataManager *)self setCloudKitManager:cloudKitManager];

  friendListManager = [readyCopy friendListManager];
  [(ASActivityDataManager *)self setFriendListManager:friendListManager];

  periodicUpdateManager = [readyCopy periodicUpdateManager];

  [(ASActivityDataManager *)self setPeriodicUpdateManager:periodicUpdateManager];
  WeakRetained = objc_loadWeakRetained(&self->_periodicUpdateManager);
  [WeakRetained addProvider:self];
}

- (void)dealloc
{
  [(ASActivityDataManager *)self endObservingData];
  v3.receiver = self;
  v3.super_class = ASActivityDataManager;
  [(ASActivityDataManager *)&v3 dealloc];
}

- (void)beginObservingData
{
  v23[3] = *MEMORY[0x277D85DE8];
  cloudKitManager = [(ASActivityDataManager *)self cloudKitManager];
  [cloudKitManager addObserver:self];

  v4 = [(ASActivityDataManager *)self _persistedAnchorWithKey:@"LastPushedWorkoutAnchor"];
  lastPushedWorkoutAnchor = self->_lastPushedWorkoutAnchor;
  self->_lastPushedWorkoutAnchor = v4;

  objc_storeStrong(&self->_currentWorkoutAnchor, self->_lastPushedWorkoutAnchor);
  v6 = [(ASActivityDataManager *)self _persistedAnchorWithKey:@"LastPushedDeletedWorkoutAnchor"];
  lastPushedDeletedWorkoutAnchor = self->_lastPushedDeletedWorkoutAnchor;
  self->_lastPushedDeletedWorkoutAnchor = v6;

  objc_storeStrong(&self->_currentDeletedWorkoutAnchor, self->_lastPushedDeletedWorkoutAnchor);
  v8 = [(ASActivityDataManager *)self _persistedAnchorTokenWithKey:@"LastPushedTodayAchievementAnchorToken"];
  lastPushedTodayAchievementAnchorToken = self->_lastPushedTodayAchievementAnchorToken;
  self->_lastPushedTodayAchievementAnchorToken = v8;

  objc_storeStrong(&self->_currentTodayAchievementAnchorToken, self->_lastPushedTodayAchievementAnchorToken);
  v10 = [(ASActivityDataManager *)self _persistedAnchorWithKey:@"LastPushedGoalCompletionAnchor"];
  lastPushedGoalCompletionAnchor = self->_lastPushedGoalCompletionAnchor;
  self->_lastPushedGoalCompletionAnchor = v10;

  objc_storeStrong(&self->_currentGoalCompletionAnchor, self->_lastPushedGoalCompletionAnchor);
  v12 = [(ASActivityDataManager *)self _persistedAnchorWithKey:@"SecureCloudGoalCompletionAnchor"];
  secureCloudGoalCompletionAnchor = self->_secureCloudGoalCompletionAnchor;
  self->_secureCloudGoalCompletionAnchor = v12;

  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  v23[0] = fitnessFriendActivitySnapshotType;
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  v23[1] = fitnessFriendAchievementType;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v23[2] = fitnessFriendWorkoutType;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

  [(ASDatabaseClient *)self->_databaseClient addSampleObserver:self sampleTypes:v17];
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ASActivityDataManager_beginObservingData__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(activitySummaryQueue, block);
  [(ASDatabaseClient *)self->_databaseClient addActivitySummaryObserver:self];
  [(ASDatabaseClient *)self->_databaseClient addProtectedDataObserver:self];
  healthDataQueue = self->_healthDataQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__ASActivityDataManager_beginObservingData__block_invoke_2;
  v21[3] = &unk_278C4B278;
  v21[4] = self;
  dispatch_async(healthDataQueue, v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __43__ASActivityDataManager_beginObservingData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) todayActivitySummary];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = v3;

  v9 = [*(*(a1 + 32) + 272) yesterdayActivitySummary];
  v6 = [v9 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  *(v7 + 168) = v6;
}

- (void)endObservingData
{
  v9[3] = *MEMORY[0x277D85DE8];
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  v9[1] = fitnessFriendAchievementType;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v9[2] = fitnessFriendWorkoutType;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  [(ASDatabaseClient *)self->_databaseClient removeSampleObserver:self sampleTypes:v6];
  [(ASDatabaseClient *)self->_databaseClient removeActivitySummaryObserver:self];
  [(ASDatabaseClient *)self->_databaseClient removeProtectedDataObserver:self];
  cloudKitManager = [(ASActivityDataManager *)self cloudKitManager];
  [cloudKitManager removeObserver:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ASActivityDataManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ASActivityDataManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (void)_handleNewSnapshots:(id)snapshots workouts:(id)workouts achievements:(id)achievements moreComing:(BOOL)coming
{
  snapshotsCopy = snapshots;
  workoutsCopy = workouts;
  achievementsCopy = achievements;
  if (snapshotsCopy)
  {
    newSnapshots = self->_newSnapshots;
    if (newSnapshots)
    {
      v13 = [(NSArray *)newSnapshots arrayByAddingObjectsFromArray:snapshotsCopy];
    }

    else
    {
      v13 = [snapshotsCopy copy];
    }

    v14 = self->_newSnapshots;
    self->_newSnapshots = v13;
  }

  if (workoutsCopy)
  {
    newWorkouts = self->_newWorkouts;
    if (newWorkouts)
    {
      v16 = [(NSArray *)newWorkouts arrayByAddingObjectsFromArray:workoutsCopy];
    }

    else
    {
      v16 = [workoutsCopy copy];
    }

    v17 = self->_newWorkouts;
    self->_newWorkouts = v16;
  }

  if (achievementsCopy)
  {
    newAchievements = self->_newAchievements;
    if (newAchievements)
    {
      v19 = [(NSArray *)newAchievements arrayByAddingObjectsFromArray:achievementsCopy];
    }

    else
    {
      v19 = [achievementsCopy copy];
    }

    v20 = self->_newAchievements;
    self->_newAchievements = v19;
  }

  if (!coming)
  {
    [(ASActivityDataManager *)self saveActivitySnapshots:self->_newSnapshots workouts:self->_newWorkouts achievements:self->_newAchievements isInvitationData:0];
    v21 = self->_newSnapshots;
    self->_newSnapshots = 0;

    v22 = self->_newWorkouts;
    self->_newWorkouts = 0;

    v23 = self->_newAchievements;
    self->_newAchievements = 0;
  }
}

- (void)_ckQueue_handleNewSnapshotsForSelf:(id)self moreComing:(BOOL)coming
{
  selfCopy = self;
  if (selfCopy)
  {
    newSnapshotsForSelf = self->_newSnapshotsForSelf;
    if (newSnapshotsForSelf)
    {
      v8 = [(NSArray *)newSnapshotsForSelf arrayByAddingObjectsFromArray:selfCopy];
    }

    else
    {
      v8 = [selfCopy copy];
    }

    v9 = self->_newSnapshotsForSelf;
    self->_newSnapshotsForSelf = v8;
  }

  if (!coming)
  {
    [(ASActivityDataManager *)self _ckQueue_processActivitySnapshotsForSelf:self->_newSnapshotsForSelf];
    v10 = self->_newSnapshotsForSelf;
    self->_newSnapshotsForSelf = 0;
  }

  MEMORY[0x2821F96F8]();
}

- (void)cloudKitManager:(id)manager didReceiveNewActivitySnapshotsForSelf:(id)self moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  selfCopy = self;
  handlerCopy = handler;
  cloudKitManagerObserverQueue = self->_cloudKitManagerObserverQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __114__ASActivityDataManager_cloudKitManager_didReceiveNewActivitySnapshotsForSelf_moreComing_changesProcessedHandler___block_invoke;
  v14[3] = &unk_278C4B9C0;
  v14[4] = self;
  v15 = selfCopy;
  comingCopy = coming;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = selfCopy;
  dispatch_async(cloudKitManagerObserverQueue, v14);
}

void __114__ASActivityDataManager_cloudKitManager_didReceiveNewActivitySnapshotsForSelf_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ckQueue_handleNewSnapshotsForSelf:*(a1 + 40) moreComing:*(a1 + 56)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__ASActivityDataManager_cloudKitManager_didReceiveNewActivitySnapshotsForSelf_moreComing_changesProcessedHandler___block_invoke_2;
  block[3] = &unk_278C4B228;
  v3 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cloudKitManager:(id)manager didReceiveNewActivitySnapshots:(id)snapshots moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  snapshotsCopy = snapshots;
  handlerCopy = handler;
  cloudKitManagerObserverQueue = self->_cloudKitManagerObserverQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __107__ASActivityDataManager_cloudKitManager_didReceiveNewActivitySnapshots_moreComing_changesProcessedHandler___block_invoke;
  v14[3] = &unk_278C4B9C0;
  v14[4] = self;
  v15 = snapshotsCopy;
  comingCopy = coming;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = snapshotsCopy;
  dispatch_async(cloudKitManagerObserverQueue, v14);
}

void __107__ASActivityDataManager_cloudKitManager_didReceiveNewActivitySnapshots_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleNewSnapshots:*(a1 + 40) workouts:0 achievements:0 moreComing:*(a1 + 56)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__ASActivityDataManager_cloudKitManager_didReceiveNewActivitySnapshots_moreComing_changesProcessedHandler___block_invoke_2;
  block[3] = &unk_278C4B228;
  v3 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cloudKitManager:(id)manager didReceiveNewFriendWorkouts:(id)workouts moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  workoutsCopy = workouts;
  handlerCopy = handler;
  cloudKitManagerObserverQueue = self->_cloudKitManagerObserverQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__ASActivityDataManager_cloudKitManager_didReceiveNewFriendWorkouts_moreComing_changesProcessedHandler___block_invoke;
  v14[3] = &unk_278C4B9C0;
  v14[4] = self;
  v15 = workoutsCopy;
  comingCopy = coming;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = workoutsCopy;
  dispatch_async(cloudKitManagerObserverQueue, v14);
}

void __104__ASActivityDataManager_cloudKitManager_didReceiveNewFriendWorkouts_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleNewSnapshots:0 workouts:*(a1 + 40) achievements:0 moreComing:*(a1 + 56)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ASActivityDataManager_cloudKitManager_didReceiveNewFriendWorkouts_moreComing_changesProcessedHandler___block_invoke_2;
  block[3] = &unk_278C4B228;
  v3 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cloudKitManager:(id)manager didReceiveNewFriendAchievements:(id)achievements moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  achievementsCopy = achievements;
  handlerCopy = handler;
  cloudKitManagerObserverQueue = self->_cloudKitManagerObserverQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__ASActivityDataManager_cloudKitManager_didReceiveNewFriendAchievements_moreComing_changesProcessedHandler___block_invoke;
  v14[3] = &unk_278C4B9C0;
  v14[4] = self;
  v15 = achievementsCopy;
  comingCopy = coming;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = achievementsCopy;
  dispatch_async(cloudKitManagerObserverQueue, v14);
}

void __108__ASActivityDataManager_cloudKitManager_didReceiveNewFriendAchievements_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleNewSnapshots:0 workouts:0 achievements:*(a1 + 40) moreComing:*(a1 + 56)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__ASActivityDataManager_cloudKitManager_didReceiveNewFriendAchievements_moreComing_changesProcessedHandler___block_invoke_2;
  block[3] = &unk_278C4B228;
  v3 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cloudKitManager:(id)manager didReceiveNewNotificationEvents:(id)events moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  handlerCopy = handler;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = eventsCopy;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Received new notification events: %@", buf, 0xCu);
  }

  cloudKitManagerObserverQueue = self->_cloudKitManagerObserverQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__ASActivityDataManager_cloudKitManager_didReceiveNewNotificationEvents_moreComing_changesProcessedHandler___block_invoke;
  v16[3] = &unk_278C4B9C0;
  v17 = eventsCopy;
  selfCopy = self;
  comingCopy = coming;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = eventsCopy;
  dispatch_async(cloudKitManagerObserverQueue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __108__ASActivityDataManager_cloudKitManager_didReceiveNewNotificationEvents_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FC8];
  v3 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    *buf = 134217984;
    v35 = [v4 count];
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Processing %lu new notification events", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_2];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v9 = *(a1 + 40);
  v12 = *(v9 + 48);
  v10 = (v9 + 48);
  v11 = v12;
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(v10, v13);
  v14 = [*(*(a1 + 40) + 48) arrayByAddingObjectsFromArray:v8];
  v15 = *(a1 + 40);
  v16 = *(v15 + 48);
  *(v15 + 48) = v14;

  v17 = *(a1 + 56);
  ASLoggingInitialize();
  v18 = *v2;
  v19 = os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 0;
      v20 = "More notification events coming, calling changesProcessedHandler";
LABEL_17:
      _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v19)
  {
    v21 = *(*(a1 + 40) + 48);
    v22 = v18;
    v23 = [v21 count];
    *buf = 134217984;
    v35 = v23;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Received events for %lu deleted workout(s)", buf, 0xCu);
  }

  v24 = [*(*(a1 + 40) + 48) count];
  ASLoggingInitialize();
  v18 = *v2;
  v25 = os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT);
  if (!v24)
  {
    if (v25)
    {
      *buf = 0;
      v20 = "No new deleted workouts, calling changesProcessedHandler";
      goto LABEL_17;
    }

LABEL_18:
    (*(*(a1 + 48) + 16))();
    goto LABEL_19;
  }

  if (v25)
  {
    v26 = *(*(a1 + 40) + 48);
    v27 = v18;
    v28 = [v26 count];
    *buf = 134217984;
    v35 = v28;
    _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "There are %lu new deleted workouts, handling.", buf, 0xCu);
  }

  v29 = *(a1 + 40);
  v30 = v29[6];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __108__ASActivityDataManager_cloudKitManager_didReceiveNewNotificationEvents_moreComing_changesProcessedHandler___block_invoke_348;
  v32[3] = &unk_278C4BA08;
  v32[4] = v29;
  v33 = *(a1 + 48);
  [v29 _ckQueue_handleDeletedWorkoutEvents:v30 completion:v32];

LABEL_19:
  v31 = *MEMORY[0x277D85DE8];
}

void __108__ASActivityDataManager_cloudKitManager_didReceiveNewNotificationEvents_moreComing_changesProcessedHandler___block_invoke_348(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
    [WeakRetained updateFriendListWithDeletedWorkoutEvents:*(*(a1 + 32) + 48)];

    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
  }

  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Finished handling deleted workouts, calling changesProcessedHandler", v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_ckQueue_processActivitySnapshotsForSelf:(id)self
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FC8];
  v6 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 134217984;
    v34 = [selfCopy count];
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Processing %lu snapshots of self.", buf, 0xCu);
  }

  ASLoggingInitialize();
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = selfCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Incoming snapshots for self are: %@", buf, 0xCu);
  }

  selfCopy2 = self;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_snapshotSourceUUIDsByIndex];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = selfCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        sourceUUID = [v15 sourceUUID];

        if (sourceUUID)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "snapshotIndex")}];
          v18 = [v9 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = [MEMORY[0x277CBEB98] set];
          }

          sourceUUID2 = [v15 sourceUUID];
          v20 = [v18 setByAddingObject:sourceUUID2];

          v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "snapshotIndex")}];
          [v9 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  snapshotSourceUUIDsByIndex = selfCopy2->_snapshotSourceUUIDsByIndex;
  selfCopy2->_snapshotSourceUUIDsByIndex = v22;

  ASLoggingInitialize();
  v24 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v25 = selfCopy2->_snapshotSourceUUIDsByIndex;
    *buf = 138412290;
    v34 = v25;
    _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "Final snapshot dict for self: %@", buf, 0xCu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)index withCompletion:(id)completion
{
  indexCopy = index;
  completionCopy = completion;
  cloudKitManagerObserverQueue = self->_cloudKitManagerObserverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ASActivityDataManager_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke;
  block[3] = &unk_278C4BA30;
  v12 = indexCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = indexCopy;
  dispatch_async(cloudKitManagerObserverQueue, block);
}

void __91__ASActivityDataManager_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = *(a1[5] + 192);
    v7 = _HKActivityCacheDateComponentsFromDate();
    v3 = [v4 numberWithLongLong:_HKCacheIndexFromDateComponents()];
  }

  v8 = *(a1[5] + 272);
  v21 = 0;
  v9 = [v8 activeDeviceUUIDWithError:&v21];
  v10 = v21;
  ASLoggingInitialize();
  v11 = MEMORY[0x277CE8FC8];
  v12 = *MEMORY[0x277CE8FC8];
  v13 = *MEMORY[0x277CE8FC8];
  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = v3;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Multiple devices sharing status requested for snapshot index: %{public}@, active device UUID: %{public}@", buf, 0x16u);
    }

    v16 = [*(a1[5] + 200) objectForKeyedSubscript:v3];
    v17 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v18 = [v16 isEqualToSet:v17] ^ 1;

    ASLoggingInitialize();
    v19 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v23) = v18;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "Are multiple devices sharing: %{BOOL}d", buf, 8u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v15)
      {
        __91__ASActivityDataManager_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_cold_2();
      }
    }

    else if (v15)
    {
      __91__ASActivityDataManager_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_cold_1();
    }

    (*(a1[6] + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HKActivitySummary)currentActivitySummary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  activitySummaryQueue = self->_activitySummaryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ASActivityDataManager_currentActivitySummary__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activitySummaryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__ASActivityDataManager_currentActivitySummary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (HKActivitySummary)yesterdayActivitySummary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  activitySummaryQueue = self->_activitySummaryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ASActivityDataManager_yesterdayActivitySummary__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activitySummaryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__ASActivityDataManager_yesterdayActivitySummary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (_HKFitnessFriendActivitySnapshot)currentActivitySnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  activitySummaryQueue = self->_activitySummaryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ASActivityDataManager_currentActivitySnapshot__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activitySummaryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__ASActivityDataManager_currentActivitySnapshot__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:*(*(a1 + 32) + 144)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (_HKFitnessFriendActivitySnapshot)yesterdayActivitySnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  activitySummaryQueue = self->_activitySummaryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ASActivityDataManager_yesterdayActivitySnapshot__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activitySummaryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__ASActivityDataManager_yesterdayActivitySnapshot__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:*(*(a1 + 32) + 168)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSSet)currentWorkouts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  currentActivitySnapshot = [(ASActivityDataManager *)self currentActivitySnapshot];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ASActivityDataManager_currentWorkouts__block_invoke;
  v6[3] = &unk_278C4BA80;
  v6[4] = &v7;
  [(ASActivityDataManager *)self _workoutsForActivitySnapshot:currentActivitySnapshot anchor:0 completion:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSSet)yesterdayWorkouts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  yesterdayActivitySnapshot = [(ASActivityDataManager *)self yesterdayActivitySnapshot];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ASActivityDataManager_yesterdayWorkouts__block_invoke;
  v6[3] = &unk_278C4BA80;
  v6[4] = &v7;
  [(ASActivityDataManager *)self _workoutsForActivitySnapshot:yesterdayActivitySnapshot anchor:0 completion:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSSet)currentAchievements
{
  currentActivitySnapshot = [(ASActivityDataManager *)self currentActivitySnapshot];
  v4 = objc_alloc_init(MEMORY[0x277CE8DE0]);
  v10 = 0;
  v5 = [v4 allAchievementsWithError:&v10];
  v6 = v10;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager currentAchievements];
    }
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v8 = -[ASActivityDataManager _filterAchievements:forSnapshotIndex:](self, "_filterAchievements:forSnapshotIndex:", v7, [currentActivitySnapshot snapshotIndex]);

  return v8;
}

- (void)_queue_insertSamples:(id)samples
{
  v16 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  dispatch_assert_queue_V2(self->_healthDataQueue);
  if ([samplesCopy count])
  {
    databaseClient = self->_databaseClient;
    v13 = 0;
    v6 = [(ASDatabaseClient *)databaseClient insertDataObjects:samplesCopy error:&v13];
    v7 = v13;
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FC8];
    if (!v6 || v7)
    {
      if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataManager _queue_insertSamples:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [samplesCopy count];
      *buf = 134217984;
      v15 = v10;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Saved activity sharing data to database: %lu samples.", buf, 0xCu);
    }
  }

  else
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE8FC8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "No samples to save.", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)saveActivitySnapshots:(id)snapshots workouts:(id)workouts achievements:(id)achievements isInvitationData:(BOOL)data
{
  snapshotsCopy = snapshots;
  workoutsCopy = workouts;
  achievementsCopy = achievements;
  healthDataQueue = self->_healthDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ASActivityDataManager_saveActivitySnapshots_workouts_achievements_isInvitationData___block_invoke;
  block[3] = &unk_278C4BAA8;
  block[4] = self;
  v18 = snapshotsCopy;
  v19 = workoutsCopy;
  v20 = achievementsCopy;
  dataCopy = data;
  v14 = achievementsCopy;
  v15 = workoutsCopy;
  v16 = snapshotsCopy;
  dispatch_sync(healthDataQueue, block);
}

- (BOOL)_queue_deleteAllActivitySharingData
{
  v42[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_healthDataQueue);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all friend data!", buf, 2u);
  }

  fitnessFriendAchievementType = [MEMORY[0x277CCD720] fitnessFriendAchievementType];
  v42[0] = fitnessFriendAchievementType;
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD720] fitnessFriendActivitySnapshotType];
  v42[1] = fitnessFriendActivitySnapshotType;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD720] fitnessFriendWorkoutType];
  v42[2] = fitnessFriendWorkoutType;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];

  v8 = MEMORY[0x277CCD838];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v11 = [v8 predicateForSamplesWithStartDate:distantPast endDate:distantFuture options:0];

  truePredicate = [MEMORY[0x277D10B70] truePredicate];
  v13 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v11 healthDaemonPredicate:truePredicate];
  v36 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v28 = truePredicate;
    v29 = v11;
    v16 = 0;
    v17 = *v33;
    v18 = 1;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        v20 = v16;
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        databaseClient = self->_databaseClient;
        v31 = v16;
        v23 = [(ASDatabaseClient *)databaseClient deleteDataObjectsOfType:v21 predicate:v13 limit:0 deletedSampleCount:&v36 notifyObservers:0 generateDeletedObjects:0 error:&v31];
        v16 = v31;

        ASLoggingInitialize();
        v24 = *MEMORY[0x277CE8FC8];
        v25 = *MEMORY[0x277CE8FC8];
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v38 = v21;
            v39 = 2048;
            v40 = v36;
            _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "Deleted friend data of type %@ successfully, %lu samples.", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v38 = v21;
            v39 = 2114;
            v40 = v16;
            _os_log_error_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_ERROR, "Failed to delete all friend data of type %@ with error: %{public}@", buf, 0x16u);
          }

          v18 = 0;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);

    truePredicate = v28;
    v11 = v29;
  }

  else
  {
    v18 = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (BOOL)deleteAllActivitySharingData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  healthDataQueue = self->_healthDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ASActivityDataManager_deleteAllActivitySharingData__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(healthDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__ASActivityDataManager_deleteAllActivitySharingData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_deleteAllActivitySharingData];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_deleteActivityDataForFriendWithUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v31 = 0;
  databaseClient = self->_databaseClient;
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  v7 = [(ASActivityDataManager *)self _fitnessFriendAchievementPredicateForFriendUUID:dCopy];
  v8 = *MEMORY[0x277D10C08];
  v30 = 0;
  v9 = [(ASDatabaseClient *)databaseClient deleteDataObjectsOfType:fitnessFriendAchievementType predicate:v7 limit:v8 deletedSampleCount:&v31 notifyObservers:1 generateDeletedObjects:1 error:&v30];
  v10 = v30;

  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FC8];
  v12 = *MEMORY[0x277CE8FC8];
  if (v9 && v10 == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v33 = v31;
      v34 = 2114;
      v35 = dCopy;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Removed %ld ASAchievementEntity samples for friend UUUD: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ASActivityDataManager _queue_deleteActivityDataForFriendWithUUID:];
  }

  v14 = self->_databaseClient;
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  v16 = [(ASActivityDataManager *)self _fitnessFriendActivitySnapshotPredicateForFriendUUID:dCopy];
  v29 = v10;
  v17 = [(ASDatabaseClient *)v14 deleteDataObjectsOfType:fitnessFriendActivitySnapshotType predicate:v16 limit:v8 deletedSampleCount:&v31 notifyObservers:1 generateDeletedObjects:1 error:&v29];
  v18 = v29;

  ASLoggingInitialize();
  v19 = *MEMORY[0x277CE8FC8];
  if (!v17 || v18)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _queue_deleteActivityDataForFriendWithUUID:];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v33 = v31;
    v34 = 2114;
    v35 = dCopy;
    _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld ASActivitySnapshotEntity samples for friend UUUD: %{public}@", buf, 0x16u);
  }

  v20 = self->_databaseClient;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v22 = [(ASActivityDataManager *)self _fitnessFriendWorkoutPredicateForFriendUUID:dCopy];
  v28 = v18;
  v23 = [(ASDatabaseClient *)v20 deleteDataObjectsOfType:fitnessFriendWorkoutType predicate:v22 limit:v8 deletedSampleCount:&v31 notifyObservers:1 generateDeletedObjects:1 error:&v28];
  v24 = v28;

  ASLoggingInitialize();
  v25 = *MEMORY[0x277CE8FC8];
  if (!v23 || v24)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _queue_deleteActivityDataForFriendWithUUID:];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v33 = v31;
    v34 = 2114;
    v35 = dCopy;
    _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Removed %ld ASWorkoutEntity samples for friend UUUD: %{public}@", buf, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v9 && v17 && v23;
}

- (BOOL)deleteActivityDataForFriendWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  healthDataQueue = self->_healthDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ASActivityDataManager_deleteActivityDataForFriendWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(healthDataQueue, block);
  LOBYTE(healthDataQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return healthDataQueue;
}

uint64_t __61__ASActivityDataManager_deleteActivityDataForFriendWithUUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_deleteActivityDataForFriendWithUUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_endDatePredicate
{
  if (self->_isWatch)
  {
    v3 = MEMORY[0x277CE92A0];
  }

  else
  {
    v3 = MEMORY[0x277CE9298];
  }

  v4 = *v3;
  calendar = self->_calendar;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [(NSCalendar *)calendar startOfDayForDate:date];

  v8 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:-v4 toDate:v7 options:0];
  v9 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v8 endDate:0 options:0];
  v10 = HDSampleEntityPredicateForEndDate();
  v11 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v9 healthDaemonPredicate:v10];

  return v11;
}

- (id)_fitnessFriendAchievementPredicateForFriendUUID:(id)d
{
  v3 = MEMORY[0x277CCD838];
  dCopy = d;
  v5 = [v3 predicateForFitnessFriendAchievementsForFriendUUID:dCopy];
  v6 = HDFitnessFriendAchievementEntityPredicateForFriendUUID();

  v7 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v6];

  return v7;
}

- (id)_fitnessFriendActivitySnapshotPredicateForFriendUUID:(id)d
{
  v3 = MEMORY[0x277CCD838];
  dCopy = d;
  v5 = [v3 predicateForFitnessFriendActivitySnapshotsForFriendUUID:dCopy];
  v6 = HDFitnessFriendActivitySnapshotEntityPredicateForFriendUUID();

  v7 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v6];

  return v7;
}

- (id)_fitnessFriendWorkoutPredicateForFriendUUID:(id)d
{
  v3 = MEMORY[0x277CCD838];
  dCopy = d;
  v5 = [v3 predicateForFitnessFriendWorkoutsForFriendUUID:dCopy];
  v6 = HDFitnessFriendWorkoutEntityEntityPredicateForFriendUUID();

  v7 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v6];

  return v7;
}

- (id)_fitnessFriendSamplePredicateForFriendUUID:(id)d
{
  v12[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(ASActivityDataManager *)self _fitnessFriendAchievementPredicateForFriendUUID:dCopy];
  v6 = [(ASActivityDataManager *)self _fitnessFriendActivitySnapshotPredicateForFriendUUID:dCopy, v5];
  v12[1] = v6;
  v7 = [(ASActivityDataManager *)self _fitnessFriendWorkoutPredicateForFriendUUID:dCopy];

  v12[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v9 = [ASPredicateContainer predicateMatchingAnyPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fitnessFriendSamplesForFriendWithUUID:(id)d
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  _endDatePredicate = [(ASActivityDataManager *)self _endDatePredicate];
  v8 = [(ASActivityDataManager *)self _fitnessFriendSamplePredicateForFriendUUID:dCopy];

  v20[0] = _endDatePredicate;
  v20[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v10 = [ASPredicateContainer predicateMatchingAllPredicates:v9];

  databaseClient = self->_databaseClient;
  v19 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__ASActivityDataManager_fitnessFriendSamplesForFriendWithUUID___block_invoke;
  v17[3] = &unk_278C4BAF8;
  v12 = v6;
  v18 = v12;
  LOBYTE(v9) = [(ASDatabaseClient *)databaseClient enumerateAllActivitySharingSamplesWithPredicate:v10 error:&v19 handler:v17];
  v13 = v19;
  if (v9)
  {
    v14 = [v12 copy];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager fitnessFriendSamplesForFriendWithUUID:];
    }

    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)activitySnapshotsFromFitnessFriendSamples:(id)samples
{
  v24 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = samplesCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = v10;
          v13 = [v11 numberWithLongLong:{objc_msgSend(v12, "snapshotIndex", v19)}];
          v14 = [v4 objectForKeyedSubscript:v13];
          v15 = [v12 _mostSignificantSnapshot:v14];

          [v4 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)achievementsFromFitnessFriendSamples:(id)samples
{
  v32 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = samplesCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = 0x277CCA000uLL;
    do
    {
      v9 = 0;
      v25 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          completedDate = [v11 completedDate];
          v13 = ASCacheIndexForLocalDate();

          v14 = v8;
          v15 = [*(v8 + 2992) numberWithLongLong:v13];
          v16 = v4;
          v17 = [v4 objectForKeyedSubscript:v15];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          v20 = v19;

          [v20 addObject:v11];
          v8 = v14;
          v21 = [*(v14 + 2992) numberWithLongLong:v13];
          v4 = v16;
          [v16 setObject:v20 forKeyedSubscript:v21];

          v6 = v25;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v22 = [v4 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)workoutsFromFitnessFriendSamples:(id)samples
{
  v32 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = samplesCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = 0x277CCA000uLL;
    do
    {
      v9 = 0;
      v25 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          endDate = [v11 endDate];
          v13 = ASCacheIndexForLocalDate();

          v14 = v8;
          v15 = [*(v8 + 2992) numberWithLongLong:v13];
          v16 = v4;
          v17 = [v4 objectForKeyedSubscript:v15];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          v20 = v19;

          [v20 addObject:v11];
          v8 = v14;
          v21 = [*(v14 + 2992) numberWithLongLong:v13];
          v4 = v16;
          [v16 setObject:v20 forKeyedSubscript:v21];

          v6 = v25;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v22 = [v4 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_queue_getAndHandleAllActivitySharingData
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __66__ASActivityDataManager__queue_getAndHandleAllActivitySharingData__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1[4];
LABEL_7:
    [v4 addObject:v3];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1[5];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1[6];
    goto LABEL_7;
  }

  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
  {
    __66__ASActivityDataManager__queue_getAndHandleAllActivitySharingData__block_invoke_cold_1(v6);
  }

LABEL_8:

  return 1;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  healthDataQueue = self->_healthDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ASActivityDataManager_database_protectedDataDidBecomeAvailable___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(healthDataQueue, block);
}

uint64_t __66__ASActivityDataManager_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Protected data availability changed and we haven't fetched friends' data yet", v4, 2u);
  }

  return [*(a1 + 32) _queue_getAndHandleAllActivitySharingData];
}

- (void)_queue_handleNewSnapshots:(id)snapshots workouts:(id)workouts achievements:(id)achievements
{
  snapshotsCopy = snapshots;
  workoutsCopy = workouts;
  achievementsCopy = achievements;
  dispatch_assert_queue_V2(self->_healthDataQueue);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__ASActivityDataManager__queue_handleNewSnapshots_workouts_achievements___block_invoke;
  v14[3] = &unk_278C4BB48;
  v14[4] = self;
  v15 = snapshotsCopy;
  v16 = achievementsCopy;
  v17 = workoutsCopy;
  v11 = workoutsCopy;
  v12 = achievementsCopy;
  v13 = snapshotsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __73__ASActivityDataManager__queue_handleNewSnapshots_workouts_achievements___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) friendListManager];
  [v2 updateFriendListWithNewSnapshots:*(a1 + 40) achievements:*(a1 + 48) workouts:*(a1 + 56)];
}

- (void)_queue_samplesAdded:(id)added
{
  v42 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_healthDataQueue);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = addedCopy;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    v9 = *v32;
    v10 = MEMORY[0x277CBEBF8];
    v11 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v11 arrayByAddingObject:v14];

          v11 = v15;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v13;
            v17 = [v10 arrayByAddingObject:v16];

            v10 = v17;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v13;
              v19 = [v8 arrayByAddingObject:v18];

              v8 = v19;
            }

            else
            {
              ASLoggingInitialize();
              v20 = *MEMORY[0x277CE8FC8];
              if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
              {
                v21 = v20;
                v22 = objc_opt_class();
                *buf = 138543362;
                v36 = v22;
                v23 = v22;
                _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "Received a sample with invalid type: %{public}@", buf, 0xCu);
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
    v10 = MEMORY[0x277CBEBF8];
    v11 = MEMORY[0x277CBEBF8];
  }

  ASLoggingInitialize();
  v24 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v11 count];
    v27 = [v8 count];
    v28 = [v10 count];
    *buf = 134218496;
    v36 = v26;
    v37 = 2048;
    v38 = v27;
    v39 = 2048;
    v40 = v28;
    _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Friend samples were added to database: %lu snapshots, %lu workouts, %lu achievements.", buf, 0x20u);
  }

  [(ASActivityDataManager *)selfCopy _queue_handleNewSnapshots:v11 workouts:v8 achievements:v10];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  objc_initWeak(&location, self);
  healthDataQueue = self->_healthDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ASActivityDataManager_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278C4BB70;
  objc_copyWeak(&v10, &location);
  v9 = addedCopy;
  v7 = addedCopy;
  dispatch_async(healthDataQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__ASActivityDataManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_samplesAdded:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  v7 = [summaryCopy copy];
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ASActivityDataManager_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = summaryCopy;
  selfCopy = self;
  v14 = v7;
  v9 = v7;
  v10 = summaryCopy;
  dispatch_async(activitySummaryQueue, block);
}

void __98__ASActivityDataManager_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FC8];
  v3 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "New today summary %@", buf, 0xCu);
  }

  if (([a1[5] _hasMoveGoalForActivitySummary:a1[6]] & 1) == 0 && objc_msgSend(a1[5], "_hasMoveGoalForActivitySummary:", *(a1[5] + 18)))
  {
    ASLoggingInitialize();
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "New today activity summary available, but doesn't have a move goal yet - copying existing known goals", buf, 2u);
    }

    v6 = [a1[6] activityMoveMode];
    v7 = *(a1[5] + 18);
    if (v6 == 2)
    {
      v8 = [v7 appleMoveMinutesGoal];
      [a1[6] setAppleMoveMinutesGoal:v8];
    }

    else
    {
      v8 = [v7 activeEnergyBurnedGoal];
      [a1[6] setActiveEnergyBurnedGoal:v8];
    }

    v9 = [*(a1[5] + 18) appleExerciseTimeGoal];
    [a1[6] setAppleExerciseTimeGoal:v9];

    v10 = [*(a1[5] + 18) appleStandHoursGoal];
    [a1[6] setAppleStandHoursGoal:v10];
  }

  objc_storeStrong(a1[5] + 18, a1[6]);
  v11 = [*(a1[5] + 21) copy];
  v13 = a1[5];
  v12 = a1[6];
  v14 = *(v13 + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ASActivityDataManager_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke_367;
  block[3] = &unk_278C4BB98;
  block[4] = v13;
  v25 = v12;
  v15 = v11;
  v26 = v15;
  dispatch_async(v14, block);
  v16 = [a1[4] _activitySummaryIndex];
  if (v16 > [*(a1[5] + 13) integerValue] && ASAllGoalsMetForSummary(a1[4]))
  {
    v17 = *(a1[5] + 232);
  }

  else
  {
    v17 = 0;
  }

  if (ASSecureCloudEnabled())
  {
    v18 = [a1[4] _activitySummaryIndex];
    if ((v17 & (v18 > [*(a1[5] + 28) integerValue])) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  ASLoggingInitialize();
  v19 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1[5] + 18);
    *buf = 138412290;
    v28 = v20;
    _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "Today summary: %@ represents a goal completion, requesting immediate update", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(a1[5] + 33);
  v22 = ASCloudKitGroupUserActionImplicit();
  [WeakRetained requestImmediateUpdateWithCloudKitGroup:v22 completion:0];

LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
}

void __98__ASActivityDataManager_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke_367(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 216);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) activityDataManager:a1[4] didUpdateTodaySummary:a1[5] yesterdaySummary:{a1[6], v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasMoveGoalForActivitySummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy _hasAppleMoveMinutesGoal])
  {
    _hasEnergyBurnedGoal = 1;
  }

  else
  {
    _hasEnergyBurnedGoal = [summaryCopy _hasEnergyBurnedGoal];
  }

  return _hasEnergyBurnedGoal;
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  v7 = [summaryCopy copy];
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__ASActivityDataManager_currentActivitySummaryHelper_didUpdateYesterdayActivitySummary_changedFields___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = summaryCopy;
  selfCopy = self;
  v14 = v7;
  v9 = v7;
  v10 = summaryCopy;
  dispatch_async(activitySummaryQueue, block);
}

void __102__ASActivityDataManager_currentActivitySummaryHelper_didUpdateYesterdayActivitySummary_changedFields___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "New yesterday summary %@", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 168), *(a1 + 48));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)loadLocalActivityDataIfNeeded
{
  healthDataQueue = self->_healthDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ASActivityDataManager_loadLocalActivityDataIfNeeded__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(healthDataQueue, block);
}

uint64_t __54__ASActivityDataManager_loadLocalActivityDataIfNeeded__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 208) & 1) == 0)
  {
    v1 = result;
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE8FC8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Retrying activity data load", v3, 2u);
    }

    return [*(v1 + 32) _queue_getAndHandleAllActivitySharingData];
  }

  return result;
}

- (void)_workoutsForActivitySnapshot:(id)snapshot anchor:(id)anchor completion:(id)completion
{
  v85[2] = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  anchorCopy = anchor;
  completionCopy = completion;
  v10 = completionCopy;
  if (snapshotCopy)
  {
    v65 = completionCopy;
    v11 = MEMORY[0x277CCD838];
    startDate = [snapshotCopy startDate];
    endDate = [snapshotCopy endDate];
    v14 = [v11 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

    v15 = MEMORY[0x277D10B18];
    v16 = *MEMORY[0x277D104A8];
    startDate2 = [snapshotCopy startDate];
    v18 = _HDSQLiteValueForDate();
    v19 = [v15 predicateWithProperty:v16 greaterThanOrEqualToValue:v18];

    v20 = MEMORY[0x277D10B18];
    endDate2 = [snapshotCopy endDate];
    v22 = _HDSQLiteValueForDate();
    v23 = [v20 predicateWithProperty:v16 lessThanValue:v22];

    v62 = v23;
    v63 = v19;
    [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v19 otherPredicate:v23];
    v61 = v64 = v14;
    v24 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v14 healthDaemonPredicate:v61];
    _predicateForObjectsFromAppleWatches = [MEMORY[0x277CCD838] _predicateForObjectsFromAppleWatches];
    if (_predicateForObjectsFromAppleWatches)
    {
      v26 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:_predicateForObjectsFromAppleWatches];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataManager _workoutsForActivitySnapshot:anchor:completion:];
      }

      v27 = MEMORY[0x277CCD838];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v26 = [v27 predicateForSamplesWithStartDate:distantPast endDate:distantFuture options:0];

      _predicateForObjectsFromAppleWatches = 0;
    }

    v30 = HDDataEntityPredicateForOriginProductType();
    if (v30)
    {
      truePredicate = [MEMORY[0x277D10B20] negatedPredicate:v30];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataManager _workoutsForActivitySnapshot:anchor:completion:];
      }

      truePredicate = [MEMORY[0x277D10B70] truePredicate];
    }

    v32 = truePredicate;
    v59 = v30;
    v33 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:_predicateForObjectsFromAppleWatches healthDaemonPredicate:v30];
    v58 = v32;
    v69 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v26 healthDaemonPredicate:v32];
    v34 = [MEMORY[0x277CBEB58] set];
    v35 = anchorCopy;
    v36 = v35;
    v60 = _predicateForObjectsFromAppleWatches;
    v67 = v26;
    v68 = v24;
    v66 = v33;
    if (_predicateForObjectsFromAppleWatches)
    {
      v57 = anchorCopy;
      v85[0] = v24;
      v85[1] = v33;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
      v38 = [ASPredicateContainer predicateMatchingAllPredicates:v37];

      v81 = v35;
      v39 = [(ASActivityDataManager *)self _workoutsAfterAnchor:&v81 withPredicate:v38];
      v36 = v81;

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v40 = v39;
      v41 = [v40 countByEnumeratingWithState:&v77 objects:v84 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v78;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v78 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v77 + 1) + 8 * i);
            [v45 setIsWatchWorkout:1];
            [v34 addObject:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v77 objects:v84 count:16];
        }

        while (v42);
      }

      anchorCopy = v57;
      v26 = v67;
      v24 = v68;
      v33 = v66;
    }

    if (v26)
    {
      v83[0] = v24;
      v83[1] = v69;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
      v47 = [ASPredicateContainer predicateMatchingAllPredicates:v46];

      v76 = v35;
      v48 = [(ASActivityDataManager *)self _workoutsAfterAnchor:&v76 withPredicate:v47];
      v71 = v76;

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v49 = v48;
      v50 = [v49 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v73;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v73 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v72 + 1) + 8 * j);
            [v54 setIsWatchWorkout:0];
            [v34 addObject:v54];
          }

          v51 = [v49 countByEnumeratingWithState:&v72 objects:v82 count:16];
        }

        while (v51);
      }

      v35 = v71;
      v26 = v67;
      v24 = v68;
      v33 = v66;
    }

    v55 = ASMaxNumber();
    v10 = v65;
    v65[2](v65, v34, v55);
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (id)_workoutsAfterAnchor:(id *)anchor withPredicate:(id)predicate
{
  v33 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  databaseClient = self->_databaseClient;
  v25 = 0;
  v8 = [(ASDatabaseClient *)databaseClient healthKitWorkoutsWithPredicate:predicateCopy anchor:anchor error:&v25];
  v9 = v25;
  if (v9)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FC8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      v20 = *anchor;
      *buf = 138543874;
      v28 = v9;
      v29 = 2114;
      v30 = predicateCopy;
      v31 = 2114;
      v32 = v20;
      _os_log_error_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_ERROR, "Error: %{public}@ fetching workouts with predicate: %{public}@, anchor: %{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutFromHKWorkout:{*(*(&v21 + 1) + 8 * i), v21}];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_filterAchievements:(id)achievements forSnapshotIndex:(int64_t)index
{
  v21 = *MEMORY[0x277D85DE8];
  achievementsCopy = achievements;
  v6 = _HKStartDateForSnapshotIndex();
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    indexCopy = index;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Looking for achievements for snapshot index: %lld, date: %@", buf, 0x16u);
  }

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ASActivityDataManager__filterAchievements_forSnapshotIndex___block_invoke;
  v14[3] = &unk_278C4BBC0;
  v15 = hk_gregorianCalendar;
  v16 = v6;
  v9 = v6;
  v10 = hk_gregorianCalendar;
  v11 = [achievementsCopy hk_map:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __62__ASActivityDataManager__filterAchievements_forSnapshotIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ACHIsActivityAchievementSharable() && ([v3 relevantEarnedInstance], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 relevantEarnedInstance];
    v6 = *(a1 + 32);
    v7 = [v5 createdDate];
    LODWORD(v6) = [v6 isDate:v7 inSameDayAsDate:*(a1 + 40)];

    if (v6)
    {
      v8 = *(a1 + 32);
      v9 = [v5 earnedDateComponents];
      v10 = [v8 dateFromComponents:v9];

      v11 = *(a1 + 32);
      v12 = [v5 createdDate];
      v13 = [v11 components:16 fromDate:v12 toDate:v10 options:0];

      if ([v13 day] < 0)
      {
        v15 = 0;
      }

      else
      {
        v14 = [v3 template];
        v15 = ASFriendAchievementFromTemplateAndEarnedInstance();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)localSourceUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ASActivityDataManager_localSourceUUID__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  if (localSourceUUID_onceToken != -1)
  {
    dispatch_once(&localSourceUUID_onceToken, block);
  }

  return localSourceUUID_localSourceUUID;
}

void __40__ASActivityDataManager_localSourceUUID__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 272);
  v7 = 0;
  v2 = [v1 localSourceUUIDWithError:&v7];
  v3 = v7;
  v4 = localSourceUUID_localSourceUUID;
  localSourceUUID_localSourceUUID = v2;

  if (v3)
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE8FC8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Error getting local source UUID to attach to snapshots: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_activitySnapshotsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot
{
  v26 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  todaySnapshotCopy = todaySnapshot;
  v8 = [(HKActivitySummary *)self->_currentActivitySummary isEqual:self->_currentLastPushedActivitySummary];
  v9 = MEMORY[0x277CBEBF8];
  if (todaySnapshotCopy && (v8 & 1) == 0 && ([(HKActivitySummary *)self->_currentActivitySummary isPaused]& 1) == 0)
  {
    v9 = [MEMORY[0x277CBEBF8] arrayByAddingObject:todaySnapshotCopy];
  }

  v10 = [(HKActivitySummary *)self->_yesterdayActivitySummary isEqual:self->_yesterdayLastPushedActivitySummary];
  if (snapshotCopy && (v10 & 1) == 0 && ([(HKActivitySummary *)self->_yesterdayActivitySummary isPaused]& 1) == 0)
  {
    v11 = [v9 arrayByAddingObject:snapshotCopy];

    v9 = v11;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        localSourceUUID = [(ASActivityDataManager *)self localSourceUUID];
        [v17 setSourceUUID:localSourceUUID];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_achievementsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot currentTodayAchievementAnchorToken:(id)token currentYesterdayAchievementAnchorToken:(id)anchorToken
{
  v83 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  todaySnapshotCopy = todaySnapshot;
  tokenCopy = token;
  anchorTokenCopy = anchorToken;
  if ([(ASActivityDataManager *)self _isAlertSuppressionEnabled])
  {
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FC8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Alerts are currently suppressed, not pushing any achievements";
LABEL_35:
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FC8];
  v16 = os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT);
  if (!todaySnapshotCopy)
  {
    if (v16)
    {
      *buf = 0;
      v15 = "Today snapshot is empty, not pushing any achievements";
      goto LABEL_35;
    }

LABEL_36:
    v52 = [MEMORY[0x277CBEB98] set];
    goto LABEL_41;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Getting achievements to push for today", buf, 2u);
  }

  v74 = 0;
  v63 = objc_alloc_init(MEMORY[0x277CE8DE0]);
  v17 = [v63 allAchievementsWithError:&v74];
  v18 = v74;
  if (v18)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _achievementsToPushWithYesterdaySnapshot:todaySnapshot:currentTodayAchievementAnchorToken:currentYesterdayAchievementAnchorToken:];
    }
  }

  v65 = anchorTokenCopy;
  v68 = snapshotCopy;
  ASLoggingInitialize();
  v19 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v17 count];
    *buf = 134217984;
    v82 = v21;
    _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "Got %lu achievements from awardsClient", buf, 0xCu);
  }

  v61 = v18;
  v62 = v17;
  [MEMORY[0x277CBEB98] setWithArray:v17];
  v67 = todaySnapshotCopy;
  v60 = v64 = self;
  v22 = -[ASActivityDataManager _filterAchievements:forSnapshotIndex:](self, "_filterAchievements:forSnapshotIndex:", v60, [todaySnapshotCopy snapshotIndex]);
  allObjects = [v22 allObjects];
  v24 = [allObjects hk_map:&__block_literal_global_667];

  v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_670];

  string = [MEMORY[0x277CCACA8] string];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v75 objects:buf count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v76;
    do
    {
      v31 = 0;
      v32 = string;
      do
      {
        if (*v76 != v30)
        {
          objc_enumerationMutation(v27);
        }

        string = [v32 stringByAppendingString:*(*(&v75 + 1) + 8 * v31)];

        ++v31;
        v32 = string;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v75 objects:buf count:16];
    }

    while (v29);
  }

  ASLoggingInitialize();
  v33 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = [v22 count];
    *buf = 134217984;
    v82 = v35;
    _os_log_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEFAULT, "Found %lu achievements for today", buf, 0xCu);
  }

  v36 = v22;
  v66 = tokenCopy;
  v69 = tokenCopy;
  v37 = [MEMORY[0x277CBEB98] set];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v36;
  v38 = [obj countByEnumeratingWithState:&v75 objects:buf count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    v41 = v69;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v75 + 1) + 8 * i);
        templateUniqueName = [v43 templateUniqueName];
        if (([v41 containsString:templateUniqueName] & 1) == 0)
        {
          v45 = string;
          v46 = v39;
          v47 = v40;
          ASLoggingInitialize();
          v48 = *MEMORY[0x277CE8FC8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
          {
            v49 = v48;
            templateUniqueName2 = [v43 templateUniqueName];
            *v79 = 138412290;
            v80 = templateUniqueName2;
            _os_log_impl(&dword_23E5E3000, v49, OS_LOG_TYPE_DEFAULT, "New achievement not yet pushed: %@", v79, 0xCu);

            v41 = v69;
          }

          v51 = [v37 setByAddingObject:v43];

          v37 = v51;
          v40 = v47;
          v39 = v46;
          string = v45;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v75 objects:buf count:16];
    }

    while (v39);
  }

  else
  {
    v41 = v69;
  }

  ASLoggingInitialize();
  v53 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v82 = string;
    _os_log_impl(&dword_23E5E3000, v53, OS_LOG_TYPE_DEFAULT, "New today anchor token is: %@", buf, 0xCu);
  }

  activitySummaryQueue = v64->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __154__ASActivityDataManager__achievementsToPushWithYesterdaySnapshot_todaySnapshot_currentTodayAchievementAnchorToken_currentYesterdayAchievementAnchorToken___block_invoke;
  block[3] = &unk_278C4BB98;
  block[4] = v64;
  v72 = v60;
  v73 = string;
  v55 = string;
  v56 = v60;
  dispatch_async(activitySummaryQueue, block);
  v57 = v73;
  v52 = v37;

  todaySnapshotCopy = v67;
  snapshotCopy = v68;
  anchorTokenCopy = v65;
  tokenCopy = v66;
LABEL_41:

  v58 = *MEMORY[0x277D85DE8];

  return v52;
}

void __154__ASActivityDataManager__achievementsToPushWithYesterdaySnapshot_todaySnapshot_currentTodayAchievementAnchorToken_currentYesterdayAchievementAnchorToken___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 88) isEqualToString:&stru_2850E59E8] & 1) != 0 || objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = *(a1 + 48);
    v3 = (*(a1 + 32) + 88);

    objc_storeStrong(v3, v2);
  }
}

- (id)_workoutsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot currentWorkoutAnchor:(id)anchor
{
  v32 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  todaySnapshotCopy = todaySnapshot;
  anchorCopy = anchor;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = [MEMORY[0x277CBEB98] set];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  v11 = anchorCopy;
  v23 = v11;
  ASLoggingInitialize();
  v12 = MEMORY[0x277CE8FC8];
  v13 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Looking for today workouts to push with anchor %@", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__ASActivityDataManager__workoutsToPushWithYesterdaySnapshot_todaySnapshot_currentWorkoutAnchor___block_invoke;
  v21[3] = &unk_278C4BBE8;
  v21[4] = &v24;
  v21[5] = v22;
  [(ASActivityDataManager *)self _workoutsForActivitySnapshot:todaySnapshotCopy anchor:v11 completion:v21];
  ASLoggingInitialize();
  v14 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Looking for yesterday workouts to push with anchor %@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__ASActivityDataManager__workoutsToPushWithYesterdaySnapshot_todaySnapshot_currentWorkoutAnchor___block_invoke_378;
  v20[3] = &unk_278C4BBE8;
  v20[4] = &v24;
  v20[5] = v22;
  [(ASActivityDataManager *)self _workoutsForActivitySnapshot:snapshotCopy anchor:v11 completion:v20];
  activitySummaryQueue = self->_activitySummaryQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__ASActivityDataManager__workoutsToPushWithYesterdaySnapshot_todaySnapshot_currentWorkoutAnchor___block_invoke_379;
  v19[3] = &unk_278C4BC10;
  v19[4] = self;
  v19[5] = v22;
  dispatch_async(activitySummaryQueue, v19);
  v16 = v25[5];
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __97__ASActivityDataManager__workoutsToPushWithYesterdaySnapshot_todaySnapshot_currentWorkoutAnchor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v17 = 134217984;
    v18 = [v5 count];
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu workouts", &v17, 0xCu);
  }

  v9 = [*(*(*(a1 + 32) + 8) + 40) setByAddingObjectsFromSet:v5];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 40) + 8) + 40);
  v13 = ASMaxNumber();

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
}

void __97__ASActivityDataManager__workoutsToPushWithYesterdaySnapshot_todaySnapshot_currentWorkoutAnchor___block_invoke_378(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v17 = 134217984;
    v18 = [v5 count];
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu workouts", &v17, 0xCu);
  }

  v9 = [*(*(*(a1 + 32) + 8) + 40) setByAddingObjectsFromSet:v5];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 40) + 8) + 40);
  v13 = ASMaxNumber();

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)notificationEventsToPushWithYesterdaySnapshot:(id)snapshot todaySnapshot:(id)todaySnapshot achievements:(id)achievements workouts:(id)workouts currentDeletedWorkoutAnchor:(id)anchor currentGoalCompletionAnchor:(id)completionAnchor
{
  snapshotCopy = snapshot;
  todaySnapshotCopy = todaySnapshot;
  achievementsCopy = achievements;
  workoutsCopy = workouts;
  anchorCopy = anchor;
  completionAnchorCopy = completionAnchor;
  v36 = workoutsCopy;
  v19 = [workoutsCopy hk_map:&__block_literal_global_382];
  v37 = achievementsCopy;
  v20 = [achievementsCopy hk_map:&__block_literal_global_386];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__1;
  v49 = __Block_byref_object_dispose__1;
  v50 = MEMORY[0x277CBEBF8];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__1;
  v43[4] = __Block_byref_object_dispose__1;
  v21 = anchorCopy;
  v44 = v21;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __163__ASActivityDataManager_notificationEventsToPushWithYesterdaySnapshot_todaySnapshot_achievements_workouts_currentDeletedWorkoutAnchor_currentGoalCompletionAnchor___block_invoke_3;
  v42[3] = &unk_278C4BC78;
  v42[4] = &v45;
  v42[5] = v43;
  [(ASActivityDataManager *)self findDeletedWorkoutEventsWithAnchor:v21 completion:v42];
  v22 = completionAnchorCopy;
  if (ASAllGoalsMetForSnapshot() && (v23 = [todaySnapshotCopy snapshotIndex], v23 > -[NSNumber integerValue](self->_lastPushedGoalCompletionAnchor, "integerValue")))
  {
    v24 = MEMORY[0x277CE9110];
    activitySummary = [todaySnapshotCopy activitySummary];
    v26 = [v24 goalCompletionEventWithActivitySummary:activitySummary];

    v27 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v26];
    v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(todaySnapshotCopy, "snapshotIndex")}];
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
    v28 = v22;
  }

  v29 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:v19];
  v30 = [v29 arrayByAddingObjectsFromArray:v20];

  v31 = [v30 arrayByAddingObjectsFromArray:v46[5]];

  v32 = [v31 arrayByAddingObjectsFromArray:v27];

  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __163__ASActivityDataManager_notificationEventsToPushWithYesterdaySnapshot_todaySnapshot_achievements_workouts_currentDeletedWorkoutAnchor_currentGoalCompletionAnchor___block_invoke_4;
  block[3] = &unk_278C4BCA0;
  v40 = v28;
  v41 = v43;
  block[4] = self;
  v34 = v28;
  dispatch_async(activitySummaryQueue, block);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);

  return v32;
}

void __163__ASActivityDataManager_notificationEventsToPushWithYesterdaySnapshot_todaySnapshot_achievements_workouts_currentDeletedWorkoutAnchor_currentGoalCompletionAnchor___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObjectsFromArray:a2];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __163__ASActivityDataManager_notificationEventsToPushWithYesterdaySnapshot_todaySnapshot_achievements_workouts_currentDeletedWorkoutAnchor_currentGoalCompletionAnchor___block_invoke_4(void *a1)
{
  objc_storeStrong((a1[4] + 72), *(*(a1[6] + 8) + 40));
  v2 = a1[5];
  v3 = (a1[4] + 104);

  objc_storeStrong(v3, v2);
}

- (id)recordsFromActivityDataCodables:(id)codables recordEncryptionType:(int64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  codablesCopy = codables;
  cloudKitManager = [(ASActivityDataManager *)self cloudKitManager];
  activityDataRecordZoneID = [objc_opt_class() activityDataRecordZoneID];

  v20 = activityDataRecordZoneID;
  v21 = codablesCopy;
  v8 = _ASCreateRecordsFromCloudKitCodablesAndRecordZoneID();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CBC620]);
        v15 = [(ASActivityDataManager *)self cloudKitManager:v20];
        activityDataRootRecordID = [objc_opt_class() activityDataRootRecordID];
        v17 = [v14 initWithRecordID:activityDataRootRecordID action:0];
        [v13 setParent:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)recordsToSave
{
  v79 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__1;
  v68 = __Block_byref_object_dispose__1;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__1;
  v62 = __Block_byref_object_dispose__1;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__1;
  v56 = __Block_byref_object_dispose__1;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__1;
  v50 = __Block_byref_object_dispose__1;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1;
  v38 = __Block_byref_object_dispose__1;
  v39 = 0;
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ASActivityDataManager_recordsToSave__block_invoke;
  block[3] = &unk_278C4BCC8;
  block[4] = self;
  block[5] = &v64;
  block[6] = &v58;
  block[7] = &v52;
  block[8] = &v46;
  block[9] = &v40;
  block[10] = &v34;
  dispatch_sync(activitySummaryQueue, block);
  v4 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:v59[5]];
  v5 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:v65[5]];
  [(ASActivityDataManager *)self _activitySnapshotsToPushWithYesterdaySnapshot:v4 todaySnapshot:v5];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v6 = v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v78 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        ASCleanSnapshotForUpload();
      }

      v7 = [v6 countByEnumeratingWithState:&v29 objects:v78 count:16];
    }

    while (v7);
  }

  v11 = [(ASActivityDataManager *)self _achievementsToPushWithYesterdaySnapshot:v4 todaySnapshot:v5 currentTodayAchievementAnchorToken:v41[5] currentYesterdayAchievementAnchorToken:0];
  allObjects = [v11 allObjects];

  v13 = [(ASActivityDataManager *)self _workoutsToPushWithYesterdaySnapshot:v4 todaySnapshot:v5 currentWorkoutAnchor:v53[5]];
  allObjects2 = [v13 allObjects];

  v15 = [(ASActivityDataManager *)self notificationEventsToPushWithYesterdaySnapshot:v4 todaySnapshot:v5 achievements:allObjects workouts:allObjects2 currentDeletedWorkoutAnchor:v47[5] currentGoalCompletionAnchor:v35[5]];
  ASLoggingInitialize();
  v16 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v4;
    v17 = [v6 count];
    v18 = [allObjects count];
    v19 = [allObjects2 count];
    v20 = [v15 count];
    *buf = 134218752;
    v71 = v17;
    v72 = 2048;
    v73 = v18;
    v74 = 2048;
    v75 = v19;
    v76 = 2048;
    v77 = v20;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Creating records for %lu snapshots, %lu achievements, %lu workouts, %lu notification events.", buf, 0x2Au);
    v4 = v28;
  }

  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  v22 = [v21 arrayByAddingObjectsFromArray:allObjects];

  v23 = [v22 arrayByAddingObjectsFromArray:allObjects2];

  v24 = [v23 arrayByAddingObjectsFromArray:v15];

  v25 = [(ASActivityDataManager *)self recordsFromActivityDataCodables:v24 recordEncryptionType:0];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __38__ASActivityDataManager_recordsToSave__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 168) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 64));
  objc_storeStrong((*(a1[8] + 8) + 40), *(a1[4] + 80));
  objc_storeStrong((*(a1[9] + 8) + 40), *(a1[4] + 96));
  objc_storeStrong((*(a1[10] + 8) + 40), *(a1[4] + 112));
  if (([*(*(a1[5] + 8) + 40) _hasEnergyBurnedGoal] & 1) == 0 && (objc_msgSend(*(*(a1[5] + 8) + 40), "_hasAppleMoveMinutesGoal") & 1) == 0)
  {
    v8 = a1[4];
    v9 = *(v8 + 144);
    *(v8 + 144) = 0;
  }

  if (([*(*(a1[6] + 8) + 40) _hasEnergyBurnedGoal] & 1) == 0 && (objc_msgSend(*(*(a1[6] + 8) + 40), "_hasAppleMoveMinutesGoal") & 1) == 0)
  {
    v10 = a1[4];
    v11 = *(v10 + 168);
    *(v10 + 168) = 0;
  }

  v12 = a1[4];
  if (*(v12 + 152) || *(v12 + 176))
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_ERROR))
    {
      __38__ASActivityDataManager_recordsToSave__block_invoke_cold_1();
    }

    v12 = a1[4];
  }

  objc_storeStrong((v12 + 152), *(v12 + 144));
  v13 = a1[4];
  v14 = *(v13 + 168);

  objc_storeStrong((v13 + 176), v14);
}

- (id)recordIDsToDelete
{
  v59 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__1;
  v48 = __Block_byref_object_dispose__1;
  v49 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__1;
  v42[4] = __Block_byref_object_dispose__1;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASActivityDataManager_recordIDsToDelete__block_invoke;
  block[3] = &unk_278C4BCF0;
  block[4] = self;
  block[5] = &v50;
  block[6] = &v44;
  block[7] = v42;
  block[8] = &v36;
  block[9] = &v30;
  dispatch_sync(activitySummaryQueue, block);
  v24 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:v45[5]];
  v4 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:v51[5]];
  v5 = [(ASActivityDataManager *)self notificationEventsToPushWithYesterdaySnapshot:v24 todaySnapshot:v4 achievements:0 workouts:0 currentDeletedWorkoutAnchor:v37[5] currentGoalCompletionAnchor:v31[5]];
  cloudKitManager = [(ASActivityDataManager *)self cloudKitManager];
  activityDataRecordZoneID = [objc_opt_class() activityDataRecordZoneID];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v58 count:16];
  if (v9)
  {
    v10 = *v26;
    v11 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 type] == 3)
        {
          triggerUUID = [v13 triggerUUID];
          v15 = ASWorkoutRecordIDForUUID();

          v16 = [v11 arrayByAddingObject:v15];

          triggerUUID2 = [v13 triggerUUID];
          v18 = ASWorkoutNotificationRecordIDForType();

          v11 = [v16 arrayByAddingObject:v18];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v58 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  if ([v11 count])
  {
    ASLoggingInitialize();
    v19 = *MEMORY[0x277CE8FC8];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v11 count];
      *buf = 134217984;
      v57 = v20;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "Updating share: deleting %lu workout records", buf, 0xCu);
    }
  }

  v21 = v11;

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __42__ASActivityDataManager_recordIDsToDelete__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 144));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 168));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 64));
  objc_storeStrong((*(a1[8] + 8) + 40), *(a1[4] + 80));
  v2 = *(a1[4] + 112);
  v3 = (*(a1[9] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)periodicUpdateManager:(id)manager didSaveRecords:(id)records activity:(id)activity
{
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ASActivityDataManager_periodicUpdateManager_didSaveRecords_activity___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(activitySummaryQueue, block);
}

void __71__ASActivityDataManager_periodicUpdateManager_didSaveRecords_activity___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 160), *(*(a1 + 32) + 152));
  objc_storeStrong((*(a1 + 32) + 184), *(*(a1 + 32) + 176));
  [*(a1 + 32) _queue_setLastPushedWorkoutAnchor:*(*(a1 + 32) + 56)];
  [*(a1 + 32) _queue_setLastPushedDeletedWorkoutAnchor:*(*(a1 + 32) + 72)];
  [*(a1 + 32) _queue_setLastPushedTodayAchievementAnchorToken:*(*(a1 + 32) + 88)];
  [*(a1 + 32) _queue_setLastPushedGoalCompletionAnchor:*(*(a1 + 32) + 104)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;
}

- (void)periodicUpdateManager:(id)manager didFailToSaveRecords:(id)records activity:(id)activity
{
  activitySummaryQueue = self->_activitySummaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ASActivityDataManager_periodicUpdateManager_didFailToSaveRecords_activity___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(activitySummaryQueue, block);
}

void __77__ASActivityDataManager_periodicUpdateManager_didFailToSaveRecords_activity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;
}

- (void)findDeletedWorkoutEventsWithAnchor:(id)anchor completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FC8];
  v9 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = anchorCopy;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Looking for deleted workouts with anchor: %{public}@", buf, 0xCu);
  }

  databaseClient = self->_databaseClient;
  v18 = 0;
  v19 = anchorCopy;
  v11 = anchorCopy;
  v12 = [(ASDatabaseClient *)databaseClient deletedHealthKitWorkoutsWithinLastNumberOfDays:7 maxBatchSize:100 anchor:&v19 error:&v18];
  v13 = v19;

  v14 = v18;
  v15 = [v12 hk_map:&__block_literal_global_391];
  ASLoggingInitialize();
  v16 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Finished looking for deleted workouts", buf, 2u);
  }

  if (v14)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager findDeletedWorkoutEventsWithAnchor:completion:];
    }
  }

  completionCopy[2](completionCopy, v15, v13);

  v17 = *MEMORY[0x277D85DE8];
}

id __71__ASActivityDataManager_findDeletedWorkoutEventsWithAnchor_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 UUID];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v2;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Found deleted workout with uuid=%{public}@", &v7, 0xCu);
  }

  v4 = [MEMORY[0x277CE9110] deletedWorkoutEventWithUUID:v2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_ckQueue_handleDeletedWorkoutEvents:(id)events completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  completionCopy = completion;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_cloudKitManagerObserverQueue);
  v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = MEMORY[0x277CE8FC8];
    do
    {
      v13 = 0;
      v14 = v7;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * v13);
        ASLoggingInitialize();
        v16 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          triggerUUID = [v15 triggerUUID];
          *buf = 138412290;
          v35 = triggerUUID;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Received an event for deleted workout: %@", buf, 0xCu);
        }

        triggerUUID2 = [v15 triggerUUID];
        v7 = [v14 setByAddingObject:triggerUUID2];

        ++v13;
        v14 = v7;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v10);
  }

  healthDataQueue = selfCopy->_healthDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ASActivityDataManager__ckQueue_handleDeletedWorkoutEvents_completion___block_invoke;
  block[3] = &unk_278C4BA30;
  v27 = v7;
  v28 = selfCopy;
  v29 = completionCopy;
  v21 = completionCopy;
  v22 = v7;
  dispatch_async(healthDataQueue, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __72__ASActivityDataManager__ckQueue_handleDeletedWorkoutEvents_completion___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v2 = [MEMORY[0x277CCD838] predicateForObjectsWithUUIDs:a1[4]];
  v3 = a1[4];
  v4 = HDDataEntityPredicateForDataUUIDs();
  v5 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v2 healthDaemonPredicate:v4];
  v6 = *(a1[5] + 272);
  v7 = [MEMORY[0x277CCDCD0] fitnessFriendWorkoutType];
  v19 = 0;
  v8 = [v6 deleteDataObjectsOfType:v7 predicate:v5 limit:0 deletedSampleCount:&v20 notifyObservers:0 generateDeletedObjects:0 error:&v19];
  v9 = v19;

  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FC8];
  v11 = *MEMORY[0x277CE8FC8];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v20;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Successfully deleted %lu workout(s)", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __72__ASActivityDataManager__ckQueue_handleDeletedWorkoutEvents_completion___block_invoke_cold_1();
  }

  v12 = a1[6];
  if (v12)
  {
    v13 = *(a1[5] + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__ASActivityDataManager__ckQueue_handleDeletedWorkoutEvents_completion___block_invoke_393;
    block[3] = &unk_278C4BD38;
    v17 = v12;
    v18 = v8;
    v16 = v9;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_persistedAnchorWithKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
  deviceLocalActivitySharingKeyValueDomain = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

  v13 = 0;
  v7 = [deviceLocalActivitySharingKeyValueDomain numberForKey:keyCopy error:&v13];
  v8 = v13;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FC8];
  v10 = *MEMORY[0x277CE8FC8];
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _persistedAnchorWithKey:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = keyCopy;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@: %{public}@", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_persistedAnchorTokenWithKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
  deviceLocalActivitySharingKeyValueDomain = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

  v13 = 0;
  v7 = [deviceLocalActivitySharingKeyValueDomain stringForKey:keyCopy error:&v13];
  v8 = v13;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FC8];
  v10 = *MEMORY[0x277CE8FC8];
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _persistedAnchorWithKey:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = keyCopy;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@: [%{public}@]", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_queue_setLastPushedWorkoutAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  if (![(NSNumber *)self->_lastPushedWorkoutAnchor isEqualToNumber:anchorCopy])
  {
    objc_storeStrong(&self->_lastPushedWorkoutAnchor, anchor);
    [(ASActivityDataManager *)self _queue_persistAnchorValue:anchorCopy forKey:@"LastPushedWorkoutAnchor"];
  }
}

- (void)_queue_setLastPushedDeletedWorkoutAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  if (![(NSNumber *)self->_lastPushedDeletedWorkoutAnchor isEqualToNumber:anchorCopy])
  {
    objc_storeStrong(&self->_lastPushedDeletedWorkoutAnchor, anchor);
    [(ASActivityDataManager *)self _queue_persistAnchorValue:anchorCopy forKey:@"LastPushedDeletedWorkoutAnchor"];
  }
}

- (void)_queue_persistAnchorValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
  deviceLocalActivitySharingKeyValueDomain = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

  v14 = 0;
  [deviceLocalActivitySharingKeyValueDomain setNumber:valueCopy forKey:keyCopy error:&v14];
  v10 = v14;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FC8];
  v12 = *MEMORY[0x277CE8FC8];
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _queue_persistAnchorValue:forKey:];
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = keyCopy;
    v17 = 2114;
    v18 = valueCopy;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Updated %{public}@ to %{public}@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setLastPushedTodayAchievementAnchorToken:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  if (![(NSString *)self->_lastPushedTodayAchievementAnchorToken isEqualToString:tokenCopy])
  {
    objc_storeStrong(&self->_lastPushedTodayAchievementAnchorToken, token);
    [(ASActivityDataManager *)self _queue_persistAnchorTokenValue:tokenCopy forKey:@"LastPushedTodayAchievementAnchorToken"];
  }
}

- (void)_queue_setLastPushedGoalCompletionAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  if (![(NSNumber *)self->_lastPushedGoalCompletionAnchor isEqualToNumber:anchorCopy])
  {
    objc_storeStrong(&self->_lastPushedGoalCompletionAnchor, anchor);
    [(ASActivityDataManager *)self _queue_persistAnchorValue:self->_lastPushedGoalCompletionAnchor forKey:@"LastPushedGoalCompletionAnchor"];
  }
}

- (void)_queue_persistAnchorTokenValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
  deviceLocalActivitySharingKeyValueDomain = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

  v14 = 0;
  [deviceLocalActivitySharingKeyValueDomain setString:valueCopy forKey:keyCopy error:&v14];
  v10 = v14;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FC8];
  v12 = *MEMORY[0x277CE8FC8];
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _queue_persistAnchorValue:forKey:];
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = keyCopy;
    v17 = 2114;
    v18 = valueCopy;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Updated %{public}@ to [%{public}@]", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAlertSuppressionEnabled
{
  v3 = dispatch_semaphore_create(0);
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE8FC8];
  v5 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Synchronously fetching alert suppression state", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 0;
  databaseClient = self->_databaseClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ASActivityDataManager__isAlertSuppressionEnabled__block_invoke;
  v11[3] = &unk_278C4BD60;
  v13 = buf;
  v7 = v3;
  v12 = v7;
  [(ASDatabaseClient *)databaseClient isActivityAlertSuppressionEnabledWithCompletion:v11];
  v8 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataManager _isAlertSuppressionEnabled];
    }

    v9 = 0;
  }

  else
  {
    v9 = v15[24];
  }

  _Block_object_dispose(buf, 8);
  return v9 & 1;
}

- (void)updateSecureCloudGoalCompletionAnchor:(id)anchor
{
  anchorCopy = anchor;
  activitySummaryQueue = self->_activitySummaryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ASActivityDataManager_updateSecureCloudGoalCompletionAnchor___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = anchorCopy;
  v6 = anchorCopy;
  dispatch_async(activitySummaryQueue, v7);
}

- (void)_queue_setSecureCloudGoalCompletionAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_activitySummaryQueue);
  integerValue = [(NSNumber *)self->_secureCloudGoalCompletionAnchor integerValue];
  if (integerValue < [anchorCopy integerValue])
  {
    objc_storeStrong(&self->_secureCloudGoalCompletionAnchor, anchor);
    [(ASActivityDataManager *)self _queue_persistAnchorValue:anchorCopy forKey:@"SecureCloudGoalCompletionAnchor"];
  }
}

- (ASActivitySharingManager)activitySharingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);

  return WeakRetained;
}

- (ASCloudKitManager)cloudKitManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);

  return WeakRetained;
}

- (ASFriendListManager)friendListManager
{
  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);

  return WeakRetained;
}

- (ASPeriodicUpdateManager)periodicUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_periodicUpdateManager);

  return WeakRetained;
}

void __91__ASActivityDataManager_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __91__ASActivityDataManager_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentAchievements
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_insertSamples:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteActivityDataForFriendWithUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteActivityDataForFriendWithUUID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteActivityDataForFriendWithUUID:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fitnessFriendSamplesForFriendWithUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__ASActivityDataManager__queue_getAndHandleAllActivitySharingData__block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  v5[0] = 136315394;
  OUTLINED_FUNCTION_5();
  v3 = v2;
  _os_log_error_impl(&dword_23E5E3000, v1, OS_LOG_TYPE_ERROR, "%s received unexpected type: %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_workoutsForActivitySnapshot:anchor:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_workoutsForActivitySnapshot:anchor:completion:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_achievementsToPushWithYesterdaySnapshot:todaySnapshot:currentTodayAchievementAnchorToken:currentYesterdayAchievementAnchorToken:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __38__ASActivityDataManager_recordsToSave__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findDeletedWorkoutEventsWithAnchor:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__ASActivityDataManager__ckQueue_handleDeletedWorkoutEvents_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_persistedAnchorWithKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error reading %{public}@ from key value domain: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_persistAnchorValue:forKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error updating %{public}@ in key value domain: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_isAlertSuppressionEnabled
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end