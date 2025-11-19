@interface MPActiveUserChangeMonitor
@end

@implementation MPActiveUserChangeMonitor

void __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 activeUserChangeDidFinish];
}

void __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = [v3 notificationTimer];
    v15 = [*(a1 + 32) receivedNotifications];
    v12 = [v15 count];
    v14 = [*(a1 + 32) expectedNotifications];
    v4 = [v14 count];
    v5 = [*(a1 + 32) receivedNotifications];
    v6 = [v5 allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [*(a1 + 32) expectedNotifications];
    v9 = [v8 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    *buf = 134219266;
    v18 = v3;
    v19 = 2048;
    v20 = v13;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = v4;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<_MPActiveUserChangeMonitor %p> - Firing notification timer %p [%ld of %ld notifications received] - received=[%{public}@] - expected=[%{public}@]", buf, 0x3Eu);
  }

  v11 = [*(a1 + 32) receivedNotifications];
  [v11 removeAllObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke_8;
  block[3] = &unk_1E7682518;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53___MPActiveUserChangeMonitor_ingestNotificationName___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 activeUserChangeDidFinish];
}

@end