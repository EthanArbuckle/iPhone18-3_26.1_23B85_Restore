@interface _GCControllerManagerAppClient
- (NSSet)devices;
- (_GCControllerManagerAppClient)init;
- (_GCControllerManagerAppClient)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)IPCObjectWithIdentifier:(id)identifier;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)matchingHIDServiceAttributes;
- (id)serviceClientForIPCService:(id)service;
- (void)CBApplicationDidBecomeActive;
- (void)_connectToDaemon;
- (void)_onqueue_addPendingController:(id)controller;
- (void)_onqueue_onHIDServiceAdded:(dispatch_queue_t *)added;
- (void)_onqueue_onHIDServiceRemoved:(uint64_t)removed;
- (void)_onqueue_publishController:(id)controller;
- (void)_onqueue_refreshPublishedControllers;
- (void)_onqueue_unpublishController:(id)controller;
- (void)_resumeDaemonConnection;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)dealloc;
- (void)finalizeRecording;
- (void)observerDeliveryPolicyDidChange:(id)change;
- (void)onScreenshotTriggered:(id)triggered;
- (void)onVideoRecordingToggled:(id)toggled;
- (void)publishControllers:(id)controllers;
- (void)refreshControllers;
- (void)registerIPCObject:(id)object;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
- (void)setProperty:(id)property forKey:(id)key forHIDServiceClientWithRegistryID:(id)d;
- (void)startBuffering;
- (void)startVideoRecording;
- (void)startVideoRecordingBuffering:(id)buffering;
- (void)stopBuffering;
- (void)stopVideoRecordingBuffering;
- (void)stopVideoRecordingWithClipBuffering:(BOOL)buffering controller:(id)controller;
- (void)unpublishControllersWithIdentifiers:(id)identifiers;
- (void)updateEmulatedControllerEnabled;
@end

@implementation _GCControllerManagerAppClient

- (void)CBApplicationDidBecomeActive
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (_GCControllerManagerAppClient)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  configurationCopy = configuration;
  queueCopy = queue;
  environmentCopy = environment;
  v33.receiver = self;
  v33.super_class = _GCControllerManagerAppClient;
  v12 = [(_GCControllerManagerAppClient *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionQueue, queue);
    v13->_ipcRegistryLock._os_unfair_lock_opaque = 0;
    v14 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    ipcObjectRegistry = v13->_ipcObjectRegistry;
    v13->_ipcObjectRegistry = v14;

    [(_GCControllerManagerAppClient *)v13 registerIPCObject:v13];
    objc_storeStrong(&v13->_configuration, configuration);
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownHIDServices = v13->_knownHIDServices;
    v13->_knownHIDServices = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    publishedControllers = v13->_publishedControllers;
    v13->_publishedControllers = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingControllers = v13->_pendingControllers;
    v13->_pendingControllers = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    serverValidControllerIdentifiers = v13->_serverValidControllerIdentifiers;
    v13->_serverValidControllerIdentifiers = v22;

    *&v13->_bufferingStarted = 0;
    v24 = objc_alloc_init(MEMORY[0x1E698E3B8]);
    hidEventObserver = v13->_hidEventObserver;
    v13->_hidEventObserver = v24;

    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [(BKSHIDEventDeliveryPolicyObserver *)v13->_hidEventObserver setDeferringEnvironment:keyboardFocusEnvironment];

    [(BKSHIDEventDeliveryPolicyObserver *)v13->_hidEventObserver addObserver:v13];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_startVideoRecordingBuffering_ name:@"GCControllerStartVideoRecordingBuffering" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel_onVideoRecordingToggled_ name:@"GCControllerVideoRecordingToggled" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v13 selector:sel_onScreenshotTriggered_ name:@"GCControllerScreenshotTriggered" object:0];

    v30 = GCLookupService();
    hidServiceProviding = v13->_hidServiceProviding;
    v13->_hidServiceProviding = v30;
  }

  return v13;
}

- (_GCControllerManagerAppClient)init
{
  [(_GCControllerManagerAppClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  targetQueue = [sessionCopy targetQueue];
  targetQueue = self->_targetQueue;
  self->_targetQueue = targetQueue;

  hidEventSource = [sessionCopy hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;

  v10 = NSClassFromString(&cfstr_Gckeyboardcont.isa);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  deviceProviders = [sessionCopy deviceProviders];
  v12 = [deviceProviders countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(deviceProviders);
        }

        if (v10)
        {
          v16 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&self->_keyboardControllerManager, v16);
            goto LABEL_12;
          }
        }
      }

      v13 = [deviceProviders countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_1E841A9A8;
  v8[4] = self;
  v6 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:{v8, options}];

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"GCControllerScreenshotTriggered" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"GCControllerVideoRecordingToggled" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"GCControllerStartVideoRecordingBuffering" object:0];

  hidEventObserver = self->_hidEventObserver;
  if (hidEventObserver)
  {
    [(BKSHIDEventDeliveryPolicyObserver *)hidEventObserver removeObserver:self];
    v7 = self->_hidEventObserver;
    self->_hidEventObserver = 0;
  }

  v8.receiver = self;
  v8.super_class = _GCControllerManagerAppClient;
  [(_GCControllerManagerAppClient *)&v8 dealloc];
}

- (void)finalizeRecording
{
  v2 = objc_opt_new();
  [v2 resume];
  remoteProxy = [v2 remoteProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___GCControllerManagerAppClient_finalizeRecording__block_invoke;
  v5[3] = &unk_1E8419678;
  v6 = v2;
  v4 = v2;
  [remoteProxy moveLastRecordingToDesktop:v5];
}

- (void)_connectToDaemon
{
  if (self->_serverConnection)
  {
    if (!gc_isInternalBuild())
    {
      return;
    }

    v2 = getGCLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Game Controller daemon connection has already been established.", buf, 2u);
    }
  }

  else
  {
    v4 = objc_opt_new();
    [v4 setClient:self];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke;
    v11[3] = &unk_1E8418C28;
    v11[4] = self;
    v5 = [v4 addInvalidationHandler:v11];
    serverConnectionInvalidation = self->_serverConnectionInvalidation;
    self->_serverConnectionInvalidation = v5;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136;
    v10[3] = &unk_1E8418C28;
    v10[4] = self;
    v7 = [v4 addInterruptionHandler:v10];
    serverConnectionInterruption = self->_serverConnectionInterruption;
    self->_serverConnectionInterruption = v7;

    serverConnection = self->_serverConnection;
    self->_serverConnection = v4;
    v2 = v4;

    [(GCIPCOutgoingConnection *)self->_serverConnection resume];
    [(_GCControllerManagerAppClient *)self _resumeDaemonConnection];
  }
}

- (void)_resumeDaemonConnection
{
  if (OUTLINED_FUNCTION_11(self))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (NSSet)devices
{
  v3 = objc_opt_new();
  v4 = self->_publishedControllers;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_publishedControllers allValues];
  [v3 addObjectsFromArray:allValues];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_addPendingController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  identifier = [controllerCopy identifier];
  v6 = [(NSMutableSet *)self->_serverValidControllerIdentifiers member:identifier];

  if (!v6)
  {
    [(_GCControllerManagerAppClient *)a2 _onqueue_addPendingController:controllerCopy];
  }

  [(NSMutableSet *)self->_pendingControllers addObject:controllerCopy];
}

- (void)_onqueue_refreshPublishedControllers
{
  OUTLINED_FUNCTION_5();
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v2, v3, "Materialized controller: '%@'");
  }
}

- (void)_onqueue_unpublishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
  [(_GCControllerManagerAppClient *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  publishedControllers = self->_publishedControllers;
  identifier = [controllerCopy identifier];
  [(NSMutableDictionary *)publishedControllers removeObjectForKey:identifier];

  objc_sync_exit(v5);
  [(_GCControllerManagerAppClient *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  if (![(NSMutableDictionary *)self->_publishedControllers count])
  {
    [(_GCControllerManagerAppClient *)self stopVideoRecordingBuffering];
  }
}

- (void)_onqueue_publishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
  [(_GCControllerManagerAppClient *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v4];
  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  publishedControllers = self->_publishedControllers;
  identifier = [controllerCopy identifier];
  [(NSMutableDictionary *)publishedControllers setObject:controllerCopy forKey:identifier];

  objc_sync_exit(v5);
  [(_GCControllerManagerAppClient *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v4];
}

- (void)updateEmulatedControllerEnabled
{
  settingsXPCProxyService = self->_settingsXPCProxyService;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke;
  v3[3] = &unk_1E841AB38;
  v3[4] = self;
  [(GCSettingsXPCProxyServiceRemoteServerInterface *)settingsXPCProxyService checkEmulatedControllerEnabledWithReply:v3];
}

- (id)matchingHIDServiceAttributes
{
  v16[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15[0] = @"DeviceUsagePage";
  v15[1] = @"DeviceUsage";
  v16[0] = &unk_1F4E8E3F0;
  v16[1] = &unk_1F4E8E408;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [array addObject:v3];
  v13[0] = @"DeviceUsagePage";
  v13[1] = @"DeviceUsage";
  v14[0] = &unk_1F4E8E3F0;
  v14[1] = &unk_1F4E8E420;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [array addObject:v4];
  v11[0] = @"DeviceUsagePage";
  v11[1] = @"DeviceUsage";
  v12[0] = &unk_1F4E8E3F0;
  v12[1] = &unk_1F4E8E438;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [array addObject:v5];
  v9[0] = @"DeviceUsagePage";
  v9[1] = @"DeviceUsage";
  v10[0] = &unk_1F4E8E450;
  v10[1] = &unk_1F4E8E468;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [array addObject:v6];

  v7 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices
{
  v29 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  removedServicesCopy = removedServices;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [removedServicesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(removedServicesCopy);
        }

        [(_GCControllerManagerAppClient *)self _onqueue_onHIDServiceRemoved:?];
      }

      while (v10 != v12);
      v10 = [removedServicesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = servicesCopy;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_GCControllerManagerAppClient *)self _onqueue_onHIDServiceAdded:?];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setProperty:(id)property forKey:(id)key forHIDServiceClientWithRegistryID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  keyCopy = key;
  dCopy = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_knownHIDServices;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      registryID = [v16 registryID];
      v18 = [registryID isEqualToNumber:dCopy];

      if (v18)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v16;

    if (!v19)
    {
      goto LABEL_15;
    }

    if (gc_isInternalBuild())
    {
      [_GCControllerManagerAppClient setProperty:forKey:forHIDServiceClientWithRegistryID:];
    }

    IOHIDServiceClientSetProperty([(NSMutableSet *)v19 service], keyCopy, propertyCopy);
  }

  else
  {
LABEL_9:
    v19 = v11;
  }

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)startVideoRecording
{
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI])
  {
    v3 = GCLookupService();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52___GCControllerManagerAppClient_startVideoRecording__block_invoke;
    v4[3] = &unk_1E8419EA8;
    v4[4] = self;
    [v3 startRecordingWithHandler:v4];
  }
}

- (void)stopVideoRecordingWithClipBuffering:(BOOL)buffering controller:(id)controller
{
  controllerCopy = controller;
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    processName = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];

    if (!processName)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
    }

    photoVideoService = self->_photoVideoService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke;
    v11[3] = &unk_1E841ABB0;
    bufferingCopy = buffering;
    v11[4] = self;
    v12 = controllerCopy;
    [(GCPhotoVideoXPCProxyServiceRemoteServerInterface *)photoVideoService generateURLFor:processName withReply:v11];
  }
}

- (void)startBuffering
{
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI]&& ![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures]&& !self->_bufferingStartPending)
  {
    self->_bufferingStartPending = 1;
    v3 = GCLookupService();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47___GCControllerManagerAppClient_startBuffering__block_invoke;
    v4[3] = &unk_1E8419EA8;
    v4[4] = self;
    [v3 startClipBufferingWithCompletionHandler:v4];
  }
}

- (void)stopBuffering
{
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI]&& ![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    v3 = GCLookupService();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46___GCControllerManagerAppClient_stopBuffering__block_invoke;
    v4[3] = &unk_1E8419EA8;
    v4[4] = self;
    [v3 stopClipBufferingWithCompletionHandler:v4];
  }
}

- (void)startVideoRecordingBuffering:(id)buffering
{
  bufferingCopy = buffering;
  if (![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    object = [bufferingCopy object];
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerAppClient startVideoRecordingBuffering:];
    }

    v6 = self->_publishedControllers;
    objc_sync_enter(v6);
    if (!object || (publishedControllers = self->_publishedControllers, [object identifier], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](publishedControllers, "objectForKey:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != object))
    {

      object = 0;
    }

    objc_sync_exit(v6);

    if (object)
    {
      v10 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
      isAppInBackground = [v10 isAppInBackground];

      if (isAppInBackground)
      {
        self->_shouldStartBufferingOnForeground = 1;
      }

      else if (!self->_bufferingStarted)
      {
        [(_GCControllerManagerAppClient *)self startBuffering];
      }
    }
  }
}

- (void)stopVideoRecordingBuffering
{
  if (self->_bufferingStarted)
  {
    [(_GCControllerManagerAppClient *)self stopBuffering];
  }
}

- (void)onVideoRecordingToggled:(id)toggled
{
  toggledCopy = toggled;
  if (![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    object = [toggledCopy object];
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerAppClient onVideoRecordingToggled:];
    }

    v6 = self->_publishedControllers;
    objc_sync_enter(v6);
    if (!object || (publishedControllers = self->_publishedControllers, [object identifier], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](publishedControllers, "objectForKey:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != object))
    {

      object = 0;
    }

    objc_sync_exit(v6);

    if (!object)
    {
      goto LABEL_24;
    }

    userInfo = [toggledCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"mode"];
    integerValue = [v11 integerValue];

    v13 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
    LOBYTE(v11) = [v13 isAppInBackground];

    if (v11)
    {
      goto LABEL_24;
    }

    if (!integerValue && self->_bufferingStarted)
    {
      [(_GCControllerManagerAppClient *)self stopBuffering];
LABEL_24:

      goto LABEL_25;
    }

    v14 = GCLookupService();
    isRecording = [v14 isRecording];

    isInternalBuild = gc_isInternalBuild();
    if (isRecording)
    {
      if (isInternalBuild)
      {
        [_GCControllerManagerAppClient onVideoRecordingToggled:];
      }

      [(_GCControllerManagerAppClient *)self stopVideoRecordingWithClipBuffering:self->_bufferingStarted controller:object];
      goto LABEL_24;
    }

    if (isInternalBuild)
    {
      [_GCControllerManagerAppClient onVideoRecordingToggled:];
      if (integerValue)
      {
LABEL_18:
        if (integerValue == 1)
        {
          if (gc_isInternalBuild())
          {
            [_GCControllerManagerAppClient onVideoRecordingToggled:];
          }

          [(_GCControllerManagerAppClient *)self startBuffering];
        }

        goto LABEL_24;
      }
    }

    else if (integerValue)
    {
      goto LABEL_18;
    }

    [(_GCControllerManagerAppClient *)self startVideoRecording];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)onScreenshotTriggered:(id)triggered
{
  triggeredCopy = triggered;
  if ([(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    goto LABEL_12;
  }

  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__6;
  v17[3] = __Block_byref_object_dispose__6;
  object = [triggeredCopy object];
  if (gc_isInternalBuild())
  {
    v14 = getGCLogger();
    [(_GCControllerManagerAppClient *)v14 onScreenshotTriggered:v17];
  }

  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  v6 = v17[0];
  v7 = *(v17[0] + 40);
  if (!v7)
  {
    v12 = 0;
    goto LABEL_8;
  }

  publishedControllers = self->_publishedControllers;
  identifier = [v7 identifier];
  v10 = [(NSMutableDictionary *)publishedControllers objectForKey:identifier];
  v11 = *(v17[0] + 40);

  if (v10 != v11)
  {
    v6 = v17[0];
    v12 = *(v17[0] + 40);
LABEL_8:
    *(v6 + 40) = 0;
  }

  objc_sync_exit(v5);

  if (*(v17[0] + 40))
  {
    photoVideoService = self->_photoVideoService;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke;
    v15[3] = &unk_1E8419E30;
    v15[4] = &v16;
    [(GCPhotoVideoXPCProxyServiceRemoteServerInterface *)photoVideoService takeScreenshotWithReply:v15];
  }

  _Block_object_dispose(&v16, 8);

LABEL_12:
}

- (id)IPCObjectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_ipcRegistryLock);
  v5 = [(NSMapTable *)self->_ipcObjectRegistry objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);

  return v5;
}

- (void)registerIPCObject:(id)object
{
  objectCopy = object;
  identifier = [objectCopy identifier];
  v7 = [identifier copyWithZone:0];

  if (!v7)
  {
    [(_GCControllerManagerAppClient(IPC) *)a2 registerIPCObject:?];
  }

  os_unfair_lock_lock(&self->_ipcRegistryLock);
  [(NSMapTable *)self->_ipcObjectRegistry setObject:objectCopy forKey:v7];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);
}

- (id)serviceClientForIPCService:(id)service
{
  if (&unk_1F4EB38E8 == service || &unk_1F4EA1BC8 == service || &unk_1F4EB3588 == service || &unk_1F4EA1A98 == service || &unk_1F4EB3948 == service || &unk_1F4EA1980 == service || &unk_1F4EB2F58 == service || &unk_1F4EA1850 == service || &unk_1F4EB2C90 == service || &unk_1F4EA1738 == service || &unk_1F4EB3828 == service || &unk_1F4EB39A8 == service || &unk_1F4EA1618 == service)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)publishControllers:(id)controllers
{
  controllersCopy = controllers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = controllersCopy;
  v5 = controllersCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Publish Controllers", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)unpublishControllersWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = identifiersCopy;
  v5 = identifiersCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Unpublish Controllers", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)refreshControllers
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Refresh Controllers", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  serverConnection = self->_serverConnection;
  changeCopy = change;
  remoteProxy = [(GCIPCOutgoingConnection *)serverConnection remoteProxy];
  canReceiveEvents = [changeCopy canReceiveEvents];

  [remoteProxy clientCanReceiveEventsDidChange:canReceiveEvents];
}

- (void)_onqueue_onHIDServiceAdded:(dispatch_queue_t *)added
{
  v3 = a2;
  if (added)
  {
    dispatch_assert_queue_V2(added[1]);
    if (([OUTLINED_FUNCTION_15_2() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_15_2() addObject:?];
      [(dispatch_queue_t *)added registerIPCObject:v3];
      [(dispatch_queue_t *)added _onqueue_refreshPublishedControllers];
    }
  }
}

- (void)_onqueue_onHIDServiceRemoved:(uint64_t)removed
{
  v3 = a2;
  if (removed)
  {
    dispatch_assert_queue_V2(*(removed + 8));
    if ([OUTLINED_FUNCTION_15_2() containsObject:?])
    {
      [OUTLINED_FUNCTION_15_2() removeObject:?];
    }
  }
}

- (void)_onqueue_addPendingController:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:v4 object:v3 file:@"GCControllerManagerApp.m" lineNumber:399 description:{@"Asked to add %@, which is not in the valid set.", a3}];
}

- (void)setProperty:forKey:forHIDServiceClientWithRegistryID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startVideoRecordingBuffering:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)onVideoRecordingToggled:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)onVideoRecordingToggled:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
  }
}

- (void)onVideoRecordingToggled:.cold.3()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
  }
}

- (void)onVideoRecordingToggled:.cold.4()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
  }
}

- (void)onScreenshotTriggered:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*a2 + 40);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end