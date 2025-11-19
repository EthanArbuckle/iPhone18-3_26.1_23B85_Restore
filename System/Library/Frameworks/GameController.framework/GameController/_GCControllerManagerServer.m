@interface _GCControllerManagerServer
+ (id)sharedInstance;
- (BOOL)acceptIncomingDriverConnection:(id)a3;
- (BOOL)addConfiguration:(id)a3 replaceExisting:(BOOL)a4;
- (BOOL)getLastGeneratedName:(id *)a3 directoryHandle:(id *)a4 url:(id *)a5;
- (BOOL)hasConfigurationWithIdentifier:(id)a3;
- (BOOL)removeConfigurationWithIdentifier:(id)a3;
- (BOOL)updateConfiguration:(id)a3;
- (_GCControllerManagerServer)init;
- (_GCControllerManagerServer)initWithControllerProfiles:(id)a3;
- (id)IPCObjectWithIdentifier:(id)a3;
- (id)_hidqueue_popPendingDriverConnectionsForRegistryID:(id)a3;
- (id)_hidqueue_popPendingFilterConnectionsForRegistryID:(id)a3;
- (id)configurationWithIdentifier:(id)a3;
- (id)lastGeneratedURL;
- (id)matchingHIDServiceAttributes;
- (void)_hidqueue_pushPendingDriverConnection:(id)a3 forRegistryID:(id)a4;
- (void)_hidqueue_pushPendingFilterConnection:(id)a3 forRegistryID:(id)a4;
- (void)_onqueue_refreshControllers;
- (void)_onqueue_refreshLogicalDevices;
- (void)_onqueue_registerLogicalDevice:(id)a3;
- (void)_onqueue_registerPhysicalDevice:(id)a3;
- (void)_onqueue_signalGameControllerFocusModeEvent;
- (void)_onqueue_unregisterLogicalDevice:(id)a3;
- (void)_onqueue_unregisterPhysicalDevice:(id)a3;
- (void)_rebuildCoPilotConfigurations;
- (void)_refreshCoPilotSettings;
- (void)dealloc;
- (void)deviceManager:(id)a3 deviceDidConnect:(id)a4;
- (void)deviceManager:(id)a3 deviceDidDisconnect:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onHIDServiceAdded:(id)a3;
- (void)onHIDServiceRemoved:(id)a3;
- (void)refreshActiveConfigurations;
- (void)refreshActiveConfigurationsWithCompletion:(id)a3;
- (void)registerIPCObject:(id)a3;
- (void)setLastGeneratedName:(id)a3 directoryHandle:(id)a4 url:(id)a5;
- (void)setupHIDMonitor:(BOOL)a3;
- (void)teardownHIDMonitor;
@end

@implementation _GCControllerManagerServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_GCControllerManagerServer sharedInstance];
  }

  v3 = sharedInstance_sharedManager;

  return v3;
}

- (_GCControllerManagerServer)init
{
  v3 = AllControllerProfiles();
  v4 = [(_GCControllerManagerServer *)self initWithControllerProfiles:v3];

  return v4;
}

- (_GCControllerManagerServer)initWithControllerProfiles:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v80.receiver = self;
  v80.super_class = _GCControllerManagerServer;
  v5 = [(_GCControllerManagerServer *)&v80 init];
  if (v5)
  {
    v6 = dispatch_queue_create("GCControllerManager.controllers", 0);
    controllersQueue = v5->_controllersQueue;
    v5->_controllersQueue = v6;

    v71 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v8 = dispatch_queue_create("com.apple.corecontroller.events", v71);
    hidSystemClientQueue = v5->_hidSystemClientQueue;
    v5->_hidSystemClientQueue = v8;

    v5->_ipcRegistryLock._os_unfair_lock_opaque = 0;
    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    ipcObjectRegistry = v5->_ipcObjectRegistry;
    v5->_ipcObjectRegistry = v10;

    notify_register_check("com.apple.GameController.system.status", &v5->_systemStatusNotification);
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    allDeviceManagers = v5->_allDeviceManagers;
    v5->_allDeviceManagers = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    physicalDeviceManagers = v5->_physicalDeviceManagers;
    v5->_physicalDeviceManagers = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    logicalDeviceManagers = v5->_logicalDeviceManagers;
    v5->_logicalDeviceManagers = v16;

    v18 = GCLookupService();
    settingsStore = v5->_settingsStore;
    v5->_settingsStore = v18;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v20 = v4;
    v21 = [v20 countByEnumeratingWithState:&v76 objects:v81 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v77;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v77 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v76 + 1) + 8 * i);
          if ([v25 conformsToProtocol:{&unk_1F4E97480, v71}])
          {
            v26 = [v25 deviceManager];
            [v26 setDeviceRegistry:v5];
            v27 = v5->_allDeviceManagers;
            v28 = [v26 identifier];
            [(NSMutableDictionary *)v27 setObject:v26 forKey:v28];

            if ([v26 conformsToProtocol:&unk_1F4E99998])
            {
              v29 = v5->_physicalDeviceManagers;
              v30 = [v26 identifier];
              [(NSMutableDictionary *)v29 setObject:v26 forKey:v30];
            }

            if ([v26 conformsToProtocol:&unk_1F4E99AB0])
            {
              v31 = v5->_logicalDeviceManagers;
              v32 = [v26 identifier];
              [(NSMutableDictionary *)v31 setObject:v26 forKey:v32];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v22);
    }

    v33 = objc_opt_new();
    [v33 setDeviceRegistry:v5];
    v34 = v5->_allDeviceManagers;
    v35 = [v33 identifier];
    [(NSMutableDictionary *)v34 setObject:v33 forKey:v35];

    v36 = v5->_physicalDeviceManagers;
    v37 = [v33 identifier];
    [(NSMutableDictionary *)v36 setObject:v33 forKey:v37];

    v38 = v5->_logicalDeviceManagers;
    v39 = [v33 identifier];
    [(NSMutableDictionary *)v38 setObject:v33 forKey:v39];

    v5->_configurationsLock._os_unfair_lock_opaque = 0;
    v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    configurations = v5->_configurations;
    v5->_configurations = v40;

    v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    copilotConfigurations = v5->_copilotConfigurations;
    v5->_copilotConfigurations = v42;

    v44 = GCLookupService();
    defaults = v5->_defaults;
    v5->_defaults = v44;

    copilotSettings = v5->_copilotSettings;
    v5->_copilotSettings = MEMORY[0x1E695E0F0];

    v47 = [(GCSSettingsStore *)v5->_settingsStore copilotFusedControllers];
    [v47 addObserver:v5 forKeyPath:@"values" options:5 context:0];

    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allDevices = v5->_allDevices;
    v5->_allDevices = v48;

    v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
    physicalDevices = v5->_physicalDevices;
    v5->_physicalDevices = v50;

    v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
    logicalDevices = v5->_logicalDevices;
    v5->_logicalDevices = v52;

    v54 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeConfigurations = v5->_activeConfigurations;
    v5->_activeConfigurations = v54;

    v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeControllerDevices = v5->_activeControllerDevices;
    v5->_activeControllerDevices = v56;

    v58 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    hidServices = v5->_hidServices;
    v5->_hidServices = v58;

    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hidServiceOwners = v5->_hidServiceOwners;
    v5->_hidServiceOwners = v60;

    v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingDriverConnections = v5->_pendingDriverConnections;
    v5->_pendingDriverConnections = v62;

    v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingFilterConnections = v5->_pendingFilterConnections;
    v5->_pendingFilterConnections = v64;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___GCControllerManagerServer_initWithControllerProfiles___block_invoke;
    block[3] = &unk_1E8418C28;
    v66 = v5;
    v75 = v66;
    v67 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, -1, block);
    dispatch_async(MEMORY[0x1E69E96A0], v67);

    v68 = [(_GCControllerManagerServer *)v66 controllersQueue];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __57___GCControllerManagerServer_initWithControllerProfiles___block_invoke_2;
    v72[3] = &unk_1E8418C28;
    v73 = v66;
    dispatch_async(v68, v72);
  }

  v69 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  [(_GCControllerManagerServer *)self teardownHIDMonitor];
  [(GCUserDefaults *)self->_defaults removeObserver:self forKeyPath:@"configurations_v1" context:0];
  v3 = [(GCSSettingsStore *)self->_settingsStore copilotFusedControllers];

  if (v3)
  {
    v4 = [(GCSSettingsStore *)self->_settingsStore copilotFusedControllers];
    [v4 removeObserver:self forKeyPath:@"values" context:0];
  }

  v5.receiver = self;
  v5.super_class = _GCControllerManagerServer;
  [(_GCControllerManagerServer *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(GCSSettingsStore *)self->_settingsStore copilotFusedControllers];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_5:
    v17.receiver = self;
    v17.super_class = _GCControllerManagerServer;
    [(_GCControllerManagerServer *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_6;
  }

  v15 = [v10 isEqualToString:@"values"];

  if (!v15)
  {
    goto LABEL_5;
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_1D2CD5000, "Co-pilot Settings Did Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);
  [(_GCControllerManagerServer *)&self->super.isa _refreshCoPilotSettings];
  os_activity_scope_leave(&state);

LABEL_6:
}

- (void)_refreshCoPilotSettings
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_refreshControllers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableDictionary count](self->_logicalDevices, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_logicalDevices allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1F4E9B608])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(_GCControllerManagerServer *)self setActiveControllerDevices:v4];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_refreshLogicalDevices
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCControllerManagerServer.m" lineNumber:403 description:@"We are missing a device."];
}

- (void)_onqueue_registerPhysicalDevice:(id)a3
{
  v13 = a3;
  v4 = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(v4);

  if (([v13 conformsToProtocol:&unk_1F4E9B800] & 1) == 0)
  {
    [_GCControllerManagerServer _onqueue_registerPhysicalDevice:];
  }

  v5 = [v13 identifier];
  v6 = [(NSMutableDictionary *)self->_allDevices objectForKey:v5];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_allDevices objectForKey:v5];

    if (v7 != v13)
    {
      [_GCControllerManagerServer _onqueue_registerPhysicalDevice:];
    }
  }

  allDevices = self->_allDevices;
  v9 = [v13 identifier];
  [(NSMutableDictionary *)allDevices setObject:v13 forKey:v9];

  physicalDevices = self->_physicalDevices;
  v11 = [v13 identifier];
  [(NSMutableDictionary *)physicalDevices setObject:v13 forKey:v11];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"GCPhysicalDeviceWasRegisteredNotification" object:v13 userInfo:0];
}

- (void)_onqueue_unregisterPhysicalDevice:(id)a3
{
  v9 = a3;
  v4 = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v9 identifier];
  v6 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:v5];

  if (!v6)
  {
    [_GCControllerManagerServer _onqueue_unregisterPhysicalDevice:];
  }

  [(NSMutableDictionary *)self->_physicalDevices removeObjectForKey:v5];
  v7 = [(NSMutableDictionary *)self->_logicalDevices objectForKey:v5];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_allDevices removeObjectForKey:v5];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"GCPhysicalDeviceWasUnregisteredNotification" object:v9 userInfo:0];
}

- (void)_onqueue_registerLogicalDevice:(id)a3
{
  v13 = a3;
  v4 = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(v4);

  if (([v13 conformsToProtocol:&unk_1F4E9B8B8] & 1) == 0)
  {
    [_GCControllerManagerServer _onqueue_registerLogicalDevice:];
  }

  v5 = [v13 identifier];
  v6 = [(NSMutableDictionary *)self->_allDevices objectForKey:v5];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_allDevices objectForKey:v5];

    if (v7 != v13)
    {
      [_GCControllerManagerServer _onqueue_registerLogicalDevice:];
    }
  }

  allDevices = self->_allDevices;
  v9 = [v13 identifier];
  [(NSMutableDictionary *)allDevices setObject:v13 forKey:v9];

  logicalDevices = self->_logicalDevices;
  v11 = [v13 identifier];
  [(NSMutableDictionary *)logicalDevices setObject:v13 forKey:v11];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"GCLogicalDeviceWasRegisteredNotification" object:v13 userInfo:0];

  [(_GCControllerManagerServer *)self _onqueue_signalGameControllerFocusModeEvent];
}

- (void)_onqueue_unregisterLogicalDevice:(id)a3
{
  v9 = a3;
  v4 = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v9 identifier];
  v6 = [(NSMutableDictionary *)self->_logicalDevices objectForKey:v5];

  if (!v6)
  {
    [_GCControllerManagerServer _onqueue_unregisterLogicalDevice:];
  }

  [(NSMutableDictionary *)self->_logicalDevices removeObjectForKey:v5];
  v7 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:v5];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_allDevices removeObjectForKey:v5];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"GCLogicalDeviceWasUnregisteredNotification" object:v9 userInfo:0];

  [(_GCControllerManagerServer *)self _onqueue_signalGameControllerFocusModeEvent];
}

- (void)deviceManager:(id)a3 deviceDidConnect:(id)a4
{
  v5 = a4;
  v6 = [(_GCControllerManagerServer *)self controllersQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___GCControllerManagerServer_deviceManager_deviceDidConnect___block_invoke;
  v8[3] = &unk_1E8418C50;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)deviceManager:(id)a3 deviceDidDisconnect:(id)a4
{
  v5 = a4;
  v6 = [(_GCControllerManagerServer *)self controllersQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___GCControllerManagerServer_deviceManager_deviceDidDisconnect___block_invoke;
  v8[3] = &unk_1E8418C50;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_onqueue_signalGameControllerFocusModeEvent
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasConfigurationWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_configurationsLock);
  v5 = [(NSMutableSet *)self->_configurations member:v4];

  os_unfair_lock_unlock(&self->_configurationsLock);
  return v5 != 0;
}

- (id)configurationWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_configurationsLock);
  v5 = [(NSMutableSet *)self->_configurations member:v4];

  os_unfair_lock_unlock(&self->_configurationsLock);

  return v5;
}

- (BOOL)addConfiguration:(id)a3 replaceExisting:(BOOL)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_configurationsLock);
  configurations = self->_configurations;
  v8 = [v6 identifier];
  v9 = [(NSMutableSet *)configurations member:v8];

  if (!a4 && v9 && (![v9 isTransient] || (objc_msgSend(v6, "isTransient") & 1) != 0))
  {

    os_unfair_lock_unlock(&self->_configurationsLock);
    v10 = 0;
    goto LABEL_6;
  }

  v12 = [v6 copy];

  if (gc_isInternalBuild())
  {
    [_GCControllerManagerServer addConfiguration:v12 replaceExisting:?];
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    [(NSMutableSet *)self->_configurations removeObject:v9];
  }

LABEL_10:
  [(NSMutableSet *)self->_configurations addObject:v12];
  if (gc_isInternalBuild())
  {
    [_GCControllerManagerServer addConfiguration:replaceExisting:];
  }

  os_unfair_lock_unlock(&self->_configurationsLock);
  [(_GCControllerManagerServer *)self _rebuildCoPilotConfigurations];
  v10 = 1;
  v6 = v12;
LABEL_6:

  return v10;
}

- (BOOL)updateConfiguration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_configurationsLock);
  configurations = self->_configurations;
  v6 = [v4 identifier];
  v7 = [(NSMutableSet *)configurations member:v6];

  if (v7)
  {
    v8 = [v4 copy];

    if (gc_isInternalBuild())
    {
      [_GCControllerManagerServer updateConfiguration:v8];
    }

    [(NSMutableSet *)self->_configurations removeObject:v8];
    [(NSMutableSet *)self->_configurations addObject:v8];
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerServer updateConfiguration:];
    }

    os_unfair_lock_unlock(&self->_configurationsLock);
    [(_GCControllerManagerServer *)self _rebuildCoPilotConfigurations];
  }

  else
  {
    os_unfair_lock_unlock(&self->_configurationsLock);
    v8 = v4;
  }

  return v7 != 0;
}

- (BOOL)removeConfigurationWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_configurationsLock);
  v5 = [(NSMutableSet *)self->_configurations member:v4];
  if (v5)
  {
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerServer removeConfigurationWithIdentifier:v5];
    }

    [(NSMutableSet *)self->_configurations removeObject:v4];
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerServer removeConfigurationWithIdentifier:];
    }

    os_unfair_lock_unlock(&self->_configurationsLock);
    [(_GCControllerManagerServer *)self _rebuildCoPilotConfigurations];
  }

  else
  {
    os_unfair_lock_unlock(&self->_configurationsLock);
  }

  return v5 != 0;
}

- (void)refreshActiveConfigurationsWithCompletion:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1D2CD5000, "Refresh Active Configurations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [(_GCControllerManagerServer *)self controllersQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72___GCControllerManagerServer_refreshActiveConfigurationsWithCompletion___block_invoke;
  v8[3] = &unk_1E8418BB8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  os_activity_scope_leave(&state);
}

- (void)refreshActiveConfigurations
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1D2CD5000, "Refresh Active Configurations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  v4 = [(_GCControllerManagerServer *)self controllersQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___GCControllerManagerServer_refreshActiveConfigurations__block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  dispatch_sync(v4, block);

  os_activity_scope_leave(&state);
}

- (id)matchingHIDServiceAttributes
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v15[0] = @"DeviceUsagePage";
  v15[1] = @"DeviceUsage";
  v16[0] = &unk_1F4E8DEF8;
  v16[1] = &unk_1F4E8DF10;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v2 addObject:v3];
  v13[0] = @"DeviceUsagePage";
  v13[1] = @"DeviceUsage";
  v14[0] = &unk_1F4E8DEF8;
  v14[1] = &unk_1F4E8DF28;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v2 addObject:v4];
  v11[0] = @"DeviceUsagePage";
  v11[1] = @"DeviceUsage";
  v12[0] = &unk_1F4E8DEF8;
  v12[1] = &unk_1F4E8DF40;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v2 addObject:v5];
  v9[0] = @"DeviceUsagePage";
  v9[1] = @"DeviceUsage";
  v10[0] = &unk_1F4E8DF58;
  v10[1] = &unk_1F4E8DF70;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 addObject:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setupHIDMonitor:(BOOL)a3
{
  p_hidEventSystemClient = &self->_hidEventSystemClient;
  if (!self->_hidEventSystemClient)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v5 = _os_activity_create(&dword_1D2CD5000, "Setup HID Monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = [objc_alloc(MEMORY[0x1E69A06E8]) initWithQueue:self->_hidSystemClientQueue type:2 attributes:0];
    [v6 setServicesChangedCallback:__HIDServicesChangedCallback target:self context:0];
    objc_storeStrong(p_hidEventSystemClient, v6);
    [v6 activate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46___GCControllerManagerServer_setupHIDMonitor___block_invoke;
    v9[3] = &unk_1E8418C50;
    v10 = v6;
    v11 = self;
    v7 = v6;
    v8 = _Block_copy(v9);
    dispatch_async_and_wait(self->_hidSystemClientQueue, v8);

    os_activity_scope_leave(&state);
  }
}

- (void)teardownHIDMonitor
{
  v3 = self->_hidEventSystemClient;
  if (v3)
  {
    v4 = _os_activity_create(&dword_1D2CD5000, "Teardown HID Monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    [(GCHIDEventSystemClient *)v3 invalidate];
    hidEventSystemClient = self->_hidEventSystemClient;
    self->_hidEventSystemClient = 0;

    os_activity_scope_leave(&v6);
  }
}

- (void)onHIDServiceAdded:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_hidServices member:v4];

  if (!v5)
  {
    [(NSMutableSet *)self->_hidServices addObject:v4];
    [(_GCControllerManagerServer *)self registerIPCObject:v4];
    v7 = *MEMORY[0x1E69A0688];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v8 = [(NSMutableDictionary *)self->_physicalDeviceManagers allValues];
    v9 = [v8 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v73;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v73 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v72 + 1) + 8 * i);
          [(NSMutableDictionary *)self->_hidServiceOwners setObject:v13 forKey:v4];
          v6 = [v13 matchHIDService:v4];
          if (v6 > v7)
          {

            v16 = v13;
            [v16 claimHIDService:v4];
            if (gc_isInternalBuild())
            {
              [_GCControllerManagerServer onHIDServiceAdded:];
            }

            v35 = [v4 registryID];
            v36 = [(_GCControllerManagerServer *)self _hidqueue_popPendingDriverConnectionsForRegistryID:v35];

            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v34 = v36;
            v37 = [v34 countByEnumeratingWithState:&v68 objects:v83 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v69;
              do
              {
                v40 = 0;
                do
                {
                  if (*v69 != v39)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v41 = *(*(&v68 + 1) + 8 * v40);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_86;
                  }

                  if (gc_isInternalBuild())
                  {
                    loga = getGCLogger();
                    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v80 = v41;
                      v81 = 2112;
                      v82 = v16;
                      _os_log_debug_impl(&dword_1D2CD5000, loga, OS_LOG_TYPE_DEBUG, "Sending previous driver connection %@ to %@", buf, 0x16u);
                    }
                  }

                  if (([v16 acceptDriverConnection:v41 forHIDService:v4] & 1) == 0)
                  {
LABEL_86:
                    if (gc_isInternalBuild())
                    {
                      log = getGCLogger();
                      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v80 = v41;
                        v81 = 2112;
                        v82 = v16;
                        _os_log_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_INFO, "Dropping incoming driver connection %@ because %@ rejected it.", buf, 0x16u);
                      }
                    }

                    [v41 invalidate];
                  }

                  ++v40;
                }

                while (v38 != v40);
                v42 = [v34 countByEnumeratingWithState:&v68 objects:v83 count:16];
                v38 = v42;
              }

              while (v42);
            }

            v43 = [v4 registryID];
            v44 = [(_GCControllerManagerServer *)self _hidqueue_popPendingFilterConnectionsForRegistryID:v43];

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v26 = v44;
            v45 = [v26 countByEnumeratingWithState:&v64 objects:v78 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v65;
              do
              {
                v48 = 0;
                do
                {
                  if (*v65 != v47)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v49 = *(*(&v64 + 1) + 8 * v48);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_87;
                  }

                  if (gc_isInternalBuild())
                  {
                    logc = getGCLogger();
                    if (os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v80 = v49;
                      v81 = 2112;
                      v82 = v16;
                      _os_log_debug_impl(&dword_1D2CD5000, logc, OS_LOG_TYPE_DEBUG, "Sending previous filter connection %@ to %@", buf, 0x16u);
                    }
                  }

                  if (([v16 acceptFilterConnection:v49 forHIDService:v4] & 1) == 0)
                  {
LABEL_87:
                    if (gc_isInternalBuild())
                    {
                      logb = getGCLogger();
                      if (os_log_type_enabled(logb, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v80 = v49;
                        v81 = 2112;
                        v82 = v16;
                        _os_log_impl(&dword_1D2CD5000, logb, OS_LOG_TYPE_INFO, "Dropping incoming filter connection %@ because %@ rejected it.", buf, 0x16u);
                      }
                    }

                    [v49 invalidate];
                  }

                  ++v48;
                }

                while (v46 != v48);
                v50 = [v26 countByEnumeratingWithState:&v64 objects:v78 count:16];
                v46 = v50;
              }

              while (v50);
            }

            goto LABEL_81;
          }

          [(NSMutableDictionary *)self->_hidServiceOwners removeObjectForKey:v4];
        }

        v10 = [v8 countByEnumeratingWithState:&v72 objects:v84 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if (gc_isInternalBuild())
    {
      [_GCControllerManagerServer onHIDServiceAdded:];
    }

    v14 = [v4 registryID];
    v15 = [(_GCControllerManagerServer *)self _hidqueue_popPendingDriverConnectionsForRegistryID:v14];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v61;
      do
      {
        v20 = 0;
        do
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v60 + 1) + 8 * v20);
          if (gc_isInternalBuild())
          {
            v22 = getGCLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v80 = v21;
              v81 = 2112;
              v82 = v4;
              _os_log_impl(&dword_1D2CD5000, v22, OS_LOG_TYPE_INFO, "Ignoring incoming driver connection %@ because it is for unclaimed service %@", buf, 0x16u);
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v23 = [v16 countByEnumeratingWithState:&v60 objects:v77 count:16];
        v18 = v23;
      }

      while (v23);
    }

    v24 = [v4 registryID];
    v25 = [(_GCControllerManagerServer *)self _hidqueue_popPendingFilterConnectionsForRegistryID:v24];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v56 objects:v76 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v57;
      do
      {
        v30 = 0;
        do
        {
          if (*v57 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v56 + 1) + 8 * v30);
          if (gc_isInternalBuild())
          {
            v32 = getGCLogger();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v80 = v31;
              v81 = 2112;
              v82 = v4;
              _os_log_impl(&dword_1D2CD5000, v32, OS_LOG_TYPE_INFO, "Ignoring incoming filter connection %@ because it is for unclaimed service %@", buf, 0x16u);
            }
          }

          ++v30;
        }

        while (v28 != v30);
        v33 = [v26 countByEnumeratingWithState:&v56 objects:v76 count:16];
        v28 = v33;
      }

      while (v33);
    }

    v34 = v26;
    v6 = v7;
LABEL_81:

    goto LABEL_82;
  }

  if (gc_isInternalBuild())
  {
    v6 = getGCLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_GCControllerManagerServer onHIDServiceAdded:];
    }

LABEL_82:
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)onHIDServiceRemoved:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_hidServiceOwners objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    [v5 relinquishHIDService:v4];
    [(NSMutableDictionary *)self->_hidServiceOwners removeObjectForKey:v4];
    [(NSMutableSet *)self->_hidServices removeObject:v4];
  }

  else if (gc_isInternalBuild())
  {
    [_GCControllerManagerServer onHIDServiceRemoved:];
  }
}

- (id)_hidqueue_popPendingDriverConnectionsForRegistryID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  v5 = [(NSMutableDictionary *)self->_pendingDriverConnections objectForKey:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_setAssociatedObject(*(*(&v12 + 1) + 8 * i), "DriverConnectionInvalidationRegistrationKey", 0, 1);
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingDriverConnections removeObjectForKey:v4];

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_hidqueue_pushPendingDriverConnection:(id)a3 forRegistryID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  if (!self->_pendingDriverConnections)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    pendingDriverConnections = self->_pendingDriverConnections;
    self->_pendingDriverConnections = v8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___GCControllerManagerServer__hidqueue_pushPendingDriverConnection_forRegistryID___block_invoke;
  v13[3] = &unk_1E8418CA0;
  v15 = v6;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  v11 = [v6 addInvalidationHandler:v13];
  objc_setAssociatedObject(v6, "DriverConnectionInvalidationRegistrationKey", v11, 1);
  v12 = [(NSMutableDictionary *)self->_pendingDriverConnections objectForKey:v10];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    [(NSMutableDictionary *)self->_pendingDriverConnections setObject:v12 forKey:v10];
  }

  [v12 addObject:v6];
}

- (id)_hidqueue_popPendingFilterConnectionsForRegistryID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  v5 = [(NSMutableDictionary *)self->_pendingFilterConnections objectForKey:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_setAssociatedObject(*(*(&v12 + 1) + 8 * i), "FilterConnectionInvalidationRegistrationKey", 0, 1);
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingFilterConnections removeObjectForKey:v4];

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_hidqueue_pushPendingFilterConnection:(id)a3 forRegistryID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  if (!self->_pendingFilterConnections)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    pendingFilterConnections = self->_pendingFilterConnections;
    self->_pendingFilterConnections = v8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___GCControllerManagerServer__hidqueue_pushPendingFilterConnection_forRegistryID___block_invoke;
  v13[3] = &unk_1E8418CA0;
  v15 = v6;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  v11 = [v6 addInvalidationHandler:v13];
  objc_setAssociatedObject(v6, "FilterConnectionInvalidationRegistrationKey", v11, 1);
  v12 = [(NSMutableDictionary *)self->_pendingFilterConnections objectForKey:v10];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    [(NSMutableDictionary *)self->_pendingFilterConnections setObject:v12 forKey:v10];
  }

  [v12 addObject:v6];
}

- (id)IPCObjectWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ipcRegistryLock);
  v5 = [(NSMapTable *)self->_ipcObjectRegistry objectForKey:v4];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);

  return v5;
}

- (void)registerIPCObject:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v6 copyWithZone:0];

  if (!v7)
  {
    [(_GCControllerManagerServer(IPC) *)a2 registerIPCObject:?];
  }

  os_unfair_lock_lock(&self->_ipcRegistryLock);
  [(NSMapTable *)self->_ipcObjectRegistry setObject:v5 forKey:v7];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);
}

- (BOOL)acceptIncomingDriverConnection:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1D2CD5000, "Incoming Driver Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  [v4 setExportedObject:self];
  [v4 resume];
  v6 = [v4 remoteProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke;
  v9[3] = &unk_1E8418CF0;
  v10 = v4;
  v11 = self;
  v7 = v4;
  [v6 fetchDeviceRegistryIDWithReply:v9];

  os_activity_scope_leave(&state);
  return 1;
}

- (void)setLastGeneratedName:(id)a3 directoryHandle:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  obj = self;
  objc_sync_enter(obj);
  lastGeneratedName = obj->_lastGeneratedName;
  obj->_lastGeneratedName = v8;
  v12 = v8;

  lastGeneratedDirectoryHandle = obj->_lastGeneratedDirectoryHandle;
  obj->_lastGeneratedDirectoryHandle = v9;
  v14 = v9;

  lastGeneratedURL = obj->_lastGeneratedURL;
  obj->_lastGeneratedURL = v10;

  objc_sync_exit(obj);
}

- (BOOL)getLastGeneratedName:(id *)a3 directoryHandle:(id *)a4 url:(id *)a5
{
  v8 = self;
  objc_sync_enter(v8);
  v9 = v8->_lastGeneratedName;
  lastGeneratedName = v8->_lastGeneratedName;
  v8->_lastGeneratedName = 0;

  lastGeneratedDirectoryHandle = v8->_lastGeneratedDirectoryHandle;
  v8->_lastGeneratedDirectoryHandle = 0;
  v12 = lastGeneratedDirectoryHandle;

  v13 = v8->_lastGeneratedURL;
  lastGeneratedURL = v8->_lastGeneratedURL;
  v8->_lastGeneratedURL = 0;

  objc_sync_exit(v8);
  if (a3)
  {
    v15 = v9;
    *a3 = v9;
  }

  if (a4)
  {
    v16 = v12;
    *a4 = v12;
  }

  if (a5)
  {
    v17 = v13;
    *a5 = v13;
  }

  if (v9)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = !v18 || v13 != 0;

  return v20;
}

- (id)lastGeneratedURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastGeneratedURL;
  lastGeneratedURL = v2->_lastGeneratedURL;
  v2->_lastGeneratedURL = 0;

  objc_sync_exit(v2);

  return v3;
}

- (void)_rebuildCoPilotConfigurations
{
  v82 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 64));
    [*(a1 + 72) minusSet:*(a1 + 104)];
    [*(a1 + 104) removeAllObjects];
    v2 = objc_getProperty(a1, sel__rebuildCoPilotConfigurations, 88, 1);
    v58 = [*(a1 + 72) mutableCopy];
    if (gc_isInternalBuild())
    {
      v54 = getGCLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v81 = v2;
        _os_log_debug_impl(&dword_1D2CD5000, v54, OS_LOG_TYPE_DEBUG, "Co-pilot: Rebuild configurations with settings %@", buf, 0xCu);
      }
    }

    v56 = a1;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v74;
      *&v4 = 138412290;
      v55 = v4;
      v57 = *v74;
      do
      {
        v7 = 0;
        v59 = v5;
        do
        {
          if (*v74 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v73 + 1) + 8 * v7);
          if (gc_isInternalBuild())
          {
            v46 = getGCLogger();
            if (OUTLINED_FUNCTION_9(v46))
            {
              *buf = v55;
              v81 = v8;
              OUTLINED_FUNCTION_3();
              _os_log_debug_impl(v48, v49, v50, "  > Check %@", v51, 0xCu);
            }
          }

          v9 = [v8 pilotIdentifier];
          v2 = [v8 copilotIdentifier];
          v10 = [v8 fusedControllerIdentifier];
          v11 = v10;
          if (v9 && v2 && v10)
          {
            v62 = v9;
            v63 = v2;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v12 = v58;
            v13 = [v12 countByEnumeratingWithState:&v69 objects:v78 count:16];
            v64 = v11;
            if (v13)
            {
              v14 = v13;
              v15 = *v70;
              while (2)
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v70 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v69 + 1) + 8 * i);
                  v18 = [v17 deviceDependencies];
                  v19 = [v18 count];

                  if (v19 == 1)
                  {
                    v20 = [v17 deviceIdentifier];
                    v21 = [v8 pilotIdentifier];
                    v22 = [v20 isEqual:v21];

                    if (v22)
                    {
                      v23 = v17;
                      goto LABEL_26;
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v69 objects:v78 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }

              v23 = 0;
LABEL_26:
              v11 = v64;
            }

            else
            {
              v23 = 0;
            }

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v25 = v12;
            v26 = [v25 countByEnumeratingWithState:&v65 objects:v77 count:16];
            if (v26)
            {
              v27 = v26;
              v61 = v23;
              v28 = *v66;
              while (2)
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v66 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v65 + 1) + 8 * j);
                  v31 = [v30 deviceDependencies];
                  v32 = [v31 count];

                  if (v32 == 1)
                  {
                    v33 = [v30 deviceIdentifier];
                    v34 = [v8 copilotIdentifier];
                    v35 = [v33 isEqual:v34];

                    if (v35)
                    {
                      v36 = v30;
                      goto LABEL_39;
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v65 objects:v77 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }

              v36 = 0;
LABEL_39:
              v11 = v64;
              v23 = v61;
            }

            else
            {
              v36 = 0;
            }

            v9 = v62;
            v2 = v63;
            if (v23)
            {
              if (v36)
              {
                if (![v23 isEqual:v36])
                {
                  [v25 removeObject:v23];
                  [v25 removeObject:v36];
                  v37 = [v23 mutableCopy];
                  [v37 setIdentifier:v11];
                  [v37 setDeviceIdentifier:v11];
                  v41 = [v37 deviceDependencies];
                  v42 = [v36 deviceDependencies];
                  v43 = [v42 firstObject];
                  v44 = [v41 arrayByAddingObject:v43];
                  [v37 setDeviceDependencies:v44];

                  [v37 setTransient:1];
                  [v37 setPriority:20];
                  v45 = [v37 copy];
                  if (gc_isInternalBuild())
                  {
                    v47 = getGCLogger();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v55;
                      v81 = v45;
                      _os_log_debug_impl(&dword_1D2CD5000, v47, OS_LOG_TYPE_DEBUG, "  > Register configuration %@", buf, 0xCu);
                    }
                  }

                  [*(v56 + 104) addObject:v45];
                  [*(v56 + 72) addObject:v45];

                  v2 = v63;
                  goto LABEL_56;
                }

                if (gc_isInternalBuild())
                {
                  v37 = getGCLogger();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                  {
                    OUTLINED_FUNCTION_14();
                    v39 = v37;
                    v40 = "  > (!) Pilot and co-pilot configurations are the same.";
                    goto LABEL_53;
                  }

LABEL_56:
                }

LABEL_57:

                v5 = v59;
                v6 = v57;
                goto LABEL_58;
              }

              if (!gc_isInternalBuild())
              {
                goto LABEL_57;
              }

              v37 = getGCLogger();
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_56;
              }

              OUTLINED_FUNCTION_14();
              v39 = v37;
              v40 = "  > (!) Did not find co-pilot configuration";
            }

            else
            {
              if (!gc_isInternalBuild())
              {
                goto LABEL_57;
              }

              v37 = getGCLogger();
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_56;
              }

              OUTLINED_FUNCTION_14();
              v39 = v37;
              v40 = "  > (!) Did not find pilot configuration";
            }

LABEL_53:
            _os_log_debug_impl(&dword_1D2CD5000, v39, OS_LOG_TYPE_DEBUG, v40, v38, 2u);
            goto LABEL_56;
          }

          if (!gc_isInternalBuild())
          {
            goto LABEL_59;
          }

          v23 = getGCLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_14();
            _os_log_debug_impl(&dword_1D2CD5000, v23, OS_LOG_TYPE_DEBUG, "  > (!) Missing data", v24, 2u);
          }

LABEL_58:

LABEL_59:
          ++v7;
        }

        while (v7 != v5);
        v52 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
        v5 = v52;
      }

      while (v52);
    }

    os_unfair_lock_unlock((v56 + 64));
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerPhysicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_registerPhysicalDevice:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_unregisterPhysicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_registerLogicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_registerLogicalDevice:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_unregisterLogicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)addConfiguration:(void *)a1 replaceExisting:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v5 = [a1 debugDescription];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addConfiguration:replaceExisting:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateConfiguration:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v5 = [a1 debugDescription];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateConfiguration:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeConfigurationWithIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v5 = [a1 debugDescription];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeConfigurationWithIdentifier:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)onHIDServiceAdded:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEBUG, "Ignoring added notification for HID service %@, because it is already known.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)onHIDServiceAdded:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)onHIDServiceAdded:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)onHIDServiceRemoved:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end