@interface ANAnnouncementManager
+ (id)managerWithEndpointID:(id)d;
- (ANAnnouncementManager)initWithEndpointID:(id)d;
- (ANAnnouncementManagerDelegte)delegate;
- (BOOL)_addAnnouncement:(id)announcement home:(id)home groupID:(id)d;
- (BOOL)_shouldAccept:(id)accept accept:(id)a4;
- (BOOL)_updateAnnouncement:(id)announcement withContentsOfAnnouncement:(id)ofAnnouncement home:(id)home groupID:(id)d;
- (NSArray)allAnnouncementsSortedByReceipt;
- (id)announcementForID:(id)d;
- (id)announcementsForGroupID:(id)d;
- (id)announcementsForIDs:(id)ds;
- (void)_addAnnouncementToReceiveQueue:(id)queue;
- (void)_cleanDirectory;
- (void)_handleExpiredTimer:(id)timer withID:(id)d;
- (void)_loadStoredAnnouncements;
- (void)_notifyDelegateAnnouncementsChangedForGroupID:(id)d;
- (void)_removeAnnouncementWithID:(id)d;
- (void)_removeAnnouncementsForGroupID:(id)d;
- (void)_removeAnnouncementsHittingStorageAgeLimit;
- (void)_resetTimer:(id)timer;
- (void)_startTimer:(id)timer;
- (void)_startTimerWithID:(id)d;
- (void)_suspendTimer:(id)timer;
- (void)addAnnouncement:(id)announcement completionHandler:(id)handler;
- (void)cleanForExit;
- (void)pauseAllTimers;
- (void)removeAllAnnouncements;
- (void)removeOldAnnouncements;
- (void)resetAllTimers;
- (void)resumeAllTimers;
- (void)updateAnnouncement:(id)announcement statusFlags:(unint64_t)flags;
@end

@implementation ANAnnouncementManager

+ (id)managerWithEndpointID:(id)d
{
  dCopy = d;
  v4 = [[ANAnnouncementManager alloc] initWithEndpointID:dCopy];

  return v4;
}

- (ANAnnouncementManager)initWithEndpointID:(id)d
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ANAnnouncementManager;
  v6 = [(ANAnnouncementManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointID, d);
    ANLogBuildCategoryName();
    v8 = ANLogWithCategory();
    log = v7->_log;
    v7->_log = v8;

    v10 = objc_opt_new();
    homeAnnouncements = v7->_homeAnnouncements;
    v7->_homeAnnouncements = v10;

    v12 = objc_opt_new();
    timers = v7->_timers;
    v7->_timers = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("com.apple.announce.announcementManager", v14);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v15;

    [(ANAnnouncementManager *)v7 _loadStoredAnnouncements];
    [(ANAnnouncementManager *)v7 _cleanDirectory];
  }

  return v7;
}

- (void)cleanForExit
{
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ANAnnouncementManager_cleanForExit__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __37__ANAnnouncementManager_cleanForExit__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) timers];
  [v1 removeAllObjects];
}

- (void)addAnnouncement:(id)announcement completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  handlerCopy = handler;
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  dispatch_assert_queue_not_V2(serialQueue);

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__7;
  v21[4] = __Block_byref_object_dispose__7;
  v22 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__ANAnnouncementManager_addAnnouncement_completionHandler___block_invoke;
  v20[3] = &unk_278C875E8;
  v20[4] = &v23;
  v20[5] = v21;
  if (![(ANAnnouncementManager *)self _shouldAccept:announcementCopy accept:v20])
  {
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  notify_post([*MEMORY[0x277CEA7F8] UTF8String]);
  v9 = +[ANUserNotificationController sharedController];
  v10 = [v9 canPostUserNotificationForAnnouncement:announcementCopy home:v24[5]];

  if (v10)
  {
    objc_initWeak(location, self);
    serialQueue2 = [(ANAnnouncementManager *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ANAnnouncementManager_addAnnouncement_completionHandler___block_invoke_6;
    block[3] = &unk_278C87610;
    objc_copyWeak(&v19, location);
    v15 = announcementCopy;
    v17 = &v23;
    v18 = v21;
    v16 = handlerCopy;
    dispatch_async(serialQueue2, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
    goto LABEL_10;
  }

  v12 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = announcementCopy;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "Can't post user notification. Dropping announcement: %@", location, 0xCu);
  }

  if (handlerCopy)
  {
LABEL_9:
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_10:
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&v23, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __59__ANAnnouncementManager_addAnnouncement_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __59__ANAnnouncementManager_addAnnouncement_completionHandler___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) identifier];
  v4 = [WeakRetained announcementForID:v3];

  if (v4)
  {
    v5 = [WeakRetained log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identifier];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Received duplicate announcement and updating existing: %@", &v11, 0xCu);
    }

    v7 = [WeakRetained _updateAnnouncement:v4 withContentsOfAnnouncement:*(a1 + 32) home:*(*(*(a1 + 48) + 8) + 40) groupID:*(*(*(a1 + 56) + 8) + 40)];
  }

  else
  {
    v7 = [WeakRetained _addAnnouncement:*(a1 + 32) home:*(*(*(a1 + 48) + 8) + 40) groupID:*(*(*(a1 + 56) + 8) + 40)];
  }

  v8 = v7;
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAnnouncement:(id)announcement statusFlags:(unint64_t)flags
{
  announcementCopy = announcement;
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  dispatch_assert_queue_not_V2(serialQueue);

  serialQueue2 = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke;
  block[3] = &unk_278C866B8;
  selfCopy = self;
  flagsCopy = flags;
  v11 = announcementCopy;
  v9 = announcementCopy;
  dispatch_sync(serialQueue2, block);
}

void __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setStatusFlags:{*(a1 + 48) | objc_msgSend(*(a1 + 32), "statusFlags")}];
  v3 = [*v2 location];
  v4 = [v3 homeUUID];

  if (!v4)
  {
    v10 = [*(a1 + 40) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke_cold_2(v2);
    }

    v6 = +[ANAnalytics shared];
    v11 = [*(a1 + 40) endpointID];
    v12 = [ANAnalyticsContext contextWithEndpointID:v11];
    [v6 error:5005 context:v12];

    goto LABEL_11;
  }

  v5 = +[ANHomeManager shared];
  v6 = [v5 homeForID:v4];

  if (!v6)
  {
    v11 = [*(a1 + 40) log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke_cold_1();
    }

LABEL_11:

    goto LABEL_12;
  }

  v7 = [*(a1 + 32) groupID];
  v8 = [*(a1 + 40) announcementsForGroupID:v7];
  if ([v8 count])
  {
    v9 = +[ANUserNotificationController sharedController];
    [v9 updateNotificationForAnnouncements:v8 home:v6 groupID:v7];
  }

LABEL_12:
}

- (id)announcementsForGroupID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:d];
  v4 = v3;
  if (v3)
  {
    array = [v3 array];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (id)announcementForID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_homeAnnouncements;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:*(*(&v17 + 1) + 8 * i)];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __43__ANAnnouncementManager_announcementForID___block_invoke;
        v15[3] = &unk_278C871C8;
        v16 = dCopy;
        v10 = [v9 indexOfObjectPassingTest:v15];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [v9 objectAtIndex:v10];

          goto LABEL_11;
        }
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __43__ANAnnouncementManager_announcementForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)announcementsForIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ANAnnouncementManager *)self announcementForID:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)allAnnouncementsSortedByReceipt
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_homeAnnouncements;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:*(*(&v21 + 1) + 8 * i)];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v3 addObject:*(*(&v17 + 1) + 8 * j)];
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = [v3 sortedArrayUsingComparator:&__block_literal_global_28];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __56__ANAnnouncementManager_allAnnouncementsSortedByReceipt__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 receiptTimestamp];
  if (v6 && (v7 = v6, [v5 receiptTimestamp], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v4 receiptTimestamp];
    v10 = [v5 receiptTimestamp];
    v11 = [v9 compare:v10];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)removeOldAnnouncements
{
  objc_initWeak(&location, self);
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ANAnnouncementManager_removeOldAnnouncements__block_invoke;
  v4[3] = &unk_278C86580;
  objc_copyWeak(&v5, &location);
  dispatch_sync(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__ANAnnouncementManager_removeOldAnnouncements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeAnnouncementsHittingStorageAgeLimit];
}

- (void)removeAllAnnouncements
{
  objc_initWeak(&location, self);
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ANAnnouncementManager_removeAllAnnouncements__block_invoke;
  v4[3] = &unk_278C86580;
  objc_copyWeak(&v5, &location);
  dispatch_sync(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__ANAnnouncementManager_removeAllAnnouncements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanDirectory];
}

- (void)pauseAllTimers
{
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ANAnnouncementManager_pauseAllTimers__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __39__ANAnnouncementManager_pauseAllTimers__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) timersSuspended];
  if ((result & 1) == 0)
  {
    v3 = +[ANUserNotificationController sharedController];
    v4 = [*(a1 + 32) homeAnnouncements];
    v5 = [v4 allKeys];
    [v3 pauseExpirationForNotificationsWithGroupIDs:v5];

    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) timers];
      *buf = 134217984;
      v23 = [v7 count];
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Pausing All Timers: (%lu) timers", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [*(a1 + 32) timers];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [*(a1 + 32) timers];
          v15 = [v14 objectForKey:v13];

          if (v15)
          {
            [*(a1 + 32) _suspendTimer:v15];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    result = [*(a1 + 32) setTimersSuspended:1];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resumeAllTimers
{
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ANAnnouncementManager_resumeAllTimers__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __40__ANAnnouncementManager_resumeAllTimers__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) timersSuspended];
  if (result)
  {
    v3 = +[ANUserNotificationController sharedController];
    v4 = [*(a1 + 32) homeAnnouncements];
    v5 = [v4 allKeys];
    [v3 resumeExpirationForNotificationsWithGroupIDs:v5];

    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) timers];
      *buf = 134217984;
      v23 = [v7 count];
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Resuming All Timers: (%lu) timers", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [*(a1 + 32) timers];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [*(a1 + 32) timers];
          v15 = [v14 objectForKey:v13];

          if (v15)
          {
            [*(a1 + 32) _startTimer:v15];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    result = [*(a1 + 32) setTimersSuspended:0];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetAllTimers
{
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ANAnnouncementManager_resetAllTimers__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __39__ANAnnouncementManager_resetAllTimers__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timers];
  v3 = [v2 allValues];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _resetTimer:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addAnnouncement:(id)announcement home:(id)home groupID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  dCopy = d;
  homeCopy = home;
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  mEMORY[0x277CEABF0] = [MEMORY[0x277CEABF0] sharedManager];
  v13 = *MEMORY[0x277CEAB08];
  endpointID = [(ANAnnouncementManager *)self endpointID];
  v15 = [mEMORY[0x277CEABF0] transaction:v13 forEndpointUUID:endpointID];

  mEMORY[0x277CEABF0]2 = [MEMORY[0x277CEABF0] sharedManager];
  [mEMORY[0x277CEABF0]2 transaction:v15 setActive:1];

  if (![(ANAnnouncementManager *)self timersSuspended])
  {
    v17 = +[ANUserNotificationController sharedController];
    v18 = [v17 hasDeliveredNotificationsWithGroupID:dCopy];

    if ((v18 & 1) == 0)
    {
      v19 = [(ANAnnouncementManager *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = dCopy;
        _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "No existing notifications for Group ID (%@). Will wipe announcements if any.", buf, 0xCu);
      }

      [(ANAnnouncementManager *)self _removeAnnouncementsForGroupID:dCopy];
    }
  }

  if (![(ANAnnouncementManager *)self timersSuspended])
  {
    [(ANAnnouncementManager *)self _removeAnnouncementsHittingStorageAgeLimit];
  }

  v20 = +[ANAnnouncementStorageManager sharedManager];
  endpointID2 = [(ANAnnouncementManager *)self endpointID];
  [v20 saveAnnouncement:announcementCopy endpointID:endpointID2];

  [(ANAnnouncementManager *)self _startTimerWithID:dCopy];
  transcriptionText = [announcementCopy transcriptionText];

  if (!transcriptionText || ([announcementCopy transcriptionText], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", &stru_2851BDB18), v23, v24))
  {
    if (_AXSShowAudioTranscriptions())
    {
      mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
      v26 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA968]];
      [v26 doubleValue];
      v28 = v27;

      v29 = [(ANAnnouncementManager *)self log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "Processing audio transcriptions", buf, 2u);
      }

      v30 = dispatch_semaphore_create(0);
      Current = CFAbsoluteTimeGetCurrent();
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __55__ANAnnouncementManager__addAnnouncement_home_groupID___block_invoke;
      v40[3] = &unk_278C87658;
      v42 = Current;
      v40[4] = self;
      v41 = v30;
      v32 = v30;
      [announcementCopy processAudioTranscription:v40];
      v33 = dispatch_time(0, (v28 * 1000000000.0));
      dispatch_semaphore_wait(v32, v33);
    }
  }

  [(ANAnnouncementManager *)self _addAnnouncementToReceiveQueue:announcementCopy];
  v34 = +[ANUserNotificationController sharedController];
  homeAnnouncements = [(ANAnnouncementManager *)self homeAnnouncements];
  v36 = [homeAnnouncements objectForKeyedSubscript:dCopy];
  array = [v36 array];
  [v34 postNotificationForAnnouncement:announcementCopy groupAnnouncements:array home:homeCopy groupID:dCopy];

  [(ANAnnouncementManager *)self _notifyDelegateAnnouncementsChangedForGroupID:dCopy];
  v38 = *MEMORY[0x277D85DE8];
  return 1;
}

intptr_t __55__ANAnnouncementManager__addAnnouncement_home_groupID___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "Processed audio transcription: %d in %f seconds", v8, 0x12u);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_updateAnnouncement:(id)announcement withContentsOfAnnouncement:(id)ofAnnouncement home:(id)home groupID:(id)d
{
  homeCopy = home;
  dCopy = d;
  ofAnnouncementCopy = ofAnnouncement;
  announcementCopy = announcement;
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v15 = [announcementCopy updateWithContentsOfAnnouncement:ofAnnouncementCopy];
  if (v15)
  {
    v16 = [(ANAnnouncementManager *)self announcementsForGroupID:dCopy];
    if ([v16 count])
    {
      v17 = +[ANUserNotificationController sharedController];
      [v17 updateNotificationForAnnouncements:v16 home:homeCopy groupID:dCopy];
    }

    [(ANAnnouncementManager *)self _notifyDelegateAnnouncementsChangedForGroupID:dCopy];
  }

  else
  {
    v18 = [(ANAnnouncementManager *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_INFO, "No announcement updates.", v20, 2u);
    }
  }

  return v15;
}

- (void)_notifyDelegateAnnouncementsChangedForGroupID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Announcements changed for GroupID %@", &v9, 0xCu);
  }

  v6 = [(ANAnnouncementManager *)self announcementsForGroupID:dCopy];
  delegate = [(ANAnnouncementManager *)self delegate];
  [delegate announcementManager:self announcements:v6 didChangeForGroupID:dCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAccept:(id)accept accept:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  acceptCopy = accept;
  v7 = a4;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v9 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA838]];

  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v10 dateByAddingTimeInterval:{-objc_msgSend(v9, "integerValue")}];

  creationTimestamp = [acceptCopy creationTimestamp];
  [creationTimestamp timeIntervalSince1970];
  v14 = v13;
  [v11 timeIntervalSince1970];
  v16 = v14 - v15;

  if (v16 <= 0.0)
  {
    v23 = [(ANAnnouncementManager *)self log];
    v24 = -v16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v24;
      _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, "Removing Old Announcement. Exceeded limit by: %f", buf, 0xCu);
    }

    endpointID = [(ANAnnouncementManager *)self endpointID];
    homeUUID = [ANAnalyticsContext contextWithEndpointID:endpointID];

    v26 = +[ANAnalytics shared];
    [v26 announcementEntryAgeLimit:acceptCopy timeExceeded:homeUUID context:v24];

    goto LABEL_12;
  }

  location = [acceptCopy location];
  homeUUID = [location homeUUID];

  if (!homeUUID)
  {
    v27 = [(ANAnnouncementManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ANAnnouncementManager _shouldAccept:acceptCopy accept:?];
    }

    v28 = +[ANAnalytics shared];
    endpointID2 = [(ANAnnouncementManager *)self endpointID];
    v30 = [ANAnalyticsContext contextWithEndpointID:endpointID2];
    [v28 error:5005 context:v30];

LABEL_12:
    (*(v7 + 2))(v7, 0, 0);
    v22 = 0;
    goto LABEL_21;
  }

  v19 = +[ANHomeManager shared];
  v20 = [v19 homeForID:homeUUID];

  if (v20)
  {
    groupID = [acceptCopy groupID];
    v22 = groupID != 0;
    if (groupID)
    {
      (*(v7 + 2))(v7, v20, groupID);
    }

    else
    {
      v35 = [(ANAnnouncementManager *)self log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [ANAnnouncementManager _shouldAccept:acceptCopy accept:?];
      }

      v39 = +[ANAnalytics shared];
      endpointID3 = [(ANAnnouncementManager *)self endpointID];
      v36 = [ANAnalyticsContext contextWithEndpointID:endpointID3];
      [v39 error:5007 context:v36];

      (*(v7 + 2))(v7, v20, 0);
    }
  }

  else
  {
    v31 = [(ANAnnouncementManager *)self log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke_cold_1();
    }

    v32 = +[ANAnalytics shared];
    endpointID4 = [(ANAnnouncementManager *)self endpointID];
    v34 = [ANAnalyticsContext contextWithEndpointID:endpointID4];
    [v32 error:5006 context:v34];

    (*(v7 + 2))(v7, 0, 0);
    v22 = 0;
  }

LABEL_21:
  v37 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_addAnnouncementToReceiveQueue:(id)queue
{
  v15 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  groupID = [queueCopy groupID];
  homeAnnouncements = [(ANAnnouncementManager *)self homeAnnouncements];
  v8 = [homeAnnouncements objectForKeyedSubscript:groupID];

  if (!v8)
  {
    v8 = objc_opt_new();
    homeAnnouncements2 = [(ANAnnouncementManager *)self homeAnnouncements];
    [homeAnnouncements2 setObject:v8 forKeyedSubscript:groupID];
  }

  v10 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [queueCopy identifier];
    v13 = 138412290;
    v14 = identifier;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "Adding Announcement to received queue: %@", &v13, 0xCu);
  }

  [v8 addObject:queueCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeAnnouncementsForGroupID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:dCopy];
  v6 = [v5 copy];

  if ([v6 count])
  {
    v7 = [(ANAnnouncementManager *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Removing (%@) Announcements", buf, 0xCu);
    }

    homeAnnouncements = self->_homeAnnouncements;
    v10 = objc_opt_new();
    v21 = dCopy;
    [(NSMutableDictionary *)homeAnnouncements setObject:v10 forKey:dCopy];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          v17 = +[ANAnnouncementStorageManager sharedManager];
          identifier = [v16 identifier];
          endpointID = [(ANAnnouncementManager *)self endpointID];
          [v17 deleteAnnouncementWithID:identifier endpointID:endpointID];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    dCopy = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeAnnouncementsHittingStorageAgeLimit
{
  v67 = *MEMORY[0x277D85DE8];
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [(NSMutableDictionary *)self->_homeAnnouncements allKeys];
  v4 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v56;
    v46 = *MEMORY[0x277CEA868];
    *&v5 = 134217984;
    v41 = v5;
    v42 = *v56;
    do
    {
      v8 = 0;
      v43 = v6;
      do
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:v9, v41];
        v11 = [v10 copy];

        if ([v11 count])
        {
          mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
          v13 = [mEMORY[0x277CEAB80] numberForDefault:v46];

          v14 = [MEMORY[0x277CBEAA8] now];
          v50 = [v14 dateByAddingTimeInterval:{-objc_msgSend(v13, "integerValue")}];

          v15 = objc_opt_new();
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v16 = v11;
          v17 = [v16 countByEnumeratingWithState:&v51 objects:v65 count:16];
          if (v17)
          {
            v18 = v17;
            v45 = v9;
            v47 = v13;
            v48 = v11;
            v49 = v8;
            v19 = 0;
            v20 = *v52;
            v21 = v16;
LABEL_9:
            v22 = 0;
            while (1)
            {
              if (*v52 != v20)
              {
                objc_enumerationMutation(v21);
              }

              v23 = *(*(&v51 + 1) + 8 * v22);
              creationTimestamp = [v23 creationTimestamp];
              [creationTimestamp timeIntervalSince1970];
              v26 = v25;
              [v50 timeIntervalSince1970];
              v28 = v26 - v27;

              v29 = [(ANAnnouncementManager *)self log];
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              if (v28 > 0.0)
              {
                break;
              }

              if (v30)
              {
                identifier = [v23 identifier];
                *buf = 138412546;
                v62 = *&identifier;
                v63 = 2048;
                v64 = -v28;
                _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "Removing Old Announcement %@. Exceeded limit by: %f", buf, 0x16u);
              }

              v59 = @"timeExceeded";
              v32 = v28;
              *&v33 = -v32;
              v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
              v60 = v34;
              v19 = 1;
              v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
              [v15 addAnnouncement:v23 metadata:v35];

              identifier2 = [v23 identifier];
              [(ANAnnouncementManager *)self _removeAnnouncementWithID:identifier2];

              if (v18 == ++v22)
              {
                v18 = [v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
                v19 = 1;
                if (v18)
                {
                  goto LABEL_9;
                }

                v7 = v42;
                v6 = v43;
                v11 = v48;
                v8 = v49;
                v13 = v47;
                goto LABEL_21;
              }
            }

            if (v30)
            {
              *buf = v41;
              v62 = v28;
              _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "Announcement has not reached age limit. Remaining time: %f", buf, 0xCu);
            }

            v7 = v42;
            v6 = v43;
            v11 = v48;
            v8 = v49;
            v13 = v47;
            if (v19)
            {
LABEL_21:
              [(ANAnnouncementManager *)self _notifyDelegateAnnouncementsChangedForGroupID:v45];
            }
          }

          else
          {
          }

          endpointID = [(ANAnnouncementManager *)self endpointID];
          v38 = [ANAnalyticsContext contextWithEndpointID:endpointID];

          v39 = +[ANAnalytics shared];
          [v39 announcementsStorageAgeLimit:v15 context:v38];
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v6);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_removeAnnouncementWithID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_homeAnnouncements;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:*(*(&v19 + 1) + 8 * i)];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __51__ANAnnouncementManager__removeAnnouncementWithID___block_invoke;
        v17[3] = &unk_278C871C8;
        v10 = dCopy;
        v18 = v10;
        v11 = [v9 indexOfObjectPassingTest:v17];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 removeObjectAtIndex:v11];
          v12 = [(ANAnnouncementManager *)self log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v10;
            _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "Removed Announcement from queue: %@", buf, 0xCu);
          }

          goto LABEL_13;
        }
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = +[ANAnnouncementStorageManager sharedManager];
  endpointID = [(ANAnnouncementManager *)self endpointID];
  [v13 deleteAnnouncementWithID:dCopy endpointID:endpointID];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __51__ANAnnouncementManager__removeAnnouncementWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_loadStoredAnnouncements
{
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ANAnnouncementManager__loadStoredAnnouncements__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __49__ANAnnouncementManager__loadStoredAnnouncements__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = +[ANAnnouncementStorageManager sharedManager];
  v3 = [*(a1 + 32) endpointID];
  v4 = [v2 storedAnnouncementsForEndpointID:v3];

  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = [v4 count];
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Loaded Stored Announcements: %lu announcements", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if ([*(a1 + 32) _shouldAccept:v11 accept:&__block_literal_global_30])
        {
          [*(a1 + 32) _addAnnouncementToReceiveQueue:v11];
        }

        else
        {
          v12 = +[ANAnnouncementStorageManager sharedManager];
          v13 = [v11 identifier];
          v14 = [*(a1 + 32) endpointID];
          [v12 deleteAnnouncementWithID:v13 endpointID:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v15 = [*(a1 + 32) homeAnnouncements];
  v16 = [v15 allKeys];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        v23 = [*(a1 + 32) homeAnnouncements];
        v24 = [v23 objectForKeyedSubscript:v22];
        v25 = [v24 count];

        if (v25)
        {
          [*(a1 + 32) _startTimerWithID:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_cleanDirectory
{
  serialQueue = [(ANAnnouncementManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ANAnnouncementManager__cleanDirectory__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __40__ANAnnouncementManager__cleanDirectory__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allAnnouncementsSortedByReceipt];
  v5 = [v2 na_map:&__block_literal_global_33];

  v3 = +[ANAnnouncementStorageManager sharedManager];
  v4 = [*(a1 + 32) endpointID];
  [v3 removeAnnouncementDataExcludingDataForAnnouncementIDs:v5 endpointID:v4];
}

- (void)_startTimerWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  timers = [(ANAnnouncementManager *)self timers];
  v6 = [timers objectForKey:dCopy];

  if (v6 && ![(ANAnnouncementManager *)self timersSuspended])
  {
    [(ANAnnouncementManager *)self _resetTimer:v6];
  }

  else
  {
    serialQueue = [(ANAnnouncementManager *)self serialQueue];
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, serialQueue);

    if (v8)
    {
      v9 = [(ANAnnouncementManager *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = dCopy;
        _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Created Timer %@ for %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __43__ANAnnouncementManager__startTimerWithID___block_invoke;
      handler[3] = &unk_278C86B70;
      objc_copyWeak(&v17, buf);
      v10 = v8;
      v15 = v10;
      v11 = dCopy;
      v16 = v11;
      dispatch_source_set_event_handler(v10, handler);
      timers2 = [(ANAnnouncementManager *)self timers];
      [timers2 setObject:v10 forKey:v11];

      if (![(ANAnnouncementManager *)self timersSuspended])
      {
        [(ANAnnouncementManager *)self _startTimer:v10];
      }

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __43__ANAnnouncementManager__startTimerWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleExpiredTimer:*(a1 + 32) withID:*(a1 + 40)];
}

- (void)_handleExpiredTimer:(id)timer withID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  dCopy = d;
  v8 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = timerCopy;
    v41 = 2112;
    v42 = dCopy;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Timer %@ with ID %@ Expired", buf, 0x16u);
  }

  v33 = timerCopy;
  dispatch_source_cancel(timerCopy);
  v32 = dCopy;
  v9 = [(NSMutableDictionary *)self->_homeAnnouncements objectForKey:dCopy];
  v10 = [v9 copy];

  v11 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 count];
    *buf = 134217984;
    v40 = v12;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Removing %lu Announcements", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        identifier = [*(*(&v34 + 1) + 8 * i) identifier];
        v19 = [(ANAnnouncementManager *)self log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = identifier;
          _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "Removing Announcement: %@", buf, 0xCu);
        }

        [(ANAnnouncementManager *)self _removeAnnouncementWithID:identifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  timers = [(ANAnnouncementManager *)self timers];
  [timers removeObjectForKey:v32];

  allAnnouncementsSortedByReceipt = [(ANAnnouncementManager *)self allAnnouncementsSortedByReceipt];
  v22 = [allAnnouncementsSortedByReceipt count];

  if (!v22)
  {
    mEMORY[0x277CEABF0] = [MEMORY[0x277CEABF0] sharedManager];
    v24 = *MEMORY[0x277CEAB08];
    endpointID = [(ANAnnouncementManager *)self endpointID];
    v26 = [mEMORY[0x277CEABF0] transaction:v24 forEndpointUUID:endpointID];

    mEMORY[0x277CEABF0]2 = [MEMORY[0x277CEABF0] sharedManager];
    [mEMORY[0x277CEABF0]2 transaction:v26 setActive:0];
  }

  endpointID2 = [(ANAnnouncementManager *)self endpointID];
  v29 = [ANAnalyticsContext contextWithEndpointID:endpointID2];

  v30 = +[ANAnalytics shared];
  [v30 announcementsExpired:v13 ofGroupCount:objc_msgSend(v13 context:{"count"), v29}];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer:(id)timer
{
  v16 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v6 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA850]];

  integerValue = [v6 integerValue];
  v8 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = timerCopy;
    v14 = 2048;
    v15 = integerValue;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Starting Timer (%@) for %ld seconds", &v12, 0x16u);
  }

  v9 = 1000000000 * integerValue;
  v10 = dispatch_time(0, v9);
  dispatch_source_set_timer(timerCopy, v10, v9, 0);
  dispatch_resume(timerCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetTimer:(id)timer
{
  v9 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (![(ANAnnouncementManager *)self timersSuspended])
  {
    dispatch_suspend(timerCopy);
    v5 = [(ANAnnouncementManager *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = timerCopy;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Restarting Timer %@", &v7, 0xCu);
    }

    [(ANAnnouncementManager *)self _startTimer:timerCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_suspendTimer:(id)timer
{
  v9 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = [(ANAnnouncementManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = timerCopy;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Suspending Timer %@", &v7, 0xCu);
  }

  dispatch_suspend(timerCopy);
  v6 = *MEMORY[0x277D85DE8];
}

- (ANAnnouncementManagerDelegte)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23F525000, v0, OS_LOG_TYPE_ERROR, "Failed to find home for ID: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __56__ANAnnouncementManager_updateAnnouncement_statusFlags___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_23F525000, v2, v3, "No home identifier in announcement: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_shouldAccept:(void *)a1 accept:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_23F525000, v2, v3, "No Group ID in Announcement: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_shouldAccept:(void *)a1 accept:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_23F525000, v2, v3, "No home identifier in announcement: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end