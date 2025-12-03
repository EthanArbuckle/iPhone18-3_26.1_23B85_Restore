@interface ASFriendListManager
- (ASAchievementManager)achievementManager;
- (ASActivityDataManager)activityDataManager;
- (ASCompetitionManager)competitionManager;
- (ASContactsManager)contactsManager;
- (ASPeriodicUpdateManager)periodicUpdateManager;
- (ASRelationshipManager)relationshipManager;
- (BOOL)_queue_hasFriendsToShareWithForContacts:(id)contacts defaultsKey:(id)key;
- (BOOL)_queue_hasLegacyFriendsToShareWith;
- (BOOL)_queue_hasSecureCloudFriendsToShareWith;
- (BOOL)hasLegacyFriendsToShareWith;
- (BOOL)hasSecureCloudFriendsToShareWith;
- (NSSet)friends;
- (id)_allContactsPreferringPlaceholderContacts;
- (id)_queue_friendWithUUID:(id)d;
- (id)friendWithUUID:(id)d;
- (unint64_t)badgeCount;
- (void)_handleHasFriendsChanged;
- (void)_queue_friendListDidUpdate;
- (void)_queue_notifyObserversOfCompetitionsLoaded;
- (void)_queue_notifyObserversOfFriendListChanges;
- (void)_queue_updateFriendList;
- (void)activitySharingManagerReady:(id)ready;
- (void)addObserver:(id)observer;
- (void)clearFriendListWithCompletion:(id)completion;
- (void)competitionManager:(id)manager didUpdateCompetitionsForFriendsWithUUIDs:(id)ds;
- (void)competitionManagerDidLoadCachedCompetitions:(id)competitions;
- (void)contactsManagerDidUpdateContacts:(id)contacts;
- (void)dealloc;
- (void)endObserving;
- (void)fetchCodableFriendWithRemoteUUID:(id)d completion:(id)completion;
- (void)fetchfriendDataWithRemoteUUID:(id)d completion:(id)completion;
- (void)initializeFriendListAndBeginObserving;
- (void)queryAppBadgeCountWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)updateFitnessAppBadgeCount;
- (void)updateFriendListWithDeletedWorkoutEvents:(id)events;
- (void)updateFriendListWithNewSnapshots:(id)snapshots achievements:(id)achievements workouts:(id)workouts;
@end

@implementation ASFriendListManager

- (void)activitySharingManagerReady:(id)ready
{
  readyCopy = ready;
  activityDataManager = [readyCopy activityDataManager];
  [(ASFriendListManager *)self setActivityDataManager:activityDataManager];

  contactsManager = [readyCopy contactsManager];
  [(ASFriendListManager *)self setContactsManager:contactsManager];

  relationshipManager = [readyCopy relationshipManager];
  [(ASFriendListManager *)self setRelationshipManager:relationshipManager];

  periodicUpdateManager = [readyCopy periodicUpdateManager];
  [(ASFriendListManager *)self setPeriodicUpdateManager:periodicUpdateManager];

  competitionManager = [readyCopy competitionManager];
  [(ASFriendListManager *)self setCompetitionManager:competitionManager];

  achievementManager = [readyCopy achievementManager];

  [(ASFriendListManager *)self setAchievementManager:achievementManager];
  contactsManager2 = [(ASFriendListManager *)self contactsManager];
  [contactsManager2 addObserver:self];

  competitionManager2 = [(ASFriendListManager *)self competitionManager];
  [competitionManager2 addObserver:self];
}

- (void)dealloc
{
  [(ASFriendListManager *)self endObserving];
  v3.receiver = self;
  v3.super_class = ASFriendListManager;
  [(ASFriendListManager *)&v3 dealloc];
}

- (void)initializeFriendListAndBeginObserving
{
  if (self->_isWatch)
  {
    uTF8String = [@"ActivitySharingHasFriendsChangedNotification" UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __60__ASFriendListManager_initializeFriendListAndBeginObserving__block_invoke;
    handler[3] = &unk_278C4C4A8;
    handler[4] = self;
    notify_register_dispatch(uTF8String, &self->_activitySharingHasFriendsChangedToken, MEMORY[0x277D85CD0], handler);
  }

  friendListQueue = self->_friendListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__ASFriendListManager_initializeFriendListAndBeginObserving__block_invoke_2;
  v5[3] = &unk_278C4B278;
  v5[4] = self;
  dispatch_async(friendListQueue, v5);
}

uint64_t __60__ASFriendListManager_initializeFriendListAndBeginObserving__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _queue_updateFriendList];
  [*(*(a1 + 32) + 8) registerFitnessAppBadgeProvider];
  v2 = *(a1 + 32);

  return [v2 updateFitnessAppBadgeCount];
}

- (void)endObserving
{
  if (self->_isWatch)
  {
    notify_cancel(self->_activitySharingHasFriendsChangedToken);
  }
}

- (id)friendWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ASFriendListManager_friendWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(friendListQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__ASFriendListManager_friendWithUUID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_friendWithUUID:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)fetchCodableFriendWithRemoteUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ASFriendListManager_fetchCodableFriendWithRemoteUUID_completion___block_invoke;
  block[3] = &unk_278C4C4D0;
  block[4] = self;
  v9 = dCopy;
  v12 = v9;
  v13 = &v14;
  dispatch_sync(friendListQueue, block);
  v10 = [v15[5] codableFriendIncludingCloudKitFields:0];
  completionCopy[2](completionCopy, v10, 1, 0);

  _Block_object_dispose(&v14, 8);
}

void __67__ASFriendListManager_fetchCodableFriendWithRemoteUUID_completion___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 contact];
        v9 = [v8 primaryRemoteRelationship];
        v10 = [v9 UUID];
        v11 = [v10 isEqual:a1[5]];

        if (v11)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchfriendDataWithRemoteUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ASFriendListManager_fetchfriendDataWithRemoteUUID_completion___block_invoke;
  v8[3] = &unk_278C4C4F8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ASFriendListManager *)self fetchCodableFriendWithRemoteUUID:d completion:v8];
}

void __64__ASFriendListManager_fetchfriendDataWithRemoteUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 data];
  (*(*(a1 + 32) + 16))();
}

- (void)queryAppBadgeCountWithCompletion:(id)completion
{
  completionCopy = completion;
  badgeCount = [(ASFriendListManager *)self badgeCount];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:badgeCount];
  completionCopy[2](completionCopy, v6, 1, 0);
}

- (void)updateFitnessAppBadgeCount
{
  badgeCount = [(ASFriendListManager *)self badgeCount];
  databaseClient = self->_databaseClient;

  [(ASDatabaseClient *)databaseClient updateFitnessAppBadgeCount:badgeCount];
}

- (id)_queue_friendWithUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_friendListQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_friends;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        contact = [v9 contact];
        uUID = [contact UUID];
        v12 = [uUID isEqual:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_queue_updateFriendList
{
  v65 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_friendListQueue);
  _allContactsPreferringPlaceholderContacts = [(ASFriendListManager *)self _allContactsPreferringPlaceholderContacts];
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 134217984;
    v61 = [_allContactsPreferringPlaceholderContacts count];
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Updating local friend list from %lu contacts", buf, 0xCu);
  }

  friends = self->_friends;
  if (!friends)
  {
    v6 = [MEMORY[0x277CBEB98] set];
    v7 = self->_friends;
    self->_friends = v6;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = _allContactsPreferringPlaceholderContacts;
  v8 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  v9 = MEMORY[0x277CE8FF0];
  if (v8)
  {
    v10 = v8;
    v11 = *v57;
    v52 = *v57;
    do
    {
      v12 = 0;
      v53 = v10;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        ASLoggingInitialize();
        v15 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          v41 = v15;
          uUID = [v13 UUID];
          [v13 displayName];
          v44 = v43 = v14;
          *buf = 138543618;
          v61 = uUID;
          v62 = 2112;
          v63 = v44;
          _os_log_debug_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEBUG, "Updating list for contact %{public}@ (%@)", buf, 0x16u);

          v14 = v43;
        }

        uUID2 = [v13 UUID];
        v17 = [(ASFriendListManager *)self _queue_friendWithUUID:uUID2];

        if (v17)
        {
          ASLoggingInitialize();
          v18 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            v45 = v18;
            uUID3 = [v17 UUID];
            *buf = 138543618;
            v61 = uUID3;
            v62 = 2112;
            v63 = v17;
            _os_log_debug_impl(&dword_23E5E3000, v45, OS_LOG_TYPE_DEBUG, "Found existing friend %{public}@ - %@, updating contact reference", buf, 0x16u);
          }

          [v17 setContact:v13];
        }

        else
        {
          v55 = v14;
          if ([(ASDatabaseClient *)self->_databaseClient isProtectedDataAvailable])
          {
            activityDataManager = [(ASFriendListManager *)self activityDataManager];
            uUID4 = [v13 UUID];
            v21 = [activityDataManager fitnessFriendSamplesForFriendWithUUID:uUID4];

            activityDataManager2 = [(ASFriendListManager *)self activityDataManager];
            v23 = [activityDataManager2 activitySnapshotsFromFitnessFriendSamples:v21];

            activityDataManager3 = [(ASFriendListManager *)self activityDataManager];
            v25 = [activityDataManager3 achievementsFromFitnessFriendSamples:v21];

            activityDataManager4 = [(ASFriendListManager *)self activityDataManager];
            v27 = [activityDataManager4 workoutsFromFitnessFriendSamples:v21];
          }

          else
          {
            ASLoggingInitialize();
            v28 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
              uUID5 = [v13 UUID];
              displayName = [v13 displayName];
              *buf = 138543618;
              v61 = uUID5;
              v62 = 2112;
              v63 = displayName;
              _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "Protected data is not available, not getting data for contact %{public}@ (%@)", buf, 0x16u);
            }

            v27 = 0;
            v25 = 0;
            v23 = 0;
          }

          v32 = MEMORY[0x277CBEBF8];
          if (self->_competitionDataAvailable)
          {
            competitionManager = [(ASFriendListManager *)self competitionManager];
            uUID6 = [v13 UUID];
            v32 = [competitionManager competitionsForFriendWithUUID:uUID6];

            v9 = MEMORY[0x277CE8FF0];
          }

          v35 = [objc_alloc(MEMORY[0x277CE90F8]) initWithActivitySnapshots:v23 friendAchievements:v25 friendWorkouts:v27 contact:v13 competitions:v32];
          v36 = [(NSSet *)self->_friends setByAddingObject:v35];
          v37 = self->_friends;
          self->_friends = v36;

          ASLoggingInitialize();
          v38 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            uUID7 = [v35 UUID];
            *buf = 138543618;
            v61 = uUID7;
            v62 = 2112;
            v63 = v35;
            _os_log_impl(&dword_23E5E3000, v39, OS_LOG_TYPE_DEFAULT, "Friend list loaded %{public}@ - %@", buf, 0x16u);

            v9 = MEMORY[0x277CE8FF0];
          }

          v11 = v52;
          v10 = v53;
          v14 = v55;
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v10);
  }

  ASLoggingInitialize();
  v47 = *v9;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v47, OS_LOG_TYPE_DEFAULT, "Finished updating local friend list from contacts", buf, 2u);
  }

  [(ASFriendListManager *)self _queue_friendListDidUpdate];
  if (!v51 && self->_competitionDataAvailable)
  {
    ASLoggingInitialize();
    v48 = *MEMORY[0x277CE8FF0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v48, OS_LOG_TYPE_DEFAULT, "Initial friend list update and competition data is available, notifying observers", buf, 2u);
    }

    [(ASFriendListManager *)self _queue_notifyObserversOfCompetitionsLoaded];
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)updateFriendListWithNewSnapshots:(id)snapshots achievements:(id)achievements workouts:(id)workouts
{
  snapshotsCopy = snapshots;
  achievementsCopy = achievements;
  workoutsCopy = workouts;
  friendListQueue = self->_friendListQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__ASFriendListManager_updateFriendListWithNewSnapshots_achievements_workouts___block_invoke;
  v15[3] = &unk_278C4BB48;
  v16 = snapshotsCopy;
  selfCopy = self;
  v18 = achievementsCopy;
  v19 = workoutsCopy;
  v12 = workoutsCopy;
  v13 = achievementsCopy;
  v14 = snapshotsCopy;
  dispatch_async(friendListQueue, v15);
}

uint64_t __78__ASFriendListManager_updateFriendListWithNewSnapshots_achievements_workouts___block_invoke(id *a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = a1[4];
  v1 = [obj countByEnumeratingWithState:&v101 objects:v118 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v102;
    *&v2 = 138543874;
    v83 = v2;
    v85 = *v102;
    do
    {
      v5 = 0;
      v86 = v3;
      do
      {
        if (*v102 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v101 + 1) + 8 * v5);
        v7 = a1[5];
        v8 = [v6 friendUUID];
        v9 = [v7 _queue_friendWithUUID:v8];

        if (v9)
        {
          v10 = [v9 snapshots];

          if (v10)
          {
            v11 = [v9 snapshots];
            v12 = [v11 mutableCopy];
          }

          else
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "snapshotIndex")}];
          v15 = [v12 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = MEMORY[0x277CCDDC8];
            v117[0] = v6;
            v117[1] = v15;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
            v18 = [v16 _mostSignificantSnapshotAmongSnapshots:v17];
          }

          else
          {
            v18 = v6;
          }

          v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "snapshotIndex")}];
          [v12 setObject:v18 forKey:v19];

          v20 = [v12 copy];
          [v9 setSnapshots:v20];

          ASLoggingInitialize();
          v21 = *MEMORY[0x277CE8FF0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            v23 = [v9 UUID];
            v24 = [v9 contact];
            v25 = [v24 displayName];
            v26 = [v6 snapshotIndex];
            *buf = v83;
            v112 = v23;
            v113 = 2112;
            v114 = v25;
            v115 = 2048;
            v116 = v26;
            _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Updated friend %{public}@ (%@) with new snapshot with index %lld", buf, 0x20u);

            v4 = v85;
            v3 = v86;
          }
        }

        else
        {
          ASLoggingInitialize();
          v13 = *MEMORY[0x277CE8FF0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
          {
            __78__ASFriendListManager_updateFriendListWithNewSnapshots_achievements_workouts___block_invoke_cold_1(&v109, v13, v6, &v110);
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v101 objects:v118 count:16];
    }

    while (v3);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obja = a1[6];
  v27 = [obja countByEnumeratingWithState:&v97 objects:v108 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v98;
    do
    {
      v30 = 0;
      v87 = v28;
      do
      {
        if (*v98 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v97 + 1) + 8 * v30);
        v32 = a1[5];
        v33 = [v31 friendUUID];
        v34 = [v32 _queue_friendWithUUID:v33];

        if (v34)
        {
          v35 = [v31 completedDate];
          v36 = ASCacheIndexForLocalDate();

          v37 = [v34 friendAchievements];

          if (v37)
          {
            v38 = [v34 friendAchievements];
            v39 = [v38 mutableCopy];

            v40 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
            v41 = [v39 objectForKey:v40];

            if (!v41)
            {
LABEL_32:
              v41 = [MEMORY[0x277CBEB98] set];
            }

            v43 = [v41 setByAddingObject:v31];

            v44 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
            [v39 setObject:v43 forKey:v44];

            v45 = [v39 copy];
            [v34 setFriendAchievements:v45];

            ASLoggingInitialize();
            v46 = *MEMORY[0x277CE8FF0];
            if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
              v48 = [v34 UUID];
              v49 = [v34 contact];
              [v49 displayName];
              v51 = v50 = v29;
              v52 = [v31 templateUniqueName];
              *buf = 138543874;
              v112 = v48;
              v113 = 2112;
              v114 = v51;
              v115 = 2112;
              v116 = v52;
              _os_log_impl(&dword_23E5E3000, v47, OS_LOG_TYPE_DEFAULT, "Updated friend %{public}@ (%@) with new achievement with template unique name %@", buf, 0x20u);

              v29 = v50;
              v28 = v87;
            }

            goto LABEL_36;
          }

          v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
          goto LABEL_32;
        }

        ASLoggingInitialize();
        v42 = *MEMORY[0x277CE8FF0];
        if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
        {
          __78__ASFriendListManager_updateFriendListWithNewSnapshots_achievements_workouts___block_invoke_cold_2(&v106, v42, v31, &v107);
        }

LABEL_36:

        ++v30;
      }

      while (v28 != v30);
      v28 = [obja countByEnumeratingWithState:&v97 objects:v108 count:16];
    }

    while (v28);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  objb = a1[7];
  v53 = [objb countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (v53)
  {
    v55 = v53;
    v56 = *v94;
    *&v54 = 138543362;
    v84 = v54;
    v88 = *v94;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v94 != v56)
        {
          objc_enumerationMutation(objb);
        }

        v58 = *(*(&v93 + 1) + 8 * i);
        v59 = a1[5];
        v60 = [v58 friendUUID];
        v61 = [v59 _queue_friendWithUUID:v60];

        if (v61)
        {
          v62 = [v58 endDate];
          v63 = ASCacheIndexForLocalDate();

          v64 = [v61 friendWorkouts];

          if (v64)
          {
            v65 = [v61 friendWorkouts];
            v66 = [v65 mutableCopy];

            v67 = [MEMORY[0x277CCABB0] numberWithLongLong:v63];
            v68 = [v66 objectForKey:v67];

            if (!v68)
            {
LABEL_50:
              v68 = [MEMORY[0x277CBEB98] set];
            }

            v72 = [v68 setByAddingObject:v58];

            v73 = [MEMORY[0x277CCABB0] numberWithLongLong:v63];
            [v66 setObject:v72 forKey:v73];

            v74 = [v66 copy];
            [v61 setFriendWorkouts:v74];

            ASLoggingInitialize();
            v75 = *MEMORY[0x277CE8FF0];
            if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
            {
              v76 = v75;
              v77 = [v61 UUID];
              v78 = [v61 contact];
              v79 = [v78 displayName];
              v80 = [v58 UUID];
              *buf = 138543874;
              v112 = v77;
              v113 = 2112;
              v114 = v79;
              v115 = 2114;
              v116 = v80;
              _os_log_impl(&dword_23E5E3000, v76, OS_LOG_TYPE_DEFAULT, "Updated friend %{public}@ (%@) with new workout with UUID %{public}@", buf, 0x20u);

              v56 = v88;
            }

            goto LABEL_54;
          }

          v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
          goto LABEL_50;
        }

        ASLoggingInitialize();
        v69 = *MEMORY[0x277CE8FF0];
        if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
        {
          v70 = v69;
          v71 = [v58 friendUUID];
          *buf = v84;
          v112 = v71;
          _os_log_impl(&dword_23E5E3000, v70, OS_LOG_TYPE_DEFAULT, "Failed to update friend list with workout with friend UUID %{public}@ because no friend was found with matching UUID", buf, 0xCu);

          v56 = v88;
        }

LABEL_54:
      }

      v55 = [objb countByEnumeratingWithState:&v93 objects:v105 count:16];
    }

    while (v55);
  }

  result = [a1[5] _queue_notifyObserversOfFriendListChanges];
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateFriendListWithDeletedWorkoutEvents:(id)events
{
  eventsCopy = events;
  friendListQueue = self->_friendListQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ASFriendListManager_updateFriendListWithDeletedWorkoutEvents___block_invoke;
  v7[3] = &unk_278C4B250;
  v8 = eventsCopy;
  selfCopy = self;
  v6 = eventsCopy;
  dispatch_async(friendListQueue, v7);
}

uint64_t __64__ASFriendListManager_updateFriendListWithDeletedWorkoutEvents___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FF0];
  v3 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    *buf = 134217984;
    v38 = [v4 count];
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Updating friend list with %lu deleted workout events", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v34;
    *&v7 = 138543618;
    v28 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = *(a1 + 40);
        v13 = [v11 friendUUID];
        v14 = [v12 _queue_friendWithUUID:v13];

        ASLoggingInitialize();
        v15 = *v2;
        v16 = *v2;
        if (v14)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v15;
            v18 = [v11 triggerUUID];
            v19 = [v14 displayName];
            *buf = v28;
            v38 = v18;
            v39 = 2112;
            v40 = v19;
            _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Removing deleted workout [%{public}@] for friend: %@", buf, 0x16u);

            v2 = MEMORY[0x277CE8FF0];
          }

          v20 = [MEMORY[0x277CBEB38] dictionary];
          v21 = [v14 friendWorkouts];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __64__ASFriendListManager_updateFriendListWithDeletedWorkoutEvents___block_invoke_318;
          v30[3] = &unk_278C4C548;
          v31 = v20;
          v32 = v11;
          v22 = v20;
          [v21 enumerateKeysAndObjectsUsingBlock:v30];

          [v14 setFriendWorkouts:v22];
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = v15;
          v24 = [v11 friendUUID];
          v25 = [v11 triggerUUID];
          *buf = v28;
          v38 = v24;
          v39 = 2114;
          v40 = v25;
          _os_log_error_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_ERROR, "Unable to find friend with UUID: %{public}@, skipping deleted workout with UUID: %{public}@", buf, 0x16u);

          v2 = MEMORY[0x277CE8FF0];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  result = [*(a1 + 40) _queue_notifyObserversOfFriendListChanges];
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void __64__ASFriendListManager_updateFriendListWithDeletedWorkoutEvents___block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MEMORY[0x277CCAC30];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__ASFriendListManager_updateFriendListWithDeletedWorkoutEvents___block_invoke_2;
  v15[3] = &unk_278C4C520;
  v15[4] = *(a1 + 40);
  v7 = a3;
  v8 = [v6 predicateWithBlock:v15];
  v9 = [v7 filteredSetUsingPredicate:v8];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v11 = [v10 count];
  v12 = [v7 count];

  if (v11 != v12)
  {
    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FF0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Successfully found deleted workout on snapshotIndex: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ASFriendListManager_updateFriendListWithDeletedWorkoutEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [*(a1 + 32) triggerUUID];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

- (BOOL)hasLegacyFriendsToShareWith
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  friendListQueue = self->_friendListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ASFriendListManager_hasLegacyFriendsToShareWith__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(friendListQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasSecureCloudFriendsToShareWith
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  friendListQueue = self->_friendListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ASFriendListManager_hasSecureCloudFriendsToShareWith__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(friendListQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_queue_hasLegacyFriendsToShareWith
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_friendListQueue);
  contactsManager = [(ASFriendListManager *)selfCopy contactsManager];
  legacyContacts = [contactsManager legacyContacts];

  LOBYTE(selfCopy) = [(ASFriendListManager *)selfCopy _queue_hasFriendsToShareWithForContacts:legacyContacts defaultsKey:*MEMORY[0x277CE9220]];
  return selfCopy;
}

- (BOOL)_queue_hasSecureCloudFriendsToShareWith
{
  dispatch_assert_queue_V2(self->_friendListQueue);
  v3 = ASSecureCloudEnabled();
  if (v3)
  {
    contactsManager = [(ASFriendListManager *)self contactsManager];
    secureCloudContacts = [contactsManager secureCloudContacts];

    v6 = [(ASFriendListManager *)self _queue_hasFriendsToShareWithForContacts:secureCloudContacts defaultsKey:*MEMORY[0x277CE9228]];
    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)_queue_hasFriendsToShareWithForContacts:(id)contacts defaultsKey:(id)key
{
  v45 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  keyCopy = key;
  dispatch_assert_queue_V2(self->_friendListQueue);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = contactsCopy;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  v10 = MEMORY[0x277CE8FF0];
  if (v9)
  {
    v11 = v9;
    selfCopy = self;
    v37 = keyCopy;
    v12 = *v39;
    v13 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [objc_alloc(MEMORY[0x277CE90F8]) initWithActivitySnapshots:0 friendAchievements:0 friendWorkouts:0 contact:*(*(&v38 + 1) + 8 * i) competitions:v13];
        if ([v15 isMyActivityDataCurrentlyHidden])
        {
          ASLoggingInitialize();
          v16 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            [v15 UUID];
            v19 = v18 = v10;
            *buf = 138543618;
            *v43 = v19;
            *&v43[8] = 2112;
            *&v43[10] = v15;
            _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Not counting friend toward hasFriendsToShareWith because data is currently hidden: %{public}@ - %@", buf, 0x16u);

            v10 = v18;
          }
        }

        else if (([v15 isFriendshipCurrentlyActive] & 1) != 0 || (objc_msgSend(v15, "hasInviteRequestFromMe") & 1) != 0 || objc_msgSend(v15, "inviteRequestToMeWasAccepted"))
        {

          v20 = 1;
          goto LABEL_16;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v20 = 0;
LABEL_16:
    self = selfCopy;
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_alloc(MEMORY[0x277CBEBD0]);
  v22 = *MEMORY[0x277CE91F8];
  v23 = [v21 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v24 = [v23 objectForKey:keyCopy];
  ASLoggingInitialize();
  v25 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v43 = v20;
    *&v43[4] = 2114;
    *&v43[6] = v24;
    _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Checking current friend list for friends to share with: %{BOOL}d, checking defaults: %{public}@", buf, 0x12u);
  }

  if (self->_isWatch)
  {
    ASLoggingInitialize();
    v26 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "Device is a watch, falling back to phone value if no friends are active currently", buf, 2u);
    }

    if (v20)
    {
LABEL_24:
      LODWORD(v20) = 1;
      goto LABEL_33;
    }

    LODWORD(v20) = [v24 BOOLValue];
  }

  else if (v20 != [v24 BOOLValue])
  {
    ASLoggingInitialize();
    v27 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "Current value is different than defaults", buf, 2u);
    }

    if ((v20 & 1) == 0 && ![v8 count])
    {
      ASLoggingInitialize();
      v35 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v35, OS_LOG_TYPE_DEFAULT, "Current value is false, but defaults value was true and the contact set is empty - maintaining defaults value until contacts exist", buf, 2u);
      }

      goto LABEL_24;
    }

    v28 = [MEMORY[0x277CCABB0] numberWithBool:{v20, selfCopy, v37}];
    [v23 setObject:v28 forKey:keyCopy];

    CFPreferencesAppSynchronize(v22);
    v29 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v30 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];
    [v29 synchronizeUserDefaultsDomain:v22 keys:v30];

    ASLoggingInitialize();
    v31 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v43 = v20;
      _os_log_impl(&dword_23E5E3000, v31, OS_LOG_TYPE_DEFAULT, "Updating and syncing default for friends to share with, setting to: %{BOOL}d", buf, 8u);
    }
  }

LABEL_33:
  ASLoggingInitialize();
  v32 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v43 = v20;
    _os_log_impl(&dword_23E5E3000, v32, OS_LOG_TYPE_DEFAULT, "Checked for friends to share with, found friends: %{BOOL}d", buf, 8u);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

- (NSSet)friends
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  friendListQueue = self->_friendListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ASFriendListManager_friends__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(friendListQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__ASFriendListManager_friends__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:*(*(a1 + 32) + 32) copyItems:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)clearFriendListWithCompletion:(id)completion
{
  completionCopy = completion;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
  {
    [ASFriendListManager clearFriendListWithCompletion:v5];
  }

  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ASFriendListManager_clearFriendListWithCompletion___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(friendListQueue, block);
  contactsManager = [(ASFriendListManager *)self contactsManager];
  [contactsManager setContacts:0];

  contactsManager2 = [(ASFriendListManager *)self contactsManager];
  [contactsManager2 removeAllPlaceholderContacts];

  competitionManager = [(ASFriendListManager *)self competitionManager];
  [competitionManager deleteCachedCompetitions];

  achievementManager = [(ASFriendListManager *)self achievementManager];
  [achievementManager removeAllTemplates];

  achievementManager2 = [(ASFriendListManager *)self achievementManager];
  [achievementManager2 requestTemplateUpdate];

  activityDataManager = [(ASFriendListManager *)self activityDataManager];
  deleteAllActivitySharingData = [activityDataManager deleteAllActivitySharingData];

  [(ASFriendListManager *)self updateFitnessAppBadgeCount];
  if (completionCopy)
  {
    if (deleteAllActivitySharingData)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:0 userInfo:0];
    }

    completionCopy[2](completionCopy, deleteAllActivitySharingData, v14);
  }
}

void __53__ASFriendListManager_clearFriendListWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ASFriendListManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

void __35__ASFriendListManager_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v2 = [*(a1 + 32) friends];
  [*(a1 + 40) friendListDidUpdate:v2];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ASFriendListManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (void)_queue_notifyObserversOfFriendListChanges
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_friendListQueue);
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:self->_friends copyItems:1];
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE8FF0];
  v5 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    observers = self->_observers;
    v7 = v5;
    *buf = 134218240;
    v27 = [(NSHashTable *)observers count];
    v28 = 2048;
    v29 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Notifying %lu observers of friend list changes %lu friends.", buf, 0x16u);
  }

  selfCopy = self;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        ASLoggingInitialize();
        v14 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_debug_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    observerQueue = selfCopy->_observerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__ASFriendListManager__queue_notifyObserversOfFriendListChanges__block_invoke;
    block[3] = &unk_278C4B250;
    block[4] = selfCopy;
    v20 = v8;
    dispatch_async(observerQueue, block);
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CE9158] object:0];

  v17 = *MEMORY[0x277D85DE8];
}

void __64__ASFriendListManager__queue_notifyObserversOfFriendListChanges__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
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

        [*(*(&v8 + 1) + 8 * v6++) friendListDidUpdate:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notifyObserversOfCompetitionsLoaded
{
  dispatch_assert_queue_V2(self->_friendListQueue);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASFriendListManager__queue_notifyObserversOfCompetitionsLoaded__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(observerQueue, block);
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CE9150] object:0];
}

void __65__ASFriendListManager__queue_notifyObserversOfCompetitionsLoaded__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) friendListDidLoadCompetitions];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleHasFriendsChanged
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Has Friends default change notification received", buf, 2u);
  }

  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ASFriendListManager__handleHasFriendsChanged__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(friendListQueue, block);
}

void __47__ASFriendListManager__handleHasFriendsChanged__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 88) = [*(a1 + 32) _queue_hasLegacyFriendsToShareWith];
  v2 = ASSecureCloudEnabled();
  v3 = *(a1 + 32);
  if (v2)
  {
    *(*(a1 + 32) + 89) = [v3 _queue_hasSecureCloudFriendsToShareWith];
    v3 = *(a1 + 32);
    if ((*(v3 + 88) & 1) == 0 && (*(v3 + 89) & 1) == 0)
    {
      return;
    }
  }

  else if (*(v3 + 88) != 1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 120));
  v4 = ASCloudKitGroupUserActionImplicit();
  [WeakRetained requestImmediateUpdateWithCloudKitGroup:v4 completion:0];
}

- (void)_queue_friendListDidUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_friendListQueue);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    friends = self->_friends;
    v5 = v3;
    v8 = 134217984;
    v9 = [(NSSet *)friends count];
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Friends List did update: %lu friends", &v8, 0xCu);
  }

  self->_hasLegacyFriendsToShareWith = [(ASFriendListManager *)self _queue_hasLegacyFriendsToShareWith];
  self->_hasSecureCloudFriendsToShareWith = [(ASFriendListManager *)self _queue_hasSecureCloudFriendsToShareWith];
  [(ASFriendListManager *)self _queue_notifyObserversOfFriendListChanges];
  v6 = self->_friends;
  ASAnalyticsUpdateWithFriends();
  if ([(NSSet *)self->_friends count])
  {
    dispatch_async(self->_biomeDonationQueue, &__block_literal_global_10);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__ASFriendListManager__queue_friendListDidUpdate__block_invoke()
{
  ASLoggingInitialize();
  v0 = MEMORY[0x277CE8FF0];
  v1 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v1, OS_LOG_TYPE_DEFAULT, "Donating biome activity sharing friends event", buf, 2u);
  }

  v2 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:@"com.apple.ActivityMonitorApp.activity-shared" bundleID:@"com.apple.ActivityMonitorApp" context:0];
  v3 = [MEMORY[0x277CF1B58] discoverabilitySignal];
  v4 = [v3 source];
  [v4 sendEvent:v2];

  ASLoggingInitialize();
  v5 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Donated biome activity sharing friends event", v6, 2u);
  }
}

- (void)contactsManagerDidUpdateContacts:(id)contacts
{
  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ASFriendListManager_contactsManagerDidUpdateContacts___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(friendListQueue, block);
}

void __56__ASFriendListManager_contactsManagerDidUpdateContacts___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _allContactsPreferringPlaceholderContacts];
  v3 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v2;
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v28 = *v31;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v4);
        v7 = *(v1 + 32);
        v8 = [v6 UUID];
        v9 = [v7 _queue_friendWithUUID:v8];

        if (v9)
        {
          [v9 setContact:v6];
        }

        else
        {
          v10 = [*(v1 + 32) activityDataManager];
          v11 = [v6 UUID];
          v12 = [v10 fitnessFriendSamplesForFriendWithUUID:v11];

          v13 = [*(v1 + 32) activityDataManager];
          v27 = [v13 activitySnapshotsFromFitnessFriendSamples:v12];

          v14 = [*(v1 + 32) activityDataManager];
          v15 = [v14 achievementsFromFitnessFriendSamples:v12];

          v16 = [*(v1 + 32) activityDataManager];
          v17 = [v16 workoutsFromFitnessFriendSamples:v12];

          v18 = [*(v1 + 32) competitionManager];
          v19 = [v6 UUID];
          [v18 competitionsForFriendWithUUID:v19];
          v21 = v20 = v1;

          v9 = [objc_alloc(MEMORY[0x277CE90F8]) initWithActivitySnapshots:v27 friendAchievements:v15 friendWorkouts:v17 contact:v6 competitions:v21];
          v1 = v20;
        }

        v3 = [v5 setByAddingObject:v9];

        ++v4;
        v5 = v3;
      }

      while (v29 != v4);
      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v29);
  }

  v22 = *(v1 + 32);
  v23 = *(v22 + 32);
  *(v22 + 32) = v3;
  v24 = v3;

  [*(v1 + 32) _queue_friendListDidUpdate];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)competitionManagerDidLoadCachedCompetitions:(id)competitions
{
  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ASFriendListManager_competitionManagerDidLoadCachedCompetitions___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(friendListQueue, block);
}

void __67__ASFriendListManager_competitionManagerDidLoadCachedCompetitions___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FF0];
  v3 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "FriendListManager updating with initial competitions", buf, 2u);
  }

  *(*(a1 + 32) + 40) = 1;
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
          v12 = [v10 UUID];
          v13 = [WeakRetained competitionsForFriendWithUUID:v12];
          [v10 setCompetitions:v13];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) _queue_notifyObserversOfCompetitionsLoaded];
  }

  else
  {
    ASLoggingInitialize();
    v14 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Friend list not yet constructed, not updating", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)competitionManager:(id)manager didUpdateCompetitionsForFriendsWithUUIDs:(id)ds
{
  dsCopy = ds;
  friendListQueue = self->_friendListQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__ASFriendListManager_competitionManager_didUpdateCompetitionsForFriendsWithUUIDs___block_invoke;
  v8[3] = &unk_278C4B250;
  v9 = dsCopy;
  selfCopy = self;
  v7 = dsCopy;
  dispatch_async(friendListQueue, v8);
}

uint64_t __83__ASFriendListManager_competitionManager_didUpdateCompetitionsForFriendsWithUUIDs___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FF0];
  v3 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "FriendListManager updating with new competitions", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543362;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [*(a1 + 40) _queue_friendWithUUID:{v10, v18, v19}];
        if (v11)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 128));
          v13 = [WeakRetained competitionsForFriendWithUUID:v10];
          v14 = [v13 copy];
          [v11 setCompetitions:v14];
        }

        else
        {
          ASLoggingInitialize();
          v15 = *v2;
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v10;
            _os_log_error_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_ERROR, "FriendListManager couldn't find friend with UUID: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  result = [*(a1 + 40) _queue_notifyObserversOfFriendListChanges];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)badgeCount
{
  v18 = *MEMORY[0x277D85DE8];
  _allContactsPreferringPlaceholderContacts = [(ASFriendListManager *)self _allContactsPreferringPlaceholderContacts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [_allContactsPreferringPlaceholderContacts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(_allContactsPreferringPlaceholderContacts);
        }

        primaryRelationship = [*(*(&v13 + 1) + 8 * i) primaryRelationship];
        if ([primaryRelationship isAwaitingInviteResponse] && objc_msgSend(primaryRelationship, "hasIncomingInviteRequest") && (objc_msgSend(primaryRelationship, "isFriendshipActive") & 1) == 0)
        {
          ++v5;
        }

        else if ([primaryRelationship hasIncomingCompetitionRequest] && (objc_msgSend(primaryRelationship, "isCompetitionActive") & 1) == 0)
        {
          dateForLatestIncomingCompetitionRequest = [primaryRelationship dateForLatestIncomingCompetitionRequest];
          v10 = ~ASCompetitionRequestHasExpired();

          v5 += v10 & 1;
        }
      }

      v4 = [_allContactsPreferringPlaceholderContacts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_allContactsPreferringPlaceholderContacts
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  contacts = [WeakRetained contacts];

  v5 = objc_loadWeakRetained(&self->_contactsManager);
  placeholderContacts = [v5 placeholderContacts];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = contacts;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        uUID = [v13 UUID];
        [dictionary setObject:v13 forKeyedSubscript:uUID];
      }

      v10 = [v8 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v10);
  }

  v36 = v8;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = placeholderContacts;
  v15 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    v18 = MEMORY[0x277CE8FF0];
    v37 = dictionary;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v39 + 1) + 8 * j);
        ASLoggingInitialize();
        v21 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          relationshipStorage = [v20 relationshipStorage];
          uUID2 = [v20 UUID];
          v25 = [dictionary objectForKeyedSubscript:uUID2];
          [v25 relationshipStorage];
          v26 = v16;
          v27 = v17;
          v29 = v28 = v18;
          *buf = 138412546;
          v48 = relationshipStorage;
          v49 = 2112;
          v50 = v29;
          _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Placeholder contact storage %@ replacing %@", buf, 0x16u);

          v18 = v28;
          v17 = v27;
          v16 = v26;
          dictionary = v37;
        }

        uUID3 = [v20 UUID];
        [dictionary setObject:v20 forKeyedSubscript:uUID3];
      }

      v16 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v16);
  }

  v31 = MEMORY[0x277CBEB98];
  allValues = [dictionary allValues];
  v33 = [v31 setWithArray:allValues];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
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

- (ASRelationshipManager)relationshipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);

  return WeakRetained;
}

- (ASPeriodicUpdateManager)periodicUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_periodicUpdateManager);

  return WeakRetained;
}

- (ASCompetitionManager)competitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_competitionManager);

  return WeakRetained;
}

- (ASAchievementManager)achievementManager
{
  WeakRetained = objc_loadWeakRetained(&self->_achievementManager);

  return WeakRetained;
}

void __78__ASFriendListManager_updateFriendListWithNewSnapshots_achievements_workouts___block_invoke_cold_1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 friendUUID];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_4(&dword_23E5E3000, v9, v10, "Failed to update friend list with snapshot with friend UUID %{public}@ because no friend was found with matching UUID");
}

void __78__ASFriendListManager_updateFriendListWithNewSnapshots_achievements_workouts___block_invoke_cold_2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 friendUUID];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_4(&dword_23E5E3000, v9, v10, "Failed to update friend list with achievement with friend UUID %{public}@ because no friend was found with matching UUID");
}

@end