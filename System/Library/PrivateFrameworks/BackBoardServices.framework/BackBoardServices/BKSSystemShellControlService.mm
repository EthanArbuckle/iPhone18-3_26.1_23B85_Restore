@interface BKSSystemShellControlService
+ (id)sharedInstance;
- (BKSSystemShellControlService)initWithCalloutQueue:(id)a3;
- (void)_activateServerConnection;
- (void)terminateSystemShellWithJobLabel:(id)a3;
@end

@implementation BKSSystemShellControlService

- (void)_activateServerConnection
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.backboard.system-app-server" service:@"Control" instance:0];
  if (v4)
  {
    v5 = [MEMORY[0x1E698F490] connectionWithEndpoint:v4];
    if (v5)
    {
      v6 = v5;
      objc_storeStrong(&self->_connection, v5);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__BKSSystemShellControlService__activateServerConnection__block_invoke;
      v17[3] = &unk_1E6F47220;
      v17[4] = self;
      [v6 configureConnection:v17];
      v7 = BKLogSystemShell();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_186345000, v7, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
      }

      [v6 activate];
      v8 = BKLogSystemShell();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v6 remoteTarget];
        *buf = 138543362;
        v19 = v16;
        _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
      }

      v9 = [v6 remoteTarget];

      if (!v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we must have a remote target"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector(a2);
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = 138544642;
          v19 = v11;
          v20 = 2114;
          v21 = v13;
          v22 = 2048;
          v23 = self;
          v24 = 2114;
          v25 = @"BKSSystemShellControlService.m";
          v26 = 1024;
          v27 = 111;
          v28 = 2114;
          v29 = v10;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v10 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18635CB10);
      }
    }

    else
    {
      v14 = BKLogSystemShell();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "BKSSystemShellControlService: cannot get connection for service", buf, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = BKLogSystemShell();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, "BKSSystemShellControlService: cannot get endpoint for mach service", buf, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __57__BKSSystemShellControlService__activateServerConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", v9, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF56EAF0];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5792F0];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"Control"];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v3 setInterface:v7];
  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v8 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v8];

  [v3 setInterruptionHandler:&__block_literal_global_54];
  [v3 setInvalidationHandler:&__block_literal_global_57];
}

void __57__BKSSystemShellControlService__activateServerConnection__block_invoke_55()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "service invalidation", v1, 2u);
  }
}

void __57__BKSSystemShellControlService__activateServerConnection__block_invoke_51()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "service interruption", v1, 2u);
  }
}

- (void)terminateSystemShellWithJobLabel:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = BKLogSystemShell();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "BKSSystemShellControlService: terminate %{public}@ with server:%{public}@", &v8, 0x16u);
  }

  [v5 terminateShellWithJobLabel:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (BKSSystemShellControlService)initWithCalloutQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKSSystemShellControlService;
  v6 = [(BKSSystemShellControlService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calloutQueue, a3);
    [(BKSSystemShellControlService *)v7 _activateServerConnection];
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_956 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_956, &__block_literal_global_957);
  }

  v3 = sharedInstance_service_958;

  return v3;
}

void __46__BKSSystemShellControlService_sharedInstance__block_invoke()
{
  v0 = [BKSSystemShellControlService alloc];
  v3 = dispatch_get_global_queue(21, 0);
  v1 = [(BKSSystemShellControlService *)v0 initWithCalloutQueue:v3];
  v2 = sharedInstance_service_958;
  sharedInstance_service_958 = v1;
}

@end