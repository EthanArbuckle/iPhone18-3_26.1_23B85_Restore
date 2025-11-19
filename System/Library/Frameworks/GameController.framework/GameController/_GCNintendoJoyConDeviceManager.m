@interface _GCNintendoJoyConDeviceManager
- (BOOL)acceptDriverConnection:(id)a3 forHIDService:(id)a4;
- (BOOL)acceptFilterConnection:(id)a3 forHIDService:(id)a4;
- (NSObject)identifier;
- (_GCNintendoJoyConDeviceManager)init;
- (_GCPhysicalDeviceRegistry)deviceRegistry;
- (id)makeDeviceWithConfiguration:(id)a3 dependencies:(id)a4;
- (id)matchHIDService:(id)a3;
- (void)_onqueue_registerDefaultConfigurationForDevice:(id)a3;
- (void)_onqueue_registerDefaultConfigurationForJoyConDevice:(id)a3;
- (void)_onqueue_registerDefaultConfigurationsForDevice:(id)a3;
- (void)_onqueue_registerFusionConfigurationWithLeftDevice:(id)a3 rightDevice:(id)a4;
- (void)_onqueue_relinquishHIDService:(id)a3;
- (void)_onqueue_tryRegisteringFusionConfigurationWithDevice:(id)a3;
- (void)activateLogicalDevice:(id)a3;
- (void)claimHIDService:(id)a3;
- (void)deactivateLogicalDevice:(id)a3;
- (void)device:(id)a3 fusionGestureActive:(BOOL)a4;
- (void)relinquishHIDService:(id)a3;
@end

@implementation _GCNintendoJoyConDeviceManager

- (_GCNintendoJoyConDeviceManager)init
{
  v14.receiver = self;
  v14.super_class = _GCNintendoJoyConDeviceManager;
  v2 = [(_GCNintendoJoyConDeviceManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("_GCNintendoJoyConDeviceManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    claimedServices = v2->_claimedServices;
    v2->_claimedServices = v5;

    v7 = objc_opt_new();
    pendingDevices = v2->_pendingDevices;
    v2->_pendingDevices = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    physicalDevices = v2->_physicalDevices;
    v2->_physicalDevices = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    fusionGestureDevices = v2->_fusionGestureDevices;
    v2->_fusionGestureDevices = v11;
  }

  return v2;
}

- (void)device:(id)a3 fusionGestureActive:(BOOL)a4
{
  v6 = a3;
  if (gc_isInternalBuild())
  {
    [_GCNintendoJoyConDeviceManager device:fusionGestureActive:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke;
  block[3] = &unk_1E8419B20;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (NSObject)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_GCPhysicalDeviceRegistry)deviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceRegistry);

  return WeakRetained;
}

- (id)makeDeviceWithConfiguration:(id)a3 dependencies:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 count] == 1)
  {
    v9 = [v8 anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v8 anyObject];
      [(_GCNintendoFusedJoyConDevice *)v11 setConfiguration:v7];
      goto LABEL_35;
    }
  }

  if ([v8 count] != 1 || (objc_msgSend(v8, "anyObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v13 = objc_opt_isKindOfClass(), v12, (v13 & 1) == 0))
  {
    if ([v8 count] != 2)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:180 description:{@"Bad configuration: %@", v7}];

      v11 = 0;
      goto LABEL_35;
    }

    v14 = [v8 allObjects];
    v16 = [v14 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v14 objectAtIndexedSubscript:1];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v19 = [v14 objectAtIndexedSubscript:0];
        v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v19, "type") != 1}];

        v20 = [v14 objectAtIndexedSubscript:0];
        v21 = [v14 objectAtIndexedSubscript:{objc_msgSend(v20, "type") != 2}];

        v11 = [[_GCNintendoFusedJoyConDevice alloc] initWithLeft:v15 right:v21 manager:self];
        [(_GCNintendoFusedJoyConDevice *)v11 setConfiguration:v7];

        goto LABEL_11;
      }
    }

    else
    {
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = v8;
    v23 = v8;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v41 = a2;
      v42 = v14;
      v43 = self;
      obj = v23;
      v46 = v7;
      v26 = 0;
      v27 = 0;
      v28 = *v48;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v47 + 1) + 8 * i);
          v31 = [v30 identifier];
          v32 = [v46 deviceDependencies];
          v33 = [v32 firstObject];
          v34 = [v31 isEqual:v33];

          v35 = v30;
          if (v34)
          {
            v36 = v26;
          }

          else
          {
            v36 = v27;
          }

          if (v34)
          {
            v26 = v35;
          }

          else
          {
            v27 = v35;
          }
        }

        v23 = obj;
        v25 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v25);

      v7 = v46;
      v14 = v42;
      self = v43;
      a2 = v41;
      if (v26)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v27 = 0;
    }

    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:170 description:{@"Dependencies did not contain primary device. %@", v23}];

    v26 = 0;
LABEL_31:
    v8 = v44;
    if (!v27)
    {
      [(_GCNintendoJoyConDeviceManager *)a2 makeDeviceWithConfiguration:v23 dependencies:?];
    }

    v11 = [[_GCFusedLogicalDevice alloc] initWithPrimaryPhysicalDevice:v26 secondaryPhysicalDevice:v27 configuration:v7 manager:self];
    v38 = [v26 delegate];
    [(_GCNintendoFusedJoyConDevice *)v11 setDelegate:v38];

    goto LABEL_34;
  }

  v14 = [v8 anyObject];
  v11 = [[_GCDefaultLogicalDevice alloc] initWithPhysicalDevice:v14 configuration:v7 manager:self];
  v15 = [v14 delegate];
  [(_GCNintendoFusedJoyConDevice *)v11 setDelegate:v15];
LABEL_11:

LABEL_34:
LABEL_35:

  v39 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)activateLogicalDevice:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 underlyingDevices];
    [v3 makeObjectsPerformSelector:sel_setFusionDevice_ withObject:v4];
  }
}

- (void)deactivateLogicalDevice:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 underlyingDevices];
    [v3 makeObjectsPerformSelector:sel_setFusionDevice_ withObject:0];
  }
}

- (void)_onqueue_registerFusionConfigurationWithLeftDevice:(id)a3 rightDevice:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [_GCNintendoFusedJoyConDevice identifierForFusedJoyConDeviceWithLeftDevice:v7 rightDevice:v6];
  v9 = [v7 identifier];
  v21[0] = v9;
  v10 = [v6 identifier];
  v21[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  v12 = MEMORY[0x1E69A0710];
  v13 = [(_GCNintendoJoyConDeviceManager *)self identifier];
  v14 = [v12 configurationWithIdentifier:v8 priority:20 deviceIdentifier:v8 deviceDependencies:v11 deviceBuilder:v13];

  v15 = [v7 identifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    [v14 setTransient:1];
    goto LABEL_5;
  }

  v16 = [v6 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

LABEL_5:
  v18 = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
  v19 = [v18 deviceConfigurationRegistry];
  [v19 addConfiguration:v14 replaceExisting:0];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_tryRegisteringFusionConfigurationWithDevice:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pendingJoyCon);

  if (!WeakRetained || (v5 = objc_loadWeakRetained(&self->_pendingJoyCon), v6 = [v5 type], v7 = objc_msgSend(obj, "type"), v5, v6 == v7))
  {
    objc_storeWeak(&self->_pendingJoyCon, obj);
    goto LABEL_18;
  }

  v8 = objc_loadWeakRetained(&self->_pendingJoyCon);
  if ([v8 type] == 1 && objc_msgSend(obj, "type") == 2)
  {

LABEL_9:
    v11 = objc_loadWeakRetained(&self->_pendingJoyCon);
    if ([v11 type] == 1)
    {
      v12 = objc_loadWeakRetained(&self->_pendingJoyCon);
    }

    else
    {
      v12 = obj;
    }

    v8 = v12;

    v13 = objc_loadWeakRetained(&self->_pendingJoyCon);
    if ([v13 type] == 2)
    {
      v14 = objc_loadWeakRetained(&self->_pendingJoyCon);
    }

    else
    {
      v14 = obj;
    }

    v15 = v14;

    [(_GCNintendoJoyConDeviceManager *)self _onqueue_registerFusionConfigurationWithLeftDevice:v8 rightDevice:v15];
    goto LABEL_17;
  }

  v9 = objc_loadWeakRetained(&self->_pendingJoyCon);
  if ([v9 type] == 2)
  {
    v10 = [obj type];

    if (v10 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_17:
LABEL_18:
}

- (void)_onqueue_registerDefaultConfigurationForJoyConDevice:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 identifier];
  v8 = [v6 initWithFormat:@"JOYCON(%@)", v7];

  v9 = MEMORY[0x1E69A0710];
  v10 = [v5 identifier];
  v11 = [v5 identifier];
  v19[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [(_GCNintendoJoyConDeviceManager *)self identifier];
  v14 = [v9 configurationWithIdentifier:v8 priority:10 deviceIdentifier:v10 deviceDependencies:v12 deviceBuilder:v13];

  v15 = [v5 identifier];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    [v14 setTransient:1];
  }

  v16 = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
  v17 = [v16 deviceConfigurationRegistry];
  [v17 addConfiguration:v14 replaceExisting:0];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerDefaultConfigurationForDevice:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 identifier];
  v8 = [v6 initWithFormat:@"LOGICAL_DEVICE(%@)", v7];

  v9 = MEMORY[0x1E69A0710];
  v10 = [v5 identifier];
  v18[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v12 = [(_GCNintendoJoyConDeviceManager *)self identifier];
  v13 = [v9 configurationWithIdentifier:v8 priority:10 deviceIdentifier:v8 deviceDependencies:v11 deviceBuilder:v12];

  v14 = [v5 identifier];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    [v13 setTransient:1];
  }

  v15 = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
  v16 = [v15 deviceConfigurationRegistry];
  [v16 addConfiguration:v13 replaceExisting:0];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerDefaultConfigurationsForDevice:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_GCNintendoJoyConDeviceManager *)self _onqueue_registerDefaultConfigurationForJoyConDevice:v4];
    [(_GCNintendoJoyConDeviceManager *)self _onqueue_tryRegisteringFusionConfigurationWithDevice:v4];
  }

  else
  {
    [(_GCNintendoJoyConDeviceManager *)self _onqueue_registerDefaultConfigurationForDevice:v4];
  }
}

- (id)matchHIDService:(id)a3
{
  v3 = a3;
  v4 = [v3 numberPropertyForKey:@"VendorID"];
  v5 = [v3 numberPropertyForKey:@"ProductID"];

  if ([v4 isEqualToNumber:&unk_1F4E8E078] && ((objc_msgSend(v5, "isEqualToNumber:", &unk_1F4E8E090) & 1) != 0 || (objc_msgSend(v5, "isEqualToNumber:", &unk_1F4E8E0A8) & 1) != 0 || (objc_msgSend(v5, "isEqualToNumber:", &unk_1F4E8E0C0) & 1) != 0 || (objc_msgSend(v5, "isEqualToNumber:", &unk_1F4E8E0D8) & 1) != 0 || (objc_msgSend(v5, "isEqualToNumber:", &unk_1F4E8E0F0) & 1) != 0 || (objc_msgSend(v5, "isEqualToNumber:", &unk_1F4E8E108) & 1) != 0))
  {
    v6 = MEMORY[0x1E69A0678];
  }

  else
  {
    v6 = MEMORY[0x1E69A0688];
  }

  v7 = *v6;
  v8 = *v6;

  return v7;
}

- (void)claimHIDService:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2CD5000, "[Joy-Con Device Manager] Claim HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  if (gc_isInternalBuild())
  {
    v9 = getGCLogger();
    [_GCNintendoJoyConDeviceManager claimHIDService:v9];
  }

  if ([(NSMutableSet *)self->_claimedServices containsObject:v5])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:313 description:{@"%@ has already claimed %@", self, v5}];
  }

  [(NSMutableSet *)self->_claimedServices addObject:v5];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke;
  block[3] = &unk_1E8419B98;
  v12 = v5;
  v13 = self;
  v14 = a2;
  v8 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (void)_onqueue_relinquishHIDService:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:v4];
  if (v5)
  {
    if (gc_isInternalBuild())
    {
      [_GCNintendoJoyConDeviceManager _onqueue_relinquishHIDService:];
    }

    v6 = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
    [v6 deviceManager:self deviceDidDisconnect:v5];

    [(NSMutableSet *)self->_fusionGestureDevices removeObject:v5];
    [(NSMutableDictionary *)self->_physicalDevices removeObjectForKey:v4];
  }

  v7 = [(NSMutableDictionary *)self->_pendingDevices objectForKey:v4];
  if (v7)
  {
    if (gc_isInternalBuild())
    {
      [_GCNintendoJoyConDeviceManager _onqueue_relinquishHIDService:];
    }

    v8 = [v7 device];
    [v8 cancel];

    [v7 setFilterConnection:0 invalidatingPrevious:1];
    [v7 setDriverConnection:0 invalidatingPrevious:1];
    [(NSMutableDictionary *)self->_pendingDevices removeObjectForKey:v4];
  }
}

- (void)relinquishHIDService:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Device Manager] Relinquish HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  if (gc_isInternalBuild())
  {
    v9 = getGCLogger();
    [_GCNintendoJoyConDeviceManager relinquishHIDService:v9];
  }

  if (([(NSMutableSet *)self->_claimedServices containsObject:v5]& 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:397 description:{@"%@ has not claimed %@", self, v5}];
  }

  [(NSMutableSet *)self->_claimedServices removeObject:v5];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___GCNintendoJoyConDeviceManager_relinquishHIDService___block_invoke;
  block[3] = &unk_1E8418C50;
  block[4] = self;
  v12 = v5;
  v8 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (BOOL)acceptDriverConnection:(id)a3 forHIDService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Device Manager] Accept HID Driver Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:v8];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8419BC0;
    block[4] = self;
    v15 = v8;
    v16 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:409 description:{@"Unclaimed service: %@", v8}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (BOOL)acceptFilterConnection:(id)a3 forHIDService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Device Manager] Accept HID Filter Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:v8];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8418CC8;
    block[4] = self;
    v15 = v8;
    v16 = v7;
    v17 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:433 description:{@"Unclaimed service: %@", v8}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (void)device:fusionGestureActive:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeDeviceWithConfiguration:(uint64_t)a3 dependencies:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:v4 object:v3 file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:171 description:{@"Dependencies did not contain secondary device. %@", a3}];
}

- (void)claimHIDService:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v3, v4, "%@: Asked to claim %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_relinquishHIDService:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v3, v4, "%@: Removing %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)relinquishHIDService:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v3, v4, "%@: Asked to relinquish %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end