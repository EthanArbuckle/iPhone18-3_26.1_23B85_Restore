@interface BKSSystemShellService
- (BKSSystemShellService)initWithConfigurator:(id)a3;
- (BOOL)collectiveWatchdogPing;
- (id)_server;
- (id)collectiveWatchdogPingBlock;
- (void)_checkInWithServerForReason:(int)a3 waitForDataMigration:;
- (void)_setCheckInStatus:(uint64_t)a1;
- (void)_tellServerWeFinishedLaunching;
- (void)didFinishLaunching;
- (void)restartWithOptions:(unint64_t)a3;
- (void)setCalloutQueue:(id)a3;
- (void)setCollectiveWatchdogPingBlock:(id)a3;
- (void)setIdleSleepInterval:(double)a3;
- (void)setWaitForDataMigration:(BOOL)a3;
- (void)start;
@end

@implementation BKSSystemShellService

- (BOOL)collectiveWatchdogPing
{
  v3 = BKLogSystemShell();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "collectiveWatchdogPing", buf, 2u);
  }

  v4 = atomic_load(&self->_checkInStatus);
  if (v4 < 2)
  {
    return 1;
  }

  watchdogPingBlock = self->_watchdogPingBlock;
  if (watchdogPingBlock)
  {
    return watchdogPingBlock[2]();
  }

  v7 = BKLogSystemShell();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "collectiveWatchdogPing -- did someone forgot to set a ping block?", v8, 2u);
  }

  return 0;
}

- (id)_server
{
  if (a1)
  {
    a1 = [a1[1] remoteTarget];
    v1 = vars8;
  }

  return a1;
}

- (void)restartWithOptions:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = BKLogSystemShell();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = BKSRestartActionOptionsDescription(a3);
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "restartWithOptions: %{public}@", &v10, 0xCu);
  }

  v7 = [(BKSSystemShellService *)&self->super.isa _server];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v7 restartWithOptions:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didFinishLaunching
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&self->_checkInStatus);
  if (v4 <= 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you need to invoke -start first"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v16 = 138544642;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      v20 = 2048;
      v21 = self;
      v22 = 2114;
      v23 = @"BKSSystemShellService.m";
      v24 = 1024;
      v25 = 141;
      v26 = 2114;
      v27 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v16, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186397B58);
  }

  v5 = atomic_load(&self->_checkInStatus);
  if (v5 >= 3)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you already invoked -didFinishLaunching"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138544642;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      v20 = 2048;
      v21 = self;
      v22 = 2114;
      v23 = @"BKSSystemShellService.m";
      v24 = 1024;
      v25 = 142;
      v26 = 2114;
      v27 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v16, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186397C44);
  }

  [(BKSSystemShellService *)self _setCheckInStatus:?];
  v6 = BKLogSystemShell();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "didFinishLaunching", &v16, 2u);
  }

  [(BKSSystemShellService *)self _tellServerWeFinishedLaunching];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setCheckInStatus:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = atomic_load((a1 + 48));
    if (v4 > a2)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot go backwards"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel__setCheckInStatus_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = 138544642;
        v14 = v10;
        v15 = 2114;
        v16 = v12;
        v17 = 2048;
        v18 = a1;
        v19 = 2114;
        v20 = @"BKSSystemShellService.m";
        v21 = 1024;
        v22 = 227;
        v23 = 2114;
        v24 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186397E20);
    }

    v5 = atomic_load((a1 + 48));
    if (v5 != a2)
    {
      atomic_store(a2, (a1 + 48));
      v6 = BKLogSystemShell();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = NSStringFromBKSSystemShellCheckInStatus(a2);
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "checkin %{public}@", &v13, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_tellServerWeFinishedLaunching
{
  if (a1)
  {
    v1 = [*(a1 + 8) remoteTarget];
    [v1 finishedLaunching];
  }
}

- (void)start
{
  v23 = *MEMORY[0x1E69E9840];
  if (atomic_load(&self->_checkInStatus))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you already invoked -start"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BKSSystemShellService.m";
      v19 = 1024;
      v20 = 133;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398060);
  }

  [(BKSSystemShellService *)self _setCheckInStatus:?];
  waitForDataMigration = self->_waitForDataMigration;
  v5 = *MEMORY[0x1E69E9840];

  [(BKSSystemShellService *)self _checkInWithServerForReason:waitForDataMigration waitForDataMigration:?];
}

- (void)_checkInWithServerForReason:(int)a3 waitForDataMigration:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = BKLogSystemShell();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = v5;
      v31 = 1024;
      LODWORD(v32) = a3;
      _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "checkIn(%{public}@): (waits for migration:%{BOOL}u)", buf, 0x12u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__BKSSystemShellService__checkInWithServerForReason_waitForDataMigration___block_invoke;
    v25[3] = &unk_1E6F471E8;
    v26 = v5;
    v27 = a1;
    v7 = MEMORY[0x186605BB0](v25);
    v8 = v7;
    if (a3)
    {
      v9 = v7;
      v10 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.backboard.system-app-server" service:@"DataMigrationCheckIn" instance:0];
      if (v10)
      {
        v11 = [MEMORY[0x1E698F490] connectionWithEndpoint:v10];
        if (v11)
        {
          v12 = v11;
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke;
          v28[3] = &unk_1E6F47220;
          v28[4] = a1;
          [v11 configureConnection:v28];
          v13 = BKLogSystemShell();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_186345000, v13, OS_LOG_TYPE_DEBUG, "_checkInWaitingForDataMigration: activating connection to server", buf, 2u);
          }

          [v12 activate];
          v14 = BKLogSystemShell();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v12 remoteTarget];
            *buf = 138543362;
            v30 = v20;
            _os_log_debug_impl(&dword_186345000, v14, OS_LOG_TYPE_DEBUG, "_checkInWaitingForDataMigration: server remote target %{public}@", buf, 0xCu);
          }

          v15 = [v12 remoteTarget];

          if (!v15)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we must have a remote target"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v22 = NSStringFromSelector(sel__checkInWaitingForDataMigration_);
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138544642;
              v30 = v22;
              v31 = 2114;
              v32 = v24;
              v33 = 2048;
              v34 = a1;
              v35 = 2114;
              v36 = @"BKSSystemShellService.m";
              v37 = 1024;
              v38 = 286;
              v39 = 2114;
              v40 = v21;
              _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v21 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x1863984F0);
          }

          v16 = [v12 remoteTarget];
          [v16 checkInAfterDataMigrationUsingCompletionBlock:v9];

          [v12 invalidate];
        }

        else
        {
          v18 = BKLogSystemShell();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_186345000, v18, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: cannot get connection for data migration checkin service", buf, 2u);
          }

          v12 = 0;
        }
      }

      else
      {
        v12 = BKLogSystemShell();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: cannot get endpoint for data migration checkin service", buf, 2u);
        }
      }
    }

    else
    {
      v17 = [*(a1 + 8) remoteTarget];
      [v17 checkInBypassingDataMigrationUsingCompletionBlock:v8];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __74__BKSSystemShellService__checkInWithServerForReason_waitForDataMigration___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogSystemShell();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "checkIn(%{public}@): exiting due to XPC error: %{public}@", &v10, 0x16u);
    }

    if (*(a1 + 40))
    {
      exit(0);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "checkIn(%{public}@): complete", &v10, 0xCu);
    }

    v7 = atomic_load((*(a1 + 40) + 48));
    if (v7 <= 1)
    {
      [(BKSSystemShellService *)*(a1 + 40) _setCheckInStatus:?];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "_checkInWaitingForDataMigration: configured client service", v9, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5794D0];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF579530];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"DataMigrationCheckIn"];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v3 setInterface:v7];
  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v8 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v8];

  [v3 setInterruptionHandler:&__block_literal_global_97];
  [v3 setInvalidationHandler:&__block_literal_global_100];
}

void __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke_98()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: data migration checkin service invalidated", v1, 2u);
  }
}

void __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke_94()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: data migration checkin service interrupted", v1, 2u);
  }
}

- (void)setCollectiveWatchdogPingBlock:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_configurationFinished)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after init"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BKSSystemShellService.m";
      v22 = 1024;
      v23 = 125;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863989FCLL);
  }

  v13 = v5;
  v6 = [v5 copy];
  watchdogPingBlock = self->_watchdogPingBlock;
  self->_watchdogPingBlock = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (id)collectiveWatchdogPingBlock
{
  v2 = MEMORY[0x186605BB0](self->_watchdogPingBlock, a2);

  return v2;
}

- (void)setWaitForDataMigration:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_configurationFinished)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after init"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BKSSystemShellService.m";
      v18 = 1024;
      v19 = 116;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398B84);
  }

  self->_waitForDataMigration = a3;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setIdleSleepInterval:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_configurationFinished)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after init", a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BKSSystemShellService.m";
      v18 = 1024;
      v19 = 107;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398CE8);
  }

  self->_idleSleepInterval = a3;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setCalloutQueue:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_configurationFinished)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after init"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"BKSSystemShellService.m";
      v20 = 1024;
      v21 = 98;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398E64);
  }

  calloutQueue = self->_calloutQueue;
  self->_calloutQueue = v5;
  v7 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (BKSSystemShellService)initWithConfigurator:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BKSSystemShellService;
  v5 = [(BKSSystemShellService *)&v37 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_calloutQueue, MEMORY[0x1E69E96A0]);
    v6->_waitForDataMigration = 1;
    v7 = [&__block_literal_global_9682 copy];
    watchdogPingBlock = v6->_watchdogPingBlock;
    v6->_watchdogPingBlock = v7;

    v6->_idleSleepInterval = 3.0;
    (v4)[2](v4, v6);
    v6->_configurationFinished = 1;
    idleSleepInterval = v6->_idleSleepInterval;
    v10 = BKLogSystemShell();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = idleSleepInterval;
      _os_log_impl(&dword_186345000, v10, OS_LOG_TYPE_DEFAULT, "activate (idle interval %g)", &buf, 0xCu);
    }

    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 bundlePath];
    v13 = [v11 bundleIdentifier];
    v14 = [MEMORY[0x1E696AE30] processInfo];
    v15 = [v14 bs_jobLabel];

    v16 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.backboard.system-app-server" service:@"Shell" instance:0];
    if (v16)
    {
      v17 = MEMORY[0x1E698F490];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v54 = __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke;
      v55 = &unk_1E6F47278;
      v56 = v13;
      v57 = v12;
      v18 = v15;
      v60 = idleSleepInterval;
      v58 = v18;
      v59 = v6;
      v19 = [v17 connectionWithEndpoint:v16 clientContextBuilder:&buf];
      if (v19)
      {
        objc_storeStrong(&v6->_connection, v19);
        objc_initWeak(&location, v6);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_110;
        v38[3] = &unk_1E6F472A0;
        v38[4] = v6;
        objc_copyWeak(&v39, &location);
        [v19 configureConnection:v38];
        v20 = BKLogSystemShell();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 0;
          _os_log_debug_impl(&dword_186345000, v20, OS_LOG_TYPE_DEBUG, "activating connection to server", v41, 2u);
        }

        [v19 activate];
        v21 = BKLogSystemShell();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v19 remoteTarget];
          *v41 = 138543362;
          v42 = v28;
          v36 = v28;
          _os_log_debug_impl(&dword_186345000, v21, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", v41, 0xCu);
        }

        v22 = [v19 remoteTarget];
        v23 = v22 == 0;

        if (v23)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we must have a remote target"];
          v30 = MEMORY[0x1E69E9C10];
          v31 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = NSStringFromSelector(sel__activateServerConnectionWithIdleSleepInterval_);
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            *v41 = 138544642;
            v42 = v32;
            v43 = 2114;
            v44 = v34;
            v45 = 2048;
            v46 = v6;
            v47 = 2114;
            v48 = @"BKSSystemShellService.m";
            v49 = 1024;
            v50 = 361;
            v51 = 2114;
            v52 = v29;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v41, 0x3Au);
          }

          v35 = v29;
          [v29 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863993F8);
        }

        BKSDisplayServicesStart();
        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
      }

      else
      {
        v25 = BKLogSystemShell();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v41 = 0;
          _os_log_error_impl(&dword_186345000, v25, OS_LOG_TYPE_ERROR, "cannot get connection for service", v41, 2u);
        }
      }

      v24 = v56;
    }

    else
    {
      v24 = BKLogSystemShell();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_186345000, v24, OS_LOG_TYPE_ERROR, "BKSSystemShellService: cannot get endpoint for mach service", &buf, 2u);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v6;
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 encodeObject:v3 forKey:@"bundleID"];
  [v4 encodeObject:*(a1 + 40) forKey:@"bundlePath"];
  [v4 encodeObject:*(a1 + 48) forKey:@"jobLabel"];
  [v4 encodeDouble:@"idleInterval" forKey:*(a1 + 64)];
  [v4 encodeInt64:*(*(a1 + 56) + 40) == 0 forKey:@"watchdogType"];
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", buf, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF574108];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF579590];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"Shell"];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v3 setInterface:v7];
  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v8 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v8];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_120;
  v9[3] = &unk_1E6F47930;
  objc_copyWeak(&v10, (a1 + 40));
  [v3 setInterruptionHandler:v9];
  [v3 setInvalidationHandler:&__block_literal_global_123];
  objc_destroyWeak(&v10);
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_120(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "shell service interruption -- attempting to reconnect", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = atomic_load(WeakRetained + 6);
    [v3 activate];
    v8 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromBKSSystemShellCheckInStatus(v7);
    v10 = [v8 stringWithFormat:@"reconnect[%@]", v9];

    v11 = BKLogSystemShell();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_186345000, v11, OS_LOG_TYPE_DEFAULT, "_%{public}@", buf, 0xCu);
    }

    switch(v7)
    {
      case 3uLL:
        [(BKSSystemShellService *)v6 _checkInWithServerForReason:v10 waitForDataMigration:0];
        [(BKSSystemShellService *)v6 _tellServerWeFinishedLaunching];
        goto LABEL_13;
      case 2uLL:
        v13 = v6;
        v14 = v10;
        v12 = 0;
        break;
      case 1uLL:
        v12 = v6[32];
        v13 = v6;
        v14 = v10;
        break;
      default:
LABEL_13:

        goto LABEL_14;
    }

    [(BKSSystemShellService *)v13 _checkInWithServerForReason:v14 waitForDataMigration:v12];
    goto LABEL_13;
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_121(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogSystemShell();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "shell service invalidation -- I'm out", v4, 2u);
  }

  exit(0);
}

uint64_t __46__BKSSystemShellService_initWithConfigurator___block_invoke()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_186345000, v0, OS_LOG_TYPE_DEFAULT, "watchdog ping received", v2, 2u);
  }

  return 1;
}

@end