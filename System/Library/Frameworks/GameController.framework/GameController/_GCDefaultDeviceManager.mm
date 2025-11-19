@interface _GCDefaultDeviceManager
- (BOOL)acceptDriverConnection:(id)a3 forHIDService:(id)a4;
- (BOOL)acceptFilterConnection:(id)a3 forHIDService:(id)a4;
- (_GCDefaultDeviceManager)initWithIdentifier:(id)a3 matchingFilter:(id)a4 probeScore:(id)a5;
- (_GCDefaultDeviceManagerDelegate)delegate;
- (_GCPhysicalDeviceRegistry)deviceRegistry;
- (id)configurationIdentifierForDevice:(id)a3;
- (id)makeDeviceWithConfiguration:(id)a3 dependencies:(id)a4;
- (id)matchHIDService:(id)a3;
- (void)_onqueue_checkAndHideDuplicateDevice:(id)a3;
- (void)_onqueue_registerPhysicalDevice:(id)a3 serviceInfo:(id)a4 checkForDuplicateDevice:(BOOL)a5;
- (void)_onqueue_relinquishHIDDevice:(id)a3;
- (void)claimHIDService:(id)a3;
- (void)refreshPhysicalDeviceConfiguration:(id)a3;
- (void)relinquishHIDService:(id)a3;
@end

@implementation _GCDefaultDeviceManager

- (_GCDefaultDeviceManager)initWithIdentifier:(id)a3 matchingFilter:(id)a4 probeScore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = _GCDefaultDeviceManager;
  v11 = [(_GCDefaultDeviceManager *)&v28 init];
  if (v11)
  {
    v12 = [v8 copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_probeScore, a5);
    objc_storeStrong(&v11->_matchingFilter, a4);
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(_GCDeviceMatchingFilter *)v11->_matchingFilter identifier];
    v16 = [v14 stringWithFormat:@"_GCDefaultDeviceManager.%@", v15];

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v18 = dispatch_queue_create([v16 cStringUsingEncoding:4], v17);
    queue = v11->_queue;
    v11->_queue = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    claimedServices = v11->_claimedServices;
    v11->_claimedServices = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    physicalDevices = v11->_physicalDevices;
    v11->_physicalDevices = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hiddenPhysicalDevices = v11->_hiddenPhysicalDevices;
    v11->_hiddenPhysicalDevices = v24;

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v11 selector:sel_refreshPhysicalDeviceConfiguration_ name:@"GCRefreshPhysicalDeviceConfigurationNotification" object:0];
  }

  return v11;
}

- (id)makeDeviceWithConfiguration:(id)a3 dependencies:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 count] == 1)
  {
    v9 = [_GCDefaultLogicalDevice alloc];
    v10 = [v8 anyObject];
    v11 = [(_GCDefaultLogicalDevice *)v9 initWithPhysicalDevice:v10 configuration:v7 manager:self];

    v12 = [(_GCDefaultDeviceManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 deviceManager:self prepareLogicalDevice:v11];
    }

    goto LABEL_25;
  }

  if ([v8 count] != 2)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:124 description:{@"Bad configuration: %@", v7}];

    v11 = 0;
    goto LABEL_25;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v14)
  {

    v16 = 0;
    goto LABEL_29;
  }

  v15 = v14;
  v34 = v8;
  obj = v13;
  v32 = a2;
  v33 = self;
  v16 = 0;
  v17 = 0;
  v36 = *v38;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v38 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v37 + 1) + 8 * i);
      v20 = [v19 identifier];
      v21 = [v7 deviceDependencies];
      [v21 firstObject];
      v23 = v22 = v7;
      v24 = [v20 isEqual:v23];

      v7 = v22;
      v25 = v19;
      if (v24)
      {
        v26 = v17;
      }

      else
      {
        v26 = v16;
      }

      if (v24)
      {
        v17 = v25;
      }

      else
      {
        v16 = v25;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v15);
  v13 = obj;

  self = v33;
  v8 = v34;
  a2 = v32;
  if (!v17)
  {
LABEL_29:
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:111 description:{@"Dependencies did not contain primary device. %@", v13}];

    v17 = 0;
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_30:
    [(_GCDefaultDeviceManager *)a2 makeDeviceWithConfiguration:v13 dependencies:?];
    goto LABEL_21;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_21:
  v11 = [[_GCFusedLogicalDevice alloc] initWithPrimaryPhysicalDevice:v17 secondaryPhysicalDevice:v16 configuration:v7 manager:self];
  v27 = [(_GCDefaultDeviceManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v27 deviceManager:self prepareLogicalDevice:v11];
  }

LABEL_25:
  v29 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)configurationIdentifierForDevice:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 identifier];

  v7 = [v5 initWithFormat:@"LOGICAL_DEVICE(%@)", v6];

  return v7;
}

- (void)refreshPhysicalDeviceConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 conformsToProtocol:&unk_1F4E9B800];

  if (v6)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62___GCDefaultDeviceManager_refreshPhysicalDeviceConfiguration___block_invoke;
    v8[3] = &unk_1E8419C38;
    objc_copyWeak(&v11, &location);
    v9 = v4;
    v10 = self;
    dispatch_async(queue, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)matchHIDService:(id)a3
{
  v4 = [(_GCDeviceMatchingFilter *)self->_matchingFilter match:a3];
  p_probeScore = &self->_probeScore;
  if (!v4)
  {
    p_probeScore = MEMORY[0x1E69A0688];
  }

  v6 = *p_probeScore;

  return v6;
}

- (void)_onqueue_checkAndHideDuplicateDevice:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v4 = [v17 identifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(NSMutableDictionary *)self->_physicalDevices allKeys];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_physicalDevices objectForKeyedSubscript:v10];
      v12 = [v11 identifier];
      v13 = [v12 isEqual:v4];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v11)
    {
      goto LABEL_15;
    }

    v15 = v17;
    if (v11 != v17)
    {
      if (gc_isInternalBuild())
      {
        [_GCDefaultDeviceManager _onqueue_checkAndHideDuplicateDevice:];
      }

      [(_GCDefaultDeviceManager *)self _onqueue_relinquishHIDDevice:v14];
      [(NSMutableDictionary *)self->_hiddenPhysicalDevices setObject:v11 forKey:v14];
    }
  }

  else
  {
LABEL_9:

    v14 = 0;
LABEL_15:
    if (gc_isInternalBuild())
    {
      [_GCDefaultDeviceManager _onqueue_checkAndHideDuplicateDevice:];
    }

    v11 = 0;
    v15 = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)claimHIDService:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2CD5000, "[Default Device Manager] Claim HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  if (gc_isInternalBuild())
  {
    v11 = getGCLogger();
    [_GCDefaultDeviceManager claimHIDService:v11];
  }

  v7 = [(_GCDefaultDeviceManager *)self matchHIDService:v5];
  v8 = *MEMORY[0x1E69A0688];

  if (v7 <= v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:214 description:{@"%@ does not match against %@ but is trying to claim it", self, v5}];
  }

  if ([(NSMutableSet *)self->_claimedServices containsObject:v5])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:215 description:{@"%@ has already claimed %@", self, v5}];
  }

  [(NSMutableSet *)self->_claimedServices addObject:v5];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___GCDefaultDeviceManager_claimHIDService___block_invoke;
  block[3] = &unk_1E8419B98;
  block[4] = self;
  v15 = v5;
  v16 = a2;
  v10 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (void)_onqueue_registerPhysicalDevice:(id)a3 serviceInfo:(id)a4 checkForDuplicateDevice:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    [(_GCDefaultDeviceManager *)self _onqueue_checkAndHideDuplicateDevice:v8];
  }

  if (v8)
  {
    if (gc_isInternalBuild())
    {
      [_GCDefaultDeviceManager _onqueue_registerPhysicalDevice:serviceInfo:checkForDuplicateDevice:];
    }

    [(NSMutableDictionary *)self->_physicalDevices setObject:v8 forKey:v9];
    [(_GCDefaultDeviceManager *)self _onqueue_registerDefaultConfigurationForDevice:v8 replaceExisting:1];
    v10 = [(_GCDefaultDeviceManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v10 deviceManager:self willPublishPhysicalDevice:v8];
    }

    v11 = [(_GCDefaultDeviceManager *)self deviceRegistry];
    [v11 deviceManager:self deviceDidConnect:v8];
  }
}

- (void)_onqueue_relinquishHIDDevice:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:v4];
  if (v5)
  {
    if (gc_isInternalBuild())
    {
      [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:];
    }

    v6 = [(_GCDefaultDeviceManager *)self deviceRegistry];
    [v6 deviceManager:self deviceDidDisconnect:v5];

    [(NSMutableDictionary *)self->_physicalDevices removeObjectForKey:v4];
  }

  v7 = [(NSMutableDictionary *)self->_hiddenPhysicalDevices objectForKey:v4];
  if (v7)
  {
    if (gc_isInternalBuild())
    {
      [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:];
    }

    [(NSMutableDictionary *)self->_hiddenPhysicalDevices removeObjectForKey:v4];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  hiddenPhysicalDevices = self->_hiddenPhysicalDevices;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56___GCDefaultDeviceManager__onqueue_relinquishHIDDevice___block_invoke;
  v17[3] = &unk_1E8419C60;
  v9 = v5;
  v18 = v9;
  v19 = &v27;
  v20 = &v21;
  [(NSMutableDictionary *)hiddenPhysicalDevices enumerateKeysAndObjectsWithOptions:0 usingBlock:v17];
  if (v28[5])
  {
    v10 = [v4 stringPropertyForKey:@"Transport"];
    v11 = [v28[5] stringPropertyForKey:@"Transport"];
    if (gc_isInternalBuild())
    {
      v14 = getGCLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v28[5];
        *buf = 138412802;
        v34 = self;
        v35 = 2112;
        v36 = v4;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_INFO, "%@ Service %@ was relinquished, but we found cached hidden service %@ with the same identifier...", buf, 0x20u);
      }
    }

    if ([v10 isEqual:v11])
    {
      if (gc_isInternalBuild())
      {
        v12 = getGCLogger();
        [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:v12];
      }
    }

    else
    {
      if (gc_isInternalBuild())
      {
        v16 = getGCLogger();
        [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:v16];
      }

      [(_GCDefaultDeviceManager *)self _onqueue_registerPhysicalDevice:v22[5] serviceInfo:v28[5] checkForDuplicateDevice:0];
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)relinquishHIDService:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2CD5000, "[Default Device Manager] Relinquish HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  if (gc_isInternalBuild())
  {
    v9 = getGCLogger();
    [_GCDefaultDeviceManager relinquishHIDService:v9];
  }

  if (([(NSMutableSet *)self->_claimedServices containsObject:v5]& 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:311 description:{@"%@ has not claimed %@", self, v5}];
  }

  [(NSMutableSet *)self->_claimedServices removeObject:v5];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___GCDefaultDeviceManager_relinquishHIDService___block_invoke;
  block[3] = &unk_1E8418C50;
  block[4] = self;
  v12 = v5;
  v8 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (BOOL)acceptDriverConnection:(id)a3 forHIDService:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);

  return 1;
}

- (BOOL)acceptFilterConnection:(id)a3 forHIDService:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___GCDefaultDeviceManager_acceptFilterConnection_forHIDService___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);

  return 1;
}

- (_GCPhysicalDeviceRegistry)deviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceRegistry);

  return WeakRetained;
}

- (_GCDefaultDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)makeDeviceWithConfiguration:(uint64_t)a3 dependencies:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:v4 object:v3 file:@"GCDefaultDeviceManager.m" lineNumber:112 description:{@"Dependencies did not contain secondary device. %@", a3}];
}

- (void)_onqueue_checkAndHideDuplicateDevice:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_checkAndHideDuplicateDevice:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)claimHIDService:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerPhysicalDevice:serviceInfo:checkForDuplicateDevice:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v3 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEFAULT, "%@: Adding %@", v2, 0x16u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_relinquishHIDDevice:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_relinquishHIDDevice:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_relinquishHIDDevice:(NSObject *)a1 .cold.3(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_relinquishHIDDevice:(NSObject *)a1 .cold.4(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)relinquishHIDService:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end