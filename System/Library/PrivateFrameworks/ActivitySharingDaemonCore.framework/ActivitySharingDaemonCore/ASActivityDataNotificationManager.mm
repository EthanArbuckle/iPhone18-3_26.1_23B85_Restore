@interface ASActivityDataNotificationManager
- (ASActivityDataBulletinManager)activityDataBulletinManager;
- (ASActivityDataManager)activityDataManager;
- (ASActivityDataNotificationManager)initWithDatabaseClient:(id)client;
- (ASCloudKitManager)cloudKitManager;
- (ASContactsManager)contactsManager;
- (ASFriendListManager)friendListManager;
- (ASPeriodicUpdateManager)periodicUpdateManager;
- (NSNumber)achievementAnchor;
- (NSNumber)goalCompletionAnchor;
- (NSNumber)workoutAnchor;
- (id)_mostRecentAchievementEarnedDateForFriendWithUUID:(id)d;
- (id)_mostRecentGoalCompletedSnapshotIndexForFriendWithUUID:(id)d;
- (id)_mostRecentMonthlyAchievementEarnedDateForFriendWithUUID:(id)d;
- (id)_mostRecentWorkoutCompletionDateForFriendWithUUID:(id)d;
- (id)_queue_selectAchievementNotifications;
- (id)_queue_selectGoalCompletionNotifications;
- (id)_queue_selectWorkoutNotifications;
- (void)_notifyAboutWorkoutsDetectionIfRequired:(id)required;
- (void)_queue_showFriendNotificationsIfRequired;
- (void)_setMostRecentAchievementEarnedDate:(id)date forFriendWithUUID:(id)d;
- (void)_setMostRecentGoalCompletedSnapshotIndex:(id)index forFriendWithUUID:(id)d;
- (void)_setMostRecentMonthlyAchievementEarnedDate:(id)date forFriendWithUUID:(id)d;
- (void)_setMostRecentWorkoutCompletionDate:(id)date forFriendWithUUID:(id)d;
- (void)achievementAnchor;
- (void)activitySharingManagerReady:(id)ready;
- (void)beginObserving;
- (void)cloudKitManager:(id)manager didBeginUpdatesForFetchWithType:(int64_t)type;
- (void)cloudKitManager:(id)manager didEndUpdatesForFetchWithType:(int64_t)type activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewActivitySnapshots:(id)snapshots moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewFriendAchievements:(id)achievements moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewFriendWorkouts:(id)workouts moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewNotificationEvents:(id)events moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)dealloc;
- (void)endObserving;
- (void)goalCompletionAnchor;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)setAchievementAnchor:(id)anchor;
- (void)setGoalCompletionAnchor:(id)anchor;
- (void)setWorkoutAnchor:(id)anchor;
- (void)workoutAnchor;
@end

@implementation ASActivityDataNotificationManager

- (ASActivityDataNotificationManager)initWithDatabaseClient:(id)client
{
  clientCopy = client;
  v13.receiver = self;
  v13.super_class = ASActivityDataNotificationManager;
  v6 = [(ASActivityDataNotificationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseClient, client);
    v8 = HKCreateSerialDispatchQueue();
    queue = v7->_queue;
    v7->_queue = v8;

    *&v7->_receivedChangesFromCloudKit = 0;
    v10 = objc_alloc_init(MEMORY[0x277CE9020]);
    notificationRulesEngine = v7->_notificationRulesEngine;
    v7->_notificationRulesEngine = v10;
  }

  return v7;
}

- (void)activitySharingManagerReady:(id)ready
{
  readyCopy = ready;
  activityDataManager = [readyCopy activityDataManager];
  objc_storeWeak(&self->_activityDataManager, activityDataManager);

  activityDataBulletinManager = [readyCopy activityDataBulletinManager];
  objc_storeWeak(&self->_activityDataBulletinManager, activityDataBulletinManager);

  cloudKitManager = [readyCopy cloudKitManager];
  objc_storeWeak(&self->_cloudKitManager, cloudKitManager);

  contactsManager = [readyCopy contactsManager];
  objc_storeWeak(&self->_contactsManager, contactsManager);

  friendListManager = [readyCopy friendListManager];
  objc_storeWeak(&self->_friendListManager, friendListManager);

  obj = [readyCopy periodicUpdateManager];

  objc_storeWeak(&self->_periodicUpdateManager, obj);
}

- (void)beginObserving
{
  v10[4] = *MEMORY[0x277D85DE8];
  workoutType = [MEMORY[0x277CCD8D8] workoutType];
  v10[0] = workoutType;
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  v10[1] = fitnessFriendActivitySnapshotType;
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  v10[2] = fitnessFriendAchievementType;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v10[3] = fitnessFriendWorkoutType;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  [(ASDatabaseClient *)self->_databaseClient addSampleObserver:self sampleTypes:v7];
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  [WeakRetained addObserver:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)endObserving
{
  v10[4] = *MEMORY[0x277D85DE8];
  workoutType = [MEMORY[0x277CCD8D8] workoutType];
  v10[0] = workoutType;
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  v10[1] = fitnessFriendActivitySnapshotType;
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  v10[2] = fitnessFriendAchievementType;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v10[3] = fitnessFriendWorkoutType;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  [(ASDatabaseClient *)self->_databaseClient removeSampleObserver:self sampleTypes:v7];
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  [WeakRetained removeObserver:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(ASActivityDataNotificationManager *)self endObserving];
  v3.receiver = self;
  v3.super_class = ASActivityDataNotificationManager;
  [(ASActivityDataNotificationManager *)&v3 dealloc];
}

- (void)cloudKitManager:(id)manager didBeginUpdatesForFetchWithType:(int64_t)type
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ASActivityDataNotificationManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __85__ASActivityDataNotificationManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke(uint64_t result)
{
  *(*(result + 32) + 24) = 0;
  *(*(result + 32) + 25) = 1;
  return result;
}

- (void)cloudKitManager:(id)manager didReceiveNewActivitySnapshots:(id)snapshots moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  snapshotsCopy = snapshots;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewActivitySnapshots_moreComing_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4BA30;
  v14 = snapshotsCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = snapshotsCopy;
  dispatch_async(queue, block);
}

uint64_t __119__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewActivitySnapshots_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager processing %lu new activity snapshots.", &v7, 0xCu);
  }

  *(*(a1 + 40) + 24) |= [*(a1 + 32) count] != 0;
  result = (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cloudKitManager:(id)manager didReceiveNewFriendWorkouts:(id)workouts moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  workoutsCopy = workouts;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewFriendWorkouts_moreComing_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4BA30;
  v14 = workoutsCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = workoutsCopy;
  dispatch_async(queue, block);
}

uint64_t __116__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewFriendWorkouts_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager processing %lu new workouts.", &v7, 0xCu);
  }

  *(*(a1 + 40) + 24) |= [*(a1 + 32) count] != 0;
  result = (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cloudKitManager:(id)manager didReceiveNewFriendAchievements:(id)achievements moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  achievementsCopy = achievements;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewFriendAchievements_moreComing_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4BA30;
  v14 = achievementsCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = achievementsCopy;
  dispatch_async(queue, block);
}

uint64_t __120__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewFriendAchievements_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager processing %lu new achievements.", &v7, 0xCu);
  }

  *(*(a1 + 40) + 24) |= [*(a1 + 32) count] != 0;
  result = (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cloudKitManager:(id)manager didReceiveNewNotificationEvents:(id)events moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewNotificationEvents_moreComing_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4BA30;
  v14 = eventsCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = eventsCopy;
  dispatch_async(queue, block);
}

uint64_t __120__ASActivityDataNotificationManager_cloudKitManager_didReceiveNewNotificationEvents_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager processing %lu new notification events.", &v7, 0xCu);
  }

  *(*(a1 + 40) + 24) |= [*(a1 + 32) count] != 0;
  result = (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cloudKitManager:(id)manager didEndUpdatesForFetchWithType:(int64_t)type activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __130__ASActivityDataNotificationManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke;
  v11[3] = &unk_278C4B1B0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(queue, v11);
}

uint64_t __130__ASActivityDataNotificationManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 25) = 0;
  v2 = *(*(a1 + 32) + 24);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FF8];
  v4 = os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager received new data from CloudKit, showing notifications if required.", buf, 2u);
    }

    *(*(a1 + 32) + 24) = 0;
    [*(a1 + 32) _queue_showFriendNotificationsIfRequired];
  }

  else if (v4)
  {
    *v6 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager didn't receive any new data from CloudKit, not showing notifications", v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v41 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  anchorCopy = anchor;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = addedCopy;
  v8 = [addedCopy countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v31 = anchorCopy;
    v10 = 0;
    v11 = *v37;
    v12 = MEMORY[0x277CBEBF8];
    v13 = 0x277CCD000uLL;
    v32 = *v37;
    do
    {
      v14 = 0;
      v33 = v9;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        sampleType = [v15 sampleType];
        workoutType = [*(v13 + 1824) workoutType];
        v18 = [sampleType isEqual:workoutType];

        if (v18)
        {
          [v12 arrayByAddingObject:v15];
          v12 = sampleType2 = v12;
        }

        else
        {
          sampleType2 = [v15 sampleType];
          fitnessFriendWorkoutType = [*(v13 + 1824) fitnessFriendWorkoutType];
          if ([sampleType2 isEqual:fitnessFriendWorkoutType])
          {
            v10 = 1;
          }

          else
          {
            sampleType3 = [v15 sampleType];
            fitnessFriendAchievementType = [*(v13 + 1824) fitnessFriendAchievementType];
            if ([sampleType3 isEqual:fitnessFriendAchievementType])
            {
              v10 = 1;
            }

            else
            {
              sampleType4 = [v15 sampleType];
              [*(v13 + 1824) fitnessFriendActivitySnapshotType];
              v24 = v12;
              v26 = v25 = v10;
              v27 = [sampleType4 isEqual:v26];

              LODWORD(v26) = v25;
              v12 = v24;
              v11 = v32;

              v10 = v27 | v26;
            }

            v9 = v33;
            v13 = 0x277CCD000;
          }
        }

        ++v14;
      }

      while (v9 != v14);
      v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
    [(ASActivityDataNotificationManager *)selfCopy _notifyAboutWorkoutsDetectionIfRequired:v12];
    if (v10)
    {
      queue = selfCopy->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ASActivityDataNotificationManager_samplesAdded_anchor___block_invoke;
      block[3] = &unk_278C4B278;
      block[4] = selfCopy;
      dispatch_async(queue, block);
    }

    anchorCopy = v31;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
    [(ASActivityDataNotificationManager *)self _notifyAboutWorkoutsDetectionIfRequired:MEMORY[0x277CBEBF8]];
  }

  v29 = *MEMORY[0x277D85DE8];
}

_BYTE *__57__ASActivityDataNotificationManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[25] & 1) == 0)
  {
    return [result _queue_showFriendNotificationsIfRequired];
  }

  return result;
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v24 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FF8];
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager: samples removed, checking if any are workouts", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = removedCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ASLoggingInitialize();
          v14 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager: at least one sample is a workout, requesting push", buf, 2u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_periodicUpdateManager);
          v16 = ASCloudKitGroupUserActionImplicit();
          [WeakRetained requestImmediateUpdateWithCloudKitGroup:v16 completion:{0, v18}];

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_mostRecentWorkoutCompletionDateForFriendWithUUID:(id)d
{
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v6 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"workoutCompletion"];
  v11 = 0;
  v7 = [_nanoUserDefaultsDomain dateForKey:v6 error:&v11];
  v8 = v11;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataNotificationManager _mostRecentWorkoutCompletionDateForFriendWithUUID:];
      }
    }
  }

  return v7;
}

- (void)_setMostRecentWorkoutCompletionDate:(id)date forFriendWithUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v9 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"workoutCompletion"];
  v15 = 0;
  v10 = [_nanoUserDefaultsDomain setDate:dateCopy forKey:v9 error:&v15];
  v11 = v15;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      ASLoggingInitialize();
      v13 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = dCopy;
        v20 = 2114;
        v21 = dateCopy;
        _os_log_error_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_ERROR, "Error: %{public}@ saving workout completion data into key value domain. %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_mostRecentAchievementEarnedDateForFriendWithUUID:(id)d
{
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v6 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"achievementEarned"];
  v11 = 0;
  v7 = [_nanoUserDefaultsDomain dateForKey:v6 error:&v11];
  v8 = v11;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataNotificationManager _mostRecentAchievementEarnedDateForFriendWithUUID:];
      }
    }
  }

  return v7;
}

- (void)_setMostRecentAchievementEarnedDate:(id)date forFriendWithUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [dateCopy hk_isAfterDate:date];

  if (v9)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager _setMostRecentAchievementEarnedDate:v10 forFriendWithUUID:?];
    }
  }

  else
  {
    _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
    v12 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"achievementEarned"];
    v18 = 0;
    v13 = [_nanoUserDefaultsDomain setDate:dateCopy forKey:v12 error:&v18];
    v14 = v18;
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      if (v14)
      {
        ASLoggingInitialize();
        v16 = *MEMORY[0x277CE8FF8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v20 = v15;
          v21 = 2114;
          v22 = dCopy;
          v23 = 2114;
          v24 = dateCopy;
          _os_log_error_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_ERROR, "Error: %{public}@ saving achievement earned data into key value domain. %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_mostRecentMonthlyAchievementEarnedDateForFriendWithUUID:(id)d
{
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v6 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"monthlyAchievementEarned"];
  v11 = 0;
  v7 = [_nanoUserDefaultsDomain dateForKey:v6 error:&v11];
  v8 = v11;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataNotificationManager _mostRecentMonthlyAchievementEarnedDateForFriendWithUUID:];
      }
    }
  }

  return v7;
}

- (void)_setMostRecentMonthlyAchievementEarnedDate:(id)date forFriendWithUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v9 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"monthlyAchievementEarned"];
  v15 = 0;
  v10 = [_nanoUserDefaultsDomain setDate:dateCopy forKey:v9 error:&v15];
  v11 = v15;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      ASLoggingInitialize();
      v13 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = dCopy;
        v20 = 2114;
        v21 = dateCopy;
        _os_log_error_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_ERROR, "Error: %{public}@ saving monthly achievement earned data into key value domain. %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_mostRecentGoalCompletedSnapshotIndexForFriendWithUUID:(id)d
{
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v6 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"goalCompletionIndex"];
  v11 = 0;
  v7 = [_nanoUserDefaultsDomain numberForKey:v6 error:&v11];
  v8 = v11;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASActivityDataNotificationManager _mostRecentGoalCompletedSnapshotIndexForFriendWithUUID:];
      }
    }
  }

  return v7;
}

- (void)_setMostRecentGoalCompletedSnapshotIndex:(id)index forFriendWithUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  dCopy = d;
  _nanoUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomain];
  v9 = [(ASActivityDataNotificationManager *)self _nanoUserDefaultsDomainKeyForFriendWithUUID:dCopy keyTypeString:@"goalCompletionIndex"];
  v15 = 0;
  v10 = [_nanoUserDefaultsDomain setNumber:indexCopy forKey:v9 error:&v15];
  v11 = v15;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      ASLoggingInitialize();
      v13 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = dCopy;
        v20 = 2114;
        v21 = indexCopy;
        _os_log_error_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_ERROR, "Error: %{public}@ saving goal completion data into key value domain. %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSNumber)workoutAnchor
{
  _localUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _localUserDefaultsDomain];
  v6 = 0;
  v3 = [_localUserDefaultsDomain numberForKey:@"fitnessFriendsWorkoutAnchorKey" error:&v6];
  v4 = v6;
  if (v4)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager workoutAnchor];
    }

    v3 = 0;
  }

  return v3;
}

- (void)setWorkoutAnchor:(id)anchor
{
  anchorCopy = anchor;
  _localUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _localUserDefaultsDomain];
  v7 = 0;
  [_localUserDefaultsDomain setNumber:anchorCopy forKey:@"fitnessFriendsWorkoutAnchorKey" error:&v7];
  v6 = v7;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager setWorkoutAnchor:];
    }
  }
}

- (NSNumber)achievementAnchor
{
  _localUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _localUserDefaultsDomain];
  v6 = 0;
  v3 = [_localUserDefaultsDomain numberForKey:@"fitnessFriendsAchievementAnchorKey" error:&v6];
  v4 = v6;
  if (v4)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager achievementAnchor];
    }

    v3 = 0;
  }

  return v3;
}

- (void)setAchievementAnchor:(id)anchor
{
  anchorCopy = anchor;
  _localUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _localUserDefaultsDomain];
  v7 = 0;
  [_localUserDefaultsDomain setNumber:anchorCopy forKey:@"fitnessFriendsAchievementAnchorKey" error:&v7];
  v6 = v7;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager setAchievementAnchor:];
    }
  }
}

- (NSNumber)goalCompletionAnchor
{
  _localUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _localUserDefaultsDomain];
  v6 = 0;
  v3 = [_localUserDefaultsDomain numberForKey:@"fitnessFriendsGoalCompletionAnchorKey" error:&v6];
  v4 = v6;
  if (v4)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager goalCompletionAnchor];
    }

    v3 = 0;
  }

  return v3;
}

- (void)setGoalCompletionAnchor:(id)anchor
{
  anchorCopy = anchor;
  _localUserDefaultsDomain = [(ASActivityDataNotificationManager *)self _localUserDefaultsDomain];
  v7 = 0;
  [_localUserDefaultsDomain setNumber:anchorCopy forKey:@"fitnessFriendsGoalCompletionAnchorKey" error:&v7];
  v6 = v7;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASActivityDataNotificationManager setGoalCompletionAnchor:];
    }
  }
}

- (void)_queue_showFriendNotificationsIfRequired
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v5 = [v4 objectForKey:*MEMORY[0x277CE9290]];
  v6 = v5;
  if (v5 && ![v5 BOOLValue])
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager: Not showing notifications since pref is disabled.", buf, 2u);
    }
  }

  else
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager: Showing friend notifications", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ASActivityDataNotificationManager__queue_showFriendNotificationsIfRequired__block_invoke;
    block[3] = &unk_278C4B278;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __77__ASActivityDataNotificationManager__queue_showFriendNotificationsIfRequired__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CE9018]);
  v3 = [*(a1 + 32) _queue_selectWorkoutNotifications];
  [v2 setWorkoutNotifications:v3];

  v4 = [*(a1 + 32) _queue_selectAchievementNotifications];
  [v2 setAchievementNotifications:v4];

  v5 = [*(a1 + 32) _queue_selectGoalCompletionNotifications];
  [v2 setGoalCompletionNotifications:v5];

  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FF8];
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Selected notifications:", &v24, 2u);
  }

  ASLoggingInitialize();
  v8 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v2 workoutNotifications];
    v11 = [v10 count];
    v24 = 134217984;
    v25 = v11;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Workouts: %lu", &v24, 0xCu);
  }

  ASLoggingInitialize();
  v12 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v2 achievementNotifications];
    v15 = [v14 count];
    v24 = 134217984;
    v25 = v15;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Achievements: %lu", &v24, 0xCu);
  }

  ASLoggingInitialize();
  v16 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v2 goalCompletionNotifications];
    v19 = [v18 count];
    v24 = 134217984;
    v25 = v19;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Goal completions: %lu", &v24, 0xCu);
  }

  v20 = [*(*(a1 + 32) + 32) filterNotificationGroup:v2];
  ASLoggingInitialize();
  v21 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "Filtered notifications, posting", &v24, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained showActivityNotifications:v20 withPostingStyle:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_queue_selectWorkoutNotifications
{
  v31 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FF8];
  v4 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Selecting workouts for notifications", buf, 2u);
  }

  workoutAnchor = [(ASActivityDataNotificationManager *)self workoutAnchor];
  ASLoggingInitialize();
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = workoutAnchor;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Current workout anchor is %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  databaseClient = self->_databaseClient;
  v27 = 0;
  v28 = workoutAnchor;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__ASActivityDataNotificationManager__queue_selectWorkoutNotifications__block_invoke;
  v23[3] = &unk_278C4CCB0;
  v23[4] = self;
  v11 = v8;
  v24 = v11;
  v12 = v9;
  v25 = v12;
  v13 = v7;
  v26 = v13;
  v14 = [(ASDatabaseClient *)databaseClient enumerateActivitySharingWorkoutsWithPredicate:0 anchor:&v28 error:&v27 handler:v23];
  v15 = v28;

  v16 = v27;
  if (v14)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__ASActivityDataNotificationManager__queue_selectWorkoutNotifications__block_invoke_330;
    v22[3] = &unk_278C4CCD8;
    v22[4] = self;
    [v12 enumerateKeysAndObjectsUsingBlock:v22];
    [(ASActivityDataNotificationManager *)self setWorkoutAnchor:v15];
    ASLoggingInitialize();
    v17 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v30 = v15;
    v18 = "WorkoutAnchor set to: %{public}@";
  }

  else
  {
    ASLoggingInitialize();
    v17 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v30 = v16;
    v18 = "Error: %{public}@ fetching workouts";
  }

  _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_11:
  v19 = [v13 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __70__ASActivityDataNotificationManager__queue_selectWorkoutNotifications__block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained friendWithUUID:v5];

  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FF8];
  v8 = *MEMORY[0x277CE8FF8];
  v9 = *MEMORY[0x277CE8FF8];
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v11 = [v6 UUID];
      v12 = [v3 endDate];
      v36 = 138543618;
      v37 = v11;
      v38 = 2114;
      v39 = v12;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Evaluating workout for friend with UUID %{public}@, end date (on remote device) is %{public}@", &v36, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = [v6 UUID];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = *(a1 + 32);
      v17 = [v6 UUID];
      v18 = [v17 UUIDString];
      v15 = [v16 _mostRecentWorkoutCompletionDateForFriendWithUUID:v18];

      v19 = *(a1 + 40);
      v20 = [v6 UUID];
      [v19 setObject:v15 forKeyedSubscript:v20];
    }

    ASLoggingInitialize();
    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412290;
      v37 = v15;
      _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "Last known workout completion date: %@", &v36, 0xCu);
    }

    if (v15 && ([v3 endDate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "hk_isAfterDate:", v15), v22, (v23 & 1) == 0))
    {
      ASLoggingInitialize();
      v35 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_23E5E3000, v35, OS_LOG_TYPE_DEFAULT, "Last known workout is newer, skip this one", &v36, 2u);
      }
    }

    else
    {
      v24 = *(a1 + 48);
      v25 = [v6 UUID];
      v26 = [v24 objectForKeyedSubscript:v25];

      if (!v26 || ([v3 endDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "hk_isAfterDate:", v26), v27, v28))
      {
        v29 = [v3 endDate];
        v30 = *(a1 + 48);
        v31 = [v6 UUID];
        [v30 setObject:v29 forKeyedSubscript:v31];
      }

      v32 = objc_opt_new();
      [v32 setFriend:v6];
      [v32 setSample:v3];
      [*(a1 + 56) addObject:v32];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __70__ASActivityDataNotificationManager__queue_selectWorkoutNotifications__block_invoke_cold_1(v8, v3);
  }

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

void __70__ASActivityDataNotificationManager__queue_selectWorkoutNotifications__block_invoke_330(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Updating most recent workout completion date: %@, for friend: %@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [v5 UUIDString];
  [v8 _setMostRecentWorkoutCompletionDate:v6 forFriendWithUUID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_queue_selectAchievementNotifications
{
  v38 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FF8];
  v4 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Selecting achievements for notifications", buf, 2u);
  }

  achievementAnchor = [(ASActivityDataNotificationManager *)self achievementAnchor];
  ASLoggingInitialize();
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = achievementAnchor;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Current achievement anchor is %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  databaseClient = self->_databaseClient;
  v35 = achievementAnchor;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke;
  v28[3] = &unk_278C4CD00;
  v28[4] = self;
  v13 = v10;
  v29 = v13;
  v14 = v8;
  v30 = v14;
  v15 = v11;
  v31 = v15;
  v16 = v9;
  v32 = v16;
  v17 = v7;
  v33 = v17;
  v18 = [(ASDatabaseClient *)databaseClient enumerateActivitySharingAchievementsWithPredicate:0 anchor:&v35 error:&v34 handler:v28];
  v19 = v35;

  v20 = v34;
  if (v18)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_340;
    v27[3] = &unk_278C4CCD8;
    v27[4] = self;
    [v16 enumerateKeysAndObjectsUsingBlock:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_341;
    v26[3] = &unk_278C4CCD8;
    v26[4] = self;
    [v15 enumerateKeysAndObjectsUsingBlock:v26];
    [(ASActivityDataNotificationManager *)self setAchievementAnchor:v19];
    ASLoggingInitialize();
    v21 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v37 = v19;
    v22 = "AchievementAnchor set to: %{public}@";
  }

  else
  {
    ASLoggingInitialize();
    v21 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v37 = v20;
    v22 = "Error: %{public}@ fetching achievements";
  }

  _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
LABEL_11:
  v23 = [v17 copy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained friendWithUUID:v5];

  v7 = MEMORY[0x277CE8FF8];
  if (!v6)
  {
    ASLoggingInitialize();
    v28 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_cold_3(v28, v3);
    }

    goto LABEL_40;
  }

  v8 = [v3 templateUniqueName];
  IsMonthlyChallenge = ACHTemplateUniqueNameIsMonthlyChallenge();

  ASLoggingInitialize();
  v10 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v6 UUID];
    v13 = [v3 completedDate];
    v14 = v13;
    v15 = @"NO";
    *buf = 138543874;
    v64 = v12;
    v65 = 2114;
    if (IsMonthlyChallenge)
    {
      v15 = @"YES";
    }

    v66 = v13;
    v67 = 2114;
    v68 = v15;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Evaluating new achievement for friend %{public}@, completed date %{public}@, monthly %{public}@", buf, 0x20u);
  }

  if (IsMonthlyChallenge)
  {
    v16 = *(a1 + 40);
    v17 = [v6 UUID];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (v18)
    {
      goto LABEL_9;
    }

    v19 = *(a1 + 32);
    v20 = [v6 UUID];
    v21 = [v20 UUIDString];
    v18 = [v19 _mostRecentMonthlyAchievementEarnedDateForFriendWithUUID:v21];

    v22 = *(a1 + 40);
    v23 = [v6 UUID];
    [v22 setObject:v18 forKeyedSubscript:v23];

    if (v18)
    {
LABEL_9:
      v24 = [v3 completedDate];
      v25 = [v24 hk_isAfterDate:v18];
    }

    else
    {
      v25 = 1;
    }

    ASLoggingInitialize();
    v26 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v64 = v18;
    v27 = "Last known monthly achievement completion date: %@";
  }

  else
  {
    v29 = *(a1 + 48);
    v30 = [v6 UUID];
    v18 = [v29 objectForKeyedSubscript:v30];

    if (v18)
    {
      goto LABEL_16;
    }

    v31 = *(a1 + 32);
    v32 = [v6 UUID];
    v33 = [v32 UUIDString];
    v18 = [v31 _mostRecentAchievementEarnedDateForFriendWithUUID:v33];

    v34 = *(a1 + 48);
    v35 = [v6 UUID];
    [v34 setObject:v18 forKeyedSubscript:v35];

    if (v18)
    {
LABEL_16:
      v36 = [v3 completedDate];
      v25 = [v36 hk_isAfterOrEqualToDate:v18];
    }

    else
    {
      v25 = 1;
    }

    ASLoggingInitialize();
    v26 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v64 = v18;
    v27 = "Last known achievement completion date: %@";
  }

  _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_20:

  if (v25)
  {
    v37 = [v3 templateUniqueName];
    v38 = ASIsCompetitionVictoryTemplate();

    if (v38)
    {
      v39 = ASEphemeralCompetitionVictoryAchievementForFriendAchievement();
      if (v39)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v47 = objc_alloc_init(MEMORY[0x277CE8DE0]);
      v48 = [v3 templateUniqueName];
      v62 = 0;
      v39 = [v47 ephemeralAchievementWithTemplateUniqueName:v48 error:&v62];
      v49 = v62;

      if (v49)
      {
        ASLoggingInitialize();
        v50 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_cold_1(v50, v3, v49);
        }
      }

      if (v39)
      {
LABEL_23:
        if (IsMonthlyChallenge)
        {
          v41 = (a1 + 56);
          v40 = *(a1 + 56);
          v42 = [v6 UUID];
          v43 = [v40 objectForKeyedSubscript:v42];

          if (v43)
          {
            v44 = [v3 completedDate];
            v45 = [v44 hk_isAfterDate:v43];

            if ((v45 & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v41 = (a1 + 64);
          v51 = *(a1 + 64);
          v52 = [v6 UUID];
          v43 = [v51 objectForKeyedSubscript:v52];

          if (v43)
          {
            v53 = [v3 completedDate];
            v54 = [v53 hk_isAfterDate:v43];

            if (!v54)
            {
              goto LABEL_38;
            }
          }
        }

        v55 = [v3 completedDate];
        v56 = *v41;
        v57 = [v6 UUID];
        [v56 setObject:v55 forKeyedSubscript:v57];

LABEL_38:
        v58 = ASEphemeralEarnedAchievementForFriendAchievement();
        v59 = objc_opt_new();
        [v59 setFriend:v6];
        [v59 setSample:v58];
        [*(a1 + 72) addObject:v59];

LABEL_39:
        goto LABEL_40;
      }
    }

    ASLoggingInitialize();
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_cold_2();
    }

    goto LABEL_39;
  }

  ASLoggingInitialize();
  v46 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v46, OS_LOG_TYPE_DEFAULT, "Last known achievement is newer, skip this one", buf, 2u);
  }

LABEL_40:

  v60 = *MEMORY[0x277D85DE8];
  return 1;
}

void __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_340(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Updating most recent achievement earned date: %@, for friend: %@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [v5 UUIDString];
  [v8 _setMostRecentAchievementEarnedDate:v6 forFriendWithUUID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_341(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Updating most recent monthly achievement earned date: %@, for friend: %@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [v5 UUIDString];
  [v8 _setMostRecentMonthlyAchievementEarnedDate:v6 forFriendWithUUID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_queue_selectGoalCompletionNotifications
{
  v31 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FF8];
  v4 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Selecting goal completion snapshot notifications", buf, 2u);
  }

  goalCompletionAnchor = [(ASActivityDataNotificationManager *)self goalCompletionAnchor];
  ASLoggingInitialize();
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = goalCompletionAnchor;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Current goal completion anchor is %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  databaseClient = self->_databaseClient;
  v27 = 0;
  v28 = goalCompletionAnchor;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__ASActivityDataNotificationManager__queue_selectGoalCompletionNotifications__block_invoke;
  v23[3] = &unk_278C4CD28;
  v23[4] = self;
  v11 = v8;
  v24 = v11;
  v12 = v9;
  v25 = v12;
  v13 = v7;
  v26 = v13;
  v14 = [(ASDatabaseClient *)databaseClient enumerateActivitySharingSnapshotsWithPredicate:0 anchor:&v28 error:&v27 handler:v23];
  v15 = v28;

  v16 = v27;
  if (v14)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__ASActivityDataNotificationManager__queue_selectGoalCompletionNotifications__block_invoke_344;
    v22[3] = &unk_278C4CD50;
    v22[4] = self;
    [v12 enumerateKeysAndObjectsUsingBlock:v22];
    [(ASActivityDataNotificationManager *)self setGoalCompletionAnchor:v15];
    ASLoggingInitialize();
    v17 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v30 = v15;
    v18 = "GoalCompletionAnchor set to: %{public}@";
  }

  else
  {
    ASLoggingInitialize();
    v17 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v30 = v16;
    v18 = "Error: %{public}@ fetching snapshots";
  }

  _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_11:
  v19 = [v13 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __77__ASActivityDataNotificationManager__queue_selectGoalCompletionNotifications__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained friendWithUUID:v5];

  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FF8];
  v8 = *MEMORY[0x277CE8FF8];
  v9 = *MEMORY[0x277CE8FF8];
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v11 = [v6 UUID];
      v12 = [v3 snapshotIndex];
      v13 = [v3 snapshotUploadedDate];
      v36 = 138543874;
      v37 = v11;
      v38 = 2048;
      v39 = v12;
      v40 = 2114;
      v41 = v13;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Evaluating new snapshot with friend UUID %{public}@, index: %lld, date: %{public}@", &v36, 0x20u);
    }

    if (ASAllGoalsMetForSnapshot())
    {
      v14 = *(a1 + 40);
      v15 = [v6 UUID];
      v16 = [v14 objectForKeyedSubscript:v15];

      if (!v16)
      {
        v17 = *(a1 + 32);
        v18 = [v6 UUID];
        v19 = [v18 UUIDString];
        v16 = [v17 _mostRecentGoalCompletedSnapshotIndexForFriendWithUUID:v19];

        v20 = *(a1 + 40);
        v21 = [v6 UUID];
        [v20 setObject:v16 forKeyedSubscript:v21];
      }

      ASLoggingInitialize();
      v22 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412290;
        v37 = v16;
        _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Last known goal completion index: %@", &v36, 0xCu);
      }

      v23 = [v3 snapshotIndex];
      if (v23 <= [v16 integerValue])
      {
        ASLoggingInitialize();
        v33 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_23E5E3000, v33, OS_LOG_TYPE_DEFAULT, "Last known snapshot is newer, skip this one", &v36, 2u);
        }
      }

      else
      {
        v24 = *(a1 + 48);
        v25 = [v6 UUID];
        v26 = [v24 objectForKeyedSubscript:v25];

        v27 = [v3 snapshotIndex];
        if (v27 > [v26 integerValue])
        {
          v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "snapshotIndex")}];
          v29 = *(a1 + 48);
          v30 = [v6 UUID];
          [v29 setObject:v28 forKeyedSubscript:v30];
        }

        v31 = objc_opt_new();
        [v31 setFriend:v6];
        [v31 setSample:v3];
        [*(a1 + 56) addObject:v31];
      }
    }

    else
    {
      ASLoggingInitialize();
      v32 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_23E5E3000, v32, OS_LOG_TYPE_DEFAULT, "Snapshot doesn't represent goal completion, skipping", &v36, 2u);
      }
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __77__ASActivityDataNotificationManager__queue_selectGoalCompletionNotifications__block_invoke_cold_1(v8, v3);
  }

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

void __77__ASActivityDataNotificationManager__queue_selectGoalCompletionNotifications__block_invoke_344(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Updating most recent goal completion snapshot index: %@, for friend: %@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [v5 UUIDString];
  [v8 _setMostRecentGoalCompletedSnapshotIndex:v6 forFriendWithUUID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAboutWorkoutsDetectionIfRequired:(id)required
{
  v24 = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = requiredCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  WeakRetained = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        endDate = [*(*(&v19 + 1) + 8 * i) endDate];
        v13 = [currentCalendar isDateInToday:endDate];
        v14 = [currentCalendar isDateInYesterday:endDate];
        if ((v13 & 1) != 0 || v14)
        {
          ASLoggingInitialize();
          v15 = *MEMORY[0x277CE8FF8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "ActivityDataNotificationManager: at least one workout is in today or yesterday, request data push", v18, 2u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_periodicUpdateManager);
          v16 = ASCloudKitGroupUserActionImplicit();
          [WeakRetained requestImmediateUpdateWithCloudKitGroup:v16 completion:0];

          goto LABEL_14;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    WeakRetained = v6;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (ASCloudKitManager)cloudKitManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);

  return WeakRetained;
}

- (ASActivityDataManager)activityDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);

  return WeakRetained;
}

- (ASContactsManager)contactsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);

  return WeakRetained;
}

- (ASFriendListManager)friendListManager
{
  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);

  return WeakRetained;
}

- (ASActivityDataBulletinManager)activityDataBulletinManager
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDataBulletinManager);

  return WeakRetained;
}

- (ASPeriodicUpdateManager)periodicUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_periodicUpdateManager);

  return WeakRetained;
}

- (void)_mostRecentWorkoutCompletionDateForFriendWithUUID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving workout completion data from key value domain for friendUUID: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_mostRecentAchievementEarnedDateForFriendWithUUID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving achievement earned data from key value domain for friendUUID: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_mostRecentMonthlyAchievementEarnedDateForFriendWithUUID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving monthly achievement earned data from key value domain for friendUUID: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_mostRecentGoalCompletedSnapshotIndexForFriendWithUUID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving goal completion data from key value domain for friendUUID: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)workoutAnchor
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving workout anchor data from key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setWorkoutAnchor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error:%{public}@ saving workout anchor data into key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)achievementAnchor
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving achievement anchor data from key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setAchievementAnchor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ saving achievement anchor data into key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)goalCompletionAnchor
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving goal completion anchor data from key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setGoalCompletionAnchor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ saving goal completion anchor data into key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __70__ASActivityDataNotificationManager__queue_selectWorkoutNotifications__block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 friendUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1(&dword_23E5E3000, v5, v6, "Error: Failed to find friend with UUID %{public}@ for completed workout", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_cold_1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 templateUniqueName];
  OUTLINED_FUNCTION_1_0();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "Error fetching ephemeral Achievement for template %@: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_ERROR, "Unable to find achievement matching achievement: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __74__ASActivityDataNotificationManager__queue_selectAchievementNotifications__block_invoke_cold_3(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 friendUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1(&dword_23E5E3000, v5, v6, "Error: Failed to find friend with UUID %{public}@ for achievement", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __77__ASActivityDataNotificationManager__queue_selectGoalCompletionNotifications__block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 friendUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1(&dword_23E5E3000, v5, v6, "Error: Failed to find friend with UUID %{public}@ for goal completion", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end