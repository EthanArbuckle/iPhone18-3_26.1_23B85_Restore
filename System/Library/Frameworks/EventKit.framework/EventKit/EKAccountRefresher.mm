@interface EKAccountRefresher
- (BOOL)_allCalendarsRefreshed;
- (BOOL)_allSourcesRefreshed;
- (BOOL)_areAnyCalendarsCurrentlySyncing;
- (BOOL)_areAnySourcesCurrentlySyncing;
- (BOOL)allAccountsOffline;
- (BOOL)calendarFinishedRefreshing:(id)refreshing;
- (BOOL)sourceFinishedRefreshing:(id)refreshing;
- (EKAccountRefresher)initWithEventStore:(id)store;
- (EKAccountRefresherDelegate)delegate;
- (void)_eventStoreChanged:(id)changed;
- (void)_refreshControlMaximumVisibleTimeElapsed;
- (void)_syncCompleted;
- (void)_syncDidEnd;
- (void)_syncStartTimeoutExpired;
- (void)refresh;
@end

@implementation EKAccountRefresher

- (EKAccountRefresher)initWithEventStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = EKAccountRefresher;
  v6 = [(EKAccountRefresher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, store);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__eventStoreChanged_ name:@"EKEventStoreChangedNotification" object:storeCopy];
  }

  return v7;
}

- (void)_eventStoreChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_refreshing)
  {
    _areAnySourcesCurrentlySyncing = [(EKAccountRefresher *)self _areAnySourcesCurrentlySyncing];
    _areAnyCalendarsCurrentlySyncing = [(EKAccountRefresher *)self _areAnyCalendarsCurrentlySyncing];
    v6 = _areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing;
    currentlySyncing = self->_currentlySyncing;
    v8 = EKLogHandle;
    v9 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT);
    if (currentlySyncing == v6)
    {
      if (v9)
      {
        v12 = 67109632;
        v13 = _areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing;
        v14 = 1024;
        v15 = _areAnySourcesCurrentlySyncing;
        v16 = 1024;
        v17 = _areAnyCalendarsCurrentlySyncing;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "[EKAccountRefresher _eventStoreChanged], and _currentlySyncing is still %{BOOL}i (sources=%{BOOL}i; calendars=%{BOOL}i)", &v12, 0x14u);
      }
    }

    else
    {
      if (v9)
      {
        v10 = self->_currentlySyncing;
        v12 = 67109888;
        v13 = v10;
        v14 = 1024;
        v15 = _areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing;
        v16 = 1024;
        v17 = _areAnySourcesCurrentlySyncing;
        v18 = 1024;
        v19 = _areAnyCalendarsCurrentlySyncing;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "[EKAccountRefresher _eventStoreChanged], and _currentlySyncing changed from %{BOOL}i to %{BOOL}i (sources=%{BOOL}i; calendars=%{BOOL}i)", &v12, 0x1Au);
      }

      self->_currentlySyncing = v6;
      if (_areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing)
      {
        [(EKAccountRefresher *)self _syncDidStart];
      }

      else
      {
        [(EKAccountRefresher *)self _syncDidEnd];
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_syncDidEnd
{
  if ([(EKAccountRefresher *)self _allSourcesRefreshed]&& [(EKAccountRefresher *)self _allCalendarsRefreshed])
  {

    [(EKAccountRefresher *)self _syncCompleted];
  }

  else
  {

    [(EKAccountRefresher *)self _beginSyncStartTimeout];
  }
}

- (BOOL)_allSourcesRefreshed
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_refreshingSources;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![(EKAccountRefresher *)self sourceFinishedRefreshing:v8, v13])
        {
          v10 = EKLogHandle;
          v9 = 0;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v8;
            _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "%@ has not yet finished refreshing", buf, 0xCu);
            v9 = 0;
          }

          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_areAnySourcesCurrentlySyncing
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_refreshingSources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isSyncing])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)_allCalendarsRefreshed
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_refreshingCalendars;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![(EKAccountRefresher *)self calendarFinishedRefreshing:v8, v13])
        {
          v10 = EKLogHandle;
          v9 = 0;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v8;
            _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "%@ has not yet finished refreshing", buf, 0xCu);
            v9 = 0;
          }

          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_areAnyCalendarsCurrentlySyncing
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_refreshingCalendars;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isSyncing])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)refresh
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_refreshStartDate)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_DEFAULT, "Calling [EKAccountRefresher refresh] more than once is not supported.", buf, 2u);
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    refreshStartDate = self->_refreshStartDate;
    self->_refreshStartDate = date;

    [(EKAccountRefresher *)self _beginMaximumTimeElapsedTimeout];
    [(EKAccountRefresher *)self _beginSyncStartTimeout];
    self->_refreshing = 1;
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    [mEMORY[0x1E69998A8] resetTimersAndWarnings];

    selfCopy = self;
    v7 = [(EKEventStore *)self->_eventStore refreshEverythingIfNecessary:1];
    v8 = [v7 mutableCopy];

    v9 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v16 = [v15 calendarsForEntityType:0];
          v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v31 + 1) + 8 * j);
                if ([v21 isSubscribed] && (objc_msgSend(v21, "isSubscribedHolidayCalendar") & 1) == 0)
                {
                  [v9 addObject:v21];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v18);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v12);
    }

    v22 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_23];
    [v10 filterUsingPredicate:v22];

    v23 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v10 count];
      v26 = [v9 count];
      *buf = 134218240;
      v40 = v25;
      v41 = 2048;
      v42 = v26;
      _os_log_impl(&dword_1A805E000, v24, OS_LOG_TYPE_DEFAULT, "Started a refresh of %lu accounts and %lu subscribed calendars", buf, 0x16u);
    }

    allObjects = [v10 allObjects];
    refreshingSources = selfCopy->_refreshingSources;
    selfCopy->_refreshingSources = allObjects;

    objc_storeStrong(&selfCopy->_refreshingCalendars, v9);
    if (![(NSArray *)selfCopy->_refreshingSources count]&& ![(NSArray *)selfCopy->_refreshingCalendars count])
    {
      [(EKAccountRefresher *)selfCopy _syncCompleted];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_refreshControlMaximumVisibleTimeElapsed
{
  if (self->_refreshing)
  {
    v7 = v2;
    v8 = v3;
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "_refreshControlMaximumVisibleTimeElapsed; calling sync completed", v6, 2u);
    }

    [(EKAccountRefresher *)self _syncCompleted];
    [(EKAccountRefresher *)self _cancelSyncStartTimeout];
  }
}

- (void)_syncStartTimeoutExpired
{
  if (self->_refreshing)
  {
    v7 = v2;
    v8 = v3;
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "timed out waiting for sync to start; calling sync completed", v6, 2u);
    }

    [(EKAccountRefresher *)self _syncCompleted];
    [(EKAccountRefresher *)self _cancelMaximumTimeElapsedTimeout];
  }
}

- (void)_syncCompleted
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    refreshStartDate = self->_refreshStartDate;
    v5 = v3;
    [(NSDate *)refreshStartDate timeIntervalSinceNow];
    v9 = 134217984;
    v10 = -v6;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Hiding sync spinner after %fs", &v9, 0xCu);
  }

  [(EKAccountRefresher *)self _cancelSyncStartTimeout];
  [(EKAccountRefresher *)self _cancelMaximumTimeElapsedTimeout];
  self->_refreshing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountRefreshFinished:self];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)sourceFinishedRefreshing:(id)refreshing
{
  if (!self->_refreshStartDate)
  {
    return 0;
  }

  lastSyncEndDate = [refreshing lastSyncEndDate];
  v5 = lastSyncEndDate;
  if (lastSyncEndDate)
  {
    v6 = [lastSyncEndDate laterDate:self->_refreshStartDate];
    v7 = v6 == v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)calendarFinishedRefreshing:(id)refreshing
{
  if (!self->_refreshStartDate)
  {
    return 0;
  }

  lastSyncEndDate = [refreshing lastSyncEndDate];
  v5 = lastSyncEndDate;
  if (lastSyncEndDate)
  {
    v6 = [lastSyncEndDate laterDate:self->_refreshStartDate];
    v7 = v6 == v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)allAccountsOffline
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_refreshing && self->_refreshStartDate && ([(NSArray *)self->_refreshingSources count]|| [(NSArray *)self->_refreshingCalendars count]))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = self->_refreshingSources;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
LABEL_7:
      v7 = 0;
      while (1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        if (!-[EKAccountRefresher sourceFinishedRefreshing:](self, "sourceFinishedRefreshing:", v8) || [v8 lastSyncError] != 3)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v5)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = self->_refreshingCalendars;
      v9 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (!v9)
      {
        v14 = 1;
        goto LABEL_26;
      }

      v10 = v9;
      v11 = *v18;
LABEL_16:
      v12 = 0;
      while (1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (!-[EKAccountRefresher calendarFinishedRefreshing:](self, "calendarFinishedRefreshing:", v13, v17) || [v13 lastSyncError] != 3)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
          v14 = 1;
          if (v10)
          {
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }
    }

    v14 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v14 = 0;
LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (EKAccountRefresherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end