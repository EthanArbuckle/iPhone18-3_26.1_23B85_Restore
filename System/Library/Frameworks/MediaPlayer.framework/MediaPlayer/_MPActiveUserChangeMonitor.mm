@interface _MPActiveUserChangeMonitor
- (_MPActiveUserChangeMonitor)initWithDelegate:(id)delegate;
- (_MPActiveUserChangeMonitorDelegate)delegate;
- (void)_cancelNotificationTimerWithReason:(id)reason;
- (void)_startNotificationTimerWithEventHandler:(id)handler;
- (void)ingestNotificationName:(id)name;
@end

@implementation _MPActiveUserChangeMonitor

- (_MPActiveUserChangeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_cancelNotificationTimerWithReason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (![reasonCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPActiveUserChangeMonitor.m" lineNumber:87 description:@"Must provide a reason for logging."];
  }

  notificationTimer = [(_MPActiveUserChangeMonitor *)self notificationTimer];

  if (notificationTimer)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      notificationTimer2 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
      v11 = 134218498;
      selfCopy = self;
      v13 = 2048;
      v14 = notificationTimer2;
      v15 = 2114;
      v16 = reasonCopy;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_INFO, "<_MPActiveUserChangeMonitor %p> - Canceled notification timer %p [%{public}@]", &v11, 0x20u);
    }

    notificationTimer3 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
    dispatch_source_cancel(notificationTimer3);

    [(_MPActiveUserChangeMonitor *)self setNotificationTimer:0];
  }
}

- (void)_startNotificationTimerWithEventHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  notificationTimer = [(_MPActiveUserChangeMonitor *)self notificationTimer];

  if (notificationTimer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPActiveUserChangeMonitor.m" lineNumber:77 description:@"Cancel existing timer before starting a new one."];
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  [(_MPActiveUserChangeMonitor *)self setNotificationTimer:v7];

  notificationTimer2 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
  v9 = dispatch_time(0, 4000000000);
  dispatch_source_set_timer(notificationTimer2, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  notificationTimer3 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
  dispatch_source_set_event_handler(notificationTimer3, handlerCopy);

  notificationTimer4 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
  dispatch_resume(notificationTimer4);

  v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    notificationTimer5 = [(_MPActiveUserChangeMonitor *)self notificationTimer];
    v15 = 134218240;
    selfCopy = self;
    v17 = 2048;
    v18 = notificationTimer5;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_INFO, "<_MPActiveUserChangeMonitor %p> - Started notification timer %p", &v15, 0x16u);
  }
}

- (void)ingestNotificationName:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  os_unfair_lock_lock(&self->_stateLock);
  expectedNotifications = [(_MPActiveUserChangeMonitor *)self expectedNotifications];
  if ([expectedNotifications containsObject:nameCopy])
  {
    receivedNotifications = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
    v7 = [receivedNotifications containsObject:nameCopy];

    if (!v7)
    {
      receivedNotifications2 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
      [receivedNotifications2 addObject:nameCopy];

      v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        receivedNotifications3 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
        v11 = [receivedNotifications3 count];
        expectedNotifications2 = [(_MPActiveUserChangeMonitor *)self expectedNotifications];
        *buf = 134218754;
        selfCopy = self;
        v24 = 2114;
        v25 = nameCopy;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = [expectedNotifications2 count];
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "<_MPActiveUserChangeMonitor %p> - Ingesting notification %{public}@ [%ld of %ld]", buf, 0x2Au);
      }

      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received %@", nameCopy];
      [(_MPActiveUserChangeMonitor *)self _cancelNotificationTimerWithReason:nameCopy];

      receivedNotifications4 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
      expectedNotifications3 = [(_MPActiveUserChangeMonitor *)self expectedNotifications];
      v16 = [receivedNotifications4 isEqualToSet:expectedNotifications3];

      receivedNotifications5 = [(_MPActiveUserChangeMonitor *)self receivedNotifications];
      v18 = receivedNotifications5;
      if (v16)
      {
        [receivedNotifications5 removeAllObjects];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke;
        block[3] = &unk_1E7682518;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        v19 = [receivedNotifications5 containsObject:@"MPMediaLibraryPathDidChangeNotification"];

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

- (_MPActiveUserChangeMonitor)initWithDelegate:(id)delegate
{
  v15[3] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = _MPActiveUserChangeMonitor;
  v5 = [(_MPActiveUserChangeMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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