@interface _MPActiveUserChangeMonitor
- (_MPActiveUserChangeMonitor)initWithDelegate:(id)a3;
- (_MPActiveUserChangeMonitorDelegate)delegate;
- (void)_cancelNotificationTimerWithReason:(id)a3;
- (void)_startNotificationTimerWithEventHandler:(id)a3;
- (void)ingestNotificationName:(id)a3;
@end

@implementation _MPActiveUserChangeMonitor

- (_MPActiveUserChangeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_cancelNotificationTimerWithReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_MPActiveUserChangeMonitor.m" lineNumber:87 description:@"Must provide a reason for logging."];
  }

  v6 = [(_MPActiveUserChangeMonitor *)self notificationTimer];

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
      v11 = 134218498;
      v12 = self;
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_INFO, "<_MPActiveUserChangeMonitor %p> - Canceled notification timer %p [%{public}@]", &v11, 0x20u);
    }

    v9 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
    dispatch_source_cancel(v9);

    [(_MPActiveUserChangeMonitor *)self setNotificationTimer:0];
  }
}

- (void)_startNotificationTimerWithEventHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_MPActiveUserChangeMonitor *)self notificationTimer];

  if (v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_MPActiveUserChangeMonitor.m" lineNumber:77 description:@"Cancel existing timer before starting a new one."];
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  [(_MPActiveUserChangeMonitor *)self setNotificationTimer:v7];

  v8 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
  v9 = dispatch_time(0, 4000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  v10 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
  dispatch_source_set_event_handler(v10, v5);

  v11 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
  dispatch_resume(v11);

  v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
    v15 = 134218240;
    v16 = self;
    v17 = 2048;
    v18 = v13;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_INFO, "<_MPActiveUserChangeMonitor %p> - Started notification timer %p", &v15, 0x16u);
  }
}

- (void)ingestNotificationName:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [(_MPActiveUserChangeMonitor *)self expectedNotifications];
  if ([v5 containsObject:v4])
  {
    v6 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
    v7 = [v6 containsObject:v4];

    if (!v7)
    {
      v8 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
      [v8 addObject:v4];

      v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
        v11 = [v10 count];
        v12 = [(_MPActiveUserChangeMonitor *)self expectedNotifications];
        *buf = 134218754;
        v23 = self;
        v24 = 2114;
        v25 = v4;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = [v12 count];
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "<_MPActiveUserChangeMonitor %p> - Ingesting notification %{public}@ [%ld of %ld]", buf, 0x2Au);
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received %@", v4];
      [(_MPActiveUserChangeMonitor *)self _cancelNotificationTimerWithReason:v13];

      v14 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
      v15 = [(_MPActiveUserChangeMonitor *)self expectedNotifications];
      v16 = [v14 isEqualToSet:v15];

      v17 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
      v18 = v17;
      if (v16)
      {
        [v17 removeAllObjects];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke;
        block[3] = &unk_1E7682518;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        v19 = [v17 containsObject:@"MPMediaLibraryPathDidChangeNotification"];

        if (v19)
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke_2;
          v20[3] = &unk_1E7682518;
          v20[4] = self;
          [(_MPActiveUserChangeMonitor *)self _startNotificationTimerWithEventHandler:v20];
        }
      }
    }
  }

  else
  {
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (_MPActiveUserChangeMonitor)initWithDelegate:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _MPActiveUserChangeMonitor;
  v5 = [(_MPActiveUserChangeMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = MEMORY[0x1E695DFD8];
    v15[0] = @"MPMediaLibraryPathDidChangeNotification";
    v15[1] = @"MPMediaLibraryDidChangeNotification";
    v15[2] = *MEMORY[0x1E69E4098];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v9 = [v7 setWithArray:v8];
    expectedNotifications = v6->_expectedNotifications;
    v6->_expectedNotifications = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSSet count](v6->_expectedNotifications, "count")}];
    receivedNotifications = v6->_receivedNotifications;
    v6->_receivedNotifications = v11;

    v6->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

@end