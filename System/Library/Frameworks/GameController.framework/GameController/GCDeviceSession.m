@interface GCDeviceSession
+ (id)deviceProviderTypesForConfiguration:(id)a3;
+ (id)serviceFor:(id)a3 client:(id)a4;
+ (void)initialize;
- (GCDeviceSession)init;
- (GCDeviceSession)initWithConfiguration:(id)a3 environment:(id)a4;
- (id)_preflightConfiguration:(id)a1;
- (id)_swift_EventHandler;
- (id)controllersPrivate;
- (id)devicesPrivate;
- (id)keyboardsPrivate;
- (id)micePrivate;
- (id)racingWheelsPrivate;
- (id)serviceFor:(id)a3 client:(id)a4;
- (id)spatialAccessoriesPrivate;
- (id)stylusesPrivate;
- (void)_observeChange:(void *)a3 inProvider:;
- (void)_refreshDevicesAndNotify:(uint64_t)a1;
- (void)_updateEventDelivery;
- (void)activateWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observerDeliveryPolicyDidChange:(id)a3;
- (void)setDeviceProviderTypes:(id)a3;
- (void)setEventHandler:(id)a3;
- (void)setEventHandlerPrivate:(id)a3;
- (void)setEventTargetQueue:(id)a3;
- (void)setTargetQueue:(id)a3;
- (void)set_swift_EventHandler:(void *)a1;
@end

@implementation GCDeviceSession

+ (void)initialize
{
  if (objc_opt_class() == a1 && (currentProcessIsGameControllerDaemon() & 1) == 0)
  {
    GCLookupSetFallbackProvider();

    LoadGameControllerUIFramework(1);
  }
}

- (GCDeviceSession)initWithConfiguration:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [GCDeviceSession initWithConfiguration:a2 environment:self];
  }

  v63.receiver = self;
  v63.super_class = GCDeviceSession;
  v9 = [(GCDeviceSession *)&v63 init];
  v10 = [(GCDeviceSession *)v9 _preflightConfiguration:v7];

  if ((GCCurrentProcessGetFlags(2) & 2) != 0)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_3);
  }

  v11 = [v10 copy];
  configuration = v9->_configuration;
  v9->_configuration = v11;

  v13 = [objc_opt_class() deviceProviderTypesForConfiguration:v10];
  deviceProviderTypes = v9->_deviceProviderTypes;
  v9->_deviceProviderTypes = v13;

  v15 = dispatch_queue_attr_make_initially_inactive(0);
  v16 = dispatch_queue_create("GCDeviceSession", v15);
  sessionQueue = v9->_sessionQueue;
  v9->_sessionQueue = v16;

  v18 = dispatch_queue_attr_make_initially_inactive(0);
  v19 = dispatch_queue_create("GCDeviceSession.Events", v18);
  sessionEventQueue = v9->_sessionEventQueue;
  v9->_sessionEventQueue = v19;

  v21 = objc_opt_new();
  devices = v9->_devices;
  v9->_devices = v21;

  v23 = [GCDeviceCollection alloc];
  v24 = objc_opt_new();
  v25 = [(GCDeviceCollection *)v23 initWithUnderlyingCollection:v24];
  devicesCollection = v9->_devicesCollection;
  v9->_devicesCollection = v25;

  v27 = [GCDeviceCollection alloc];
  v28 = objc_opt_new();
  v29 = [(GCDeviceCollection *)v27 initWithUnderlyingCollection:v28];
  keyboardsCollection = v9->_keyboardsCollection;
  v9->_keyboardsCollection = v29;

  v31 = [GCDeviceCollection alloc];
  v32 = objc_opt_new();
  v33 = [(GCDeviceCollection *)v31 initWithUnderlyingCollection:v32];
  miceCollection = v9->_miceCollection;
  v9->_miceCollection = v33;

  v35 = [GCDeviceCollection alloc];
  v36 = objc_opt_new();
  v37 = [(GCDeviceCollection *)v35 initWithUnderlyingCollection:v36];
  controllersCollection = v9->_controllersCollection;
  v9->_controllersCollection = v37;

  v39 = [GCDeviceCollection alloc];
  v40 = objc_opt_new();
  v41 = [(GCDeviceCollection *)v39 initWithUnderlyingCollection:v40];
  racingWheelsCollection = v9->_racingWheelsCollection;
  v9->_racingWheelsCollection = v41;

  v43 = [GCDeviceCollection alloc];
  v44 = objc_opt_new();
  v45 = [(GCDeviceCollection *)v43 initWithUnderlyingCollection:v44];
  spatialAccessoriesCollection = v9->_spatialAccessoriesCollection;
  v9->_spatialAccessoriesCollection = v45;

  v47 = [GCDeviceCollection alloc];
  v48 = objc_opt_new();
  v49 = [(GCDeviceCollection *)v47 initWithUnderlyingCollection:v48];
  stylusesCollection = v9->_stylusesCollection;
  v9->_stylusesCollection = v49;

  v51 = [objc_alloc(MEMORY[0x1E69A06E8]) initWithQueue:v9->_sessionEventQueue type:1 attributes:0];
  hidEventSystemClient = v9->_hidEventSystemClient;
  v9->_hidEventSystemClient = v51;

  [(GCHIDEventSystemClient *)v9->_hidEventSystemClient setServicesQueue:v9->_sessionQueue];
  [(GCHIDEventSystemClient *)v9->_hidEventSystemClient setServicesUpdatedAsynchronously:1];
  if (([v10 bypassUIKit] & 1) == 0)
  {
    v53 = [objc_opt_class() ui_hidEventSourceWithClient:v9->_hidEventSystemClient queue:v9->_sessionEventQueue];
    hidEventSource = v9->_hidEventSource;
    v9->_hidEventSource = v53;
  }

  if (!v9->_hidEventSource)
  {
    v55 = [[_GCHIDEventIOKitClient alloc] initWithClient:v9->_hidEventSystemClient queue:v9->_sessionEventQueue];
    v56 = v9->_hidEventSource;
    v9->_hidEventSource = &v55->super;
  }

  v57 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
  foregroundMonitor = v9->_foregroundMonitor;
  v9->_foregroundMonitor = v57;

  v59 = objc_alloc_init(MEMORY[0x1E698E3B8]);
  hidObserver = v9->_hidObserver;
  v9->_hidObserver = v59;

  v61 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
  [(BKSHIDEventDeliveryPolicyObserver *)v9->_hidObserver setDeferringEnvironment:v61];

  atomic_store(1u, &v9->_state);
  return v9;
}

void __53__GCDeviceSession_initWithConfiguration_environment___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 registerDefaults:&unk_1F4E8F3C0];
}

- (GCDeviceSession)init
{
  [(GCDeviceSession *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GCDeviceSession;
  [(GCDeviceSession *)&v2 dealloc];
}

- (void)setTargetQueue:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_state);
  if (v6 >= 2)
  {
    [GCDeviceSession setTargetQueue:];
  }

  v7 = v5;
  objc_setProperty_atomic(self, a2, v5, 40);
}

- (void)setEventTargetQueue:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_state);
  if (v6 >= 2)
  {
    [GCDeviceSession setEventTargetQueue:];
  }

  v7 = v5;
  objc_setProperty_atomic(self, a2, v5, 48);
}

- (void)activateWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2CD5000, "[GCDeviceSession] Activate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = 1;
  atomic_compare_exchange_strong(&self->_state, &v7, 2u);
  if (v7 == 1)
  {
    v8 = [(GCDeviceSession *)self targetQueue];
    if (!v8)
    {
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"*** A 'targetQueue' must be specified prior to activating the session." userInfo:0];
      objc_exception_throw(v15);
    }

    dispatch_set_target_queue(self->_sessionQueue, v8);
    dispatch_activate(self->_sessionQueue);

    sessionQueue = self->_sessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E84191C0;
    block[4] = self;
    block[5] = a2;
    dispatch_async(sessionQueue, block);
    v10 = self->_sessionQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_3;
    v16[3] = &unk_1E8419210;
    v17 = v5;
    v18 = a2;
    v16[4] = self;
    v11 = v5;
    dispatch_async(v10, v16);
    v12 = v17;
  }

  else
  {
    v13 = self->_sessionQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__GCDeviceSession_activateWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E8419198;
    v21 = v5;
    v14 = v5;
    dispatch_async(v13, v20);
    v12 = v21;
  }

  os_activity_scope_leave(&state);
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A588];
  v7[0] = *MEMORY[0x1E696A578];
  v7[1] = v3;
  v8[0] = @"Session activation request failed.";
  v8[1] = @"Session has already been activated or was invalidated prior to activation.";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [v2 gc_sessionError:0 userInfo:v4];
  (*(v1 + 16))(v1, v5);

  v6 = *MEMORY[0x1E69E9840];
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) eventTargetQueue];
  if (!v2)
  {
    v2 = [*(a1 + 32) targetQueue];
  }

  queue = v2;
  objc_setProperty_atomic(*(a1 + 32), *(a1 + 40), v2, 48);
  dispatch_set_target_queue(*(*(a1 + 32) + 32), queue);
  dispatch_activate(*(*(a1 + 32) + 32));
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) deviceProviderTypes];
  v3 = _gc_log_session();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_3_cold_1(v2, v3);
  }

  v4 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v63;
    do
    {
      v9 = 0;
      do
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v62 + 1) + 8 * v9);
        if (([(objc_class *)v10 conformsToProtocol:&unk_1F4EA1F58]& 1) != 0)
        {
          v11 = [[v10 alloc] initWithDeviceSessionConfiguration:*(*(a1 + 32) + 8) queue:*(*(a1 + 32) + 24) environment:?];
          if (v11)
          {
            [v4 addObject:v11];
          }

LABEL_11:

          goto LABEL_12;
        }

        if (os_variant_has_internal_diagnostics())
        {
          v44 = v10;
          v11 = _gc_log_session();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v70 = v44;
            _os_log_debug_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEBUG, "#WARNING: '%{public}@' does not conform to GCDeviceSessionDeviceProvider.", buf, 0xCu);
          }

          goto LABEL_11;
        }

LABEL_12:
        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v62 objects:v71 count:16];
      v7 = v12;
    }

    while (v12);
  }

  v13 = [v4 copy];
  v14 = *(a1 + 32);
  v15 = *(v14 + 104);
  *(v14 + 104) = v13;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v58 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v21 awakeWithSession:*(a1 + 32) environment:*(a1 + 32)];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v18);
  }

  v22 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v23 = *(*(a1 + 32) + 104);
  v24 = [v23 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v55;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v55 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v54 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v29 = [v28 matchingHIDServiceAttributes];
          [v22 addObjectsFromArray:v29];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v25);
  }

  [*(*(a1 + 32) + 88) setMatchingMultiple:v22];
  v30 = dispatch_group_create();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v31 = *(*(a1 + 32) + 104);
  v32 = [v31 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v51;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v51 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v50 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          v37 = [v36 activateWithSession:*(a1 + 32) environment:*(a1 + 32) options:0];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v37 = [v36 activateWithSession:*(a1 + 32) environment:*(a1 + 32)];
        }

        v38 = v37;
        if (v37)
        {
          dispatch_group_enter(v30);
          v39 = *(*(a1 + 32) + 24);
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_192;
          v48[3] = &unk_1E84191E8;
          v49 = v30;
          [v38 observeFinishOnQueue:v39 withOptions:0 block:v48];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v33);
  }

  v40 = *(a1 + 32);
  v41 = *(v40 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2_194;
  block[3] = &unk_1E8419210;
  block[4] = v40;
  v45 = *(a1 + 40);
  v42 = v45;
  v47 = v45;
  dispatch_group_notify(v30, v41, block);

  v43 = *MEMORY[0x1E69E9840];
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2_194(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = 2;
  atomic_compare_exchange_strong((*(a1 + 32) + 56), &v3, 3u);
  if (v3 != 2)
  {
    __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2_194_cold_1(a1, (a1 + 32));
  }

  v4 = objc_getProperty(*(a1 + 32), *(a1 + 48), 112, 1);
  if (v4)
  {
    v5 = [[GCDeviceSessionEvent alloc] initWithType:1 device:0];
    (*(v4 + 16))(v4, *v2, v5);
  }

  v14 = v4;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(*v2 + 104);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 addObserver:*v2 forKeyPath:@"devices" options:7 context:0];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [*(*v2 + 64) addObserver:?];
  [*(*v2 + 72) addObserver:?];
  [*(*v2 + 88) activate];
  v12 = _gc_log_session();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2_194_cold_2(v2, v12);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v6 = _os_activity_create(&dword_1D2CD5000, "[GCDeviceSession] Invalidate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v6, &v8);
  *a1 = MEMORY[0x1E69E9820];
  a1[1] = 3221225472;
  a1[2] = __29__GCDeviceSession_invalidate__block_invoke;
  a1[3] = &unk_1E84191C0;
  a1[4] = a2;
  a1[5] = a3;
  v7 = _Block_copy(a1);
  dispatch_async(*(a2 + 24), v7);

  os_activity_scope_leave(&v8);
}

void __29__GCDeviceSession_invalidate__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(*(a1 + 32) + 104);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v15 = v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 invalidateWithSession:*(a1 + 32) environment:*(a1 + 32) options:0];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_12;
          }

          v9 = [v8 invalidateWithSession:*(a1 + 32) environment:{*(a1 + 32), v15}];
        }

        v10 = v9;
        if (v9)
        {
          dispatch_group_enter(v2);
          v11 = *(*(a1 + 32) + 24);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v19[0] = __29__GCDeviceSession_invalidate__block_invoke_2;
          v19[1] = &unk_1E84191E8;
          v20 = v2;
          [v10 observeFinishOnQueue:v11 withOptions:0 block:v18];
        }

LABEL_12:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v12 = *(a1 + 32);
  v13 = *(*(a1 + 32) + 24);
  block[2] = __29__GCDeviceSession_invalidate__block_invoke_3;
  block[3] = &unk_1E84191C0;
  v17 = v12;
  dispatch_group_notify(v2, v13, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __29__GCDeviceSession_invalidate__block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_getProperty(*(a1 + 32), *(a1 + 40), 112, 1);
  [*(*(a1 + 32) + 72) removeObserver:?];
  [*(*(a1 + 32) + 64) removeObserver:?];
  [*(*(a1 + 32) + 88) invalidate];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(*(a1 + 32) + 104);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v14 + 1) + 8 * v7++) removeObserver:*(a1 + 32) forKeyPath:@"devices" context:{0, v14}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x1E695DFD8] set];
  v9 = *(a1 + 32);
  v10 = *(v9 + 104);
  *(v9 + 104) = v8;

  [(GCDeviceSession *)*(a1 + 32) _refreshDevicesAndNotify:?];
  [*(a1 + 32) willChangeValueForKey:@"eventHandler"];
  objc_setProperty_atomic(*(a1 + 32), *(a1 + 40), 0, 112);
  [*(a1 + 32) didChangeValueForKey:@"eventHandler"];
  if (v2)
  {
    v11 = [[GCDeviceSessionEvent alloc] initWithType:2 device:0];
    (v2)[2](v2, *(a1 + 32), v11);
  }

  atomic_store(5u, (*(a1 + 32) + 56));
  v12 = _gc_log_session();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __29__GCDeviceSession_invalidate__block_invoke_3_cold_1(v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_refreshDevicesAndNotify:(uint64_t)a1
{
  v92[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v89[0] = @"allDevices";
    v89[1] = sel_allDevices;
    v89[2] = &__block_literal_global_221;
    v90[0] = 144;
    v90[1] = @"keyboards";
    v90[2] = sel_keyboards;
    v90[3] = &__block_literal_global_228;
    v90[4] = 152;
    v90[5] = @"mice";
    v90[6] = sel_mice;
    v90[7] = &__block_literal_global_236;
    v90[8] = 160;
    v90[9] = @"controllers";
    v90[10] = sel_controllers;
    v90[11] = &__block_literal_global_241;
    v90[12] = 168;
    v90[13] = @"racingWheels";
    v90[14] = sel_racingWheels;
    v90[15] = &__block_literal_global_249;
    v90[16] = 176;
    v90[17] = @"spatialAccessories";
    v90[18] = sel_spatialAccessories;
    v90[19] = &__block_literal_global_257;
    v90[20] = 184;
    v91[0] = @"styluses";
    v91[1] = sel_styluses;
    v92[0] = &__block_literal_global_265;
    v92[1] = 192;
    dispatch_assert_queue_V2(*(a1 + 24));
    v52 = [MEMORY[0x1E695DFA8] set];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v2 = *(a1 + 104);
    v3 = [v2 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v3)
    {
      v4 = *v73;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v73 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = [*(*(&v72 + 1) + 8 * i) devices];
          [v52 unionSet:v6];
        }

        v3 = [v2 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v3);
    }

    v7 = objc_getProperty(a1, sel_devices, 136, 1);
    v8 = [v52 copy];
    v50 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v68 objects:v87 count:16];
    if (v10)
    {
      v11 = *v69;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v69 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v68 + 1) + 8 * j);
          if (([v8 containsObject:v13] & 1) == 0)
          {
            [v50 addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v68 objects:v87 count:16];
      }

      while (v10);
    }

    v14 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v8;
    v15 = [obj countByEnumeratingWithState:&v64 objects:v86 count:16];
    if (v15)
    {
      v16 = *v65;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v64 + 1) + 8 * k);
          if (([v9 containsObject:v18] & 1) == 0)
          {
            [v14 addObject:v18];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v64 objects:v86 count:16];
      }

      while (v15);
    }

    v49 = v14;

    if (a2)
    {
      v19 = _gc_log_session();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v14 count];
        v21 = [v50 count];
        v22 = [obj count];
        *buf = 134218754;
        v79 = v20;
        v80 = 2048;
        v81 = v21;
        v82 = 2048;
        v83 = v22;
        v84 = 2114;
        v85 = obj;
        _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "Connected devices changed (%zd added, %zd removed) -> [%zd] %{public}@", buf, 0x2Au);
      }
    }

    v23 = v14;
    if ([v50 count] || objc_msgSend(v14, "count"))
    {
      objc_storeStrong((a1 + 136), v8);
      if (a2)
      {
        [a1 willChangeValueForKey:@"allDevices"];
      }

      for (m = 0; m != 28; m += 4)
      {
        [a1 willChangeValueForKey:v89[m]];
      }

      objc_setProperty_atomic(a1, sel_devices, obj, 136);
      v25 = v90;
      v26 = 7;
      do
      {
        v27 = _Block_copy(*(v25 - 1));
        v28 = MEMORY[0x1E696AE18];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_268;
        v62[3] = &unk_1E8419258;
        v29 = v27;
        v63 = v29;
        v30 = [v28 predicateWithBlock:v62];
        v31 = [obj filteredSetUsingPredicate:v30];

        v32 = [[GCDeviceCollection alloc] initWithUnderlyingCollection:v31];
        objc_setProperty_atomic(a1, *(v25 - 2), v32, *v25);

        v25 += 4;
        --v26;
      }

      while (v26);
      v33 = 0;
      v23 = v14;
      do
      {
        [a1 didChangeValueForKey:v89[v33]];
        v33 += 4;
      }

      while (v33 != 28);
      if (a2)
      {
        [a1 didChangeValueForKey:@"allDevices"];
        v34 = objc_getProperty(a1, sel__refreshDevicesAndNotify_, 112, 1);
        v35 = objc_getProperty(a1, sel__refreshDevicesAndNotify_, 120, 1);
        if (v34 | v35)
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v36 = v50;
          v37 = [v36 countByEnumeratingWithState:&v58 objects:v77 count:16];
          if (v37)
          {
            v38 = *v59;
            do
            {
              for (n = 0; n != v37; ++n)
              {
                if (*v59 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = [[GCDeviceSessionEvent alloc] initWithType:101 device:*(*(&v58 + 1) + 8 * n)];
                if (v35)
                {
                  (*(v35 + 16))(v35, a1, v40);
                }

                if (v34)
                {
                  (*(v34 + 16))(v34, a1, v40);
                }
              }

              v37 = [v36 countByEnumeratingWithState:&v58 objects:v77 count:16];
            }

            while (v37);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v41 = v49;
          v42 = [v41 countByEnumeratingWithState:&v54 objects:v76 count:16];
          if (v42)
          {
            v43 = *v55;
            do
            {
              for (ii = 0; ii != v42; ++ii)
              {
                if (*v55 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = [[GCDeviceSessionEvent alloc] initWithType:100 device:*(*(&v54 + 1) + 8 * ii)];
                if (v35)
                {
                  (*(v35 + 16))(v35, a1, v45);
                }

                if (v34)
                {
                  (*(v34 + 16))(v34, a1, v45);
                }
              }

              v42 = [v41 countByEnumeratingWithState:&v54 objects:v76 count:16];
            }

            while (v42);
          }
        }

        v23 = v49;
      }
    }

    for (jj = 0; jj != -28; jj -= 4)
    {
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)observerDeliveryPolicyDidChange:(id)a3
{
  v4 = a3;
  if (gc_isInternalBuild())
  {
    [(GCDeviceSession *)self observerDeliveryPolicyDidChange:v4];
  }

  if (self->_hidObserverWasActive && ([v4 canReceiveEvents] & 1) == 0)
  {
    mach_absolute_time();
    v5 = IOHIDEventCreate();
    IOHIDEventSetSenderID();
    [(_GCHIDEventSubject *)self->_hidEventSource publishHIDEvent:v5];
    CFRelease(v5);
    self->_hidObserverWasActive = 0;
  }
}

uint64_t __39__GCDeviceSession__updateEventDelivery__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_session();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Session event delivery policy will change: %{public}@", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) count];
  if ((((v4 == 0) ^ [*(*(a1 + 40) + 96) isPaused]) & 1) == 0 && objc_msgSend(*(a1 + 32), "count"))
  {
    v5 = *MEMORY[0x1E695E480];
    mach_absolute_time();
    v6 = IOHIDEventCreate();
    IOHIDEventSetSenderID();
    [*(*(a1 + 40) + 96) publishHIDEvent:v6];
    CFRelease(v6);
    mach_absolute_time();
    v7 = IOHIDEventCreate();
    IOHIDEventSetSenderID();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    [*(*(a1 + 40) + 96) publishHIDEvent:v7];
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    [*(*(a1 + 40) + 96) publishHIDEvent:v7];
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    [*(*(a1 + 40) + 96) publishHIDEvent:v7];
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    [*(*(a1 + 40) + 96) publishHIDEvent:v7];
    CFRelease(v7);
  }

  result = [*(*(a1 + 40) + 96) setPausedForReasons:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__GCDeviceSession__refreshDevicesAndNotify___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setEventHandler:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_state);
  if (v6 >= 2)
  {
    [GCDeviceSession setEventHandler:];
  }

  v8 = v5;
  v7 = _Block_copy(v5);
  objc_setProperty_atomic(self, a2, v7, 112);
}

- (void)setEventHandlerPrivate:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_state);
  if (v6 >= 2)
  {
    [GCDeviceSession setEventHandler:];
  }

  v8 = v5;
  v7 = _Block_copy(v5);
  objc_setProperty_atomic(self, a2, v7, 120);
}

- (id)devicesPrivate
{
  v2 = [(GCDeviceSession *)self allDevices];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (id)keyboardsPrivate
{
  v2 = [(GCDeviceSession *)self keyboards];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (id)micePrivate
{
  v2 = [(GCDeviceSession *)self mice];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (id)controllersPrivate
{
  v2 = [(GCDeviceSession *)self controllers];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (id)racingWheelsPrivate
{
  v2 = [(GCDeviceSession *)self racingWheels];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (id)spatialAccessoriesPrivate
{
  v2 = [(GCDeviceSession *)self spatialAccessories];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (id)stylusesPrivate
{
  v2 = [(GCDeviceSession *)self styluses];
  v3 = [(GCDeviceCollection *)v2 underlyingCollection];

  return v3;
}

- (void)setDeviceProviderTypes:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_state);
  if (v5 >= 2)
  {
    [GCDeviceSession setDeviceProviderTypes:];
  }

  v8 = v4;
  v6 = [v4 copy];
  deviceProviderTypes = self->_deviceProviderTypes;
  self->_deviceProviderTypes = v6;
}

+ (id)deviceProviderTypesForConfiguration:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  if ([v4 isNonUI])
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [a1 _ui_deviceProviderTypesForConfiguration:v4];
  }

  v7 = objc_opt_new();
  [v7 addObjectsFromArray:v5];
  [v7 addObjectsFromArray:v6];
  v8 = [v7 copy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)serviceFor:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = [a1 ui_serviceFor:v6 client:a4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
LABEL_3:
    v10 = v9;
    goto LABEL_6;
  }

  if (&unk_1F4E99DD0 == v6)
  {
    v9 = +[GCAnalytics instance];
    goto LABEL_3;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)serviceFor:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GCDeviceSessionConfiguration *)self->_configuration isNonUI]|| ([(GCDeviceSession *)self ui_serviceFor:v6 client:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (&unk_1F4EB2E08 == v6 || &unk_1F4EB2EF8 == v6)
    {
      v8 = self->_hidEventSystemClient;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if ([v10 isEqualToString:@"devices"])
  {
    [(GCDeviceSession *)self _observeChange:v11 inProvider:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GCDeviceSession;
    [(GCDeviceSession *)&v13 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

- (id)_preflightConfiguration:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = v3;
  }

  return a1;
}

- (void)_updateEventDelivery
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__GCDeviceSession__updateEventDelivery__block_invoke;
    v5[3] = &unk_1E8418C50;
    v6 = v2;
    v7 = a1;
    v4 = v2;
    dispatch_async(v3, v5);
  }
}

- (void)_observeChange:(void *)a3 inProvider:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A4F8]];
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      v9 = _gc_log_session();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v5;
        _os_log_debug_impl(&dword_1D2CD5000, v9, OS_LOG_TYPE_DEBUG, "%@ devices did change: %@", &v13, 0x16u);
      }

      v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A4E8]];
      v11 = [v10 unsignedIntegerValue];

      if (v11 <= 1)
      {
        [v5 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      }

      [(GCDeviceSession *)a1 _refreshDevicesAndNotify:?];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_swift_EventHandler
{
  if (a1)
  {
    a1 = objc_getProperty(a1, sel__swift_EventHandler, 128, 1);
    v1 = vars8;
  }

  return a1;
}

- (void)set_swift_EventHandler:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, sel_set_swift_EventHandler_, newValue, 128);
  }
}

- (void)initWithConfiguration:(uint64_t)a1 environment:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCDeviceSession.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %s", "configuration != nil"}];
}

- (void)setTargetQueue:.cold.1()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** The 'targetQueue' may not be modified after activating the session." userInfo:0];
  objc_exception_throw(v0);
}

- (void)setEventTargetQueue:.cold.1()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** The 'targetEventQueue' may not be modified after activating the session." userInfo:0];
  objc_exception_throw(v0);
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "Preparing GCDeviceSession with providers: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2_194_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"GCDeviceSession.m" lineNumber:362 description:@"Bad state."];
}

void __49__GCDeviceSession_activateWithCompletionHandler___block_invoke_2_194_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 136);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "GCDeviceSession activated with initial devices: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)observerDeliveryPolicyDidChange:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 80);
    v7[0] = 67109376;
    v7[1] = v5;
    v8 = 1024;
    v9 = [a2 canReceiveEvents];
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "BKSHIDEventDeliveryPolicy did change %{BOOL}d -> %{BOOL}d", v7, 0xEu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setEventHandler:.cold.1()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** The 'eventHandler' may not be modified after activating the session." userInfo:0];
  objc_exception_throw(v0);
}

- (void)setDeviceProviderTypes:.cold.1()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** The 'deviceProviderTypes' may not be modified after activating the session." userInfo:0];
  objc_exception_throw(v0);
}

@end