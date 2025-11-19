@interface _EKNotificationMonitor
+ (OS_os_log)logHandle;
+ (id)blacklistedNotificationQueue;
+ (id)blacklistedRowIDs;
+ (id)requestedDarwinNotifications;
+ (void)addBlacklistedNotificationObjectID:(id)a3;
- (NSArray)notificationReferences;
- (id)_eventStore;
- (id)_fetchEventNotificationReferencesFromEventStore:(id)a3 earliestExpiringNotification:(id *)a4;
- (id)_initWithOptions:(int64_t)a3 eventStore:(id)a4 eventStoreGetter:(id)a5;
- (id)effectiveCallbackQueue;
- (unint64_t)notificationCount;
- (void)_addRemovedOrAddedObjectIDsTo:(id)a3 oldNotifications:(id)a4 newNotifications:(id)a5;
- (void)_alertPrefChanged;
- (void)_databaseChanged;
- (void)_eventStoreChanged;
- (void)_eventStoreChangedNotification:(id)a3;
- (void)_killSyncTimer:(id)a3;
- (void)_killTimer;
- (void)_notificationCountChangedExternally;
- (void)_resetSyncTimer;
- (void)_syncDidEnd:(id)a3;
- (void)_syncDidStart;
- (void)_syncTimerFired:(id)a3;
- (void)_timerFired;
- (void)_updateTimerFireDate:(id)a3;
- (void)adjust;
- (void)attemptReloadSynchronously:(BOOL)a3;
- (void)dealloc;
- (void)handleDarwinNotification:(id)a3;
- (void)start;
- (void)stop;
- (void)trackChangesInEventStore;
@end

@implementation _EKNotificationMonitor

+ (OS_os_log)logHandle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___EKNotificationMonitor_logHandle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (logHandle_onceToken_0 != -1)
  {
    dispatch_once(&logHandle_onceToken_0, block);
  }

  v2 = logHandle_logHandle;

  return v2;
}

+ (id)requestedDarwinNotifications
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6992E20];
  v7[0] = @"EKNotificationCountChangedExternallyNotification";
  v7[1] = v2;
  v3 = *MEMORY[0x1E6992E60];
  v7[2] = *MEMORY[0x1E6992E58];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_initWithOptions:(int64_t)a3 eventStore:(id)a4 eventStoreGetter:(id)a5
{
  v7 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = _EKNotificationMonitor;
  v11 = [(_EKNotificationMonitor *)&v29 init];
  v12 = v11;
  if (v11)
  {
    v11[102] = v7 & 1;
    v13 = *&vshl_u16((*&vdup_n_s16(v7) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFFFFFELL) & 0xFF01FF01FF01FF01;
    *(v11 + 93) = vuzp1_s8(v13, v13).u32[0];
    v11[97] = (v7 & 0x20) != 0;
    v11[98] = (v7 & 0x40) != 0;
    v11[100] = (v7 & 0x80) != 0;
    v11[101] = BYTE1(v7) & 1;
    v14 = [v10 copy];
    v15 = *(v12 + 1);
    *(v12 + 1) = v14;

    objc_storeStrong(v12 + 18, a4);
    if (!*(v12 + 18) && !*(v12 + 1))
    {
      v16 = objc_alloc_init(EKTimedEventStorePurger);
      v17 = *(v12 + 17);
      *(v12 + 17) = v16;

      [*(v12 + 17) setPurgingAllowed:1];
      [*(v12 + 17) setTimeout:10.0];
      [*(v12 + 17) setCreationBlock:&__block_literal_global_46];
    }

    if (*(v12 + 97) == 1)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = *(v12 + 10);
      *(v12 + 10) = v18;
    }

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.eventkit.notificationMonitor", v20);
    v22 = *(v12 + 7);
    *(v12 + 7) = v21;

    objc_opt_class();
    v23 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v24 = [v23 UTF8String];

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(v24, v25);
    v27 = *(v12 + 16);
    *(v12 + 16) = v26;
  }

  return v12;
}

- (void)dealloc
{
  [(_EKNotificationMonitor *)self _killSyncTimer:0];
  [(_EKNotificationMonitor *)self stop];
  v3.receiver = self;
  v3.super_class = _EKNotificationMonitor;
  [(_EKNotificationMonitor *)&v3 dealloc];
}

- (id)_eventStore
{
  eventStoreGetter = self->_eventStoreGetter;
  if (eventStoreGetter)
  {
    eventStorePurger = eventStoreGetter[2](self->_eventStoreGetter, a2);
  }

  else
  {
    eventStore = self->_eventStore;
    if (eventStore)
    {
      eventStorePurger = eventStore;
    }

    else
    {
      eventStorePurger = self->_eventStorePurger;
      if (eventStorePurger)
      {
        eventStorePurger = [(EKEventStore *)eventStorePurger acquireCachedEventStoreOrCreate:1];
      }
    }
  }

  return eventStorePurger;
}

- (void)_killTimer
{
  dispatch_assert_queue_V2(self->_queue);
  timer = self->_timer;
  if (timer)
  {
    [(PCPersistentTimer *)timer invalidate];
    v4 = self->_timer;
    self->_timer = 0;
  }

  nextFireTime = self->_nextFireTime;
  self->_nextFireTime = 0;
}

- (void)start
{
  if (!self->_running)
  {
    v3 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Monitor starting up.", buf, 2u);
    }

    self->_initialCheck = 1;
    [(_EKNotificationMonitor *)self attemptReload];
    self->_running = 1;
    if (self->_registerForDarwinNotifications)
    {
      if (self->_useSyncIdleTimer)
      {
        [MEMORY[0x1E6992F98] addObserver:self selector:sel__syncDidStart name:*MEMORY[0x1E6992E58]];
        [MEMORY[0x1E6992F98] addObserver:self selector:sel__syncDidEndExternally name:*MEMORY[0x1E6992E60]];
        [MEMORY[0x1E6992F98] addObserver:self selector:sel__notificationCountChangedExternally name:@"EKNotificationCountChangedExternallyNotification"];
      }

      [MEMORY[0x1E6992F98] addObserver:self selector:sel__alertPrefChanged name:*MEMORY[0x1E6992E20]];
      [MEMORY[0x1E6992F98] addObserver:self selector:sel__alertPrefChanged name:@"com.apple.eventkit.preference.notification.AlertInviteeDeclines"];
      if (self->_excludeUncheckedCalendars)
      {
        v4 = MEMORY[0x1E6992F98];
        v5 = +[EKCalendarVisibilityManager focusModeConfigurationChangedName];
        [v4 addObserver:self selector:sel__notificationCountChangedExternally name:v5];
      }
    }

    if (self->_eventStore)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:self selector:sel__eventStoreChangedNotification_ name:@"EKEventStoreChangedNotification" object:self->_eventStore];
    }

    if (self->_eventStorePurger)
    {
      objc_initWeak(buf, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __31___EKNotificationMonitor_start__block_invoke;
      v7[3] = &unk_1E77FE828;
      objc_copyWeak(&v8, buf);
      [(EKTimedEventStorePurger *)self->_eventStorePurger setChangedBlock:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }
  }
}

- (void)stop
{
  if (self->_running)
  {
    v11 = v2;
    v12 = v3;
    v5 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Monitor shutting down.", v10, 2u);
    }

    if (self->_registerForDarwinNotifications)
    {
      if (self->_useSyncIdleTimer)
      {
        [MEMORY[0x1E6992F98] removeObserver:self name:*MEMORY[0x1E6992E58]];
        [MEMORY[0x1E6992F98] removeObserver:self name:*MEMORY[0x1E6992E60]];
        [MEMORY[0x1E6992F98] removeObserver:self name:@"EKNotificationCountChangedExternallyNotification"];
      }

      [MEMORY[0x1E6992F98] removeObserver:self name:*MEMORY[0x1E6992E20]];
    }

    if (self->_eventStore)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:self name:@"EKEventStoreChangedNotification" object:self->_eventStore];
    }

    eventStorePurger = self->_eventStorePurger;
    if (eventStorePurger)
    {
      [(EKTimedEventStorePurger *)eventStorePurger setChangedBlock:0];
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30___EKNotificationMonitor_stop__block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_sync(queue, block);
    self->_running = 0;
  }
}

- (unint64_t)notificationCount
{
  if ([(_EKNotificationMonitor *)self isMonitoringOnlyNotificationCount])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v3 = [(_EKNotificationMonitor *)self notificationQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43___EKNotificationMonitor_notificationCount__block_invoke;
    v8[3] = &unk_1E77FD530;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(v3, v8);

    v4 = v10[3];
    _Block_object_dispose(&v9, 8);
    return v4;
  }

  else
  {
    v6 = [(_EKNotificationMonitor *)self notificationReferences];
    v7 = [v6 count];

    return v7;
  }
}

- (NSArray)notificationReferences
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  v3 = [(_EKNotificationMonitor *)self notificationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___EKNotificationMonitor_notificationReferences__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)adjust
{
  if (self->_running)
  {

    [(_EKNotificationMonitor *)self attemptReload];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring expiration timer because the notification monitor is not running.", v5, 2u);
    }
  }
}

- (void)attemptReloadSynchronously:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke;
  aBlock[3] = &unk_1E77FD418;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  queue = self->_queue;
  if (v3)
  {
    dispatch_sync(queue, v5);
  }

  else
  {
    dispatch_async(queue, v5);
  }
}

- (void)_addRemovedOrAddedObjectIDsTo:(id)a3 oldNotifications:(id)a4 newNotifications:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = [v8 mutableCopy];
  [v12 intersectSet:v7];
  [v8 minusSet:v12];
  [v7 minusSet:v12];
  v10 = [v8 allObjects];

  [v9 addObjectsFromArray:v10];
  v11 = [v7 allObjects];

  [v9 addObjectsFromArray:v11];
}

- (void)_updateTimerFireDate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(_EKNotificationMonitor *)self _killTimer];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [v4 CalIsBeforeDate:v5];
    v7 = v6;
    if (v6 && self->_lastExpirationTimerFireDateWasInThePast)
    {
      v8 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(_EKNotificationMonitor *)v4 _updateTimerFireDate:v8];
      }

      self->_lastExpirationTimerFireDateWasInThePast = v7;
    }

    else
    {
      self->_lastExpirationTimerFireDateWasInThePast = v6;
      v9 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = v4;
        _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Next expiration fire time will be %{public}@.", &v17, 0xCu);
      }

      v10 = [v4 copy];
      nextFireTime = self->_nextFireTime;
      self->_nextFireTime = v10;

      v12 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithFireDate:self->_nextFireTime serviceIdentifier:@"com.apple.eventkit.invitationmonitor" target:self selector:sel__timerFired userInfo:0];
      timer = self->_timer;
      self->_timer = v12;

      [(PCPersistentTimer *)self->_timer setMinimumEarlyFireProportion:1.0];
      v14 = self->_timer;
      v15 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(PCPersistentTimer *)v14 scheduleInRunLoop:v15];
    }
  }

  else
  {
    v5 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "No expiring notifications. Not setting expiration timer.", &v17, 2u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)effectiveCallbackQueue
{
  callbackNotificationQueue = self->_callbackNotificationQueue;
  if (callbackNotificationQueue)
  {
    v3 = callbackNotificationQueue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (void)handleDarwinNotification:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:*MEMORY[0x1E6992E58]])
  {
    [(_EKNotificationMonitor *)self _syncDidStart];
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E6992E60]])
  {
    [(_EKNotificationMonitor *)self _syncDidEnd:0];
  }

  else if (([v6 isEqualToString:@"EKNotificationCountChangedExternallyNotification"] & 1) != 0 || self->_excludeUncheckedCalendars && (+[EKCalendarVisibilityManager focusModeConfigurationChangedName](EKCalendarVisibilityManager, "focusModeConfigurationChangedName"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v6, "isEqualToString:", v4), v4, v5))
  {
    [(_EKNotificationMonitor *)self _notificationCountChangedExternally];
  }

  else if (([v6 isEqualToString:*MEMORY[0x1E6992E20]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.eventkit.preference.notification.AlertInviteeDeclines"))
  {
    [(_EKNotificationMonitor *)self _alertPrefChanged];
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E6992E00]])
  {
    [(_EKNotificationMonitor *)self _databaseChanged];
  }
}

- (void)_eventStoreChangedNotification:(id)a3
{
  if (![EKChangeListener isSyncStatusChangeNotification:a3])
  {

    [(_EKNotificationMonitor *)self _eventStoreChanged];
  }
}

- (void)_eventStoreChanged
{
  [(_EKNotificationMonitor *)self trackChangesInEventStore];

  [(_EKNotificationMonitor *)self attemptReload];
}

- (void)_databaseChanged
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Database changed.", v4, 2u);
  }

  [(_EKNotificationMonitor *)self trackChangesInEventStore];
  [(_EKNotificationMonitor *)self attemptReload];
}

- (void)_notificationCountChangedExternally
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Notification count changed externally.", buf, 2u);
  }

  *buf = 0;
  v7 = buf;
  v8 = 0x2020000000;
  v9 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___EKNotificationMonitor__notificationCountChangedExternally__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = buf;
  dispatch_sync(notificationQueue, v5);
  if (v7[24] == 1)
  {
    [(_EKNotificationMonitor *)self attemptReload];
  }

  _Block_object_dispose(buf, 8);
}

- (void)_alertPrefChanged
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Alert pref changed.", v4, 2u);
  }

  [(_EKNotificationMonitor *)self attemptReload];
}

- (void)_timerFired
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Expiration timer fired.", v4, 2u);
  }

  [(_EKNotificationMonitor *)self adjust];
}

+ (id)blacklistedNotificationQueue
{
  if (blacklistedNotificationQueue_onceToken != -1)
  {
    +[_EKNotificationMonitor blacklistedNotificationQueue];
  }

  v3 = blacklistedNotificationQueue__blacklistedNotificationQueue;

  return v3;
}

+ (void)addBlacklistedNotificationObjectID:(id)a3
{
  v4 = a3;
  v5 = [a1 blacklistedNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___EKNotificationMonitor_addBlacklistedNotificationObjectID___block_invoke;
  block[3] = &unk_1E77FD418;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

+ (id)blacklistedRowIDs
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = 0;
  v2 = [a1 blacklistedNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___EKNotificationMonitor_blacklistedRowIDs__block_invoke;
  block[3] = &unk_1E77FCFD8;
  block[4] = &v10;
  dispatch_sync(v2, block);

  v3 = objc_opt_new();
  v4 = v11[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___EKNotificationMonitor_blacklistedRowIDs__block_invoke_2;
  v7[3] = &unk_1E77FE878;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)_fetchEventNotificationReferencesFromEventStore:(id)a3 earliestExpiringNotification:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEFAULT, "Fetching event notifications from event store: %@.", &buf, 0xCu);
  }

  v8 = [v6 eventNotificationsExcludingUncheckedCalendars:self->_excludeUncheckedCalendars filteredByShowsNotificationsFlag:self->_filteredByShowsNotificationsFlag earliestExpiringNotification:a4];
  v9 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Fetched event notifications from event store: %@.", &buf, 0xCu);
  }

  if (self->_automaticallyFaultNotifications)
  {
    v10 = v8;
    if ([v10 count] >= 7)
    {
      v11 = [v10 subarrayWithRange:{0, 6}];

      v10 = v11;
    }

    v12 = [EKCalendarNotificationReference batchLoadNotifications:v10];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v13 = +[_EKNotificationMonitor blacklistedNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103___EKNotificationMonitor__fetchEventNotificationReferencesFromEventStore_earliestExpiringNotification___block_invoke;
  block[3] = &unk_1E77FCFD8;
  block[4] = &buf;
  dispatch_sync(v13, block);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103___EKNotificationMonitor__fetchEventNotificationReferencesFromEventStore_earliestExpiringNotification___block_invoke_2;
  v18[3] = &unk_1E77FE8A0;
  v18[4] = &buf;
  v14 = [MEMORY[0x1E696AE18] predicateWithBlock:v18];
  v15 = [v8 filteredArrayUsingPredicate:v14];

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_resetSyncTimer
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  if (self->_useSyncIdleTimer)
  {
    [(_EKNotificationMonitor *)self _killSyncTimer:0];
    v3 = objc_alloc(MEMORY[0x1E695DFF0]);
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:30.0];
    v5 = [v3 initWithFireDate:v4 interval:self target:sel__syncTimerFired_ selector:0 userInfo:0 repeats:0.0];
    syncTimer = self->_syncTimer;
    self->_syncTimer = v5;

    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v7 addTimer:self->_syncTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_killSyncTimer:(id)a3
{
  syncTimer = self->_syncTimer;
  if (!a3 || syncTimer == a3)
  {
    [(NSTimer *)syncTimer invalidate];
    v5 = self->_syncTimer;
    self->_syncTimer = 0;
  }
}

- (void)_syncTimerFired:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Sync timer fired.", v6, 2u);
  }

  [(_EKNotificationMonitor *)self _syncDidEnd:v4];
}

- (void)_syncDidStart
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Sync started. Suppressing notification monitor checks while it runs.", buf, 2u);
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___EKNotificationMonitor__syncDidStart__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(notificationQueue, block);
}

- (void)_syncDidEnd:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___EKNotificationMonitor__syncDidEnd___block_invoke;
  block[3] = &unk_1E77FD468;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(notificationQueue, block);
  if (*(v11 + 24) == 1)
  {
    [(_EKNotificationMonitor *)self attemptReload];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)trackChangesInEventStore
{
  if (self->_computeChangedNotificationSet)
  {
    v9[9] = v2;
    v9[10] = v3;
    if (!self->_isMonitoringOnlyNotificationCount)
    {
      v5 = [(_EKNotificationMonitor *)self _eventStore];
      v6 = [v5 connection];
      v7 = [v6 CADOperationProxySync];
      lastChangedTimestamp = self->_lastChangedTimestamp;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke;
      v9[3] = &unk_1E77FE8C8;
      v9[4] = self;
      [v7 CADDatabaseGetChangedEntityIDsSinceTimestamp:lastChangedTimestamp reply:v9];
    }
  }
}

- (void)_updateTimerFireDate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Received multiple expiration dates in the past. Will not set expiration timer. Most recent expiration date received was %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end