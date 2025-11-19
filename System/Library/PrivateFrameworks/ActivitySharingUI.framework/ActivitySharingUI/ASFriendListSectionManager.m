@interface ASFriendListSectionManager
- (ASFriendListSectionManager)initWithModel:(id)a3 activitySharingClient:(id)a4 workoutDataProvider:(id)a5;
- (ASFriendListSectionManager)initWithModel:(id)a3 andWorkoutDataProvider:(id)a4;
- (BOOL)_isWheelchairUserDisplayModeValidForFriends:(id)a3 filter:(int64_t)a4;
- (BOOL)hasAnyFriendsSetup;
- (BOOL)hasInitializedFriendData;
- (id)_copyFriends;
- (id)_createSectionsForFriends:(id)a3 withDisplayContext:(id)a4;
- (id)_datesToShowSnapshotsForFriend:(id)a3 startingFromCurrentDateComponents:(id)a4;
- (id)_filterFriends:(id)a3 withActiveFriendshipAtEndOfDay:(id)a4;
- (id)_filterFriends:(id)a3 withSnapshotDataAtCacheIndex:(id)a4;
- (id)_filterFriends:(id)a3 withWheelchairUseAtCacheIndex:(id)a4;
- (id)_friendWithUUID:(id)a3 fromFriends:(id)a4;
- (id)_queue_me;
- (id)_sectionForDataVisibilityConditionalUsingBlock:(id)a3 comparator:(id)a4;
- (id)_sortFriends:(id)a3 forDisplayMode:(int64_t)a4 cacheIndex:(id)a5;
- (id)allActiveFriendsAsRecipients;
- (id)allDestinationsForActiveOrPendingFriends;
- (id)allFriends;
- (id)friendWithUUID:(id)a3;
- (id)me;
- (id)sectionsForDisplayContext:(id)a3;
- (int64_t)numberOfNewFriendsAllowed;
- (unint64_t)numberOfFriendsWithCompetitionRequestsAwaitingResponseFromMe;
- (unint64_t)numberOfFriendsWithInvitesAwaitingResponseFromMe;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_calendarDayChangedNotification:(id)a3;
- (void)_createFakeFriends;
- (void)_enumerateVisibleDaysForFriends:(id)a3 usingBlock:(id)a4;
- (void)_postFriendsListChangedNotification;
- (void)_queue_handleActivitySummaryUpdate:(id)a3;
- (void)_queue_handleMyWorkoutsUpdate;
- (void)_queue_restartQueryAfterErrorCount:(int64_t)a3 withBlock:(id)a4;
- (void)_queue_startFriendsQuery;
- (void)_queue_startMeQuery;
- (void)_queue_stopQueries;
- (void)_queue_updateWithNewData;
- (void)_startQueries;
- (void)_startQueriesIfRequired;
- (void)_stopQueries;
- (void)dealloc;
- (void)enumerateValidDisplayModesForFilter:(int64_t)a3 usingBlock:(id)a4;
- (void)fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4;
@end

@implementation ASFriendListSectionManager

- (id)allDestinationsForActiveOrPendingFriends
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(ASFriendListSectionManager *)self _copyFriends];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *v21;
  do
  {
    v8 = 0;
    do
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v20 + 1) + 8 * v8);
      if (([v9 isMe] & 1) == 0)
      {
        v10 = [v9 contact];
        v11 = [v10 destinations];
        if (!v11)
        {
          goto LABEL_12;
        }

        v12 = v11;
        if (([v9 isFriendshipCurrentlyActive] & 1) != 0 || objc_msgSend(v9, "isAwaitingInviteResponseFromMe"))
        {

LABEL_11:
          v10 = [v9 contact];
          v13 = [v10 destinations];
          v14 = [v3 setByAddingObjectsFromSet:v13];

          v3 = v14;
LABEL_12:

          goto LABEL_13;
        }

        v15 = [v9 hasInviteRequestFromMe];

        if (v15)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      ++v8;
    }

    while (v6 != v8);
    v16 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v6 = v16;
  }

  while (v16);
LABEL_18:

  if ([v3 count])
  {
    v17 = v3;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (id)_copyFriends
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  readWriteQueue = self->_readWriteQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASFriendListSectionManager__copyFriends__block_invoke;
  v5[3] = &unk_278C52FB8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readWriteQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __42__ASFriendListSectionManager__copyFriends__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 48) copy];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasInitializedFriendData
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  readWriteQueue = self->_readWriteQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ASFriendListSectionManager_hasInitializedFriendData__block_invoke;
  v10[3] = &unk_278C52FB8;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(readWriteQueue, v10);
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v12 + 24);
    hasReceivedFriendListQueryResult = self->_hasReceivedFriendListQueryResult;
    hasReceivedMeQueryResult = self->_hasReceivedMeQueryResult;
    *buf = 67109632;
    v16 = v5;
    v17 = 1024;
    v18 = hasReceivedFriendListQueryResult;
    v19 = 1024;
    v20 = hasReceivedMeQueryResult;
    _os_log_impl(&dword_23E69E000, v4, OS_LOG_TYPE_DEFAULT, "Returning hasInitializedFriendData value: %d, _hasReceivedFriendListQueryResult: %d, _hasReceivedMeQueryResult: %d", buf, 0x14u);
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __54__ASFriendListSectionManager_hasInitializedFriendData__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 105))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 104);
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

- (id)allFriends
{
  v2 = [(ASFriendListSectionManager *)self _copyFriends];

  return v2;
}

- (void)_createFakeFriends
{
  v3 = [MEMORY[0x277CE90F0] fakeAppFriendListForMarketing];
  v4 = [v3 mutableCopy];

  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASFriendListSectionManager__createFakeFriends__block_invoke;
  block[3] = &unk_278C52F18;
  block[4] = self;
  dispatch_async(readWriteQueue, block);
  v6 = self->_readWriteQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ASFriendListSectionManager__createFakeFriends__block_invoke_2;
  v8[3] = &unk_278C53180;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (BOOL)hasAnyFriendsSetup
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ASFriendListSectionManager *)self _sectionForDataVisibilityConditionalUsingBlock:&__block_literal_global_380];
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FE8];
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v2 rows];
    v15 = 134217984;
    v16 = [v6 count];
    _os_log_impl(&dword_23E69E000, v5, OS_LOG_TYPE_DEFAULT, "Fitness Friends Framework checking if any friends are setup, filtered to friends that are active, invited, or inviting me: %lu", &v15, 0xCu);
  }

  v7 = [v2 rows];
  v8 = [v7 count];

  if (v8)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    v11 = [v10 initWithSuiteName:*MEMORY[0x277CE91F8]];
    v12 = [v11 objectForKey:*MEMORY[0x277CE9220]];
    v9 = [v12 BOOLValue];
    ASLoggingInitialize();
    v13 = *v3;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = v9;
      _os_log_impl(&dword_23E69E000, v13, OS_LOG_TYPE_DEFAULT, "Fitness Friends Framework checking defaults if any friends are setup: %{BOOL}d", &v15, 8u);
    }
  }

  return v9;
}

uint64_t __48__ASFriendListSectionManager__createFakeFriends__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _queue_updateWithNewData];
}

- (void)_postFriendsListChangedNotification
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23E69E000, v2, OS_LOG_TYPE_DEFAULT, "Updating _postFriendsListChangedNotification", v3, 2u);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_388);
}

- (void)_queue_startMeQuery
{
  dispatch_assert_queue_V2(self->_readWriteQueue);
  if (!self->_meQuery)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v5 = [v4 dateByAddingUnit:16 value:1 - *MEMORY[0x277CE9298] toDate:v3 options:0];
    v6 = [v4 hk_activitySummaryDateComponentsFromDate:v5];
    v7 = [v4 hk_activitySummaryDateComponentsFromDate:v3];
    v8 = [MEMORY[0x277CCD838] predicateForActivitySummariesBetweenStartDateComponents:v6 endDateComponents:v7];
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x277CCCFB8]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke;
    v21[3] = &unk_278C53158;
    objc_copyWeak(&v24, &location);
    v10 = v4;
    v22 = v10;
    v11 = v5;
    v23 = v11;
    v12 = [v9 initWithPredicate:v8 resultsHandler:v21];
    meQuery = self->_meQuery;
    self->_meQuery = v12;

    v14 = self->_meQuery;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_3;
    v18 = &unk_278C531A8;
    v19 = self;
    objc_copyWeak(&v20, &location);
    [(HKActivitySummaryQuery *)v14 setUpdateHandler:&v15];
    [(HKHealthStore *)self->_healthStore executeQuery:self->_meQuery, v15, v16, v17, v18, v19];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)_queue_updateWithNewData
{
  dispatch_assert_queue_V2(self->_readWriteQueue);
  [(NSCache *)self->_displayContextToSortedSectionsCache removeAllObjects];

  [(ASFriendListSectionManager *)self _postFriendsListChangedNotification];
}

- (id)_queue_me
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_readWriteQueue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_allFriends;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isMe])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

uint64_t __48__ASFriendListSectionManager_hasAnyFriendsSetup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive] & 1) != 0 || (objc_msgSend(v2, "hasInviteRequestFromMe"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 sentInviteRequestToMe];
  }

  return v3;
}

uint64_t __62__ASFriendListSectionManager_sectionForFriendsCompetingWithMe__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 friend];
  v7 = [v6 currentCompetition];
  v8 = [v7 endDate];
  v9 = [v5 friend];
  v10 = [v9 currentCompetition];
  v11 = [v10 endDate];
  v12 = [v8 compare:v11];

  if (!v12)
  {
    v13 = [v4 friend];
    v14 = [v13 displayName];
    v15 = [v14 uppercaseString];
    v16 = [v5 friend];
    v17 = [v16 displayName];
    v18 = [v17 uppercaseString];
    v12 = [v15 compare:v18];

    if (!v12)
    {
      v19 = [v4 friend];
      v20 = [v19 dateForLatestRelationshipStart];
      v21 = [v5 friend];
      v22 = [v21 dateForLatestRelationshipStart];
      v12 = [v20 compare:v22];
    }
  }

  return v12;
}

uint64_t __58__ASFriendListSectionManager_sectionForFriendsInvitedByMe__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasInviteRequestFromMe])
  {
    v3 = [v2 isFriendshipCurrentlyActive] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ASFriendListSectionManager)initWithModel:(id)a3 andWorkoutDataProvider:(id)a4
{
  v6 = MEMORY[0x277CE9518];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 activateWithCompletionHandler:&__block_literal_global];
  v10 = [(ASFriendListSectionManager *)self initWithModel:v8 activitySharingClient:v9 workoutDataProvider:v7];

  return v10;
}

- (ASFriendListSectionManager)initWithModel:(id)a3 activitySharingClient:(id)a4 workoutDataProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36.receiver = self;
  v36.super_class = ASFriendListSectionManager;
  v12 = [(ASFriendListSectionManager *)&v36 init];
  if (v12)
  {
    v13 = HKCreateSerialDispatchQueue();
    readWriteQueue = v12->_readWriteQueue;
    v12->_readWriteQueue = v13;

    objc_storeStrong(&v12->_model, a3);
    v15 = [v9 healthStore];
    healthStore = v12->_healthStore;
    v12->_healthStore = v15;

    objc_storeStrong(&v12->_activitySharingClient, a4);
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277D0A818]) initWithHealthStore:v12->_healthStore];
    }

    workoutDataProvider = v12->_workoutDataProvider;
    v12->_workoutDataProvider = v17;

    objc_initWeak(&location, v12);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__ASFriendListSectionManager_initWithModel_activitySharingClient_workoutDataProvider___block_invoke;
    aBlock[3] = &unk_278C52F40;
    objc_copyWeak(&v34, &location);
    v19 = _Block_copy(aBlock);
    [(FIUIWorkoutDataProvider *)v12->_workoutDataProvider addUpdateHandler:v19];
    v20 = [MEMORY[0x277CBEB58] set];
    allFriends = v12->_allFriends;
    v12->_allFriends = v20;

    v12->_meQueryRetries = 0;
    v12->_friendQueryRetries = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEA78]);
    displayContextToSortedSectionsCache = v12->_displayContextToSortedSectionsCache;
    v12->_displayContextToSortedSectionsCache = v22;

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v12 selector:sel__calendarDayChangedNotification_ name:*MEMORY[0x277CBE580] object:0];
    [v24 addObserver:v12 selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
    v25 = objc_alloc(MEMORY[0x277CBEBD0]);
    v26 = [v25 initWithSuiteName:*MEMORY[0x277CE91F8]];
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      v27 = 1;
    }

    else
    {
      v27 = [v26 BOOLForKey:*MEMORY[0x277CE9218]];
    }

    v12->_shouldGenerateDemoData = v27;
    v28 = v12->_healthStore;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __86__ASFriendListSectionManager_initWithModel_activitySharingClient_workoutDataProvider___block_invoke_3;
    v31[3] = &unk_278C52F90;
    v29 = v12;
    v32 = v29;
    [(HKHealthStore *)v28 _shouldGenerateDemoDataPreferenceIsSet:v31];
    [(ASFriendListSectionManager *)v29 _startQueriesIfRequired];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __86__ASFriendListSectionManager_initWithModel_activitySharingClient_workoutDataProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__ASFriendListSectionManager_initWithModel_activitySharingClient_workoutDataProvider___block_invoke_2;
    block[3] = &unk_278C52F18;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __86__ASFriendListSectionManager_initWithModel_activitySharingClient_workoutDataProvider___block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__ASFriendListSectionManager_initWithModel_activitySharingClient_workoutDataProvider___block_invoke_4;
  v3[3] = &unk_278C52F68;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASFriendListSectionManager;
  [(ASFriendListSectionManager *)&v4 dealloc];
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  [(ASFriendListSectionManager *)self _startQueriesIfRequired];
  if ([(ASFriendListSectionManager *)self hasAnyFriendsSetup])
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FF0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23E69E000, v4, OS_LOG_TYPE_DEFAULT, "Fetching data because app came into foreground.", v5, 2u);
    }

    [(ASFriendListSectionManager *)self fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan:600 completion:0];
  }
}

- (void)_startQueriesIfRequired
{
  if (self->_shouldGenerateDemoData)
  {
    ASLoggingInitialize();
    v3 = *MEMORY[0x277CE8FF0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23E69E000, v3, OS_LOG_TYPE_DEFAULT, "Generating fake friends.", v4, 2u);
    }

    [(ASFriendListSectionManager *)self _stopQueries];
    [(ASFriendListSectionManager *)self _createFakeFriends];
  }

  else
  {

    [(ASFriendListSectionManager *)self _startQueries];
  }
}

- (void)_startQueries
{
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ASFriendListSectionManager__startQueries__block_invoke;
  block[3] = &unk_278C52F18;
  block[4] = self;
  dispatch_async(readWriteQueue, block);
}

uint64_t __43__ASFriendListSectionManager__startQueries__block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E69E000, v2, OS_LOG_TYPE_DEFAULT, "Application is active, starting me and friend queries if needed.", v4, 2u);
  }

  *(*(a1 + 32) + 80) = 0;
  *(*(a1 + 32) + 88) = 0;
  [*(a1 + 32) _queue_startMeQuery];
  return [*(a1 + 32) _queue_startFriendsQuery];
}

- (void)_stopQueries
{
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASFriendListSectionManager__stopQueries__block_invoke;
  block[3] = &unk_278C52F18;
  block[4] = self;
  dispatch_async(readWriteQueue, block);
}

- (id)sectionsForDisplayContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ASFriendListSectionManager_sectionsForDisplayContext___block_invoke;
  block[3] = &unk_278C52FE0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(readWriteQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__ASFriendListSectionManager_sectionsForDisplayContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) _createSectionsForFriends:*(*(a1 + 32) + 48) withDisplayContext:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 40);
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = [v8 copy];
    [v9 setObject:v10 forKey:v11];
  }
}

- (void)enumerateValidDisplayModesForFilter:(int64_t)a3 usingBlock:(id)a4
{
  v8 = a4;
  v6 = [(ASFriendListSectionManager *)self _copyFriends];
  for (i = 0; i != 5; ++i)
  {
    v8[2](v8, i);
  }

  if ([(ASFriendListSectionManager *)self _isWheelchairUserDisplayModeValidForFriends:v6 filter:a3])
  {
    v8[2](v8, 5);
  }
}

uint64_t __57__ASFriendListSectionManager_sectionForFriendsInvitingMe__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 sentInviteRequestToMe])
  {
    v3 = [v2 isFriendshipCurrentlyActive] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __63__ASFriendListSectionManager_sectionForFriendsHidingDataFromMe__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive])
  {
    v3 = [v2 isCurrentlyHidingActivityDataFromMe];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __65__ASFriendListSectionManager_sectionForFriendsMyDataIsHiddenFrom__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive])
  {
    v3 = [v2 isMyActivityDataCurrentlyHidden];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __59__ASFriendListSectionManager_sectionForFriendsWithNoHiding__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive] && objc_msgSend(v2, "canSeeMyActivityData"))
  {
    v3 = [v2 isActivityDataCurrentlyVisibleToMe];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __68__ASFriendListSectionManager_sectionForFriendsRequestingMeToCompete__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive])
  {
    v3 = [v2 isAwaitingCompetitionResponseFromMe];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __69__ASFriendListSectionManager_sectionForFriendsRequestedToCompeteByMe__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive] && objc_msgSend(v2, "hasCompetitionRequestFromMe") && (objc_msgSend(v2, "isCompetitionActive") & 1) == 0)
  {
    v5 = [v2 dateForLatestOutgoingCompetitionRequest];
    IsStillVisible = ASCompetitionRequestIsStillVisible();
  }

  else
  {
    IsStillVisible = 0;
  }

  return IsStillVisible;
}

uint64_t __71__ASFriendListSectionManager_sectionForFriendsRequestedToDowngradeByMe__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive])
  {
    v3 = [v2 needsDowngradeRequestAcknowledgment];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __77__ASFriendListSectionManager__sectionForDataVisibilityConditionalUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 friend];
  v6 = [v5 fullName];
  v7 = [v6 uppercaseString];
  v8 = [v4 friend];

  v9 = [v8 fullName];
  v10 = [v9 uppercaseString];
  v11 = [v7 compare:v10];

  return v11;
}

- (id)_sectionForDataVisibilityConditionalUsingBlock:(id)a3 comparator:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(ASFriendListSectionManager *)self _copyFriends];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (([v13 isMe] & 1) == 0 && v6[2](v6, v13))
        {
          v14 = objc_alloc_init(ASFriendListRow);
          [(ASFriendListRow *)v14 setFriend:v13];
          if ([v13 isActivityDataCurrentlyVisibleToMe])
          {
            v15 = [v13 currentSnapshotWithGoalsCarriedForward];
            [(ASFriendListRow *)v14 setSnapshot:v15];
          }

          v16 = [v11 arrayByAddingObject:v14];

          v11 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v17 = [v11 sortedArrayUsingComparator:v20];

  v18 = [[ASFriendListSection alloc] initWithDate:0 andRows:v17];

  return v18;
}

- (id)friendWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ASFriendListSectionManager *)self _copyFriends];
  v6 = [(ASFriendListSectionManager *)self _friendWithUUID:v4 fromFriends:v5];

  return v6;
}

- (id)_friendWithUUID:(id)a3 fromFriends:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 UUID];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)me
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  readWriteQueue = self->_readWriteQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ASFriendListSectionManager_me__block_invoke;
  v5[3] = &unk_278C52FB8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readWriteQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__ASFriendListSectionManager_me__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_me];

  return MEMORY[0x2821F96F8]();
}

- (id)allActiveFriendsAsRecipients
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [(ASFriendListSectionManager *)self _copyFriends];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  v4 = v3;
  v5 = *v17;
  v6 = MEMORY[0x277CBEBF8];
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v16 + 1) + 8 * i);
      if (([v8 isMe] & 1) == 0)
      {
        v9 = [v8 contact];
        v10 = [v9 primaryDestinationForMessaging];
        if (v10 && [v8 isFriendshipCurrentlyActive])
        {
          v11 = [v8 isActivityDataCurrentlyVisibleToMe];

          if (!v11)
          {
            continue;
          }

          v9 = [v8 contact];
          v10 = [v9 primaryDestinationForMessaging];
          v12 = [v6 arrayByAddingObject:v10];

          v6 = v12;
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v4);
LABEL_16:

  if ([v6 count])
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (unint64_t)numberOfFriendsWithInvitesAwaitingResponseFromMe
{
  v2 = [(ASFriendListSectionManager *)self sectionForFriendsInvitingMe];
  v3 = [v2 rows];

  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_385];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [v5 count];
  return v6;
}

uint64_t __78__ASFriendListSectionManager_numberOfFriendsWithInvitesAwaitingResponseFromMe__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 friend];
  v3 = [v2 isAwaitingInviteResponseFromMe];

  return v3;
}

- (unint64_t)numberOfFriendsWithCompetitionRequestsAwaitingResponseFromMe
{
  v2 = [(ASFriendListSectionManager *)self sectionForFriendsRequestingMeToCompete];
  v3 = [v2 rows];
  v4 = [v3 count];

  return v4;
}

- (void)fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  activitySharingClient = self->_activitySharingClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__ASFriendListSectionManager_fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan_completion___block_invoke;
  v9[3] = &unk_278C53068;
  v10 = v6;
  v8 = v6;
  [(ASActivitySharingClient *)activitySharingClient fetchActivityDataIfGreaterThanLastFetchElapsedMinimum:a3 completion:v9];
}

void __99__ASFriendListSectionManager_fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FF0];
  if (v5 || !a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
    {
      __99__ASFriendListSectionManager_fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23E69E000, v6, OS_LOG_TYPE_DEFAULT, "Finished fetching new friend data successfully.", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (int64_t)numberOfNewFriendsAllowed
{
  v2 = [(ASFriendListSectionManager *)self _copyFriends];
  v3 = ASNumberOfNewFriendsAllowedForFriends();

  return v3;
}

- (void)_calendarDayChangedNotification:(id)a3
{
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ASFriendListSectionManager__calendarDayChangedNotification___block_invoke;
  block[3] = &unk_278C52F18;
  block[4] = self;
  dispatch_async(readWriteQueue, block);
}

uint64_t __62__ASFriendListSectionManager__calendarDayChangedNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_stopQueries];
  v2 = *(a1 + 32);

  return [v2 _startQueriesIfRequired];
}

void __65__ASFriendListSectionManager__postFriendsListChangedNotification__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277CE9208] object:0];
}

- (BOOL)_isWheelchairUserDisplayModeValidForFriends:(id)a3 filter:(int64_t)a4
{
  v5 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ASFriendListSectionManager__isWheelchairUserDisplayModeValidForFriends_filter___block_invoke;
  v7[3] = &unk_278C53090;
  v7[4] = self;
  v7[5] = &v8;
  [(ASFriendListSectionManager *)self _enumerateVisibleDaysForFriends:v5 usingBlock:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

void __81__ASFriendListSectionManager__isWheelchairUserDisplayModeValidForFriends_filter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) _filterFriends:a4 withWheelchairUseAtCacheIndex:a3];
  if ([v5 count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_queue_restartQueryAfterErrorCount:(int64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_readWriteQueue);
  v7 = 5;
  if (a3 < 5)
  {
    v7 = a3;
  }

  v8 = dispatch_time(0, 1000000000 * v7);
  readWriteQueue = self->_readWriteQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ASFriendListSectionManager__queue_restartQueryAfterErrorCount_withBlock___block_invoke;
  v11[3] = &unk_278C530B8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_after(v8, readWriteQueue, v11);
}

uint64_t __75__ASFriendListSectionManager__queue_restartQueryAfterErrorCount_withBlock___block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
  {
    __75__ASFriendListSectionManager__queue_restartQueryAfterErrorCount_withBlock___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_queue_startFriendsQuery
{
  dispatch_assert_queue_V2(self->_readWriteQueue);
  if (!self->_friendQuery)
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x277CE9520]);
    activitySharingClient = self->_activitySharingClient;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke;
    v7[3] = &unk_278C53108;
    objc_copyWeak(&v8, &location);
    v7[4] = self;
    v5 = [v3 initWithActivitySharingClient:activitySharingClient updateHandler:v7];
    friendQuery = self->_friendQuery;
    self->_friendQuery = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FF0];
  v8 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134349314;
    v21 = [v5 count];
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_23E69E000, v9, OS_LOG_TYPE_DEFAULT, "Friend Query returned results, friend count: %{public}lu, error: %{public}@.", buf, 0x16u);
  }

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    ASLoggingInitialize();
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_cold_1();
      if (!WeakRetained)
      {
        goto LABEL_10;
      }
    }

    else if (!WeakRetained)
    {
LABEL_10:

      goto LABEL_11;
    }

    v11 = WeakRetained[4];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_392;
    v16[3] = &unk_278C52F18;
    v16[4] = WeakRetained;
    dispatch_async(v11, v16);
    goto LABEL_10;
  }

  if (v5)
  {
    v12 = objc_loadWeakRetained((a1 + 40));
    WeakRetained = v12;
    if (v12)
    {
      v13 = *(v12 + 4);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_391;
      block[3] = &unk_278C530E0;
      block[4] = v12;
      v14 = v5;
      v15 = *(a1 + 32);
      v18 = v14;
      v19 = v15;
      dispatch_async(v13, block);
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_391(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 88) = 0;
  v2 = [*(a1 + 32) _queue_me];
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  if (v2)
  {
    v6 = [*(*(a1 + 32) + 48) setByAddingObject:v2];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;
  }

  *(*(a1 + 48) + 105) = 1;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 48) + 105);
    v11[0] = 67109120;
    v11[1] = v10;
    _os_log_impl(&dword_23E69E000, v9, OS_LOG_TYPE_DEFAULT, "Updating _hasReceivedFriendListQueryResult: %d", v11, 8u);
  }

  [*(a1 + 32) _queue_updateWithNewData];
}

uint64_t __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_392(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++v1[11];
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_2;
  v6 = &unk_278C52F18;
  v7 = *(a1 + 32);
  return [v1 _queue_restartQueryAfterErrorCount:? withBlock:?];
}

uint64_t __54__ASFriendListSectionManager__queue_startFriendsQuery__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);

  return [v4 _queue_startFriendsQuery];
}

void __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke(id *a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FF0];
  v9 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 134349314;
    v22 = [v6 count];
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_23E69E000, v10, OS_LOG_TYPE_DEFAULT, "Me Query returned results, result count: %{public}lu, error: %{public}@.", buf, 0x16u);
  }

  if (v7)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = WeakRetained[4];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_398;
      block[3] = &unk_278C52F18;
      block[4] = v12;
      dispatch_async(v13, block);
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([v6 count])
  {
    v14 = objc_loadWeakRetained(a1 + 6);
    v12 = v14;
    if (v14)
    {
      v15 = v14[4];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_397;
      v17[3] = &unk_278C53130;
      v17[4] = v14;
      v18 = v6;
      v19 = a1[4];
      v20 = a1[5];
      dispatch_async(v15, v17);
    }

    goto LABEL_11;
  }

LABEL_12:
}

void __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_397(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  [*(a1 + 32) _queue_handleActivitySummaryUpdate:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 72);
  v3 = [*(a1 + 48) startOfDayForDate:*(a1 + 56)];
  [v2 startFetchingFromDate:v3];
}

uint64_t __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_398(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stopQuery:*(*(a1 + 32) + 64)];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 applicationState];

  v4 = *(a1 + 32);
  if (v3)
  {
    v4[8] = 0;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    ++v4[10];
    return [v4 _queue_restartQueryAfterErrorCount:? withBlock:?];
  }
}

uint64_t __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);

  return [v4 _queue_startMeQuery];
}

void __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FF0];
  v9 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 134349314;
    v20 = [v6 count];
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_23E69E000, v10, OS_LOG_TYPE_DEFAULT, "Me Query received updates, object count: %{public}lu, error: %{public}@.", buf, 0x16u);
  }

  if (v7)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = WeakRetained[4];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_401;
      block[3] = &unk_278C52F18;
      block[4] = v12;
      dispatch_async(v13, block);
    }

LABEL_11:

    goto LABEL_12;
  }

  *(*(a1 + 32) + 80) = 0;
  if ([v6 count])
  {
    v14 = objc_loadWeakRetained((a1 + 40));
    v12 = v14;
    if (v14)
    {
      v15 = v14[4];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_400;
      v17[3] = &unk_278C53180;
      v17[4] = v14;
      v18 = v6;
      dispatch_async(v15, v17);
    }

    goto LABEL_11;
  }

LABEL_12:
}

uint64_t __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_401(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stopQuery:*(*(a1 + 32) + 64)];
  v2 = *(a1 + 32);
  ++v2[10];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_2_402;
  v7 = &unk_278C52F18;
  v8 = *(a1 + 32);
  return [v2 _queue_restartQueryAfterErrorCount:? withBlock:?];
}

uint64_t __49__ASFriendListSectionManager__queue_startMeQuery__block_invoke_2_402(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);

  return [v4 _queue_startMeQuery];
}

- (void)_queue_stopQueries
{
  dispatch_assert_queue_V2(self->_readWriteQueue);
  if (self->_meQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    [(FIUIWorkoutDataProvider *)self->_workoutDataProvider stopFetching];
  }

  if (self->_modelQueryToken)
  {
    [(FIUIModel *)self->_model stopCurrentActivitySummaryQueryForClientToken:?];
  }

  self->_meQueryRetries = 0;
  self->_friendQueryRetries = 0;
  friendQuery = self->_friendQuery;
  self->_friendQuery = 0;

  meQuery = self->_meQuery;
  self->_meQuery = 0;

  modelQueryToken = self->_modelQueryToken;
  self->_modelQueryToken = 0;
}

- (void)_queue_handleActivitySummaryUpdate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_readWriteQueue);
  v5 = [(ASFriendListSectionManager *)self _queue_me];
  if (!v5)
  {
    v6 = [(NSSet *)self->_allFriends mutableCopy];
    v7 = objc_alloc(MEMORY[0x277CE90F8]);
    v5 = [v7 initWithActivitySnapshots:0 friendAchievements:0 friendWorkouts:0 contact:0 competitions:MEMORY[0x277CBEBF8]];
    [v6 addObject:v5];
    v8 = [MEMORY[0x277CBEB98] setWithSet:v6];
    allFriends = self->_allFriends;
    self->_allFriends = v8;
  }

  v23 = self;
  v10 = [v5 snapshots];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:v17];
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v17, "_activitySummaryIndex")}];
        [v11 setObject:v18 forKey:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  [v22 setSnapshots:v11];
  v23->_hasReceivedMeQueryResult = 1;
  ASLoggingInitialize();
  v20 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    hasReceivedMeQueryResult = v23->_hasReceivedMeQueryResult;
    *buf = 67109120;
    v29 = hasReceivedMeQueryResult;
    _os_log_impl(&dword_23E69E000, v20, OS_LOG_TYPE_DEFAULT, "Updating _hasReceivedMeQueryResult: %d", buf, 8u);
  }

  [(ASFriendListSectionManager *)v23 _queue_updateWithNewData];
}

- (void)_queue_handleMyWorkoutsUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_readWriteQueue);
  v13 = [(ASFriendListSectionManager *)self _queue_me];
  if (!v13)
  {
    v3 = [(NSSet *)self->_allFriends mutableCopy];
    v4 = objc_alloc(MEMORY[0x277CE90F8]);
    v13 = [v4 initWithActivitySnapshots:0 friendAchievements:0 friendWorkouts:0 contact:0 competitions:MEMORY[0x277CBEBF8]];
    [v3 addObject:?];
    v5 = [MEMORY[0x277CBEB98] setWithSet:v3];
    allFriends = self->_allFriends;
    self->_allFriends = v5;
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(FIUIWorkoutDataProvider *)self->_workoutDataProvider allWorkouts];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v7 allKeys];
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v17 = 0;
        v18 = &v17;
        v19 = 0x3032000000;
        v20 = __Block_byref_object_copy_;
        v21 = __Block_byref_object_dispose_;
        v22 = [MEMORY[0x277CBEB98] set];
        v12 = [v7 objectForKeyedSubscript:v11];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __59__ASFriendListSectionManager__queue_handleMyWorkoutsUpdate__block_invoke;
        v16[3] = &unk_278C531D0;
        v16[4] = &v17;
        [v12 enumerateObjectsUsingBlock:v16];
        [v15 setObject:v18[5] forKey:v11];

        _Block_object_dispose(&v17, 8);
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  [v13 setFriendWorkouts:v15];
  [(ASFriendListSectionManager *)self _queue_updateWithNewData];
}

void __59__ASFriendListSectionManager__queue_handleMyWorkoutsUpdate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutFromHKWorkout:a2];
  v4 = [v3 setByAddingObject:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_enumerateVisibleDaysForFriends:(id)a3 usingBlock:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v35 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v35)
  {
    v33 = *v50;
    do
    {
      v7 = 0;
      do
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v7;
        v8 = *(*(&v49 + 1) + 8 * v7);
        v36 = [v8 currentDateComponents];
        v9 = [(ASFriendListSectionManager *)self _datesToShowSnapshotsForFriend:v8 startingFromCurrentDateComponents:?];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v46;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v46 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v45 + 1) + 8 * i);
              v15 = [v6 objectForKeyedSubscript:v14];
              if (!v15)
              {
                v15 = [MEMORY[0x277CBEB98] set];
              }

              v16 = [v15 setByAddingObject:v8];

              [v6 setObject:v16 forKeyedSubscript:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v11);
        }

        v7 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v35);
  }

  v17 = [v6 allKeys];
  v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_411];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * j);
        v25 = [v6 objectForKeyedSubscript:v24];
        if ([v25 count] != 1)
        {

          goto LABEL_29;
        }

        v26 = [v25 anyObject];
        if ([v26 isMe])
        {
          [v6 removeObjectForKey:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

  v27 = [v6 allKeys];
  v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_413];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __73__ASFriendListSectionManager__enumerateVisibleDaysForFriends_usingBlock___block_invoke_3;
  v38[3] = &unk_278C53218;
  v39 = v6;
  v40 = v31;
  v29 = v6;
  v30 = v31;
  [v28 enumerateObjectsUsingBlock:v38];
}

void __73__ASFriendListSectionManager__enumerateVisibleDaysForFriends_usingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = [v3 hk_gregorianCalendar];
  v10 = _HKActivityCacheDateComponentsFromDate();

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:_HKCacheIndexFromDateComponents()];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v9 = [v8 allObjects];
  (*(v7 + 16))(v7, v4, v6, v9);
}

- (id)_datesToShowSnapshotsForFriend:(id)a3 startingFromCurrentDateComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = *MEMORY[0x277CE9298];
  v9 = 1 - *MEMORY[0x277CE9298];
  v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  [v6 setDay:{objc_msgSend(v6, "day") + 1}];
  v32 = v6;
  v11 = [v10 dateFromComponents:v6];
  v12 = [v10 startOfDayForDate:v11];

  v31 = v12;
  v13 = [v10 dateByAddingUnit:128 value:-1 toDate:v12 options:0];
  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = [v10 startOfDayForDate:v14];

  v30 = v15;
  v16 = [v10 dateByAddingUnit:16 value:2 - v8 toDate:v15 options:0];
  v17 = [v10 startOfDayForDate:v16];

  v29 = v17;
  v18 = [v10 dateByAddingUnit:128 value:-1 toDate:v17 options:0];
  if ([v5 isMe])
  {
    v19 = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    v20 = [v5 dateForLatestRelationshipStart];
    v19 = [v10 startOfDayForDate:v20];
  }

  v21 = [v10 dateFromComponents:v32];
  v22 = [v10 startOfDayForDate:v21];

  if (v9 <= 0)
  {
    v26 = 0;
    while (![v13 hk_isBeforeDate:v19] || (objc_msgSend(v13, "hk_isBeforeDate:", v22) & 1) == 0)
    {
      if (([v5 isMe] & 1) != 0 || objc_msgSend(v5, "isActivityDataVisibleToMeForDate:", v13))
      {
        v27 = [v10 startOfDayForDate:v13];
        [v7 addObject:v27];
      }

      v23 = [v10 dateByAddingUnit:16 value:-1 toDate:v13 options:0];

      if (([v23 hk_isBeforeDate:v18] & 1) == 0)
      {
        v13 = v23;
        if (v26-- > v9)
        {
          continue;
        }
      }

      goto LABEL_6;
    }
  }

  v23 = v13;
LABEL_6:
  v24 = [MEMORY[0x277CBEB98] setWithSet:v7];

  return v24;
}

- (id)_createSectionsForFriends:(id)a3 withDisplayContext:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v6 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = [MEMORY[0x277CBEB18] array];
  v7 = [v30 allObjects];
  v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_418];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  if ([v6 displayFilter] == 1)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_420];
    v29 = [v9 filteredArrayUsingPredicate:v10];

    v11 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v12 = [MEMORY[0x277CBEAA8] date];
    v28 = [v11 startOfDayForDate:v12];

    v13 = -[ASFriendListSectionManager _sortFriends:forDisplayMode:cacheIndex:](self, "_sortFriends:forDisplayMode:cacheIndex:", v29, [v6 displayMode], 0);
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v16)
    {
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = objc_opt_new();
          [v20 setFriend:v19];
          v21 = [v19 currentSnapshotWithGoalsCarriedForward];
          [v20 setSnapshot:v21];

          [v14 addObject:v20];
        }

        v16 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v16);
    }

    v22 = [ASFriendListSection alloc];
    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
    v24 = [(ASFriendListSection *)v22 initWithDate:v28 andRows:v23];

    [v39[5] insertObject:v24 atIndex:0];
  }

  else
  {
    v25 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __75__ASFriendListSectionManager__createSectionsForFriends_withDisplayContext___block_invoke_3;
    v31[3] = &unk_278C53260;
    v31[4] = self;
    v32 = v6;
    v33 = &v38;
    [(ASFriendListSectionManager *)self _enumerateVisibleDaysForFriends:v25 usingBlock:v31];
  }

  v26 = [MEMORY[0x277CBEA60] arrayWithArray:{v39[5], v28}];

  _Block_object_dispose(&v38, 8);

  return v26;
}

uint64_t __75__ASFriendListSectionManager__createSectionsForFriends_withDisplayContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFriendshipCurrentlyActive])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isMe];
  }

  return v3;
}

uint64_t __75__ASFriendListSectionManager__createSectionsForFriends_withDisplayContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isActivityDataCurrentlyVisibleToMe])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isMe];
  }

  return v3;
}

void __75__ASFriendListSectionManager__createSectionsForFriends_withDisplayContext___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v7 = a3;
  v21 = a4;
  v8 = [*(a1 + 32) _sortFriends:v21 forDisplayMode:objc_msgSend(*(a1 + 40) cacheIndex:{"displayMode"), v7}];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = objc_opt_new();
        [v16 setFriend:v15];
        v17 = [v15 snapshotWithGoalsCarriedForwardForSnapshotIndex:v7];
        [v16 setSnapshot:v17];

        [v9 addObject:v16];
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = [ASFriendListSection alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v20 = [(ASFriendListSection *)v18 initWithDate:v22 andRows:v19];

  [*(*(*(a1 + 48) + 8) + 40) insertObject:v20 atIndex:0];
}

- (id)_filterFriends:(id)a3 withSnapshotDataAtCacheIndex:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ASFriendListSectionManager__filterFriends_withSnapshotDataAtCacheIndex___block_invoke;
  v12[3] = &unk_278C53288;
  v13 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

BOOL __74__ASFriendListSectionManager__filterFriends_withSnapshotDataAtCacheIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 snapshots];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4 != 0;

  return v5;
}

- (id)_filterFriends:(id)a3 withActiveFriendshipAtEndOfDay:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ASFriendListSectionManager__filterFriends_withActiveFriendshipAtEndOfDay___block_invoke;
  v12[3] = &unk_278C53288;
  v13 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

uint64_t __76__ASFriendListSectionManager__filterFriends_withActiveFriendshipAtEndOfDay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMe])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isActivityDataVisibleToMeForDate:*(a1 + 32)];
  }

  return v4;
}

- (id)_filterFriends:(id)a3 withWheelchairUseAtCacheIndex:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ASFriendListSectionManager__filterFriends_withWheelchairUseAtCacheIndex___block_invoke;
  v12[3] = &unk_278C53288;
  v13 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

uint64_t __75__ASFriendListSectionManager__filterFriends_withWheelchairUseAtCacheIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 snapshots];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  [v4 wheelchairUse];
  v5 = FIUIIsWheelchairUserForWheelchairUse();

  return v5;
}

- (id)_sortFriends:(id)a3 forDisplayMode:(int64_t)a4 cacheIndex:(id)a5
{
  v7 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__ASFriendListSectionManager__sortFriends_forDisplayMode_cacheIndex___block_invoke;
  v16 = &unk_278C532B0;
  v17 = v7;
  v18 = a4;
  v8 = v7;
  v9 = [a3 sortedArrayUsingComparator:&v13];
  v10 = [v9 reverseObjectEnumerator];
  v11 = [v10 allObjects];

  return v11;
}

uint64_t __69__ASFriendListSectionManager__sortFriends_forDisplayMode_cacheIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = [v5 snapshots];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];

    v9 = [v6 snapshots];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v8 = [v5 currentSnapshot];
    v10 = [v6 currentSnapshot];
  }

  v11 = 0;
  v12 = *(a1 + 40);
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      v21 = MEMORY[0x277CCABB0];
      [v8 energyBurnedGoalPercentage];
      v23 = v22;
      [v8 mmgp];
      v13 = [v21 numberWithDouble:v23 + v24];
      v15 = MEMORY[0x277CCABB0];
      [v10 energyBurnedGoalPercentage];
      v26 = v25;
      [v10 mmgp];
      v16 = v26 + v27;
    }

    else
    {
      v13 = 0;
      if (v12 != 2)
      {
        goto LABEL_39;
      }

      v17 = MEMORY[0x277CCABB0];
      [v8 briskMinutesGoalPercentage];
      v13 = [v17 numberWithDouble:?];
      v15 = MEMORY[0x277CCABB0];
      [v10 briskMinutesGoalPercentage];
    }

LABEL_16:
    v11 = [v15 numberWithDouble:v16];
    if (!v13)
    {
      goto LABEL_39;
    }

    goto LABEL_17;
  }

  if (v12 == 3)
  {
    v18 = MEMORY[0x277CCABB0];
    [v8 stepCount];
    v13 = [v18 numberWithDouble:?];
    v15 = MEMORY[0x277CCABB0];
    [v10 stepCount];
    goto LABEL_16;
  }

  if (v12 != 4)
  {
    v13 = 0;
    if (v12 != 5)
    {
      goto LABEL_39;
    }

    v14 = MEMORY[0x277CCABB0];
    [v8 pushCount];
    v13 = [v14 numberWithDouble:?];
    v15 = MEMORY[0x277CCABB0];
    [v10 pushCount];
    goto LABEL_16;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "snapshotIndex")}];
  }

  v30 = v20;
  v31 = *(a1 + 32);
  v70 = v8;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "snapshotIndex")}];
  }

  v33 = v32;
  v69 = v10;
  v71 = v5;
  v34 = [v5 friendWorkouts];
  v35 = [v34 objectForKeyedSubscript:v30];

  v36 = [v6 friendWorkouts];
  v67 = v33;
  v66 = [v36 objectForKeyedSubscript:v33];

  v37 = MEMORY[0x277CCD7E8];
  v38 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v39 = [v37 quantityWithUnit:v38 doubleValue:0.0];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v40 = v35;
  v41 = [v40 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v77;
    do
    {
      v44 = 0;
      v45 = v39;
      do
      {
        if (*v77 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v46 = [*(*(&v76 + 1) + 8 * v44) totalEnergyBurned];
        v39 = [v45 _quantityByAddingQuantity:v46];

        ++v44;
        v45 = v39;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v42);
  }

  v68 = v30;

  v47 = MEMORY[0x277CCABB0];
  v48 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v39 doubleValueForUnit:v48];
  v13 = [v47 numberWithDouble:?];

  v49 = MEMORY[0x277CCD7E8];
  v50 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v51 = [v49 quantityWithUnit:v50 doubleValue:0.0];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v52 = v66;
  v53 = [v52 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v73;
    do
    {
      v56 = 0;
      v57 = v51;
      do
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v58 = [*(*(&v72 + 1) + 8 * v56) totalEnergyBurned];
        v51 = [v57 _quantityByAddingQuantity:v58];

        ++v56;
        v57 = v51;
      }

      while (v54 != v56);
      v54 = [v52 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v54);
  }

  v59 = MEMORY[0x277CCABB0];
  v60 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v51 doubleValueForUnit:v60];
  v11 = [v59 numberWithDouble:?];

  v8 = v70;
  v5 = v71;
  v10 = v69;
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_17:
  if (v11)
  {
    v28 = [v13 compare:v11];
    if (v28)
    {
      v29 = v28;
      goto LABEL_41;
    }
  }

LABEL_39:
  v61 = [v5 displayName];
  v62 = [v6 displayName];
  v29 = [v62 caseInsensitiveCompare:v61];

  if (!v29)
  {
    v63 = [v5 dateForLatestRelationshipStart];
    v64 = [v6 dateForLatestRelationshipStart];
    v29 = [v63 compare:v64];
  }

LABEL_41:

  return v29;
}

@end