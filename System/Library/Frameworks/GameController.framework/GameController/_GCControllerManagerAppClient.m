@interface _GCControllerManagerAppClient
- (NSSet)devices;
- (_GCControllerManagerAppClient)init;
- (_GCControllerManagerAppClient)initWithDeviceSessionConfiguration:(id)a3 queue:(id)a4 environment:(id)a5;
- (id)IPCObjectWithIdentifier:(id)a3;
- (id)activateWithSession:(id)a3 environment:(id)a4 options:(unint64_t)a5;
- (id)matchingHIDServiceAttributes;
- (id)serviceClientForIPCService:(id)a3;
- (void)CBApplicationDidBecomeActive;
- (void)_connectToDaemon;
- (void)_onqueue_addPendingController:(id)a3;
- (void)_onqueue_onHIDServiceAdded:(dispatch_queue_t *)a1;
- (void)_onqueue_onHIDServiceRemoved:(uint64_t)a1;
- (void)_onqueue_publishController:(id)a3;
- (void)_onqueue_refreshPublishedControllers;
- (void)_onqueue_unpublishController:(id)a3;
- (void)_resumeDaemonConnection;
- (void)awakeWithSession:(id)a3 environment:(id)a4;
- (void)dealloc;
- (void)finalizeRecording;
- (void)observerDeliveryPolicyDidChange:(id)a3;
- (void)onScreenshotTriggered:(id)a3;
- (void)onVideoRecordingToggled:(id)a3;
- (void)publishControllers:(id)a3;
- (void)refreshControllers;
- (void)registerIPCObject:(id)a3;
- (void)servicesDidChange:(id)a3 withAddedServices:(id)a4 removedServices:(id)a5;
- (void)setProperty:(id)a3 forKey:(id)a4 forHIDServiceClientWithRegistryID:(id)a5;
- (void)startBuffering;
- (void)startVideoRecording;
- (void)startVideoRecordingBuffering:(id)a3;
- (void)stopBuffering;
- (void)stopVideoRecordingBuffering;
- (void)stopVideoRecordingWithClipBuffering:(BOOL)a3 controller:(id)a4;
- (void)unpublishControllersWithIdentifiers:(id)a3;
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

- (_GCControllerManagerAppClient)initWithDeviceSessionConfiguration:(id)a3 queue:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = _GCControllerManagerAppClient;
  v12 = [(_GCControllerManagerAppClient *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionQueue, a4);
    v13->_ipcRegistryLock._os_unfair_lock_opaque = 0;
    v14 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    ipcObjectRegistry = v13->_ipcObjectRegistry;
    v13->_ipcObjectRegistry = v14;

    [(_GCControllerManagerAppClient *)v13 registerIPCObject:v13];
    objc_storeStrong(&v13->_configuration, a3);
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

    v26 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [(BKSHIDEventDeliveryPolicyObserver *)v13->_hidEventObserver setDeferringEnvironment:v26];

    [(BKSHIDEventDeliveryPolicyObserver *)v13->_hidEventObserver addObserver:v13];
    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v13 selector:sel_startVideoRecordingBuffering_ name:@"GCControllerStartVideoRecordingBuffering" object:0];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v13 selector:sel_onVideoRecordingToggled_ name:@"GCControllerVideoRecordingToggled" object:0];

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v13 selector:sel_onScreenshotTriggered_ name:@"GCControllerScreenshotTriggered" object:0];

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

- (void)awakeWithSession:(id)a3 environment:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 targetQueue];
  targetQueue = self->_targetQueue;
  self->_targetQueue = v6;

  v8 = [v5 hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = v8;

  v10 = NSClassFromString(&cfstr_Gckeyboardcont.isa);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v5 deviceProviders];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v11);
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

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)activateWithSession:(id)a3 environment:(id)a4 options:(unint64_t)a5
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_1E841A9A8;
  v8[4] = self;
  v6 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:{v8, a5}];

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"GCControllerScreenshotTriggered" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"GCControllerVideoRecordingToggled" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"GCControllerStartVideoRecordingBuffering" object:0];

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
  v3 = [v2 remoteProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___GCControllerManagerAppClient_finalizeRecording__block_invoke;
  v5[3] = &unk_1E8419678;
  v6 = v2;
  v4 = v2;
  [v3 moveLastRecordingToDesktop:v5];
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
  if (OUTLINED_FUNCTION_11(a1))
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
  v5 = [(NSMutableDictionary *)self->_publishedControllers allValues];
  [v3 addObjectsFromArray:v5];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_addPendingController:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v5 = [v7 identifier];
  v6 = [(NSMutableSet *)self->_serverValidControllerIdentifiers member:v5];

  if (!v6)
  {
    [(_GCControllerManagerAppClient *)a2 _onqueue_addPendingController:v7];
  }

  [(NSMutableSet *)self->_pendingControllers addObject:v7];
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

- (void)_onqueue_unpublishController:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [(_GCControllerManagerAppClient *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  publishedControllers = self->_publishedControllers;
  v7 = [v8 identifier];
  [(NSMutableDictionary *)publishedControllers removeObjectForKey:v7];

  objc_sync_exit(v5);
  [(_GCControllerManagerAppClient *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  if (![(NSMutableDictionary *)self->_publishedControllers count])
  {
    [(_GCControllerManagerAppClient *)self stopVideoRecordingBuffering];
  }
}

- (void)_onqueue_publishController:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [(_GCControllerManagerAppClient *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v4];
  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  publishedControllers = self->_publishedControllers;
  v7 = [v8 identifier];
  [(NSMutableDictionary *)publishedControllers setObject:v8 forKey:v7];

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
  v2 = [MEMORY[0x1E695DF70] array];
  v15[0] = @"DeviceUsagePage";
  v15[1] = @"DeviceUsage";
  v16[0] = &unk_1F4E8E3F0;
  v16[1] = &unk_1F4E8E408;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v2 addObject:v3];
  v13[0] = @"DeviceUsagePage";
  v13[1] = @"DeviceUsage";
  v14[0] = &unk_1F4E8E3F0;
  v14[1] = &unk_1F4E8E420;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v2 addObject:v4];
  v11[0] = @"DeviceUsagePage";
  v11[1] = @"DeviceUsage";
  v12[0] = &unk_1F4E8E3F0;
  v12[1] = &unk_1F4E8E438;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v2 addObject:v5];
  v9[0] = @"DeviceUsagePage";
  v9[1] = @"DeviceUsage";
  v10[0] = &unk_1F4E8E450;
  v10[1] = &unk_1F4E8E468;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 addObject:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)servicesDidChange:(id)a3 withAddedServices:(id)a4 removedServices:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(_GCControllerManagerAppClient *)self _onqueue_onHIDServiceRemoved:?];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
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

- (void)setProperty:(id)a3 forKey:(id)a4 forHIDServiceClientWithRegistryID:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v17 = [v16 registryID];
      v18 = [v17 isEqualToNumber:v10];

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

    IOHIDServiceClientSetProperty([(NSMutableSet *)v19 service], v9, v8);
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

- (void)stopVideoRecordingWithClipBuffering:(BOOL)a3 controller:(id)a4
{
  v6 = a4;
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI])
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 objectForInfoDictionaryKey:@"CFBundleDisplayName"];

    if (!v8)
    {
      v9 = [MEMORY[0x1E696AE30] processInfo];
      v8 = [v9 processName];
    }

    photoVideoService = self->_photoVideoService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke;
    v11[3] = &unk_1E841ABB0;
    v13 = a3;
    v11[4] = self;
    v12 = v6;
    [(GCPhotoVideoXPCProxyServiceRemoteServerInterface *)photoVideoService generateURLFor:v8 withReply:v11];
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

- (void)startVideoRecordingBuffering:(id)a3
{
  v4 = a3;
  if (![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    v5 = [v4 object];
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerAppClient startVideoRecordingBuffering:];
    }

    v6 = self->_publishedControllers;
    objc_sync_enter(v6);
    if (!v5 || (publishedControllers = self->_publishedControllers, [v5 identifier], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](publishedControllers, "objectForKey:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != v5))
    {

      v5 = 0;
    }

    objc_sync_exit(v6);

    if (v5)
    {
      v10 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
      v11 = [v10 isAppInBackground];

      if (v11)
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

- (void)onVideoRecordingToggled:(id)a3
{
  v4 = a3;
  if (![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    v5 = [v4 object];
    if (gc_isInternalBuild())
    {
      [_GCControllerManagerAppClient onVideoRecordingToggled:];
    }

    v6 = self->_publishedControllers;
    objc_sync_enter(v6);
    if (!v5 || (publishedControllers = self->_publishedControllers, [v5 identifier], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](publishedControllers, "objectForKey:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != v5))
    {

      v5 = 0;
    }

    objc_sync_exit(v6);

    if (!v5)
    {
      goto LABEL_24;
    }

    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"mode"];
    v12 = [v11 integerValue];

    v13 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
    LOBYTE(v11) = [v13 isAppInBackground];

    if (v11)
    {
      goto LABEL_24;
    }

    if (!v12 && self->_bufferingStarted)
    {
      [(_GCControllerManagerAppClient *)self stopBuffering];
LABEL_24:

      goto LABEL_25;
    }

    v14 = GCLookupService();
    v15 = [v14 isRecording];

    isInternalBuild = gc_isInternalBuild();
    if (v15)
    {
      if (isInternalBuild)
      {
        [_GCControllerManagerAppClient onVideoRecordingToggled:];
      }

      [(_GCControllerManagerAppClient *)self stopVideoRecordingWithClipBuffering:self->_bufferingStarted controller:v5];
      goto LABEL_24;
    }

    if (isInternalBuild)
    {
      [_GCControllerManagerAppClient onVideoRecordingToggled:];
      if (v12)
      {
LABEL_18:
        if (v12 == 1)
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

    else if (v12)
    {
      goto LABEL_18;
    }

    [(_GCControllerManagerAppClient *)self startVideoRecording];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)onScreenshotTriggered:(id)a3
{
  v4 = a3;
  if ([(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    goto LABEL_12;
  }

  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__6;
  v17[3] = __Block_byref_object_dispose__6;
  v18 = [v4 object];
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
  v9 = [v7 identifier];
  v10 = [(NSMutableDictionary *)publishedControllers objectForKey:v9];
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
    [(_GCControllerManagerAppClient(IPC) *)a2 registerIPCObject:?];
  }

  os_unfair_lock_lock(&self->_ipcRegistryLock);
  [(NSMapTable *)self->_ipcObjectRegistry setObject:v5 forKey:v7];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);
}

- (id)serviceClientForIPCService:(id)a3
{
  if (&unk_1F4EB38E8 == a3 || &unk_1F4EA1BC8 == a3 || &unk_1F4EB3588 == a3 || &unk_1F4EA1A98 == a3 || &unk_1F4EB3948 == a3 || &unk_1F4EA1980 == a3 || &unk_1F4EB2F58 == a3 || &unk_1F4EA1850 == a3 || &unk_1F4EB2C90 == a3 || &unk_1F4EA1738 == a3 || &unk_1F4EB3828 == a3 || &unk_1F4EB39A8 == a3 || &unk_1F4EA1618 == a3)
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)publishControllers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Publish Controllers", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)unpublishControllersWithIdentifiers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)observerDeliveryPolicyDidChange:(id)a3
{
  serverConnection = self->_serverConnection;
  v4 = a3;
  v6 = [(GCIPCOutgoingConnection *)serverConnection remoteProxy];
  v5 = [v4 canReceiveEvents];

  [v6 clientCanReceiveEventsDidChange:v5];
}

- (void)_onqueue_onHIDServiceAdded:(dispatch_queue_t *)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    if (([OUTLINED_FUNCTION_15_2() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_15_2() addObject:?];
      [(dispatch_queue_t *)a1 registerIPCObject:v3];
      [(dispatch_queue_t *)a1 _onqueue_refreshPublishedControllers];
    }
  }
}

- (void)_onqueue_onHIDServiceRemoved:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
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