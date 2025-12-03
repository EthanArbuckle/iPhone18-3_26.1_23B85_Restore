@interface AKClientConnectionLifecycleManager
- (AKClientConnectionLifecycleManager)init;
- (AKClientConnectionLifecycleManager)initWithConfiguration:(id)configuration;
- (id)activeServiceConnection;
- (void)dealloc;
- (void)teardownServiceConnection;
@end

@implementation AKClientConnectionLifecycleManager

- (AKClientConnectionLifecycleManager)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AKClientConnectionLifecycleManager;
  v4 = [(AKClientConnectionLifecycleManager *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_unfairLock._os_unfair_lock_opaque = 0;
  }

  v3 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

id __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke(id *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v45[2] = a1;
  v45[1] = a1;
  v45[0] = MEMORY[0x1E69E5928](*(a1[4] + 2));
  if (!v45[0])
  {
    v24 = [a1[4] serviceConnectionConfig];
    v23 = [v24 daemonXPCEndpoint];
    MEMORY[0x1E69E5920](v23);
    MEMORY[0x1E69E5920](v24);
    if (v23)
    {
      v17 = objc_alloc(MEMORY[0x1E696B0B8]);
      v16 = [a1[4] serviceConnectionConfig];
      v14 = [v16 daemonXPCEndpoint];
      v15 = [v17 initWithListenerEndpoint:?];
      v2 = v45[0];
      v45[0] = v15;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v16);
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E696B0B8]);
      v21 = [a1[4] serviceConnectionConfig];
      v20 = [v21 machServiceName];
      v19 = [a1[4] serviceConnectionConfig];
      v18 = [v22 initWithMachServiceName:v20 options:{objc_msgSend(v19, "options")}];
      v1 = v45[0];
      v45[0] = v18;
      MEMORY[0x1E69E5920](v1);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v20);
      MEMORY[0x1E69E5920](v21);
    }

    location = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      v13 = [a1[4] serviceConnectionConfig];
      __os_log_helper_16_2_1_8_64(v47, v13);
      _os_log_debug_impl(&dword_193225000, location, v43, "Creating connection with configuration: %@", v47, 0xCu);
      MEMORY[0x1E69E5920](v13);
    }

    objc_storeStrong(&location, 0);
    v12 = [a1[4] serviceConnectionConfig];
    v11 = [v12 remoteObjectInterface];
    [v45[0] setRemoteObjectInterface:?];
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    v10 = [a1[4] serviceConnectionConfig];
    v9 = [v10 exportedObject];
    [v45[0] setExportedObject:?];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v8 = [a1[4] serviceConnectionConfig];
    v7 = [v8 exportedInterface];
    [v45[0] setExportedInterface:?];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    objc_initWeak(&from, a1[4]);
    objc_initWeak(&v41, v45[0]);
    v6 = v45[0];
    v34 = MEMORY[0x1E69E9820];
    v35 = -1073741824;
    v36 = 0;
    v37 = __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_3;
    v38 = &unk_1E73D6710;
    objc_copyWeak(&v39, &from);
    objc_copyWeak(&v40, &v41);
    [v6 setInterruptionHandler:&v34];
    v5 = v45[0];
    v27 = MEMORY[0x1E69E9820];
    v28 = -1073741824;
    v29 = 0;
    v30 = __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_4;
    v31 = &unk_1E73D6710;
    objc_copyWeak(&v32, &from);
    objc_copyWeak(&v33, &v41);
    [v5 setInvalidationHandler:&v27];
    [v45[0] activate];
    objc_storeStrong(a1[4] + 2, v45[0]);
    v26 = _AKLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v46, v45[0]);
      _os_log_debug_impl(&dword_193225000, v26, OS_LOG_TYPE_DEBUG, "Connection (%@) to akd activated!", v46, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&from);
  }

  v4 = MEMORY[0x1E69E5928](v45[0]);
  objc_storeStrong(v45, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)activeServiceConnection
{
  v10[2] = self;
  v10[1] = a2;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke;
  v9 = &unk_1E73D4B18;
  v10[0] = MEMORY[0x1E69E5928](self);
  v4 = aaf_unfair_lock_perform_with_result(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKClientConnectionLifecycleManager *)self teardownServiceConnection];
  v2.receiver = selfCopy;
  v2.super_class = AKClientConnectionLifecycleManager;
  [(AKClientConnectionLifecycleManager *)&v2 dealloc];
}

- (void)teardownServiceConnection
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __63__AKClientConnectionLifecycleManager_teardownServiceConnection__block_invoke;
  v7 = &unk_1E73D34C0;
  v8[0] = MEMORY[0x1E69E5928](self);
  aaf_unfair_lock_perform_0(&self->_unfairLock, &v3);
  objc_storeStrong(v8, 0);
}

void __63__AKClientConnectionLifecycleManager_teardownServiceConnection__block_invoke(NSObject *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v3, *(a1[4].isa + 2));
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Connection (%@) to akd tearing down...", v3, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (*(a1[4].isa + 2))
  {
    [*(a1[4].isa + 2) setInvalidationHandler:?];
    [*(a1[4].isa + 2) setInterruptionHandler:0];
    [*(a1[4].isa + 2) invalidate];
    objc_storeStrong(a1[4].isa + 2, 0);
  }

  *MEMORY[0x1E69E9840];
}

void __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_3(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  if (v10[0])
  {
    v1 = (v10[0] + 8);
    v3 = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_2;
    v7 = &unk_1E73D35A8;
    objc_copyWeak(&v9, a1 + 5);
    v8 = MEMORY[0x1E69E5928](v10[0]);
    aaf_unfair_lock_perform_0(v1, &v3);
    objc_storeStrong(&v8, 0);
    objc_destroyWeak(&v9);
  }

  objc_storeStrong(v10, 0);
}

void __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v4, location[0]);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Connection (%@) to akd was interrupted!", v4, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location[0])
  {
    [location[0] setInvalidationHandler:0];
    [location[0] invalidate];
    if (location[0] == *(*(a1 + 32) + 16))
    {
      objc_storeStrong((*(a1 + 32) + 16), 0);
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (AKClientConnectionLifecycleManager)initWithConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v3 = selfCopy;
  selfCopy = 0;
  v6 = [(AKClientConnectionLifecycleManager *)v3 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_serviceConnectionConfig, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

void __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_4(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  if (v10[0])
  {
    v1 = (v10[0] + 8);
    v3 = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_2_5;
    v7 = &unk_1E73D35A8;
    objc_copyWeak(&v9, a1 + 5);
    v8 = MEMORY[0x1E69E5928](v10[0]);
    aaf_unfair_lock_perform_0(v1, &v3);
    objc_storeStrong(&v8, 0);
    objc_destroyWeak(&v9);
  }

  objc_storeStrong(v10, 0);
}

void __61__AKClientConnectionLifecycleManager_activeServiceConnection__block_invoke_2_5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v4, location[0]);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Connection (%@) to akd was invalidated!", v4, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (location[0] == *(*(a1 + 32) + 16))
    {
      objc_storeStrong((*(a1 + 32) + 16), 0);
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end