@interface _GCNintendoJoyConDeviceManager
- (BOOL)acceptDriverConnection:(id)connection forHIDService:(id)service;
- (BOOL)acceptFilterConnection:(id)connection forHIDService:(id)service;
- (NSObject)identifier;
- (_GCNintendoJoyConDeviceManager)init;
- (_GCPhysicalDeviceRegistry)deviceRegistry;
- (id)makeDeviceWithConfiguration:(id)configuration dependencies:(id)dependencies;
- (id)matchHIDService:(id)service;
- (void)_onqueue_registerDefaultConfigurationForDevice:(id)device;
- (void)_onqueue_registerDefaultConfigurationForJoyConDevice:(id)device;
- (void)_onqueue_registerDefaultConfigurationsForDevice:(id)device;
- (void)_onqueue_registerFusionConfigurationWithLeftDevice:(id)device rightDevice:(id)rightDevice;
- (void)_onqueue_relinquishHIDService:(id)service;
- (void)_onqueue_tryRegisteringFusionConfigurationWithDevice:(id)device;
- (void)activateLogicalDevice:(id)device;
- (void)claimHIDService:(id)service;
- (void)deactivateLogicalDevice:(id)device;
- (void)device:(id)device fusionGestureActive:(BOOL)active;
- (void)relinquishHIDService:(id)service;
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

- (void)device:(id)device fusionGestureActive:(BOOL)active
{
  deviceCopy = device;
  if (gc_isInternalBuild())
  {
    [_GCNintendoJoyConDeviceManager device:fusionGestureActive:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke;
  block[3] = &unk_1E8419B20;
  activeCopy = active;
  v10 = deviceCopy;
  selfCopy = self;
  v8 = deviceCopy;
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

- (id)makeDeviceWithConfiguration:(id)configuration dependencies:(id)dependencies
{
  v52 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  dependenciesCopy = dependencies;
  if ([dependenciesCopy count] == 1)
  {
    anyObject = [dependenciesCopy anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      anyObject2 = [dependenciesCopy anyObject];
      [(_GCNintendoFusedJoyConDevice *)anyObject2 setConfiguration:configurationCopy];
      goto LABEL_35;
    }
  }

  if ([dependenciesCopy count] != 1 || (objc_msgSend(dependenciesCopy, "anyObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v13 = objc_opt_isKindOfClass(), v12, (v13 & 1) == 0))
  {
    if ([dependenciesCopy count] != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:180 description:{@"Bad configuration: %@", configurationCopy}];

      anyObject2 = 0;
      goto LABEL_35;
    }

    allObjects = [dependenciesCopy allObjects];
    v16 = [allObjects objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [allObjects objectAtIndexedSubscript:1];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v19 = [allObjects objectAtIndexedSubscript:0];
        delegate2 = [allObjects objectAtIndexedSubscript:{objc_msgSend(v19, "type") != 1}];

        v20 = [allObjects objectAtIndexedSubscript:0];
        v21 = [allObjects objectAtIndexedSubscript:{objc_msgSend(v20, "type") != 2}];

        anyObject2 = [[_GCNintendoFusedJoyConDevice alloc] initWithLeft:delegate2 right:v21 manager:self];
        [(_GCNintendoFusedJoyConDevice *)anyObject2 setConfiguration:configurationCopy];

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
    v44 = dependenciesCopy;
    v23 = dependenciesCopy;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v41 = a2;
      v42 = allObjects;
      selfCopy = self;
      obj = v23;
      v46 = configurationCopy;
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
          identifier = [v30 identifier];
          deviceDependencies = [v46 deviceDependencies];
          firstObject = [deviceDependencies firstObject];
          v34 = [identifier isEqual:firstObject];

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

      configurationCopy = v46;
      allObjects = v42;
      self = selfCopy;
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

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:170 description:{@"Dependencies did not contain primary device. %@", v23}];

    v26 = 0;
LABEL_31:
    dependenciesCopy = v44;
    if (!v27)
    {
      [(_GCNintendoJoyConDeviceManager *)a2 makeDeviceWithConfiguration:v23 dependencies:?];
    }

    anyObject2 = [[_GCFusedLogicalDevice alloc] initWithPrimaryPhysicalDevice:v26 secondaryPhysicalDevice:v27 configuration:configurationCopy manager:self];
    delegate = [v26 delegate];
    [(_GCNintendoFusedJoyConDevice *)anyObject2 setDelegate:delegate];

    goto LABEL_34;
  }

  allObjects = [dependenciesCopy anyObject];
  anyObject2 = [[_GCDefaultLogicalDevice alloc] initWithPhysicalDevice:allObjects configuration:configurationCopy manager:self];
  delegate2 = [allObjects delegate];
  [(_GCNintendoFusedJoyConDevice *)anyObject2 setDelegate:delegate2];
LABEL_11:

LABEL_34:
LABEL_35:

  v39 = *MEMORY[0x1E69E9840];

  return anyObject2;
}

- (void)activateLogicalDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingDevices = [deviceCopy underlyingDevices];
    [underlyingDevices makeObjectsPerformSelector:sel_setFusionDevice_ withObject:deviceCopy];
  }
}

- (void)deactivateLogicalDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingDevices = [deviceCopy underlyingDevices];
    [underlyingDevices makeObjectsPerformSelector:sel_setFusionDevice_ withObject:0];
  }
}

- (void)_onqueue_registerFusionConfigurationWithLeftDevice:(id)device rightDevice:(id)rightDevice
{
  v21[2] = *MEMORY[0x1E69E9840];
  rightDeviceCopy = rightDevice;
  deviceCopy = device;
  v8 = [_GCNintendoFusedJoyConDevice identifierForFusedJoyConDeviceWithLeftDevice:deviceCopy rightDevice:rightDeviceCopy];
  identifier = [deviceCopy identifier];
  v21[0] = identifier;
  identifier2 = [rightDeviceCopy identifier];
  v21[1] = identifier2;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  v12 = MEMORY[0x1E69A0710];
  identifier3 = [(_GCNintendoJoyConDeviceManager *)self identifier];
  v14 = [v12 configurationWithIdentifier:v8 priority:20 deviceIdentifier:v8 deviceDependencies:v11 deviceBuilder:identifier3];

  identifier4 = [deviceCopy identifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    [v14 setTransient:1];
    goto LABEL_5;
  }

  identifier5 = [rightDeviceCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

LABEL_5:
  deviceRegistry = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
  deviceConfigurationRegistry = [deviceRegistry deviceConfigurationRegistry];
  [deviceConfigurationRegistry addConfiguration:v14 replaceExisting:0];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_tryRegisteringFusionConfigurationWithDevice:(id)device
{
  obj = device;
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
    type = [obj type];

    if (type != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_17:
LABEL_18:
}

- (void)_onqueue_registerDefaultConfigurationForJoyConDevice:(id)device
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  v6 = [v4 alloc];
  identifier = [deviceCopy identifier];
  v8 = [v6 initWithFormat:@"JOYCON(%@)", identifier];

  v9 = MEMORY[0x1E69A0710];
  identifier2 = [deviceCopy identifier];
  identifier3 = [deviceCopy identifier];
  v19[0] = identifier3;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  identifier4 = [(_GCNintendoJoyConDeviceManager *)self identifier];
  v14 = [v9 configurationWithIdentifier:v8 priority:10 deviceIdentifier:identifier2 deviceDependencies:v12 deviceBuilder:identifier4];

  identifier5 = [deviceCopy identifier];

  objc_opt_class();
  LOBYTE(deviceCopy) = objc_opt_isKindOfClass();

  if (deviceCopy)
  {
    [v14 setTransient:1];
  }

  deviceRegistry = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
  deviceConfigurationRegistry = [deviceRegistry deviceConfigurationRegistry];
  [deviceConfigurationRegistry addConfiguration:v14 replaceExisting:0];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerDefaultConfigurationForDevice:(id)device
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  v6 = [v4 alloc];
  identifier = [deviceCopy identifier];
  v8 = [v6 initWithFormat:@"LOGICAL_DEVICE(%@)", identifier];

  v9 = MEMORY[0x1E69A0710];
  identifier2 = [deviceCopy identifier];
  v18[0] = identifier2;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  identifier3 = [(_GCNintendoJoyConDeviceManager *)self identifier];
  v13 = [v9 configurationWithIdentifier:v8 priority:10 deviceIdentifier:v8 deviceDependencies:v11 deviceBuilder:identifier3];

  identifier4 = [deviceCopy identifier];

  objc_opt_class();
  LOBYTE(deviceCopy) = objc_opt_isKindOfClass();

  if (deviceCopy)
  {
    [v13 setTransient:1];
  }

  deviceRegistry = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
  deviceConfigurationRegistry = [deviceRegistry deviceConfigurationRegistry];
  [deviceConfigurationRegistry addConfiguration:v13 replaceExisting:0];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerDefaultConfigurationsForDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_GCNintendoJoyConDeviceManager *)self _onqueue_registerDefaultConfigurationForJoyConDevice:deviceCopy];
    [(_GCNintendoJoyConDeviceManager *)self _onqueue_tryRegisteringFusionConfigurationWithDevice:deviceCopy];
  }

  else
  {
    [(_GCNintendoJoyConDeviceManager *)self _onqueue_registerDefaultConfigurationForDevice:deviceCopy];
  }
}

- (id)matchHIDService:(id)service
{
  serviceCopy = service;
  v4 = [serviceCopy numberPropertyForKey:@"VendorID"];
  v5 = [serviceCopy numberPropertyForKey:@"ProductID"];

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

- (void)claimHIDService:(id)service
{
  serviceCopy = service;
  v6 = _os_activity_create(&dword_1D2CD5000, "[Joy-Con Device Manager] Claim HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  if (gc_isInternalBuild())
  {
    v9 = getGCLogger();
    [_GCNintendoJoyConDeviceManager claimHIDService:v9];
  }

  if ([(NSMutableSet *)self->_claimedServices containsObject:serviceCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:313 description:{@"%@ has already claimed %@", self, serviceCopy}];
  }

  [(NSMutableSet *)self->_claimedServices addObject:serviceCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke;
  block[3] = &unk_1E8419B98;
  v12 = serviceCopy;
  selfCopy = self;
  v14 = a2;
  v8 = serviceCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (void)_onqueue_relinquishHIDService:(id)service
{
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:serviceCopy];
  if (v5)
  {
    if (gc_isInternalBuild())
    {
      [_GCNintendoJoyConDeviceManager _onqueue_relinquishHIDService:];
    }

    deviceRegistry = [(_GCNintendoJoyConDeviceManager *)self deviceRegistry];
    [deviceRegistry deviceManager:self deviceDidDisconnect:v5];

    [(NSMutableSet *)self->_fusionGestureDevices removeObject:v5];
    [(NSMutableDictionary *)self->_physicalDevices removeObjectForKey:serviceCopy];
  }

  v7 = [(NSMutableDictionary *)self->_pendingDevices objectForKey:serviceCopy];
  if (v7)
  {
    if (gc_isInternalBuild())
    {
      [_GCNintendoJoyConDeviceManager _onqueue_relinquishHIDService:];
    }

    device = [v7 device];
    [device cancel];

    [v7 setFilterConnection:0 invalidatingPrevious:1];
    [v7 setDriverConnection:0 invalidatingPrevious:1];
    [(NSMutableDictionary *)self->_pendingDevices removeObjectForKey:serviceCopy];
  }
}

- (void)relinquishHIDService:(id)service
{
  serviceCopy = service;
  v6 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Device Manager] Relinquish HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  if (gc_isInternalBuild())
  {
    v9 = getGCLogger();
    [_GCNintendoJoyConDeviceManager relinquishHIDService:v9];
  }

  if (([(NSMutableSet *)self->_claimedServices containsObject:serviceCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:397 description:{@"%@ has not claimed %@", self, serviceCopy}];
  }

  [(NSMutableSet *)self->_claimedServices removeObject:serviceCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___GCNintendoJoyConDeviceManager_relinquishHIDService___block_invoke;
  block[3] = &unk_1E8418C50;
  block[4] = self;
  v12 = serviceCopy;
  v8 = serviceCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (BOOL)acceptDriverConnection:(id)connection forHIDService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  v9 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Device Manager] Accept HID Driver Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:serviceCopy];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8419BC0;
    block[4] = self;
    v15 = serviceCopy;
    v16 = connectionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:409 description:{@"Unclaimed service: %@", serviceCopy}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (BOOL)acceptFilterConnection:(id)connection forHIDService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  v9 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Device Manager] Accept HID Filter Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:serviceCopy];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8418CC8;
    block[4] = self;
    v15 = serviceCopy;
    v16 = connectionCopy;
    v17 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:433 description:{@"Unclaimed service: %@", serviceCopy}];
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