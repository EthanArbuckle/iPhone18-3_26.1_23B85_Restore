@interface BKSAlternateSystemApp
- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)a3 didExitWithContext:(id)a4;
- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)a3 failedToOpenWithResult:(id)a4;
- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidOpen:(id)a3;
- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidTerminate:(id)a3;
- (BKSAlternateSystemApp)initWithBundleId:(id)a3;
- (BKSAlternateSystemAppDelegate)delegate;
- (void)_handleInterruptedConnection;
- (void)_queue_changeState:(int64_t)a3;
- (void)_queue_ensureConnection;
- (void)_queue_invalidate;
- (void)_waitForState:(int64_t)a3;
- (void)activate;
- (void)dealloc;
- (void)didBlockSystemAppForAlternateSystemApp;
- (void)didUnblockSystemAppForAlternateSystemApp;
- (void)terminate;
@end

@implementation BKSAlternateSystemApp

- (BKSAlternateSystemAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidTerminate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidTerminate:]";
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidTerminate___block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __68__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidTerminate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v1 unblockSystemAppForAlternateSystemApp];

  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidTerminate:]_block_invoke";
    _os_log_debug_impl(&dword_186345000, v2, OS_LOG_TYPE_DEBUG, "%s: requested unblock of system app", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidOpen:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidOpen:]";
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidOpen___block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __63__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidOpen___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained alternateSystemAppDidLaunch:*(a1 + 32)];
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidOpen:]_block_invoke";
      v4 = "%s: called out to delegate alternateSystemAppDidLaunch:";
      v5 = v3;
      v6 = 12;
LABEL_8:
      _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, v4, &v8, v6);
    }
  }

  else
  {
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidOpen:]_block_invoke";
      v10 = 2114;
      v11 = WeakRetained;
      v4 = "%s: did not call out to alternateSystemAppDidLaunch: for delegate %{public}@";
      v5 = v3;
      v6 = 22;
      goto LABEL_8;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)a3 didExitWithContext:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]";
    _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__BKSAlternateSystemApp_alternateSystemAppWithBundleID_didExitWithContext___block_invoke;
  v11[3] = &unk_1E6F47C78;
  v11[4] = self;
  v12 = v5;
  v8 = v5;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __75__BKSAlternateSystemApp_alternateSystemAppWithBundleID_didExitWithContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_changeState:2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [*(a1 + 40) status];
  if ([v3 isSignal])
  {
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained alternateSystemApp:*(a1 + 32) didTerminateWithSignal:0xFFFFFFFFLL];
      v4 = BKLogAlternateSystemApp();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315138;
        v11 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
        v5 = "%s called out to delegate alternateSystemApp:didTerminateWithSignal:";
LABEL_10:
        v7 = v4;
        v8 = 12;
LABEL_17:
        _os_log_debug_impl(&dword_186345000, v7, OS_LOG_TYPE_DEBUG, v5, &v10, v8);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v4 = BKLogAlternateSystemApp();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v10 = 136315394;
    v11 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
    v12 = 2114;
    v13 = WeakRetained;
    v5 = "%s did not call out to alternateSystemApp:didTerminateWithSignal: for delegate %{public}@";
LABEL_16:
    v7 = v4;
    v8 = 22;
    goto LABEL_17;
  }

  v6 = [*(a1 + 40) type] != 1;
  if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = BKLogAlternateSystemApp();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v10 = 136315394;
    v11 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
    v12 = 2114;
    v13 = WeakRetained;
    v5 = "%s did not call out to alternateSystemApp:didExitWithStatus: for delegate %{public}@";
    goto LABEL_16;
  }

  [WeakRetained alternateSystemApp:*(a1 + 32) didExitWithStatus:v6];
  v4 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
    v5 = "%s called out to delegate alternateSystemApp:didExitWithStatus:";
    goto LABEL_10;
  }

LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)a3 failedToOpenWithResult:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:failedToOpenWithResult:]";
    _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__BKSAlternateSystemApp_alternateSystemAppWithBundleID_failedToOpenWithResult___block_invoke;
  v11[3] = &unk_1E6F47C78;
  v11[4] = self;
  v12 = v5;
  v8 = v5;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __79__BKSAlternateSystemApp_alternateSystemAppWithBundleID_failedToOpenWithResult___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_changeState:2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained alternateSystemApp:*(a1 + 32) didFailToLaunchWithError:*(a1 + 40)];
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:failedToOpenWithResult:]_block_invoke";
      v4 = "%s called out to delegate alternateSystemApp:didFailToLaunchWithError:";
      v5 = v3;
      v6 = 12;
LABEL_8:
      _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, v4, &v8, v6);
    }
  }

  else
  {
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:failedToOpenWithResult:]_block_invoke";
      v10 = 2114;
      v11 = WeakRetained;
      v4 = "%s did not call out to alternateSystemApp:didFailToLaunchWithError: for delegate %{public}@";
      v5 = v3;
      v6 = 22;
      goto LABEL_8;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)didUnblockSystemAppForAlternateSystemApp
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[BKSAlternateSystemApp didUnblockSystemAppForAlternateSystemApp]";
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__BKSAlternateSystemApp_didUnblockSystemAppForAlternateSystemApp__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didBlockSystemAppForAlternateSystemApp
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[BKSAlternateSystemApp didBlockSystemAppForAlternateSystemApp]";
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BKSAlternateSystemApp_didBlockSystemAppForAlternateSystemApp__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

void __63__BKSAlternateSystemApp_didBlockSystemAppForAlternateSystemApp__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 48) != 2)
  {
    v3 = [*(v1 + 32) remoteObjectProxy];
    [v3 openAlternateSystemAppWithBundleID:*(*(a1 + 32) + 24)];

    v4 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 24);
      v7 = 136315394;
      v8 = "[BKSAlternateSystemApp didBlockSystemAppForAlternateSystemApp]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "%s: requested open of alternate system app %{public}@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleInterruptedConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__BKSAlternateSystemApp__handleInterruptedConnection__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__BKSAlternateSystemApp__handleInterruptedConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  switch(v3)
  {
    case 3:

      [v2 _queue_changeState:0];
      break;
    case 2:
      v4 = [*(v2 + 32) remoteObjectProxy];
      [v4 blockSystemAppForAlternateSystemApp];

      break;
    case 1:

      [v2 activate];
      break;
  }
}

- (void)_queue_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setExportedObject:0];

  [(BKSAlternateSystemApp *)self setConnection:0];
}

- (void)_waitForState:(int64_t)a3
{
  dispatch_assert_queue_not_V2(self->_queue);
  v5 = MEMORY[0x1E69E9820];
  while (1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    queue = self->_queue;
    block[0] = v5;
    block[1] = 3221225472;
    block[2] = __39__BKSAlternateSystemApp__waitForState___block_invoke;
    block[3] = &unk_1E6F46FB8;
    block[5] = &v8;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(queue, block);
    if (v9[3])
    {
      break;
    }

    dispatch_semaphore_wait(self->_stateChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(&v8, 8);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_queue_changeState:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E6F46FD8[a3];
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "Setting state to %{public}@", &v8, 0xCu);
  }

  self->_state = a3;
  dispatch_semaphore_signal(self->_stateChangeSemaphore);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_ensureConnection
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    if (self->_state)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = v12;
      state = self->_state;
      if (state > 3)
      {
        v15 = @"Unknown";
      }

      else
      {
        v15 = off_1E6F46FD8[state];
      }

      [v12 handleFailureInMethod:a2 object:self file:@"BKSAlternateSystemApp.m" lineNumber:119 description:{@"BKSAlternateSystemApp %@ has no connection but is in state %@ instead of Idle", self, v15}];
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.backboard.altsysapp" options:4096];
    connection = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF579470];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF573330];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke;
    v18[3] = &unk_1E6F46F90;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v18];
    v11 = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_3;
    v16[3] = &unk_1E6F46F90;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:v16];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_2;
  block[3] = &unk_1E6F477B8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_4;
  block[3] = &unk_1E6F477B8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

- (void)terminate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__BKSAlternateSystemApp_terminate__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  [(BKSAlternateSystemApp *)self _waitForState:0];
  v4 = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__BKSAlternateSystemApp_terminate__block_invoke_7;
  v5[3] = &unk_1E6F477B8;
  v5[4] = self;
  dispatch_sync(v4, v5);
}

void __34__BKSAlternateSystemApp_terminate__block_invoke(uint64_t a1)
{
  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_186345000, v2, OS_LOG_TYPE_DEFAULT, "Terminating", v4, 2u);
  }

  [*(a1 + 32) _queue_changeState:3];
  v3 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v3 terminateAlternateSystemAppWithBundleID:*(*(a1 + 32) + 24)];
}

- (void)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BKSAlternateSystemApp_activate__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__BKSAlternateSystemApp_activate__block_invoke(uint64_t a1)
{
  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_186345000, v2, OS_LOG_TYPE_DEFAULT, "Activating", v4, 2u);
  }

  [*(a1 + 32) _queue_ensureConnection];
  [*(a1 + 32) _queue_changeState:1];
  v3 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v3 blockSystemAppForAlternateSystemApp];
}

- (void)dealloc
{
  if (self->_connection)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"BKSAlternateSystemApp.m" lineNumber:81 description:{@"BKSAlternateSystemApp %@: you must call -terminate before -dealloc", self}];
  }

  v5.receiver = self;
  v5.super_class = BKSAlternateSystemApp;
  [(BKSAlternateSystemApp *)&v5 dealloc];
}

- (BKSAlternateSystemApp)initWithBundleId:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKSAlternateSystemApp;
  v5 = [(BKSAlternateSystemApp *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    [(BKSAlternateSystemApp *)v5 setBundleId:v4];
    v6->_stateChangeWaiter = 0;
    v7 = dispatch_semaphore_create(0);
    stateChangeSemaphore = v6->_stateChangeSemaphore;
    v6->_stateChangeSemaphore = v7;

    Serial = BSDispatchQueueCreateSerial();
    queue = v6->_queue;
    v6->_queue = Serial;

    connection = v6->_connection;
    v6->_connection = 0;
  }

  return v6;
}

@end