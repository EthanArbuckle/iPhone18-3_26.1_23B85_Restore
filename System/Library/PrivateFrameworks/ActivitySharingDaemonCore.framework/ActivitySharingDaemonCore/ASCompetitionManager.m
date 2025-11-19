@interface ASCompetitionManager
- (ASCompetitionManager)initWithDatabaseClient:(id)a3 isWatch:(BOOL)a4;
- (ASCompetitionManagerSecureCloudDelegate)secureCloudDelegate;
- (BOOL)_shouldSkipLocalLegacyCompetitionList:(id)a3;
- (BOOL)_shouldSkipLocalSecureCloudCompetitionList:(id)a3;
- (BOOL)_shouldSkipRemoteLegacyCompetitionList:(id)a3 contact:(id)a4;
- (id)_archivedCompetitionListByMergingCurrentCompetitionList:(id)a3;
- (id)_competitionListsFromContacts:(id)a3 withUpdatedScore:(id)a4 cloudType:(unint64_t)a5;
- (id)_contactsWithActiveCompetitions;
- (id)_loadOrCreateCurrentCompetitionListForFriendWithUUID:(id)a3;
- (id)_localCompetitionForRemoteCompetition:(id)a3 friendUUID:(id)a4;
- (id)_queue_competitionListsToSaveForCloudType:(unint64_t)a3;
- (id)_queue_rollCompetitionListForwardForContact:(id)a3;
- (id)_scoreCapCelebrationAnchor;
- (id)archivedCompetitionListForFriendWithUUID:(id)a3;
- (id)competitionsForFriendWithUUID:(id)a3;
- (id)currentCompetitionListForFriendWithUUID:(id)a3;
- (id)recordForCurrentCompetitionList:(id)a3 contact:(id)a4;
- (id)recordsToSave;
- (id)secureCloudCompetitionListsToSave;
- (int64_t)_queue_rollIndexBackwards:(int64_t)a3 calendar:(id)a4;
- (void)_handleAcceptedCompetitionFromFriendWithUUID:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5;
- (void)_handleCompetitionRequestFromFriendWithUUID:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5;
- (void)_loadCachedCompetitionsAndNotifyObservers;
- (void)_queue_autoAcceptCompetitionRequestFromContact:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5 completion:(id)a6;
- (void)_queue_cleanUpLegacyCompetitionLists:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5;
- (void)_queue_cleanUpSecureCloudCompetitionLists:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5;
- (void)_queue_completeCompetitionIfNecessaryForFriendWithUUID:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5;
- (void)_queue_handleNewRemoteCompetitionList:(id)a3 contact:(id)a4;
- (void)_queue_handleSavedCompetitionListRecords:(id)a3;
- (void)_queue_handleSavedRecords:(id)a3 activity:(id)a4 group:(id)a5;
- (void)_queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:(id)a3;
- (void)_queue_setActivityDataVisibleIfNecessaryForContact:(id)a3 completion:(id)a4;
- (void)_queue_showCompetitionAcceptedForFriendWithUUID:(id)a3 competition:(id)a4;
- (void)_queue_showCompetitionEndedWithFriendWithUUID:(id)a3;
- (void)_queue_showCompetitionRequestFromFriendWithUUID:(id)a3 competition:(id)a4;
- (void)_queue_showScoreCapCelebrationForFriendsWithCappedInProgressCompetitions:(id)a3;
- (void)_queue_updateLegacyCompetitionsWithScores:(id)a3 forContacts:(id)a4 completion:(id)a5;
- (void)_queue_updateScoresWithTodaySummary:(id)a3 yesterdaySummary:(id)a4 activity:(id)a5 cloudKitGroup:(id)a6;
- (void)_queue_updateSecureCloudCompetitionsWithScores:(id)a3 forContacts:(id)a4 completion:(id)a5;
- (void)_saveCurrentCompetitionList:(id)a3 archivedCompetitionList:(id)a4 contact:(id)a5 activity:(id)a6 cloudKitGroup:(id)a7 completion:(id)a8;
- (void)_saveLegacyCompetitionList:(id)a3 archivedCompetitionList:(id)a4 contact:(id)a5 activity:(id)a6 cloudKitGroup:(id)a7 completion:(id)a8;
- (void)_saveSecureCloudCompetitionList:(id)a3 archivedCompetitionList:(id)a4 contact:(id)a5 cloudKitGroup:(id)a6 completion:(id)a7;
- (void)_scoreCapCelebrationAnchor;
- (void)_setScoreCapCelebrationAnchor:(id)a3;
- (void)acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)activityDataManager:(id)a3 didUpdateTodaySummary:(id)a4 yesterdaySummary:(id)a5;
- (void)activitySharingManagerReady:(id)a3;
- (void)addObserver:(id)a3;
- (void)cloudKitManager:(id)a3 didBeginUpdatesForFetchWithType:(int64_t)a4;
- (void)cloudKitManager:(id)a3 didEndUpdatesForFetchWithType:(int64_t)a4 activity:(id)a5 cloudKitGroup:(id)a6 changesProcessedHandler:(id)a7;
- (void)cloudKitManager:(id)a3 didReceiveNewCompetitionLists:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6;
- (void)cloudKitManager:(id)a3 didReceiveNewCompetitionListsForSelf:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6;
- (void)completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)deleteCachedCompetitions;
- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)loadCachedCompetitions;
- (void)periodicUpdateManager:(id)a3 didSaveRecords:(id)a4 activity:(id)a5;
- (void)removeObserver:(id)a3;
- (void)rollCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4;
- (void)secureCloudDidFailToSaveRecords:(id)a3;
- (void)secureCloudDidSaveRecords:(id)a3;
- (void)sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4;
- (void)storePushedCompetitionListRecords:(id)a3;
- (void)updateAllActiveCompetitionsWithScores:(id)a3 completion:(id)a4;
@end

@implementation ASCompetitionManager

- (ASCompetitionManager)initWithDatabaseClient:(id)a3 isWatch:(BOOL)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = ASCompetitionManager;
  v8 = [(ASCompetitionManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseClient, a3);
    v10 = HKCreateSerialUtilityDispatchQueue();
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v10;

    v12 = HKCreateSerialUtilityDispatchQueue();
    observerQueue = v9->_observerQueue;
    v9->_observerQueue = v12;

    v14 = [[ASAsyncTransactionQueue alloc] initWithDescription:@"CompetitionManagerTransaction" targetSerialQueue:v9->_serialQueue];
    transactionQueue = v9->_transactionQueue;
    v9->_transactionQueue = v14;

    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v16;

    v9->_deviceParticipatesInAutomaticCompetitionManagement = a4;
  }

  return v9;
}

- (void)activitySharingManagerReady:(id)a3
{
  v4 = a3;
  v5 = [v4 achievementManager];
  objc_storeWeak(&self->_achievementManager, v5);

  v6 = [v4 competitionBulletinManager];
  objc_storeWeak(&self->_competitionBulletinManager, v6);

  v7 = [v4 contactsManager];
  objc_storeWeak(&self->_contactsManager, v7);

  v8 = [v4 friendListManager];
  objc_storeWeak(&self->_friendListManager, v8);

  v9 = [v4 relationshipManager];
  objc_storeWeak(&self->_relationshipManager, v9);

  v10 = [v4 activityDataManager];
  objc_storeWeak(&self->_activityDataManager, v10);

  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  [WeakRetained addObserver:self];

  v12 = [v4 cloudKitManager];
  objc_storeWeak(&self->_cloudKitManager, v12);

  v13 = objc_loadWeakRetained(&self->_cloudKitManager);
  [v13 addObserver:self];

  v14 = [v4 periodicUpdateManager];

  objc_storeWeak(&self->_periodicUpdateManager, v14);
  v15 = objc_loadWeakRetained(&self->_periodicUpdateManager);
  [v15 addProvider:self];

  v16 = [[ASCompetitionStore alloc] initWithDatabaseClient:self->_databaseClient];
  competitionStore = self->_competitionStore;
  self->_competitionStore = v16;

  MEMORY[0x2821F96F8]();
}

- (void)loadCachedCompetitions
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to load cached competitions", v4, 2u);
  }

  [(ASDatabaseClient *)self->_databaseClient addProtectedDataObserver:self];
  [(ASCompetitionManager *)self _loadCachedCompetitionsAndNotifyObservers];
}

- (void)deleteCachedCompetitions
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "CompetitionManager deleting all cached competitions", v4, 2u);
  }

  [(ASCompetitionStore *)self->_competitionStore deleteCachedCompetitions];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ASCompetitionManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASCompetitionManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to send competition request to friend: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
  v10 = [WeakRetained insertPlaceholderRelationshipEvent:10 friendUUID:v6];

  v11 = objc_loadWeakRetained(&self->_relationshipManager);
  v12 = [v11 insertPlaceholderRelationshipEvent:6 friendUUID:v6];

  v13 = ASCloudKitGroupUserActionExplicit();
  v14 = objc_loadWeakRetained(&self->_cloudKitManager);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke;
  v21[3] = &unk_278C4D160;
  v21[4] = self;
  v22 = v10;
  v23 = v12;
  v24 = v6;
  v25 = v13;
  v26 = v7;
  v27 = 10;
  v15 = v13;
  v16 = v6;
  v17 = v7;
  v18 = v12;
  v19 = v10;
  [v14 fetchAllChangesWithPriority:2 activity:0 group:v15 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    [WeakRetained removePlaceholderRelationshipEventWithToken:*(a1 + 40)];

    v15 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v15 removePlaceholderRelationshipEventWithToken:*(a1 + 48)];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = *(v6 + 88);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2;
    v16[3] = &unk_278C4D138;
    v16[4] = v6;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v19 = *(a1 + 72);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v17 = v13;
    v18 = v12;
    v20 = *(a1 + 80);
    [v7 performTransaction:v16];
  }
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "CompetitionManager fetch complete, proceeding with send competition request", buf, 2u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_310;
  v17[3] = &unk_278C4D0C0;
  v5 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v5;
  v19 = *(a1 + 48);
  v20 = *(a1 + 72);
  v21 = v3;
  v6 = v3;
  v7 = MEMORY[0x23EF0EB00](v17);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v9 = [WeakRetained contactWithUUID:*(a1 + 56)];

  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312;
  v12[3] = &unk_278C4D110;
  v15 = v7;
  v12[4] = v10;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v16 = *(a1 + 80);
  v11 = v7;
  [v10 _queue_setActivityDataVisibleIfNecessaryForContact:v9 completion:v12];
}

uint64_t __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_310(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 64));
  [WeakRetained removePlaceholderRelationshipEventWithToken:a1[5]];

  v7 = objc_loadWeakRetained((a1[4] + 64));
  [v7 removePlaceholderRelationshipEventWithToken:a1[6]];

  (*(a1[7] + 16))();
  v8 = *(a1[8] + 16);

  return v8();
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312(uint64_t a1, char a2, void *a3, void *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = MEMORY[0x277CE8FD8];
  v10 = *MEMORY[0x277CE8FD8];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager checking friend eligibility", buf, 2u);
    }

    v52 = 0;
    v11 = ASValidateEligibilityForOutgoingCompetitionRequest();
    v12 = 0;
    if (v11)
    {
      v13 = [*(a1 + 32) _loadOrCreateCurrentCompetitionListForFriendWithUUID:*(a1 + 40)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
      v47 = [WeakRetained friendWithUUID:*(a1 + 40)];

      v15 = [v8 primaryRelationship];
      v16 = [v15 hasCompletedCompetition];

      if (v16)
      {
        ASLoggingInitialize();
        v17 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "CompetitionManager relationship has completed competition, archiving and copying previous badge style", buf, 2u);
        }

        v18 = [v13 currentCompetition];
        v19 = [v18 preferredVictoryBadgeStyles];

        v20 = [*(a1 + 32) _archivedCompetitionListByMergingCurrentCompetitionList:v13];
      }

      else
      {
        v21 = [*(*(a1 + 32) + 80) archivedCompetitionListForFriendWithUUID:*(a1 + 40)];
        v22 = [v21 competitions];
        v23 = [v22 count];

        ASLoggingInitialize();
        v24 = *v9;
        v25 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v25)
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionManager relationship has archived competitions, copying previous badge style", buf, 2u);
          }

          v26 = [v21 competitions];
          v27 = [v26 lastObject];
          v28 = [v27 preferredVictoryBadgeStyles];
        }

        else
        {
          if (v25)
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionManager relationship doesn't have a previous competition, generating preferred badge styles", buf, 2u);
          }

          v26 = objc_loadWeakRetained((*(a1 + 32) + 48));
          v27 = [v26 friends];
          v28 = ASPreferredCompetitionVictoryBadgeStylesForFriend();
        }

        v19 = v28;

        v20 = 0;
      }

      v46 = v12;
      ASLoggingInitialize();
      v29 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 40);
        v31 = v29;
        v32 = [v8 displayName];
        *buf = 138543618;
        v55 = v30;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_23E5E3000, v31, OS_LOG_TYPE_DEFAULT, "CompetitionManager building competition for friend: %{public}@ - %@", buf, 0x16u);
      }

      v33 = objc_alloc_init(MEMORY[0x277CE90D8]);
      v34 = [MEMORY[0x277CCAD78] UUID];
      [v33 setUUID:v34];

      v35 = ASCompetitionCalculateStartDateComponentsForFriend();
      [v33 setStartDateComponents:v35];

      v36 = ASCompetitionDurationDateComponentsForNewCompetitions();
      [v33 setDurationDateComponents:v36];

      [v33 setPreferredVictoryBadgeStyles:v19];
      [v33 setMaximumNumberOfPointsPerDay:ASCompetitionMaximumPointsPerDayForNewCompetitions()];
      v53 = v33;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      [v13 setCompetitions:v37];

      ASLoggingInitialize();
      v38 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v33;
        _os_log_impl(&dword_23E5E3000, v38, OS_LOG_TYPE_DEFAULT, "CompetitionManager built new competition: %@", buf, 0xCu);
      }

      v39 = *(a1 + 32);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_316;
      v48[3] = &unk_278C4D0E8;
      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v51 = *(a1 + 64);
      v45 = *(a1 + 32);
      v42 = *(&v45 + 1);
      *&v43 = *(a1 + 48);
      *(&v43 + 1) = v41;
      v49 = v45;
      v50 = v43;
      [v39 _saveCurrentCompetitionList:v13 archivedCompetitionList:v20 contact:v8 activity:0 cloudKitGroup:v40 completion:v48];

      v12 = v46;
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_316(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained updateRelationshipWithCompetitionEvent:*(a1 + 64) friendUUID:*(a1 + 40) activity:0 cloudKitGroup:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to accept competition request to friend: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
  v10 = [WeakRetained insertPlaceholderRelationshipEvent:11 friendUUID:v6];

  v11 = objc_loadWeakRetained(&self->_relationshipManager);
  v12 = [v11 insertPlaceholderRelationshipEvent:6 friendUUID:v6];

  v13 = objc_loadWeakRetained(&self->_friendListManager);
  [v13 updateFitnessAppBadgeCount];

  v14 = ASCloudKitGroupUserActionExplicit();
  v15 = objc_loadWeakRetained(&self->_cloudKitManager);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke;
  v22[3] = &unk_278C4D160;
  v22[4] = self;
  v23 = v10;
  v24 = v12;
  v25 = v6;
  v26 = v14;
  v27 = v7;
  v28 = 11;
  v16 = v14;
  v17 = v6;
  v18 = v7;
  v19 = v12;
  v20 = v10;
  [v15 fetchAllChangesWithPriority:2 activity:0 group:v16 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    [WeakRetained removePlaceholderRelationshipEventWithToken:*(a1 + 40)];

    v15 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v15 removePlaceholderRelationshipEventWithToken:*(a1 + 48)];

    v16 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v16 updateFitnessAppBadgeCount];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = *(v6 + 88);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2;
    v17[3] = &unk_278C4D1B0;
    v17[4] = v6;
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v20 = *(a1 + 72);
    v11 = *(a1 + 64);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v18 = v13;
    v19 = v12;
    v21 = *(a1 + 80);
    [v7 performTransaction:v17];
  }
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE8FD8];
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompetitionManager fetch complete, proceeding with accept", buf, 2u);
  }

  ASLoggingInitialize();
  v6 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager unhiding from friend if hidden", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v8 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319;
  v16[3] = &unk_278C4D188;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v20 = v3;
  v21 = *(a1 + 72);
  v12 = *(a1 + 40);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v17 = v14;
  v18 = v13;
  v19 = *(a1 + 64);
  v22 = *(a1 + 80);
  v15 = v3;
  [v9 _queue_setActivityDataVisibleIfNecessaryForContact:v8 completion:v16];
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_320;
  v43[3] = &unk_278C4D0C0;
  v9 = *(a1 + 40);
  v43[4] = *(a1 + 32);
  v44 = v9;
  v45 = *(a1 + 48);
  v46 = *(a1 + 72);
  v47 = *(a1 + 80);
  v10 = MEMORY[0x23EF0EB00](v43);
  ASLoggingInitialize();
  v11 = MEMORY[0x277CE8FD8];
  v12 = *MEMORY[0x277CE8FD8];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312_cold_1();
    }

    (v10)[2](v10, a2, v7);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager checking friend eligibility", buf, 2u);
    }

    v42 = 0;
    v13 = ASValidateEligibilityForAcceptingCompetitionRequest();
    v14 = 0;
    if (v13)
    {
      ASLoggingInitialize();
      v15 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v8 displayName];
        *buf = 138412290;
        v50 = v17;
        _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager found friend with incoming request: %@", buf, 0xCu);
      }

      v18 = [*(*(a1 + 32) + 80) currentRemoteCompetitionForContact:v8];
      if (v18)
      {
        v35 = v14;
        v19 = [*(*(a1 + 32) + 80) currentCompetitionListForFriendWithUUID:*(a1 + 56)];
        v36 = [v19 currentCompetition];
        v20 = [v36 UUID];
        v21 = [v18 UUID];
        v22 = [v20 isEqual:v21];

        if ((v22 & 1) == 0)
        {
          ASLoggingInitialize();
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
          {
            __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319_cold_2();
          }

          v23 = [v18 UUID];
          [v36 setUUID:v23];
        }

        ASLoggingInitialize();
        v24 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating competition start date before accepting", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
        v26 = [WeakRetained friendWithUUID:*(a1 + 56)];

        v27 = [v18 startDateComponents];
        v28 = ASCompetitionCalculateStartDateComponentsForFriendWithProposedStartDate();
        [v36 setStartDateComponents:v28];

        v48 = v36;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        [v19 setCompetitions:v29];

        v30 = *(a1 + 32);
        v31 = *(a1 + 64);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_322;
        v37[3] = &unk_278C4D0E8;
        v32 = v10;
        v33 = *(a1 + 32);
        v40 = v32;
        v37[4] = v33;
        v41 = *(a1 + 88);
        v38 = *(a1 + 56);
        v39 = *(a1 + 64);
        [v30 _saveCurrentCompetitionList:v19 archivedCompetitionList:0 contact:v8 activity:0 cloudKitGroup:v31 completion:v37];

        v14 = v35;
      }

      else
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319_cold_3();
        }

        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:6 userInfo:0];
        (v10)[2](v10, 0, v19);
      }
    }

    else
    {
      (v10)[2](v10, 0, v14);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_320(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 64));
  [WeakRetained removePlaceholderRelationshipEventWithToken:a1[5]];

  v6 = objc_loadWeakRetained((a1[4] + 64));
  [v6 removePlaceholderRelationshipEventWithToken:a1[6]];

  v7 = objc_loadWeakRetained((a1[4] + 48));
  [v7 updateFitnessAppBadgeCount];

  (*(a1[7] + 16))();
  (*(a1[8] + 16))();
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_322(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 56) + 16);

    v9();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_323;
    v10[3] = &unk_278C4BA08;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 56);
    [WeakRetained updateRelationshipWithCompetitionEvent:v5 friendUUID:v6 activity:0 cloudKitGroup:v7 completion:v10];
  }
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_323(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  [WeakRetained requestTemplateUpdate];

  (*(*(a1 + 40) + 16))();
}

- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to ignore competition request from friend: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
  v10 = [WeakRetained insertPlaceholderRelationshipEvent:12 friendUUID:v6];

  v11 = objc_loadWeakRetained(&self->_friendListManager);
  [v11 updateFitnessAppBadgeCount];

  v12 = ASCloudKitGroupUserActionExplicit();
  v13 = objc_loadWeakRetained(&self->_cloudKitManager);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke;
  v19[3] = &unk_278C4D228;
  v19[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v7;
  v24 = 12;
  v21 = v6;
  v14 = v12;
  v15 = v6;
  v16 = v7;
  v17 = v10;
  [v13 fetchAllChangesWithPriority:2 activity:0 group:v14 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    [WeakRetained removePlaceholderRelationshipEventWithToken:*(a1 + 40)];

    v14 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v14 updateFitnessAppBadgeCount];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = *(v6 + 88);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2;
    v15[3] = &unk_278C4D200;
    v15[4] = v6;
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v18 = *(a1 + 72);
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = v10;
    *&v12 = v8;
    *(&v12 + 1) = v9;
    v16 = v12;
    v17 = v11;
    [v7 performTransaction:v15];
  }
}

void __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v6 = [v5 primaryRelationship];
  if ([v6 hasIncomingCompetitionRequest] && !objc_msgSend(v6, "isCompetitionActive"))
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v12 = *(a1 + 72);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_324;
    v15[3] = &unk_278C4D1D8;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    v18 = v3;
    [v11 updateRelationshipWithCompetitionEvent:v12 friendUUID:v13 activity:0 cloudKitGroup:v14 completion:v15];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_cold_1();
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v7 removePlaceholderRelationshipEventWithToken:*(a1 + 48)];

    v8 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v8 updateFitnessAppBadgeCount];

    v9 = *(a1 + 64);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:0 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);

    v3[2](v3);
  }
}

uint64_t __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_324(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 64));
  [WeakRetained removePlaceholderRelationshipEventWithToken:a1[5]];

  v7 = objc_loadWeakRetained((a1[4] + 48));
  [v7 updateFitnessAppBadgeCount];

  (*(a1[6] + 16))();
  v8 = *(a1[7] + 16);

  return v8();
}

- (id)competitionsForFriendWithUUID:(id)a3
{
  competitionStore = self->_competitionStore;
  v5 = a3;
  v6 = [(ASCompetitionStore *)competitionStore archivedCompetitionListForFriendWithUUID:v5];
  v7 = [v6 competitions];
  v8 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:v7];

  v9 = [(ASCompetitionStore *)self->_competitionStore currentCompetitionListForFriendWithUUID:v5];

  v10 = [v9 competitions];
  v11 = [v8 arrayByAddingObjectsFromArray:v10];

  return v11;
}

- (void)activityDataManager:(id)a3 didUpdateTodaySummary:(id)a4 yesterdaySummary:(id)a5
{
  v7 = a4;
  v8 = a5;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ASCompetitionManager_activityDataManager_didUpdateTodaySummary_yesterdaySummary___block_invoke;
  block[3] = &unk_278C4BB98;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(serialQueue, block);
}

void __83__ASCompetitionManager_activityDataManager_didUpdateTodaySummary_yesterdaySummary___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = ASCloudKitGroupUserActionImplicit();
  [v1 _queue_updateScoresWithTodaySummary:v2 yesterdaySummary:v3 activity:0 cloudKitGroup:v4];
}

- (void)cloudKitManager:(id)a3 didBeginUpdatesForFetchWithType:(int64_t)a4
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ASCompetitionManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __72__ASCompetitionManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CompetitionManager preparing for new records", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEB98] set];
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  *(v4 + 120) = v3;

  v6 = [MEMORY[0x277CBEB98] set];
  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  *(v7 + 128) = v6;

  v9 = [MEMORY[0x277CBEB98] set];
  v10 = *(a1 + 32);
  v11 = *(v10 + 136);
  *(v10 + 136) = v9;

  v12 = [MEMORY[0x277CBEB98] set];
  v13 = *(a1 + 32);
  v14 = *(v13 + 144);
  *(v13 + 144) = v12;

  v15 = [MEMORY[0x277CBEB98] set];
  v16 = *(a1 + 32);
  v17 = *(v16 + 168);
  *(v16 + 168) = v15;

  v18 = [MEMORY[0x277CBEB98] set];
  v19 = *(a1 + 32);
  v20 = *(v19 + 176);
  *(v19 + 176) = v18;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v22 = [WeakRetained contacts];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v57;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v56 + 1) + 8 * i);
        v29 = [v28 primaryRelationship];
        v30 = [v28 primaryRemoteRelationship];
        if ([v30 isAwaitingCompetitionResponse])
        {
          v31 = [v30 dateForLatestOutgoingCompetitionRequest];
          HasExpired = ASCompetitionRequestHasExpired();

          if ((HasExpired & 1) == 0)
          {
            v33 = *(*(a1 + 32) + 120);
            v34 = [v28 UUID];
            v35 = [v33 setByAddingObject:v34];
            v36 = *(a1 + 32);
            v37 = *(v36 + 120);
            *(v36 + 120) = v35;
          }
        }

        if ([v29 hasOutgoingCompetitionRequest] && objc_msgSend(v29, "isCompetitionActive"))
        {
          v38 = *(*(a1 + 32) + 128);
          v39 = [v28 UUID];
          v40 = [v38 setByAddingObject:v39];
          v41 = *(a1 + 32);
          v42 = *(v41 + 128);
          *(v41 + 128) = v40;
        }

        if ([v29 hasCompletedCompetition] && objc_msgSend(v30, "hasCompletedCompetition"))
        {
          v43 = *(*(a1 + 32) + 136);
          v44 = [v28 UUID];
          v45 = [v43 setByAddingObject:v44];
          v46 = *(a1 + 32);
          v47 = *(v46 + 136);
          *(v46 + 136) = v45;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v25);
  }

  ASLoggingInitialize();
  v48 = MEMORY[0x277CE8FD8];
  v49 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(*(a1 + 32) + 120);
    *buf = 138412290;
    v61 = v50;
    _os_log_impl(&dword_23E5E3000, v49, OS_LOG_TYPE_DEFAULT, "CompetitionManager existing friends awaiting my response: %@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v51 = *v48;
  if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(*(a1 + 32) + 128);
    *buf = 138412290;
    v61 = v52;
    _os_log_impl(&dword_23E5E3000, v51, OS_LOG_TYPE_DEFAULT, "CompetitionManager existing friends that accepted my request: %@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v53 = *v48;
  if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *(*(a1 + 32) + 136);
    *buf = 138412290;
    v61 = v54;
    _os_log_impl(&dword_23E5E3000, v53, OS_LOG_TYPE_DEFAULT, "CompetitionManager existing friends with completed competitions: %@", buf, 0xCu);
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)cloudKitManager:(id)a3 didReceiveNewCompetitionListsForSelf:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager received new non-remote competitions", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionListsForSelf_moreComing_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4BA30;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(serialQueue, block);
}

void __112__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionListsForSelf_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v59;
    v7 = MEMORY[0x277CE8FD8];
    *&v4 = 134218240;
    v55 = v4;
    v56 = v2;
    do
    {
      v8 = 0;
      do
      {
        if (*v59 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v58 + 1) + 8 * v8);
        v10 = [v9 friendUUID];

        if (v10)
        {
          if ([*(a1 + 40) _shouldSkipLocalLegacyCompetitionList:v9])
          {
            ASLoggingInitialize();
            v11 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionManager received legacy competition to clean up", buf, 2u);
            }

            v12 = [*(*(a1 + 40) + 168) setByAddingObject:v9];
            v13 = *(a1 + 40);
            v14 = *(v13 + 168);
            *(v13 + 168) = v12;
LABEL_17:

            goto LABEL_18;
          }

          if ([*(a1 + 40) _shouldSkipLocalSecureCloudCompetitionList:v9])
          {
            ASLoggingInitialize();
            v16 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager received secure cloud competition to clean up", buf, 2u);
            }

            v17 = [*(*(a1 + 40) + 176) setByAddingObject:v9];
            v18 = *(a1 + 40);
            v14 = *(v18 + 176);
            *(v18 + 176) = v17;
            goto LABEL_17;
          }

          v19 = *(*(a1 + 40) + 144);
          v20 = [v9 friendUUID];
          v21 = [v19 setByAddingObject:v20];
          v22 = *(a1 + 40);
          v23 = *(v22 + 144);
          *(v22 + 144) = v21;

          if (![v9 type])
          {
            v24 = *(*(a1 + 40) + 80);
            v25 = [v9 friendUUID];
            v26 = [v24 currentCompetitionListForFriendWithUUID:v25];

            v57 = v26;
            v27 = [v26 currentCompetition];
            v28 = [v9 currentCompetition];
            v29 = [v27 UUID];
            [v28 UUID];
            v31 = v30 = v7;
            v32 = [v29 isEqual:v31];

            v7 = v30;
            if (v32)
            {
              ASLoggingInitialize();
              v33 = *v30;
              if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v63 = v27;
                _os_log_debug_impl(&dword_23E5E3000, v33, OS_LOG_TYPE_DEBUG, "CompetitionManager existingCurrentCompetition=%@", buf, 0xCu);
              }

              ASLoggingInitialize();
              v34 = *v30;
              if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v63 = v28;
                _os_log_debug_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEBUG, "CompetitionManager updatedCurrentCompetition=%@", buf, 0xCu);
              }

              v35 = [v27 myTotalScore];
              if (v35 > [v28 myTotalScore])
              {
                ASLoggingInitialize();
                v36 = *v30;
                if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = v36;
                  v38 = [v27 myTotalScore];
                  v39 = [v28 myTotalScore];
                  *buf = v55;
                  v63 = v38;
                  v64 = 2048;
                  v65 = v39;
                  _os_log_impl(&dword_23E5E3000, v37, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view of competition has a higher score, keeping the current local value (%lu vs %lu)", buf, 0x16u);
                }

                v40 = [v27 scores];
                [v28 setScores:v40];
              }

              v41 = [v27 opponentTotalScore];
              if (v41 > [v28 opponentTotalScore])
              {
                ASLoggingInitialize();
                v42 = *v30;
                if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = v42;
                  v44 = [v27 opponentTotalScore];
                  v45 = [v28 opponentTotalScore];
                  *buf = v55;
                  v63 = v44;
                  v64 = 2048;
                  v65 = v45;
                  _os_log_impl(&dword_23E5E3000, v43, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view of competition has a higher opponent score, keeping the current local value (%lu vs %lu)", buf, 0x16u);
                }

                v46 = [v27 opponentScores];
                [v28 setOpponentScores:v46];
              }
            }

            v2 = v56;
          }
        }

        else
        {
          ASLoggingInitialize();
          v15 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v63 = v9;
            _os_log_error_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_ERROR, "CompetitionManager found competition list missing a friendUUID: %@", buf, 0xCu);
          }
        }

LABEL_18:
        ++v8;
      }

      while (v5 != v8);
      v47 = [v2 countByEnumeratingWithState:&v58 objects:v66 count:16];
      v5 = v47;
    }

    while (v47);
  }

  v48 = *(*(a1 + 40) + 168);
  v49 = *(a1 + 32);
  v50 = [v48 allObjects];
  v51 = [v49 arrayByExcludingObjectsInArray:v50];

  v52 = [*(*(a1 + 40) + 176) allObjects];
  v53 = [v51 arrayByExcludingObjectsInArray:v52];

  [*(*(a1 + 40) + 80) saveCompetitionLists:v53];
  (*(*(a1 + 48) + 16))();

  v54 = *MEMORY[0x277D85DE8];
}

- (void)cloudKitManager:(id)a3 didReceiveNewCompetitionLists:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6
{
  v9 = a4;
  v10 = a6;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionManager received new remote competitions", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke;
  v15[3] = &unk_278C4B9C0;
  v16 = v9;
  v17 = self;
  v19 = a5;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  dispatch_async(serialQueue, v15);
}

uint64_t __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke_2;
        v24[3] = &unk_278C4B6B8;
        v24[4] = v7;
        v9 = [WeakRetained contactMatchingCriteriaBlock:v24];

        if (v9)
        {
          if ([*(a1 + 40) _shouldSkipRemoteLegacyCompetitionList:v7 contact:v9])
          {
            ASLoggingInitialize();
            v10 = *MEMORY[0x277CE8FD8];
            if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager skipping remote legacy competition list", buf, 2u);
            }
          }

          else
          {
            [*(a1 + 40) _queue_handleNewRemoteCompetitionList:v7 contact:v9];
            v12 = *(*(a1 + 40) + 144);
            v13 = [v9 UUID];
            v14 = [v12 setByAddingObject:v13];
            v15 = *(a1 + 40);
            v16 = *(v15 + 144);
            *(v15 + 144) = v14;
          }
        }

        else
        {
          ASLoggingInitialize();
          v11 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v7;
            _os_log_error_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_ERROR, "CompetitionManager couldn't find a matching friend for this remote competition list: %@", buf, 0xCu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v17 = *(a1 + 40);
    v18 = [v17[18] copy];
    [v17 _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v18];

    v19 = [MEMORY[0x277CBEB98] set];
    v20 = *(a1 + 40);
    v21 = *(v20 + 144);
    *(v20 + 144) = v19;
  }

  result = (*(*(a1 + 48) + 16))();
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 primaryRemoteRelationship];
  v4 = [v3 UUID];
  v5 = [*(a1 + 32) friendUUID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)cloudKitManager:(id)a3 didEndUpdatesForFetchWithType:(int64_t)a4 activity:(id)a5 cloudKitGroup:(id)a6 changesProcessedHandler:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a3;
  ASLoggingInitialize();
  v15 = MEMORY[0x277CE8FD8];
  v16 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager CK fetch complete", buf, 2u);
  }

  v17 = [v14 hasCompletedFirstFetch];

  if ((v17 & 1) == 0)
  {
    ASLoggingInitialize();
    v18 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "CompetitionManager CK fetch is the first on this device, avoid notifying about already-processed changes", buf, 2u);
    }
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4D250;
  v27 = v17 ^ 1;
  block[4] = self;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  dispatch_async(serialQueue, block);
}

void __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CompetitionManager checking each friend for updated competition state", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v4 = [WeakRetained contacts];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v4;
  v74 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (!v74)
  {
    v71 = 0;
    v70 = 0;
    goto LABEL_60;
  }

  v71 = 0;
  v70 = 0;
  v6 = *v79;
  *&v5 = 138412290;
  v69 = v5;
  v72 = *v79;
  do
  {
    for (i = 0; i != v74; ++i)
    {
      if (*v79 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v78 + 1) + 8 * i);
      v9 = [v8 primaryRelationship];
      v10 = [v8 primaryRemoteRelationship];
      if ([v10 isAwaitingCompetitionResponse])
      {
        v11 = [v10 dateForLatestOutgoingCompetitionRequest];
        HasExpired = ASCompetitionRequestHasExpired();

        if ((HasExpired & 1) == 0)
        {
          v13 = [v9 hasIncomingCompetitionRequest];
          v14 = ASIgnoredMostRecentCompetitionRequestFromContact();
          v15 = *(*(a1 + 32) + 120);
          v16 = [v8 UUID];
          if ([v15 containsObject:v16])
          {
            v17 = 1;
          }

          else
          {
            v17 = *(a1 + 64);
          }

          ASLoggingInitialize();
          v18 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = [v8 displayName];
            *buf = 138413058;
            v83 = v20;
            v84 = 1024;
            v85 = v13;
            v86 = 1024;
            v87 = v14;
            v88 = 1024;
            v89 = v17 & 1;
            _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "CompetitionManager [%@] is awaiting response from me, alreadyProcessed=%d alreadyIgnored=%d alreadyNotified=%d", buf, 0x1Eu);
          }

          if (((ASPairedDeviceSupportsCompetitions() | v17) & 1) == 0)
          {
            ASLoggingInitialize();
            v21 = *MEMORY[0x277CE8FD8];
            v6 = v72;
            if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
            {
              __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_cold_1(&v76, v77, v21);
            }

            v22 = objc_loadWeakRetained((*(a1 + 32) + 32));
            [v22 showGizmoVersionTooLowForCompetitionRequestFrom:v8];
            goto LABEL_24;
          }

          v6 = v72;
          if (((v13 | v14) & 1) == 0)
          {
            v23 = *(*(a1 + 32) + 120);
            v24 = MEMORY[0x277CBEB98];
            v25 = [v8 UUID];
            v26 = [v24 setWithObject:v25];
            v27 = [v23 hk_minus:v26];
            v28 = *(a1 + 32);
            v29 = *(v28 + 120);
            *(v28 + 120) = v27;

LABEL_23:
            v30 = *(a1 + 32);
            v22 = [v8 UUID];
            [v30 _handleCompetitionRequestFromFriendWithUUID:v22 activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
            v70 = 1;
LABEL_24:

            goto LABEL_25;
          }

          if ((v17 & 1) == 0)
          {
            goto LABEL_23;
          }

          v70 = 1;
        }
      }

LABEL_25:
      if ([v9 hasOutgoingCompetitionRequest] && objc_msgSend(v10, "isCompetitionActive"))
      {
        v31 = [v9 isAwaitingCompetitionResponse];
        v32 = *(*(a1 + 32) + 128);
        v33 = [v8 UUID];
        if ([v32 containsObject:v33])
        {
          v34 = 1;
        }

        else
        {
          v34 = *(a1 + 64);
        }

        ASLoggingInitialize();
        v35 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
        {
          v36 = v35;
          v37 = [v8 displayName];
          *buf = 138412802;
          v83 = v37;
          v84 = 1024;
          v85 = v31 ^ 1;
          v6 = v72;
          v86 = 1024;
          v87 = v34 & 1;
          _os_log_impl(&dword_23E5E3000, v36, OS_LOG_TYPE_DEFAULT, "CompetitionManager [%@] accepted my request, alreadyProcessed=%d alreadyNotified=%d", buf, 0x18u);
        }

        if (v31)
        {
          v38 = *(*(a1 + 32) + 128);
          v39 = MEMORY[0x277CBEB98];
          v40 = [v8 UUID];
          v41 = [v39 setWithObject:v40];
          v42 = [v38 hk_minus:v41];
          v43 = *(a1 + 32);
          v44 = *(v43 + 128);
          *(v43 + 128) = v42;

          v6 = v72;
          goto LABEL_35;
        }

        if ((v34 & 1) == 0)
        {
LABEL_35:
          v45 = *(a1 + 32);
          v46 = [v8 UUID];
          [v45 _handleAcceptedCompetitionFromFriendWithUUID:v46 activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
        }

        BYTE4(v71) = (v31 | v34) ^ 1;
      }

      if ([v9 hasIncomingCompetitionRequest] && objc_msgSend(v10, "isCompetitionActive") && (objc_msgSend(v9, "isAwaitingCompetitionResponse") & 1) == 0)
      {
        ASLoggingInitialize();
        v47 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
        {
          v48 = v47;
          v49 = [v8 displayName];
          *buf = v69;
          v83 = v49;
          _os_log_impl(&dword_23E5E3000, v48, OS_LOG_TYPE_DEFAULT, "CompetitionManager accepted [%@] request, requesting template update", buf, 0xCu);
        }

        BYTE4(v71) = 1;
      }

      if ([v9 hasCompletedCompetition] && objc_msgSend(v10, "hasCompletedCompetition"))
      {
        v50 = *(*(a1 + 32) + 136);
        v51 = [v8 UUID];
        if ([v50 containsObject:v51])
        {
          v52 = 1;
        }

        else
        {
          v52 = *(a1 + 64);
        }

        ASLoggingInitialize();
        v53 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
          v55 = [v8 displayName];
          *buf = 138412546;
          v83 = v55;
          v84 = 1024;
          v85 = v52 & 1;
          _os_log_impl(&dword_23E5E3000, v54, OS_LOG_TYPE_DEFAULT, "CompetitionManager [%@] competition complete, alreadyNotified=%d", buf, 0x12u);
        }

        if ((v52 & 1) == 0)
        {
          v56 = *(a1 + 32);
          v57 = *(v56 + 96);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_327;
          block[3] = &unk_278C4B250;
          block[4] = v56;
          block[5] = v8;
          dispatch_async(v57, block);
        }

        LOBYTE(v71) = 1;
      }

      if (([v9 isCompetitionActive] & 1) != 0 || ASIgnoredMostRecentCompetitionRequestFromContact())
      {
        v58 = objc_loadWeakRetained((*(a1 + 32) + 32));
        v59 = [v8 UUID];
        [v58 withdrawCompetitionRequestNotificationForFriendWithUUID:v59];
      }

      v60 = *(a1 + 32);
      v61 = [v8 UUID];
      [v60 _queue_completeCompetitionIfNecessaryForFriendWithUUID:v61 activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
    }

    v74 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
  }

  while (v74);
LABEL_60:

  [*(a1 + 32) _queue_cleanUpLegacyCompetitionLists:*(*(a1 + 32) + 168) activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
  [*(a1 + 32) _queue_cleanUpSecureCloudCompetitionLists:*(*(a1 + 32) + 176) activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
  v62 = *(a1 + 32);
  v63 = [v62[18] copy];
  [v62 _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v63];

  if (v70)
  {
    v64 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v64 updateFitnessAppBadgeCount];
  }

  if ((v71 & 0x100000000) != 0)
  {
    v65 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v65 requestTemplateUpdate];
  }

  if (v71)
  {
    v66 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v66 requestEarnedInstanceUpdate];
  }

  v67 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v67 removeAllUnusedTemplates];

  (*(*(a1 + 56) + 16))();
  v68 = *MEMORY[0x277D85DE8];
}

void __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_327(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) UUID];
  [v1 _queue_showCompetitionEndedWithFriendWithUUID:v2];
}

- (id)recordsToSave
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = objc_alloc_init(MEMORY[0x277CBEB98]);
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ASCompetitionManager_recordsToSave__block_invoke;
  v6[3] = &unk_278C4BC10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__ASCompetitionManager_recordsToSave__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_legacyCompetitionListsToSave];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ASCompetitionManager_recordsToSave__block_invoke_2;
  v6[3] = &unk_278C4D278;
  v6[4] = *(a1 + 32);
  v3 = [v2 hk_map:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __37__ASCompetitionManager_recordsToSave__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained contactWithUUID:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) recordForCurrentCompetitionList:v3 contact:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)periodicUpdateManager:(id)a3 didSaveRecords:(id)a4 activity:(id)a5
{
  v7 = a4;
  v8 = a5;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ASCompetitionManager_periodicUpdateManager_didSaveRecords_activity___block_invoke;
  block[3] = &unk_278C4BB98;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(serialQueue, block);
}

void __70__ASCompetitionManager_periodicUpdateManager_didSaveRecords_activity___block_invoke(uint64_t a1)
{
  v2 = ASCloudKitGroupCoreDuetTriggered();
  [*(a1 + 32) _queue_handleSavedRecords:*(a1 + 40) activity:*(a1 + 48) group:v2];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FD8];
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    LODWORD(v14) = v4;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "CompetitionManager observed protected data availability: %{BOOL}d", &v13, 8u);
  }

  v8 = [(ASCompetitionManager *)self _scoreCapCelebrationAnchor];
  scoreCapCelebrationAnchor = self->_scoreCapCelebrationAnchor;
  self->_scoreCapCelebrationAnchor = v8;

  ASLoggingInitialize();
  v10 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_scoreCapCelebrationAnchor;
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager found protected data available, setting current score cap celebration anchor to %@", &v13, 0xCu);
  }

  [(ASCompetitionManager *)self _loadCachedCompetitionsAndNotifyObservers];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompetitionRequestFromFriendWithUUID:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_deviceParticipatesInAutomaticCompetitionManagement)
  {
    transactionQueue = self->_transactionQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke;
    v13[3] = &unk_278C4D2F0;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v13];
  }

  else
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager not handling competition request, device does not participate in competition management", buf, 2u);
    }
  }
}

void __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FD8];
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [v5 displayName];
    *buf = 138543618;
    v59 = v8;
    v60 = 2112;
    v61 = v10;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionManager handling competition request from friend: %{public}@ - %@", buf, 0x16u);
  }

  v11 = [v5 primaryRelationship];
  v12 = [v5 primaryRemoteRelationship];
  if (![v11 hasOutgoingCompetitionRequest] || (objc_msgSend(v12, "isCompetitionActive") & 1) != 0 || (objc_msgSend(v12, "hasIgnoredCompetitionRequest") & 1) != 0 || (objc_msgSend(v11, "dateForLatestOutgoingCompetitionRequest"), v13 = objc_claimAutoreleasedReturnValue(), HasExpired = ASCompetitionRequestHasExpired(), v13, (HasExpired & 1) != 0))
  {
    v15 = [*(a1 + 32) _loadOrCreateCurrentCompetitionListForFriendWithUUID:*(a1 + 40)];
    v16 = [v5 primaryRelationship];
    v17 = [v16 hasIncomingCompetitionRequest];

    if (v17)
    {
      ASLoggingInitialize();
      v18 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "CompetitionManager friend is not in awaiting response state", buf, 2u);
      }

      ASLoggingInitialize();
      v19 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "CompetitionManager probably from another device saving to CK sooner - just notify", buf, 2u);
      }

      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = [v15 currentCompetition];
      [v21 _queue_showCompetitionRequestFromFriendWithUUID:v20 competition:v22];

LABEL_13:
      v3[2](v3);
      goto LABEL_37;
    }

    if ((ASValidateEligibilityForIncomingCompetitionRequest() & 1) == 0)
    {
      ASLoggingInitialize();
      v27 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "CompetitionManager incoming request failed validation, aborting", buf, 2u);
      }

      goto LABEL_13;
    }

    v23 = [*(*(a1 + 32) + 80) currentRemoteCompetitionForContact:v5];
    v24 = v23;
    if (v23)
    {
      v49 = v23;
      v25 = [v5 primaryRelationship];
      v26 = [v25 hasCompletedCompetition];

      if (v26)
      {
        v48 = [*(a1 + 32) _archivedCompetitionListByMergingCurrentCompetitionList:v15];
      }

      else
      {
        v48 = 0;
      }

      ASLoggingInitialize();
      v28 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v49;
        _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "CompetitionManager found remote competition: %@", buf, 0xCu);
      }

      ASLoggingInitialize();
      v29 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "CompetitionManager building local view of competition", buf, 2u);
      }

      v30 = [*(a1 + 32) _localCompetitionForRemoteCompetition:v49 friendUUID:*(a1 + 40)];
      v57 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [v15 setCompetitions:v31];

      v32 = *(a1 + 32);
      v33 = *(a1 + 48);
      v47 = *(a1 + 56);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_330;
      v50[3] = &unk_278C4D2C8;
      v54 = v3;
      v46 = *(a1 + 32);
      v34 = *(&v46 + 1);
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      *&v37 = v35;
      v24 = v49;
      *(&v37 + 1) = v36;
      v51 = v46;
      v52 = v37;
      v53 = v30;
      v38 = v30;
      [v32 _saveCurrentCompetitionList:v15 archivedCompetitionList:v48 contact:v5 activity:v33 cloudKitGroup:v47 completion:v50];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_cold_1();
      }

      v3[2](v3);
    }
  }

  else
  {
    ASLoggingInitialize();
    v39 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v39, OS_LOG_TYPE_DEFAULT, "CompetitionManager already sent a pending competition request to this friend", buf, 2u);
    }

    ASLoggingInitialize();
    v40 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v40, OS_LOG_TYPE_DEFAULT, "CompetitionManager this is likely due to simultaneous requests from each side", buf, 2u);
    }

    ASLoggingInitialize();
    v41 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to auto-accept this request", buf, 2u);
    }

    v42 = *(a1 + 32);
    v44 = *(a1 + 48);
    v43 = *(a1 + 56);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_329;
    v55[3] = &unk_278C4C178;
    v56 = v3;
    [v42 _queue_autoAcceptCompetitionRequestFromContact:v5 activity:v44 cloudKitGroup:v43 completion:v55];
    v15 = v56;
  }

LABEL_37:

  v45 = *MEMORY[0x277D85DE8];
}

void __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_330(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v11 = *(a1 + 72);
    v12 = *(*(a1 + 72) + 16);

    v12();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2;
    v14[3] = &unk_278C4D2A0;
    v8 = *(a1 + 72);
    v13 = *(a1 + 32);
    v9 = *(&v13 + 1);
    *&v10 = *(a1 + 64);
    *(&v10 + 1) = v8;
    v15 = v13;
    v16 = v10;
    [WeakRetained updateRelationshipWithCompetitionEvent:105 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v14];
  }
}

void __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  (*(*(a1 + 56) + 16))();
  if (!a3 && a2)
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Successfully handled incoming competition request, notifying via BB", buf, 2u);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_331;
    block[3] = &unk_278C4BB98;
    block[4] = v8;
    v11 = v7;
    v12 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

- (void)_handleAcceptedCompetitionFromFriendWithUUID:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_deviceParticipatesInAutomaticCompetitionManagement)
  {
    transactionQueue = self->_transactionQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke;
    v13[3] = &unk_278C4D2F0;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v13];
  }

  else
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager not handling accepted competition, device does not participate in competition management", buf, 2u);
    }
  }
}

void __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke(id *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1[4] + 5);
  v5 = [WeakRetained contactWithUUID:a1[5]];

  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FD8];
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[5];
    v9 = v7;
    v10 = [v5 displayName];
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionManager handling accepted competition from friend: %{public}@ - %@", buf, 0x16u);
  }

  v11 = [*(a1[4] + 10) currentCompetitionListForFriendWithUUID:a1[5]];
  v12 = [v11 currentCompetition];
  if (v12)
  {
    v13 = [v5 primaryRelationship];
    v14 = [v13 isCompetitionActive];

    if (v14)
    {
      ASLoggingInitialize();
      v15 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view has already acknowledged remote acceptance - just notify", buf, 2u);
      }

      v3[2](v3);
      [a1[4] _queue_showCompetitionAcceptedForFriendWithUUID:a1[5] competition:v12];
    }

    else
    {
      v16 = [*(a1[4] + 10) currentRemoteCompetitionForContact:v5];
      ASLoggingInitialize();
      v17 = *v6;
      v18 = *v6;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v16;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "CompetitionManager found remote competition: %@", buf, 0xCu);
        }

        ASLoggingInitialize();
        v19 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating local view of competition", buf, 2u);
        }

        v20 = [v16 startDateComponents];
        [v12 setStartDateComponents:v20];

        v21 = [v16 durationDateComponents];
        [v12 setDurationDateComponents:v21];

        v22 = [v16 preferredVictoryBadgeStyles];
        [v12 setPreferredVictoryBadgeStyles:v22];

        [v12 setMaximumNumberOfPointsPerDay:{objc_msgSend(v16, "maximumNumberOfPointsPerDay")}];
        v37 = v12;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [v11 setCompetitions:v23];

        v24 = a1[4];
        v25 = a1[6];
        v26 = a1[7];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_332;
        v30[3] = &unk_278C4D318;
        v27 = v3;
        v28 = a1[4];
        v36 = v27;
        v30[4] = v28;
        v31 = v5;
        v32 = a1[6];
        v33 = a1[7];
        v34 = a1[5];
        v35 = v12;
        [v24 _saveCurrentCompetitionList:v11 archivedCompetitionList:0 contact:v31 activity:v25 cloudKitGroup:v26 completion:v30];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_cold_1();
        }

        v3[2](v3);
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_cold_2();
    }

    v3[2](v3);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_332(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v10 = *(a1 + 80);
    v11 = *(*(a1 + 80) + 16);

    v11();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = [*(a1 + 40) UUID];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2;
    v12[3] = &unk_278C4D2A0;
    v8 = *(a1 + 80);
    v9 = *(a1 + 32);
    v15 = v8;
    v12[4] = v9;
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    [WeakRetained updateRelationshipWithCompetitionEvent:106 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v12];
  }
}

void __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3 && a2)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Successfully acknowledged accepted competition request, notifying via BB", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained requestTemplateUpdate];

    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_333;
    block[3] = &unk_278C4BB98;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }
}

- (void)_saveCurrentCompetitionList:(id)a3 archivedCompetitionList:(id)a4 contact:(id)a5 activity:(id)a6 cloudKitGroup:(id)a7 completion:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke;
  v28 = &unk_278C4D340;
  v29 = self;
  v20 = v19;
  v30 = v20;
  v21 = MEMORY[0x23EF0EB00](&v25);
  if ([v16 cloudType])
  {
    if (ASSecureCloudEnabled() && [v16 cloudType] == 1)
    {
      [(ASCompetitionManager *)self _saveSecureCloudCompetitionList:v14 archivedCompetitionList:v15 contact:v16 cloudKitGroup:v18 completion:v21];
    }

    else
    {
      ASLoggingInitialize();
      v22 = *MEMORY[0x277CE8FD8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v16;
        _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Invalid cloud type to save competition list for contact %@", buf, 0xCu);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:9 userInfo:0];
      (*(v20 + 2))(v20, 0, v23);
    }
  }

  else
  {
    [(ASCompetitionManager *)self _saveLegacyCompetitionList:v14 archivedCompetitionList:v15 contact:v16 activity:v17 cloudKitGroup:v18 completion:v21];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke_2;
  block[3] = &unk_278C4D250;
  v19 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_saveSecureCloudCompetitionList:(id)a3 archivedCompetitionList:(id)a4 contact:(id)a5 cloudKitGroup:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
  [WeakRetained competitionManager:self saveCurrentCompetitionList:v16 archivedCompetitionList:v15 contact:v14 group:v13 completion:v12];
}

- (void)_saveLegacyCompetitionList:(id)a3 archivedCompetitionList:(id)a4 contact:(id)a5 activity:(id)a6 cloudKitGroup:(id)a7 completion:(id)a8
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  ASLoggingInitialize();
  v20 = MEMORY[0x277CE8FD8];
  v21 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v14;
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "CompetitionManager saving competition lists in CloudKit, current: %@ archived: %@", buf, 0x16u);
  }

  v22 = [v14 systemFieldsOnlyRecord];

  if (!v22)
  {
    ASLoggingInitialize();
    v23 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "CompetitionManager current competition list doesn't exist yet, creating", buf, 2u);
    }
  }

  v24 = [(ASCompetitionManager *)self recordForCurrentCompetitionList:v14 contact:v16];
  v37 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  if (v15)
  {
    v36 = v18;
    v26 = v17;
    v27 = self;
    v28 = v16;
    v29 = [v15 systemFieldsOnlyRecord];

    if (!v29)
    {
      ASLoggingInitialize();
      v30 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v30, OS_LOG_TYPE_DEFAULT, "CompetitionManager archived competition list doesn't exist yet, creating", buf, 2u);
      }
    }

    v31 = +[ASCloudKitManager relationshipZone];
    v32 = [v15 recordWithZoneID:v31 recordEncryptionType:0];

    v33 = [v25 arrayByAddingObject:v32];

    v25 = v33;
    v16 = v28;
    self = v27;
    v17 = v26;
    v18 = v36;
  }

  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  [WeakRetained saveRecordsIntoPrivateDatabase:v25 priority:2 activity:v19 group:v18 completion:v17];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateScoresWithTodaySummary:(id)a3 yesterdaySummary:(id)a4 activity:(id)a5 cloudKitGroup:(id)a6
{
  v108 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v84 = a5;
  v83 = a6;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_hasFetchedProtectedData)
  {
    v12 = [(ASCompetitionManager *)self _contactsWithActiveCompetitions];
    v13 = [MEMORY[0x277CBEB98] set];
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 134218240;
      v105 = [v12 count];
      v106 = 2048;
      v107 = [v10 _activitySummaryIndex];
      _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating scores for competitions with %lu friends, summaryIndex=%lld", buf, 0x16u);
    }

    v88 = v13;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v12;
    v86 = self;
    v91 = [obj countByEnumeratingWithState:&v99 objects:v103 count:16];
    if (v91)
    {
      v82 = v94;
      v87 = MEMORY[0x277CBEBF8];
      v90 = *v100;
      *&v16 = 138543618;
      v81 = v16;
      v17 = MEMORY[0x277CE8FD8];
      do
      {
        for (i = 0; i != v91; ++i)
        {
          if (*v100 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v99 + 1) + 8 * i);
          competitionStore = self->_competitionStore;
          v21 = [v19 UUID];
          v22 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:v21];

          v23 = [v22 currentCompetition];
          ASLoggingInitialize();
          v24 = *v17;
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [v19 displayName];
            *buf = 138412546;
            v105 = v26;
            v106 = 2112;
            v107 = v23;
            _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Current competition for friend %@ is %@", buf, 0x16u);
          }

          if (v23)
          {
            if (ASCompetitionNeedsScoreUpdateForSummary())
            {
              ASLoggingInitialize();
              v27 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                v29 = [v19 UUID];
                *buf = 138412546;
                v105 = v29;
                v106 = 2112;
                v107 = v23;
                _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating competition score for friend with UUID:%@ with current competition: %@", buf, 0x16u);
              }

              v30 = [v23 myTotalScore];
              v31 = [v23 currentCacheIndex];
              v32 = ASCompetitionCalculateUpdatedScores();
              [v23 setScores:v32];

              [v23 setCurrentCacheIndex:{objc_msgSend(v10, "_activitySummaryIndex")}];
              ASLoggingInitialize();
              v33 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                [v23 scores];
                v85 = v30;
                v35 = v31;
                v36 = v11;
                v38 = v37 = v10;
                v39 = ASFormattedSequence();
                v40 = [v23 myTotalScore];
                *buf = 138412546;
                v105 = v39;
                v106 = 2048;
                v107 = v40;
                _os_log_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEFAULT, "CompetitionManager calculated new scores: %@(=%lu)", buf, 0x16u);

                v10 = v37;
                v11 = v36;
                v31 = v35;
                v30 = v85;

                v17 = MEMORY[0x277CE8FD8];
              }

              if ([v23 myTotalScore] == v30 && objc_msgSend(v23, "currentCacheIndex") == v31)
              {
                ASLoggingInitialize();
                v41 = *v17;
                self = v86;
                if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEFAULT, "CompetitionManager no change in scores, not persisting or notifying", buf, 2u);
                }
              }

              else
              {
                v46 = [v87 arrayByAddingObject:v22];

                v47 = [v19 UUID];
                v48 = [v88 setByAddingObject:v47];

                v87 = v46;
                v17 = MEMORY[0x277CE8FD8];
                v88 = v48;
                self = v86;
              }
            }

            else if ([v10 isPaused])
            {
              [v23 setCurrentCacheIndex:{objc_msgSend(v10, "_activitySummaryIndex")}];
            }

            if (self->_deviceParticipatesInAutomaticCompetitionManagement && [v23 hasCalculatedFinalScore] && (objc_msgSend(v23, "hasPushedFinalScore") & 1) == 0)
            {
              ASLoggingInitialize();
              v49 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E5E3000, v49, OS_LOG_TYPE_DEFAULT, "CompetitionManager competition is ready to push final cache index, pushing immediately", buf, 2u);
              }

              transactionQueue = self->_transactionQueue;
              v93[0] = MEMORY[0x277D85DD0];
              v93[1] = 3221225472;
              v94[0] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke;
              v94[1] = &unk_278C4D390;
              v94[2] = self;
              v95 = v22;
              v96 = v19;
              v97 = v84;
              v98 = v83;
              [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v93];

              v17 = MEMORY[0x277CE8FD8];
            }
          }

          else
          {
            ASLoggingInitialize();
            v42 = *v17;
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
            {
              v43 = v42;
              v44 = [v19 UUID];
              v45 = [v19 displayName];
              *buf = v81;
              v105 = v44;
              v106 = 2112;
              v107 = v45;
              _os_log_error_impl(&dword_23E5E3000, v43, OS_LOG_TYPE_ERROR, "Competition is active with friend, but couldn't find a current competition: %{public}@ - %@", buf, 0x16u);
            }
          }
        }

        v91 = [obj countByEnumeratingWithState:&v99 objects:v103 count:16];
      }

      while (v91);
    }

    else
    {
      v87 = MEMORY[0x277CBEBF8];
    }

    v52 = v87;
    v53 = v88;
    if ([v87 count])
    {
      if (self->_deviceParticipatesInAutomaticCompetitionManagement)
      {
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_4;
        v92[3] = &unk_278C4D3B8;
        v92[4] = self;
        v54 = [obj hk_map:v92];
        v55 = [v54 hk_filter:&__block_literal_global_16];
        if ([v55 count])
        {
          v56 = self;
          v57 = v11;
          v58 = v10;
          v59 = [v55 anyObject];
          v60 = v56->_competitionStore;
          v61 = [v59 UUID];
          v62 = [(ASCompetitionStore *)v60 currentCompetitionListForFriendWithUUID:v61];

          v63 = [v62 currentCompetition];
          ASLoggingInitialize();
          v64 = MEMORY[0x277CE8FD8];
          v65 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            v66 = v65;
            v67 = [v59 UUID];
            *buf = 138412546;
            v105 = v67;
            v106 = 2112;
            v107 = v63;
            _os_log_impl(&dword_23E5E3000, v66, OS_LOG_TYPE_DEFAULT, "CompetitionManager is evaluating whether score cap has been hit with friend with UUID: %@, competition: %@", buf, 0x16u);

            v64 = MEMORY[0x277CE8FD8];
          }

          ASLoggingInitialize();
          v68 = *v64;
          if (os_log_type_enabled(*v64, OS_LOG_TYPE_DEFAULT))
          {
            scoreCapCelebrationAnchor = v86->_scoreCapCelebrationAnchor;
            *buf = 138412290;
            v105 = scoreCapCelebrationAnchor;
            _os_log_impl(&dword_23E5E3000, v68, OS_LOG_TYPE_DEFAULT, "CompetitionManager current score cap celebration anchor is %@", buf, 0xCu);
          }

          v70 = [(NSNumber *)v86->_scoreCapCelebrationAnchor integerValue];
          if (v70 >= [v63 currentCacheIndex])
          {
            ASLoggingInitialize();
            v79 = *MEMORY[0x277CE8FD8];
            if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v79, OS_LOG_TYPE_DEFAULT, "CompetitionManager score cap celebration has already been alerted about today", buf, 2u);
            }
          }

          else
          {
            [v63 currentCacheIndex];
            v71 = ASCompetitionDailyScoreForParticipantWithCacheIndex();
            v72 = [v63 maximumNumberOfPointsPerDay];
            v73 = MEMORY[0x277CE8FD8];
            if (v71 >= v72)
            {
              ASLoggingInitialize();
              v74 = *v73;
              if (os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
              {
                v75 = v74;
                v76 = [v63 maximumNumberOfPointsPerDay];
                *buf = 134218240;
                v105 = v71;
                v106 = 2048;
                v107 = v76;
                _os_log_impl(&dword_23E5E3000, v75, OS_LOG_TYPE_DEFAULT, "CompetitionManager today score of %lu is greater than score cap of %lu, posting score cap celebration", buf, 0x16u);
              }

              [(ASCompetitionManager *)v86 _queue_showScoreCapCelebrationForFriendsWithCappedInProgressCompetitions:v55];
              v77 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v63, "currentCacheIndex")}];
              [(ASCompetitionManager *)v86 _setScoreCapCelebrationAnchor:v77];
            }
          }

          v10 = v58;
          v11 = v57;
          self = v86;
          v52 = v87;
          v53 = v88;
        }

        else
        {
          ASLoggingInitialize();
          v78 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v78, OS_LOG_TYPE_DEFAULT, "CompetitionManager not posting score cap celebration, couldn't find any friends with active competitions", buf, 2u);
          }
        }
      }

      [(ASCompetitionStore *)self->_competitionStore saveCompetitionLists:v52];
      [(ASCompetitionManager *)self _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v53];
    }
  }

  else
  {
    ASLoggingInitialize();
    v51 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v51, OS_LOG_TYPE_DEFAULT, "CompetitionManager not updating scores, protected data not yet fetched", buf, 2u);
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

void __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_2;
  v10[3] = &unk_278C4D368;
  v10[4] = v4;
  v10[5] = v7;
  v11 = v6;
  v12 = a1[8];
  v13 = v3;
  v9 = v3;
  [v4 _saveCurrentCompetitionList:v5 archivedCompetitionList:0 contact:v7 activity:v11 cloudKitGroup:v8 completion:v10];
}

void __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v8 = *(a1 + 64);
    v9 = *(*(a1 + 64) + 16);

    v9();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = [*(a1 + 40) UUID];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_3;
    v10[3] = &unk_278C4C178;
    v11 = *(a1 + 64);
    [WeakRetained updateRelationshipWithCompetitionEvent:13 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v10];
  }
}

id __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v5 = [v3 UUID];

  v6 = [WeakRetained friendWithUUID:v5];

  return v6;
}

BOOL __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 currentCompetition];
  v4 = [v3 stage];

  v5 = [v2 currentCompetition];

  v6 = [v5 maximumNumberOfPointsPerDay];
  return v4 == 1 && v6 != 0;
}

- (void)_queue_handleSavedCompetitionListRecords:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v6 = [v5 hk_filter:&__block_literal_global_341];

  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134217984;
    v14 = [v6 count];
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager handling %ld competition list records", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ASCompetitionManager__queue_handleSavedCompetitionListRecords___block_invoke_342;
  v12[3] = &unk_278C4D400;
  v12[4] = self;
  v9 = [v6 hk_map:v12];
  [(ASCompetitionStore *)self->_competitionStore saveCompetitionLists:v9];
  v10 = [v9 hk_mapToSet:&__block_literal_global_348];
  [(ASCompetitionManager *)self _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v10];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __65__ASCompetitionManager__queue_handleSavedCompetitionListRecords___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CE8ED8]];

  return v3;
}

id __65__ASCompetitionManager__queue_handleSavedCompetitionListRecords___block_invoke_342(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE90E0] competitionListWithRecord:a2];
  v4 = *(*(a1 + 32) + 80);
  v5 = [v3 friendUUID];
  v6 = [v4 currentCompetitionListForFriendWithUUID:v5];

  v7 = [v3 currentCompetition];
  v8 = [v6 currentCompetition];
  v9 = [v8 UUID];
  v10 = [v7 UUID];
  if ([v9 isEqual:v10])
  {
    v11 = [v8 opponentTotalScore];
    v12 = [v7 opponentTotalScore];

    if (v11 == v12)
    {
      goto LABEL_8;
    }

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v7 UUID];
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view of competition %@ has a more up-to-date opponent score, keeping it", &v18, 0xCu);
    }

    v9 = [v8 opponentScores];
    [v7 setOpponentScores:v9];
  }

  else
  {
  }

LABEL_8:
  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_queue_handleNewRemoteCompetitionList:(id)a3 contact:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FD8];
  v9 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionManager saving remote competition list: %@", buf, 0xCu);
  }

  [(ASCompetitionStore *)self->_competitionStore saveRemoteCompetitionList:v6];
  v10 = [v7 primaryRelationship];
  v11 = [v10 isCompetitionActive];

  if (v11)
  {
    competitionStore = self->_competitionStore;
    v13 = [v7 UUID];
    v14 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:v13];

    v15 = [v14 currentCompetition];
    v16 = [v6 currentCompetition];
    v17 = [v15 UUID];
    v18 = [v16 UUID];
    v19 = [v17 isEqual:v18];

    ASLoggingInitialize();
    v20 = *v8;
    v21 = *v8;
    if (v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating local competition to reflect remote opponent score", buf, 2u);
      }

      v22 = [v16 scores];
      [v15 setOpponentScores:v22];

      v23 = self->_competitionStore;
      v26 = v14;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [(ASCompetitionStore *)v23 saveCompetitionLists:v24];
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _queue_handleNewRemoteCompetitionList:contact:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showCompetitionRequestFromFriendWithUUID:(id)a3 competition:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NSSet *)self->_existingFriendUUIDsAwaitingMyCompetitionResponse containsObject:v6])
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Not posting competition request bulletin for friend UUID %@, previously posted", &v18, 0xCu);
    }
  }

  else
  {
    v9 = [(NSSet *)self->_existingFriendUUIDsAwaitingMyCompetitionResponse setByAddingObject:v6];
    existingFriendUUIDsAwaitingMyCompetitionResponse = self->_existingFriendUUIDsAwaitingMyCompetitionResponse;
    self->_existingFriendUUIDsAwaitingMyCompetitionResponse = v9;

    WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
    v12 = [WeakRetained friendWithUUID:v6];

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v12 displayName];
      v18 = 138543618;
      v19 = v6;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting competition request bulletin for friend: %{public}@ - %@", &v18, 0x16u);
    }

    v16 = objc_loadWeakRetained(&self->_competitionBulletinManager);
    [v16 showCompetitionRequestNotificationForFriend:v12 competition:v7 withPostingStyle:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showCompetitionAcceptedForFriendWithUUID:(id)a3 competition:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NSSet *)self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe containsObject:v6])
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Not posting bulletin competition accepted bulletin for friend UUID %@, previously posted", &v18, 0xCu);
    }
  }

  else
  {
    v9 = [(NSSet *)self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe setByAddingObject:v6];
    existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe = self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe;
    self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe = v9;

    WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
    v12 = [WeakRetained friendWithUUID:v6];

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v12 displayName];
      v18 = 138543618;
      v19 = v6;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting competition accepted bulletin for friend: %{public}@ - %@", &v18, 0x16u);
    }

    v16 = objc_loadWeakRetained(&self->_competitionBulletinManager);
    [v16 showCompetitionAcceptedNotificationForFriend:v12 competition:v7 withPostingStyle:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showCompetitionEndedWithFriendWithUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NSSet *)self->_existingFriendUUIDsWithCompletedCompetitions containsObject:v4])
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Not posting bulletin competition completed bulletin for friend UUID %@, previously posted", &v16, 0xCu);
    }
  }

  else
  {
    v6 = [(NSSet *)self->_existingFriendUUIDsWithCompletedCompetitions setByAddingObject:v4];
    existingFriendUUIDsWithCompletedCompetitions = self->_existingFriendUUIDsWithCompletedCompetitions;
    self->_existingFriendUUIDsWithCompletedCompetitions = v6;

    WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
    v9 = [WeakRetained friendWithUUID:v4];

    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v9 displayName];
      v16 = 138543618;
      v17 = v4;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting competition ended with friend: %{public}@ - %@", &v16, 0x16u);
    }

    v13 = objc_loadWeakRetained(&self->_competitionBulletinManager);
    v14 = [v9 mostRecentlyCompletedCompetition];
    [v13 showCompetitionEndedNotificationForFriend:v9 competition:v14 withPostingStyle:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showScoreCapCelebrationForFriendsWithCappedInProgressCompetitions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting score cap celebration with friends %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [WeakRetained showCompetitionScoreCapCelebrationForFriends:v4 withPostingStyle:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_autoAcceptCompetitionRequestFromContact:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5 completion:(id)a6
{
  v44[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = [(ASCompetitionStore *)self->_competitionStore currentRemoteCompetitionForContact:v10];
  if (v14)
  {
    competitionStore = self->_competitionStore;
    v16 = [v10 UUID];
    v17 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:v16];

    v18 = [v17 competitions];
    v19 = [v18 firstObject];

    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE8FD8];
    if (v19)
    {
      v35 = v12;
      v36 = v11;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "CompetitionManager comparing UUIDs to decide if we should accept", buf, 2u);
      }

      v21 = [v14 UUID];
      v22 = [v21 UUIDString];
      v34 = v19;
      v23 = [v19 UUID];
      v24 = [v23 UUIDString];
      v25 = [v22 compare:v24];

      ASLoggingInitialize();
      v26 = *MEMORY[0x277CE8FD8];
      v27 = os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT);
      if (v25 == -1)
      {
        v11 = v36;
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "CompetitionManager this device should accept, rebuilding local competition in accepting role", buf, 2u);
        }

        v29 = [v10 UUID];
        v32 = [(ASCompetitionManager *)self _localCompetitionForRemoteCompetition:v14 friendUUID:v29];

        v44[0] = v32;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
        [v17 setCompetitions:v30];

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke;
        v37[3] = &unk_278C4D2C8;
        v42 = v13;
        v37[4] = self;
        v38 = v10;
        v39 = v36;
        v12 = v35;
        v40 = v35;
        v41 = v32;
        v33 = v32;
        [(ASCompetitionManager *)self _saveCurrentCompetitionList:v17 archivedCompetitionList:0 contact:v38 activity:v39 cloudKitGroup:v40 completion:v37];
      }

      else
      {
        v12 = v35;
        v11 = v36;
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "CompetitionManager this device should *not* accept", buf, 2u);
        }

        (*(v13 + 2))(v13, 1, 0);
      }

      v19 = v34;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
      {
        [ASCompetitionManager _queue_autoAcceptCompetitionRequestFromContact:activity:cloudKitGroup:completion:];
      }

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:5 userInfo:0];
      (*(v13 + 2))(v13, 0, v28);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _queue_autoAcceptCompetitionRequestFromContact:activity:cloudKitGroup:completion:];
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:6 userInfo:0];
    (*(v13 + 2))(v13, 0, v17);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v12 = *(a1 + 72);
    v13 = *(*(a1 + 72) + 16);

    v13();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = [*(a1 + 40) UUID];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_2;
    v15[3] = &unk_278C4D448;
    v14 = *(a1 + 32);
    v8 = *(&v14 + 1);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v16 = v14;
    v17 = v11;
    [WeakRetained updateRelationshipWithCompetitionEvent:11 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v15];
  }
}

void __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_3;
    block[3] = &unk_278C4BB98;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }

  (*(*(a1 + 56) + 16))();
}

void __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  [v2 _queue_showCompetitionAcceptedForFriendWithUUID:v3 competition:*(a1 + 48)];
}

- (void)_queue_completeCompetitionIfNecessaryForFriendWithUUID:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_deviceParticipatesInAutomaticCompetitionManagement)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
    v12 = [WeakRetained contactWithUUID:v8];

    v13 = [v12 primaryRelationship];
    v14 = [v13 isCompetitionActive];

    if (v14)
    {
      v15 = [(ASCompetitionStore *)self->_competitionStore currentRemoteCompetitionForContact:v12];
      competitionStore = self->_competitionStore;
      v17 = [v12 UUID];
      v18 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:v17];

      v19 = [v18 currentCompetition];
      if (v19 && v15)
      {
        if (ASCompetitionIsReadyToComplete())
        {
          ASLoggingInitialize();
          v20 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            log = v20;
            v28 = [v12 UUID];
            v21 = [v12 displayName];
            *buf = 138543618;
            v40 = v28;
            v41 = 2112;
            v42 = v21;
            _os_log_impl(&dword_23E5E3000, log, OS_LOG_TYPE_DEFAULT, "CompetitionManager competition with friend is ready to complete: %{public}@ - %@", buf, 0x16u);
          }

          transactionQueue = self->_transactionQueue;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke;
          v30[3] = &unk_278C4D498;
          v31 = v19;
          v32 = v15;
          v33 = self;
          v34 = v18;
          v35 = v12;
          v36 = v9;
          v37 = v10;
          v38 = v8;
          [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v30];
        }
      }

      else
      {
        ASLoggingInitialize();
        v23 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
        {
          v25 = v23;
          v26 = [v12 UUID];
          v27 = [v12 displayName];
          *buf = 138544130;
          v40 = v26;
          v41 = 2112;
          v42 = v27;
          v43 = 2112;
          v44 = v19;
          v45 = 2112;
          v46 = v15;
          _os_log_error_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_ERROR, "CompetitionManager tried to check if competition is ready to complete, but couldn't find both a local and remote view of the competition: %{public}@ - %@, localCompetition=%@, remoteCompetition=%@", buf, 0x2Au);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "CompetitionManager pushing competition one last time with updated opponent score", buf, 2u);
  }

  v5 = [*(a1 + 40) scores];
  [*(a1 + 32) setOpponentScores:v5];

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349;
  v12[3] = &unk_278C4D2C8;
  v17 = v3;
  v12[4] = v6;
  v13 = v8;
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v11 = v3;
  [v6 _saveCurrentCompetitionList:v7 archivedCompetitionList:0 contact:v8 activity:v9 cloudKitGroup:v10 completion:v12];
}

void __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349_cold_1();
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v7 = [*(a1 + 40) UUID];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_350;
    v10[3] = &unk_278C4D470;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    [WeakRetained updateRelationshipWithCompetitionEvent:14 friendUUID:v7 activity:v8 cloudKitGroup:v9 completion:v10];
  }
}

uint64_t __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3 && a2)
  {
    ASLoggingInitialize();
    v6 = MEMORY[0x277CE8FD8];
    v7 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "CompetitionManager successfully completed competition", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 40));
    v9 = [WeakRetained contactWithUUID:a1[5]];

    v10 = [v9 primaryRemoteRelationship];
    v11 = [v10 hasCompletedCompetition];

    if (v11)
    {
      ASLoggingInitialize();
      v12 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager remote competition is also complete, we can notify", buf, 2u);
      }

      v13 = objc_loadWeakRetained((a1[4] + 8));
      [v13 requestEarnedInstanceUpdate];

      v14 = objc_loadWeakRetained((a1[4] + 8));
      [v14 removeUnusedTemplatesForFriendWithUUID:a1[5]];

      v16 = a1[4];
      v15 = a1[5];
      v17 = *(v16 + 96);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_351;
      v19[3] = &unk_278C4B250;
      v19[4] = v16;
      v20 = v15;
      dispatch_async(v17, v19);
    }
  }

  return (*(a1[6] + 16))(a1[6], a2, a3, a4, a5);
}

- (void)_queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v4 count])
  {
    observerQueue = self->_observerQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__ASCompetitionManager__queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs___block_invoke;
    v6[3] = &unk_278C4B250;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(observerQueue, v6);
  }
}

void __86__ASCompetitionManager__queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 112);
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

        [*(*(&v8 + 1) + 8 * v6++) competitionManager:*(a1 + 32) didUpdateCompetitionsForFriendsWithUUIDs:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_archivedCompetitionListByMergingCurrentCompetitionList:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FD8];
  v6 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager building new archived competition list", &v26, 2u);
  }

  v7 = [v4 currentCompetition];
  if (v7)
  {
    competitionStore = self->_competitionStore;
    v9 = [v4 friendUUID];
    v10 = [(ASCompetitionStore *)competitionStore archivedCompetitionListForFriendWithUUID:v9];

    if (!v10)
    {
      ASLoggingInitialize();
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v4 friendUUID];
        v26 = 138543362;
        v27 = v13;
        _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager didn't find an existing archived competition list, creating one for friend: %{public}@", &v26, 0xCu);
      }

      v14 = objc_alloc(MEMORY[0x277CE90E0]);
      v15 = [v4 friendUUID];
      v10 = [v14 initWithFriendUUID:v15 type:1];
    }

    v16 = [v10 competitions];
    v17 = [v16 arrayByAddingObject:v7];
    [v10 setCompetitions:v17];

    v18 = [v10 competitions];
    v19 = ASCompetitionsEligibleForArchival();
    [v10 setCompetitions:v19];

    ASLoggingInitialize();
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v10 competitions];
      v26 = 138412290;
      v27 = v22;
      _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "CompetitionManager built new archived competition list: %@", &v26, 0xCu);
    }
  }

  else
  {
    ASLoggingInitialize();
    v23 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "CompetitionManager didn't find an existing competition to archive", &v26, 2u);
    }

    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_loadOrCreateCurrentCompetitionListForFriendWithUUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASCompetitionStore *)self->_competitionStore currentCompetitionListForFriendWithUUID:v4];
  if (!v5)
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager didn't find an existing current competition list, creating one for friend: %{public}@", &v9, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CE90E0]) initWithFriendUUID:v4 type:0];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_localCompetitionForRemoteCompetition:(id)a3 friendUUID:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CE90D8];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v8 UUID];
  [v9 setUUID:v10];

  v11 = [v8 startDateComponents];
  [v9 setStartDateComponents:v11];

  v12 = [v8 durationDateComponents];
  [v9 setDurationDateComponents:v12];

  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  v14 = [WeakRetained friendWithUUID:v7];

  v15 = objc_loadWeakRetained(&self->_friendListManager);
  v16 = [v15 friends];
  v17 = ASPreferredCompetitionVictoryBadgeStylesForFriend();

  v18 = [v8 preferredVictoryBadgeStyles];
  v19 = ASBestCompetitionVictoryBadgeStyleForPreferredStyles();

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
  v25[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v9 setPreferredVictoryBadgeStyles:v21];

  v22 = [v8 maximumNumberOfPointsPerDay];
  [v9 setMaximumNumberOfPointsPerDay:v22];

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_loadCachedCompetitionsAndNotifyObservers
{
  if ([(ASDatabaseClient *)self->_databaseClient isProtectedDataAvailable])
  {
    v3 = [(ASCompetitionStore *)self->_competitionStore loadCachedCompetitions];
    self->_hasFetchedProtectedData = v3;
    if (v3)
    {
      [(ASDatabaseClient *)self->_databaseClient removeProtectedDataObserver:self];
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__ASCompetitionManager__loadCachedCompetitionsAndNotifyObservers__block_invoke;
      block[3] = &unk_278C4B278;
      block[4] = self;
      dispatch_async(observerQueue, block);
      WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
      [WeakRetained observerDidBecomeReadyToProcessChanges:self];
    }
  }

  else
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager not loading cached competitions, protected data is not available", buf, 2u);
    }
  }
}

void __65__ASCompetitionManager__loadCachedCompetitionsAndNotifyObservers__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 112);
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

        [*(*(&v8 + 1) + 8 * v6++) competitionManagerDidLoadCachedCompetitions:{*(a1 + 32), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleSavedRecords:(id)a3 activity:(id)a4 group:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(ASCompetitionManager *)self _queue_handleSavedCompetitionListRecords:a3];
  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  v10 = [WeakRetained currentActivitySummary];
  v11 = objc_loadWeakRetained(&self->_activityDataManager);
  v12 = [v11 yesterdayActivitySummary];
  [(ASCompetitionManager *)self _queue_updateScoresWithTodaySummary:v10 yesterdaySummary:v12 activity:v9 cloudKitGroup:v8];
}

- (void)_queue_setActivityDataVisibleIfNecessaryForContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [v6 primaryRelationship];
  v9 = [v8 isHidingActivityData];

  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD8];
  v11 = os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager my activity data is not hidden, proceeding immediately", buf, 2u);
    }

LABEL_10:
    v7[2](v7, 1, 0, v6);
    goto LABEL_12;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager my activity data is hidden, unhiding first", buf, 2u);
  }

  if (![v6 cloudType])
  {
    WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
    v14 = [v6 UUID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke;
    v15[3] = &unk_278C4D4E8;
    v15[4] = self;
    v17 = v7;
    v16 = v6;
    [WeakRetained setActivityDataVisible:1 toFriendWithUUID:v14 completion:v15];

    goto LABEL_12;
  }

  if (ASSecureCloudEnabled() && [v6 cloudType] == 1)
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:9 userInfo:0];
  (v7)[2](v7, 0, v12, 0);

LABEL_12:
}

void __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke_2;
  block[3] = &unk_278C4D4C0;
  v14 = *(a1 + 48);
  v15 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v5 = [*(a1 + 48) UUID];
  v6 = [WeakRetained contactWithUUID:v5];
  (*(v2 + 16))(v2, v3, v4, v6);
}

- (id)recordForCurrentCompetitionList:(id)a3 contact:(id)a4
{
  v5 = a3;
  v6 = [a4 relationshipStorage];
  v7 = [v6 legacyRelationship];

  v8 = +[ASCloudKitManager relationshipZone];
  v9 = [v5 recordWithZoneID:v8 recordEncryptionType:0];

  v10 = objc_alloc(MEMORY[0x277CBC620]);
  v11 = [v7 systemFieldsOnlyRecord];
  v12 = [v11 recordID];
  v13 = [v10 initWithRecordID:v12 action:0];
  [v9 setParent:v13];

  return v9;
}

- (id)_contactsWithActiveCompetitions
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v3 = [WeakRetained contacts];

  v4 = [v3 hk_filter:&__block_literal_global_354];

  return v4;
}

uint64_t __55__ASCompetitionManager__contactsWithActiveCompetitions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 primaryRelationship];
  v3 = [v2 isCompetitionActive];

  return v3;
}

- (id)_scoreCapCelebrationAnchor
{
  v2 = [(ASCompetitionManager *)self _localUserDefaultsDomain];
  v6 = 0;
  v3 = [v2 numberForKey:@"ActivitySharingScoreCapCelebrationAnchor" error:&v6];
  v4 = v6;
  if (v4)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _scoreCapCelebrationAnchor];
    }

    v3 = 0;
  }

  return v3;
}

- (void)_setScoreCapCelebrationAnchor:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ASCompetitionManager *)self _localUserDefaultsDomain];
  v10 = 0;
  [v6 setNumber:v5 forKey:@"ActivitySharingScoreCapCelebrationAnchor" error:&v10];
  v7 = v10;
  if (v7)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _setScoreCapCelebrationAnchor:];
    }
  }

  else
  {
    objc_storeStrong(&self->_scoreCapCelebrationAnchor, a3);
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager updated score cap celebration anchor is %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)secureCloudCompetitionListsToSave
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = objc_alloc_init(MEMORY[0x277CBEB98]);
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ASCompetitionManager_secureCloudCompetitionListsToSave__block_invoke;
  v6[3] = &unk_278C4BA58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __57__ASCompetitionManager_secureCloudCompetitionListsToSave__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_secureCloudCompetitionListsToSave];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)secureCloudDidSaveRecords:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ASCompetitionManager_secureCloudDidSaveRecords___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)secureCloudDidFailToSaveRecords:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v7 = 134217984;
      v8 = [v3 count];
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompetitionManager failed to save secure cloud %ld records", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)currentCompetitionListForFriendWithUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ASCompetitionManager_currentCompetitionListForFriendWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __64__ASCompetitionManager_currentCompetitionListForFriendWithUUID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) currentCompetitionListForFriendWithUUID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)archivedCompetitionListForFriendWithUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASCompetitionManager_archivedCompetitionListForFriendWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __65__ASCompetitionManager_archivedCompetitionListForFriendWithUUID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) archivedCompetitionListForFriendWithUUID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)storePushedCompetitionListRecords:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ASCompetitionManager_storePushedCompetitionListRecords___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (BOOL)_shouldSkipLocalLegacyCompetitionList:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v6 = [v4 friendUUID];
  v7 = [WeakRetained contactWithUUID:v6];

  if ([v7 cloudType] == 1)
  {
    v8 = [v4 systemFieldsOnlyRecord];
    v9 = [v8 recordID];
    v10 = [v9 zoneID];
    v11 = +[ASCloudKitManager relationshipZone];
    v12 = [v10 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldSkipRemoteLegacyCompetitionList:(id)a3 contact:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 cloudType];
  if (v7 == 1)
  {
    v8 = [v5 systemFieldsOnlyRecord];
    v9 = [v8 recordID];
    v10 = [v9 zoneID];
    v11 = +[ASCloudKitManager relationshipZone];
    if ([v10 isEqual:v11])
    {
      LOBYTE(v12) = 1;
LABEL_11:

      goto LABEL_12;
    }

    if ([v6 cloudType])
    {
      LOBYTE(v12) = 0;
      goto LABEL_11;
    }

    v20 = v11;
    v22 = v10;
    v24 = v9;
    v26 = v8;
  }

  else if ([v6 cloudType])
  {
    LOBYTE(v12) = 0;
    goto LABEL_12;
  }

  v13 = [v5 systemFieldsOnlyRecord];
  v14 = [v13 recordID];
  v15 = [v14 zoneID];
  v16 = [v15 zoneName];
  v17 = +[ASCloudKitManager relationshipZone];
  v18 = [v17 zoneName];
  v12 = [v16 isEqualToString:v18] ^ 1;

  v9 = v25;
  v8 = v27;
  v11 = v21;
  v10 = v23;
  if (v7 == 1)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v12;
}

- (void)_queue_cleanUpLegacyCompetitionLists:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 hk_map:&__block_literal_global_357];
  if ([v11 count])
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Removing legacy competition lists that have been migrated %@", &v16, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
    v14 = [v11 allObjects];
    [WeakRetained saveRecordsIntoPrivateDatabase:MEMORY[0x277CBEBF8] recordIDsToDelete:v14 priority:2 activity:v9 group:v10 completion:&__block_literal_global_360];
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __84__ASCompetitionManager__queue_cleanUpLegacyCompetitionLists_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 systemFieldsOnlyRecord];
  v3 = [v2 recordID];

  return v3;
}

void __84__ASCompetitionManager__queue_cleanUpLegacyCompetitionLists_activity_cloudKitGroup___block_invoke_358(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Removed legacy competitions that have been migrated (success %{BOOL}d, error: %@)", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSkipLocalSecureCloudCompetitionList:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v6 = [v4 friendUUID];
  v7 = [WeakRetained contactWithUUID:v6];

  if ([v7 cloudType])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [v4 systemFieldsOnlyRecord];
    v10 = [v9 recordID];
    v11 = [v10 zoneID];
    v12 = +[ASCloudKitManager relationshipZone];
    v8 = [v11 isEqual:v12] ^ 1;
  }

  return v8;
}

- (void)_queue_cleanUpSecureCloudCompetitionLists:(id)a3 activity:(id)a4 cloudKitGroup:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 hk_map:&__block_literal_global_362];
  if ([v9 count])
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Removing secure cloud competition lists that have been downgraded %@", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
    [WeakRetained competitionManager:self deleteCompetitionLists:v7 group:v8 completion:&__block_literal_global_365];
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __89__ASCompetitionManager__queue_cleanUpSecureCloudCompetitionLists_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 systemFieldsOnlyRecord];
  v3 = [v2 recordID];

  return v3;
}

void __89__ASCompetitionManager__queue_cleanUpSecureCloudCompetitionLists_activity_cloudKitGroup___block_invoke_363(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Removed secure cloud competitions that have been downgraded (success %{BOOL}d, error: %@)", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_queue_competitionListsToSaveForCloudType:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FD8];
  v6 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager responding to periodic update request for records", buf, 2u);
  }

  v7 = [(ASCompetitionManager *)self _contactsWithActiveCompetitions];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ASCompetitionManager__queue_competitionListsToSaveForCloudType___block_invoke;
  v15[3] = &unk_278C4D550;
  v15[4] = self;
  v15[5] = a3;
  v8 = [v7 hk_map:v15];
  ASLoggingInitialize();
  v9 = *v5;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 count];
    v12 = NSStringFromASCloudType();
    *buf = 134218242;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager found %lu %@ competition lists to save", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

id __66__ASCompetitionManager__queue_competitionListsToSaveForCloudType___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 relationshipStorage];
  v5 = [v4 primaryRelationship];

  if (!v5)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __66__ASCompetitionManager__queue_competitionListsToSaveForCloudType___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  if ([v5 cloudType] != *(a1 + 40))
  {
LABEL_10:
    v16 = 0;
    goto LABEL_15;
  }

  v6 = *(*(a1 + 32) + 80);
  v7 = [v3 UUID];
  v8 = [v6 currentCompetitionListForFriendWithUUID:v7];

  if (v8)
  {
    v9 = [v8 currentCompetition];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 endDate];
    v12 = [v10 hk_isAfterOrEqualToDate:v11];

    if (v12)
    {
      ASLoggingInitialize();
      v13 = *MEMORY[0x277CE8FD8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Competition has ended, not including in competition lists to save: %{public}@", &v19, 0xCu);
      }

      v16 = 0;
    }

    else
    {
      v16 = v8;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Completing competition with friend: %{public}@", buf, 0xCu);
  }

  transactionQueue = self->_transactionQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke;
  v13[3] = &unk_278C4D5C8;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v6 = [v5 primaryRelationship];
  v7 = [v6 isCompetitionActive];

  if (v7)
  {
    v8 = [*(*(a1 + 32) + 80) currentCompetitionListForFriendWithUUID:*(a1 + 40)];
    v9 = [v8 currentCompetition];
    v10 = v9;
    if (v9)
    {
      [v9 setCurrentCacheIndex:{objc_msgSend(v9, "endDateCacheIndex")}];
      v11 = ASCloudKitGroupUserActionExplicit();
      v12 = *(a1 + 32);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_367;
      v21[3] = &unk_278C4D5A0;
      v24 = *(a1 + 48);
      v13 = v3;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v25 = v13;
      v21[4] = v14;
      v22 = v15;
      v23 = v11;
      v16 = v11;
      [v12 _saveCurrentCompetitionList:v8 archivedCompetitionList:0 contact:v5 activity:0 cloudKitGroup:v16 completion:v21];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
      {
        __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_cold_2();
      }

      v19 = *(a1 + 48);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:4 userInfo:0];
      (*(v19 + 16))(v19, 0, v20);

      v3[2](v3);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_cold_1();
    }

    v17 = *(a1 + 48);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:4 userInfo:0];
    (*(v17 + 16))(v17, 0, v18);

    v3[2](v3);
  }
}

void __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_367(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v7 = *(a1 + 56);
    (*(*(a1 + 56) + 16))();
    v8 = *(*(a1 + 64) + 16);

    v8();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_2;
    v9[3] = &unk_278C4D578;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    [WeakRetained updateRelationshipWithCompetitionEvent:13 friendUUID:v5 activity:0 cloudKitGroup:v6 completion:v9];
  }
}

uint64_t __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)updateAllActiveCompetitionsWithScores:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  transactionQueue = self->_transactionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke;
  v11[3] = &unk_278C4D5C8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v11];
}

void __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__11;
  v28[4] = __Block_byref_object_dispose__11;
  v29 = 0;
  v4 = [*(a1 + 32) _contactsWithActiveCompetitions];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_2;
  v24[3] = &unk_278C4C330;
  v26 = v30;
  v27 = v28;
  v8 = v5;
  v25 = v8;
  [v6 _queue_updateSecureCloudCompetitionsWithScores:v7 forContacts:v4 completion:v24];
  dispatch_group_enter(v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_3;
  v20[3] = &unk_278C4C330;
  v22 = v30;
  v23 = v28;
  v11 = v8;
  v21 = v11;
  [v9 _queue_updateLegacyCompetitionsWithScores:v10 forContacts:v4 completion:v20];
  v12 = *(*(a1 + 32) + 96);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_4;
  v15[3] = &unk_278C4D5F0;
  v13 = *(a1 + 48);
  v18 = v30;
  v19 = v28;
  v16 = v13;
  v17 = v3;
  v14 = v3;
  dispatch_group_notify(v11, v12, v15);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

void __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  v5 = *(*(a1 + 48) + 8);
  v6 = a3;
  if (!a3)
  {
    v6 = *(v5 + 40);
  }

  objc_storeStrong((v5 + 40), v6);
  v7 = a3;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 40));
  }

  v3 = *(a1[5] + 16);

  return v3();
}

- (void)_queue_updateLegacyCompetitionsWithScores:(id)a3 forContacts:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(ASCompetitionManager *)self _competitionListsFromContacts:a4 withUpdatedScore:a3 cloudType:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke;
  v17[3] = &unk_278C4D618;
  v17[4] = self;
  v10 = [v9 hk_map:v17];
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v12 = [v10 allObjects];
  v13 = ASCloudKitGroupUserActionExplicit();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_2;
  v15[3] = &unk_278C4D340;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [WeakRetained saveRecordsIntoPrivateDatabase:v12 priority:2 activity:0 group:v13 completion:v15];
}

id __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained contactWithUUID:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) recordForCurrentCompetitionList:v3 contact:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_3;
  block[3] = &unk_278C4D250;
  v19 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
    v2 = *(a1 + 64);
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)_queue_updateSecureCloudCompetitionsWithScores:(id)a3 forContacts:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (ASSecureCloudEnabled())
  {
    v11 = [(ASCompetitionManager *)self _competitionListsFromContacts:v9 withUpdatedScore:v8 cloudType:1];
    WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
    v13 = ASCloudKitGroupUserActionExplicit();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke;
    v14[3] = &unk_278C4D340;
    v14[4] = self;
    v15 = v10;
    [WeakRetained competitionManager:self saveCompetitionLists:v11 group:v13 completion:v14];
  }
}

void __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke_2;
  block[3] = &unk_278C4D250;
  v19 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
    v2 = *(a1 + 64);
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (id)_competitionListsFromContacts:(id)a3 withUpdatedScore:(id)a4 cloudType:(unint64_t)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__ASCompetitionManager__competitionListsFromContacts_withUpdatedScore_cloudType___block_invoke;
  v12[3] = &unk_278C4D640;
  v13 = v8;
  v14 = a5;
  v12[4] = self;
  v9 = v8;
  v10 = [a3 hk_map:v12];

  return v10;
}

id __81__ASCompetitionManager__competitionListsFromContacts_withUpdatedScore_cloudType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 cloudType] == a1[6])
  {
    v4 = *(a1[4] + 80);
    v5 = [v3 UUID];
    v6 = [v4 currentCompetitionListForFriendWithUUID:v5];

    v7 = [v6 currentCompetition];
    v8 = v7;
    if (v7)
    {
      [v7 setScores:a1[5]];
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)rollCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  transactionQueue = self->_transactionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke;
  v11[3] = &unk_278C4D780;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v11];
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASCloudKitGroupUserActionExplicit();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2;
  v8[3] = &unk_278C4D758;
  v8[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = v3;
  v9 = *(a1 + 40);
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v6 completion:v8];
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3;
  block[3] = &unk_278C4D730;
  v17 = a2;
  v13 = v5;
  v7 = *(a1 + 56);
  v16 = *(a1 + 64);
  v11 = *(a1 + 32);
  v8 = *(&v11 + 1);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v14 = v11;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    v6 = [WeakRetained contactWithUUID:*(a1 + 48)];

    v7 = [v6 primaryRelationship];
    v8 = [v7 isCompetitionActive];

    if (v8)
    {
      v9 = [*(a1 + 40) _queue_rollCompetitionListForwardForContact:v6];
      v10 = *(a1 + 40);
      v11 = objc_loadWeakRetained(v10 + 2);
      v12 = [v11 currentActivitySummary];
      v13 = objc_loadWeakRetained((*(a1 + 40) + 16));
      v14 = [v13 yesterdayActivitySummary];
      [v10 _queue_updateScoresWithTodaySummary:v12 yesterdaySummary:v14 activity:0 cloudKitGroup:*(a1 + 56)];

      if ([v6 cloudType])
      {
        if (ASSecureCloudEnabled() && [v6 cloudType] == 1)
        {
          v15 = objc_loadWeakRetained((*(a1 + 40) + 184));
          v16 = *(a1 + 40);
          v17 = ASCloudKitGroupUserActionExplicit();
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_372;
          v26[3] = &unk_278C4D708;
          v26[4] = *(a1 + 40);
          v27 = *(a1 + 56);
          v28 = *(a1 + 64);
          v29 = *(a1 + 72);
          [v15 competitionManager:v16 saveCurrentCompetitionList:v9 archivedCompetitionList:0 contact:v6 group:v17 completion:v26];
        }

        else
        {
          ASLoggingInitialize();
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
          {
            __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_cold_3();
          }

          v20 = *(a1 + 64);
          v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:9 userInfo:0];
          (*(v20 + 16))(v20, 0, v21);

          (*(*(a1 + 72) + 16))();
        }
      }

      else
      {
        v22 = [*(a1 + 40) recordForCurrentCompetitionList:v9 contact:v6];
        v23 = objc_loadWeakRetained((*(a1 + 40) + 24));
        v33[0] = v22;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_370;
        v30[3] = &unk_278C4D690;
        v30[4] = *(a1 + 40);
        v25 = *(a1 + 56);
        v31 = *(a1 + 64);
        v32 = *(a1 + 72);
        [v23 saveRecordsIntoPrivateDatabase:v24 priority:2 activity:0 group:v25 completion:v30];
      }
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
      {
        __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_cold_1();
      }

      v18 = *(a1 + 64);
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:4 userInfo:0];
      (*(v18 + 16))(v18, 0, v19);

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_cold_1();
    }

    v2 = *(a1 + 80);
    v3 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_370(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2_371;
  v14[3] = &unk_278C4D668;
  v20 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v19 = *(a1 + 48);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, v14);
}

uint64_t __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2_371(uint64_t a1)
{
  if (*(a1 + 72) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
    v2 = *(a1 + 72);
  }

  v3 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  v4 = *(*(a1 + 64) + 16);

  return v4();
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_372(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_4;
  block[3] = &unk_278C4D6E0;
  v21 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v11 = v1;
    v12 = v2;
    if (!*(a1 + 32))
    {
      [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_5;
      v6[3] = &unk_278C4D6B8;
      v5 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = *(a1 + 80);
      v7 = *(a1 + 32);
      v9 = *(a1 + 72);
      [WeakRetained requestImmediateUpdateWithCloudKitGroup:v5 completion:v6];
    }
  }
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Roll competition immediate update (success %{BOOL}d, error: %@)", v10, 0x12u);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_queue_rollCompetitionListForwardForContact:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 hk_gregorianCalendar];
  competitionStore = self->_competitionStore;
  v8 = [v5 UUID];

  v9 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:v8];

  v10 = [v9 currentCompetition];
  if (v10)
  {
    ASLoggingInitialize();
    v11 = MEMORY[0x277CE8FD8];
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager found competition to roll: %@ ", buf, 0xCu);
    }

    v13 = [v10 startDate];
    v14 = [v6 dateByAddingUnit:16 value:-1 toDate:v13 options:0];

    v15 = [v6 components:*MEMORY[0x277CCE1D0] fromDate:v14];
    [v10 setStartDateComponents:v15];

    [v10 setCurrentCacheIndex:{-[ASCompetitionManager _queue_rollIndexBackwards:calendar:](self, "_queue_rollIndexBackwards:calendar:", objc_msgSend(v10, "currentCacheIndex"), v6)}];
    [v10 setLastPushedCacheIndex:{-[ASCompetitionManager _queue_rollIndexBackwards:calendar:](self, "_queue_rollIndexBackwards:calendar:", objc_msgSend(v10, "lastPushedCacheIndex"), v6)}];
    ASLoggingInitialize();
    v16 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager rolled competition forward: %@", buf, 0xCu);
    }

    v21 = v10;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v9 setCompetitions:v17];

    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (int64_t)_queue_rollIndexBackwards:(int64_t)a3 calendar:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v5 = _HKActivityCacheDateComponentsFromCacheIndex();
  v6 = [v4 dateFromComponents:v5];
  v7 = [v4 dateByAddingUnit:16 value:-1 toDate:v6 options:0];
  v8 = _HKCacheIndexFromDate();

  return v8;
}

- (ASCompetitionManagerSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "CompetitionManager UUID mismatch between local and remote competition: %@ vs %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "No paired watch supports competitions, showing upgrade notification", buf, 2u);
}

- (void)_queue_handleNewRemoteCompetitionList:contact:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "CompetitionManager competition UUIDs didn't match, not updating score: local=%@ remote=%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_scoreCapCelebrationAnchor
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error: %{public}@ retrieving score cap celebration anchor data from key value domain. anchor: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setScoreCapCelebrationAnchor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error:%{public}@ saving score cap celebration anchor data into key value domain. anchor: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end