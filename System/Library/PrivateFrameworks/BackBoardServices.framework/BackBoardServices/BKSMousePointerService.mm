@interface BKSMousePointerService
+ (id)new;
+ (id)sharedInstance;
- (BKSMousePointerDevicePreferences)globalDevicePreferences;
- (BKSMousePointerService)init;
- (CGPoint)globalPointerPosition;
- (CGPoint)normalizedGlobalPointerPosition;
- (id)_init;
- (id)_locked_infoForDisplayUUID:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_locked_serverTarget;
- (id)_unlocked_serverTarget;
- (id)addPointerDeviceObserver:(id)a3;
- (id)addPointerPreferencesObserver:(id)a3;
- (id)pointerSuppressionAssertionOnDisplay:(id)a3 forReason:(id)a4 withOptionsMask:(unint64_t)a5;
- (id)preferencesForDevice:(id)a3;
- (void)_activateServerConnection:(id)a3;
- (void)_locked_pointingDevicesDidChange:(id)a3;
- (void)_locked_reactivateConnection;
- (void)_locked_sendCurrentAssertionParameters:(id)a3 forDisplayUUID:(id)a4;
- (void)_locked_setMousePointerDeviceObservationEnabled:(BOOL)a3;
- (void)_locked_setMousePointerPreferencesObservationEnabled:(BOOL)a3;
- (void)_locked_updateEventRoutesFromContext:(id)a3 forDisplayUUID:(id)a4;
- (void)_locked_updateObserver:(id)a3 withPointingDevices:(id)a4;
- (void)_locked_updateServerWithPointerDeviceObservationState;
- (void)_locked_updateServerWithPreferencesObservationState;
- (void)dealloc;
- (void)getHitTestContextsAtPoint:(id)a3 withAdditionalContexts:(id)a4 onDisplay:(id)a5 withCompletion:(id)a6;
- (void)pointerGlobalDevicePreferencesDidChange:(id)a3;
- (void)pointingDevicesDidChange:(id)a3;
- (void)setGlobalDevicePreferences:(id)a3;
- (void)setGlobalPointerPosition:(CGPoint)a3;
- (void)setPointerPosition:(CGPoint)a3 onDisplay:(id)a4 withAnimationParameters:(id)a5;
- (void)setPreferences:(id)a3 forDevice:(id)a4;
@end

@implementation BKSMousePointerService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5408 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5408, &__block_literal_global_5409);
  }

  v3 = sharedInstance_service_5410;

  return v3;
}

uint64_t __40__BKSMousePointerService_sharedInstance__block_invoke()
{
  sharedInstance_service_5410 = [[BKSMousePointerService alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v21.receiver = self;
  v21.super_class = BKSMousePointerService;
  v2 = [(BKSMousePointerService *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698F4D0];
    v5 = +[BKSMousePointerServiceSessionSpecification serviceQuality];
    v6 = [v4 queueWithName:@"com.apple.backboard.mouse-pointer-service-client" serviceQuality:v5];
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v6;

    v8 = MEMORY[0x1E698E658];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __31__BKSMousePointerService__init__block_invoke;
    v19[3] = &unk_1E6F46D70;
    v9 = v3;
    v20 = v9;
    v10 = [v8 assertionWithIdentifier:@"suppressAllMouseEvents" stateDidChangeHandler:v19];
    suppressMouseEvents = v9->_suppressMouseEvents;
    v9->_suppressMouseEvents = v10;

    v12 = v9->_suppressMouseEvents;
    v13 = BKLogMousePointer();
    [(BSCompoundAssertion *)v12 setLog:v13];

    v14 = +[BKSHIDServiceConnectionFactory sharedInstance];
    v15 = +[BKSMousePointerServiceSessionSpecification identifier];
    v16 = [MEMORY[0x1E698F4E0] userInteractiveMultiplexer];
    v17 = [v14 clientConnectionForServiceWithName:v15 multiplexer:v16];

    [(BKSMousePointerService *)v9 _activateServerConnection:v17];
  }

  return v3;
}

- (void)_locked_updateServerWithPointerDeviceObservationState
{
  os_unfair_lock_assert_owner(&self->_lock);
  isObservingDeviceConnection = self->_isObservingDeviceConnection;
  v4 = [(BKSMousePointerService *)self _locked_serverTarget];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:isObservingDeviceConnection];
  v6 = [v4 setMousePointerDeviceObservationEnabled:v5];

  if (isObservingDeviceConnection)
  {
    [(BKSMousePointerService *)self _locked_pointingDevicesDidChange:v6];
  }
}

- (id)_locked_serverTarget
{
  os_unfair_lock_assert_owner(&self->_lock);
  connection = self->_connection;

  return [(BSServiceInitiatingConnection *)connection remoteTarget];
}

- (void)pointerGlobalDevicePreferencesDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSCompoundAssertion *)self->_preferencesObservers context];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) observer];
        [v12 mousePointerGlobalDevicePreferencesDidChange:v4];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)pointingDevicesDidChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKSMousePointerService *)self _locked_pointingDevicesDidChange:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_activateServerConnection:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_connection, a3);
    connection = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__BKSMousePointerService__activateServerConnection___block_invoke;
    v11[3] = &unk_1E6F47978;
    v11[4] = self;
    [(BSServiceInitiatingConnection *)connection configure:v11];
    v7 = BKLogMousePointer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_connection;
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_186345000, v7, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    [v5 activate];
  }

  else
  {
    v9 = BKLogMousePointer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v9, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __52__BKSMousePointerService__activateServerConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKSMousePointerServiceSessionSpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setQueue:*(*(a1 + 32) + 8)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__BKSMousePointerService__activateServerConnection___block_invoke_2;
  v5[3] = &unk_1E6F474B0;
  v5[4] = *(a1 + 32);
  [v3 setInterruptionHandler:v5];
  [v3 setInvalidationHandler:&__block_literal_global_142];
}

void __52__BKSMousePointerService__activateServerConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogMousePointer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v8, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DFD8] set];
  [v5 _locked_pointingDevicesDidChange:v6];

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  [v3 activate];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(a1 + 32) _locked_reactivateConnection];
  os_unfair_lock_unlock((*(a1 + 32) + 16));

  v7 = *MEMORY[0x1E69E9840];
}

void __52__BKSMousePointerService__activateServerConnection___block_invoke_140(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = BKLogMousePointer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "Received invalidation for connection: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_locked_reactivateConnection
{
  os_unfair_lock_assert_owner(&self->_lock);
  displayUUIDToPerDisplayInfo = self->_displayUUIDToPerDisplayInfo;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__BKSMousePointerService__locked_reactivateConnection__block_invoke;
  v4[3] = &unk_1E6F46E30;
  v4[4] = self;
  [(NSMutableDictionary *)displayUUIDToPerDisplayInfo enumerateKeysAndObjectsUsingBlock:v4];
  [(BKSMousePointerService *)self _locked_updateServerWithPointerDeviceObservationState];
  [(BKSMousePointerService *)self _locked_updateServerWithPreferencesObservationState];
}

void __54__BKSMousePointerService__locked_reactivateConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 pointerSuppressionAssertion];
  if (v6)
  {
    [*(a1 + 32) _locked_sendCurrentAssertionParameters:v6 forDisplayUUID:v8];
  }

  v7 = [v5 globalEventsAssertion];
  if (v7)
  {
    [*(a1 + 32) _locked_updateEventRoutesFromContext:v7 forDisplayUUID:v8];
  }
}

- (void)_locked_updateEventRoutesFromContext:(id)a3 forDisplayUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BKSMousePointerService *)self _locked_serverTarget];
  v8 = [v7 context];

  [v9 setGlobalPointerEventRoutes:v8 forDisplay:v6];
}

- (void)_locked_sendCurrentAssertionParameters:(id)a3 forDisplayUUID:(id)a4
{
  v6 = a4;
  v7 = [a3 context];
  v9 = [v7 bs_reduce:&unk_1EF56BEE0 block:&__block_literal_global_136_5332];

  v8 = [(BKSMousePointerService *)self _locked_serverTarget];
  [v8 applyAssertionParametersOnDisplay:v6 withOptionsMask:v9];
}

uint64_t __80__BKSMousePointerService__locked_sendCurrentAssertionParameters_forDisplayUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 suppressionOptions];

  return [v4 numberWithUnsignedInteger:v7 | v6];
}

- (id)_locked_infoForDisplayUUID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_displayUUIDToPerDisplayInfo objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(BKSMousePointerPerDisplayInfo);
    displayUUIDToPerDisplayInfo = self->_displayUUIDToPerDisplayInfo;
    if (!displayUUIDToPerDisplayInfo)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_displayUUIDToPerDisplayInfo;
      self->_displayUUIDToPerDisplayInfo = v10;

      displayUUIDToPerDisplayInfo = self->_displayUUIDToPerDisplayInfo;
    }

    [(NSMutableDictionary *)displayUUIDToPerDisplayInfo setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (void)_locked_setMousePointerPreferencesObservationEnabled:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isObservingPreferences != v3)
  {
    self->_isObservingPreferences = v3;

    [(BKSMousePointerService *)self _locked_updateServerWithPreferencesObservationState];
  }
}

- (void)_locked_updateServerWithPreferencesObservationState
{
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [(BKSMousePointerService *)self _locked_serverTarget];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isObservingPreferences];
  [v4 setMousePointerPreferenceObservationEnabled:v3];
}

- (void)_locked_setMousePointerDeviceObservationEnabled:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isObservingDeviceConnection != v3)
  {
    self->_isObservingDeviceConnection = v3;

    [(BKSMousePointerService *)self _locked_updateServerWithPointerDeviceObservationState];
  }
}

- (void)_locked_pointingDevicesDidChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 copy];
  attachedDevices = self->_attachedDevices;
  self->_attachedDevices = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(BSCompoundAssertion *)self->_deviceConnectionObservers context];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BKSMousePointerService *)self _locked_updateObserver:*(*(&v13 + 1) + 8 * v11++) withPointingDevices:v4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_locked_updateObserver:(id)a3 withPointingDevices:(id)a4
{
  v19 = a3;
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [v19 visibleDevices];
  v8 = [v6 mutableCopy];
  if ([v7 count])
  {
    [v8 minusSet:v7];
  }

  if ([v8 count])
  {
    v9 = [v19 observer];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v19 observer];
      [v11 mousePointerDevicesDidConnect:v8];
    }
  }

  v12 = [v7 mutableCopy];
  [v12 minusSet:v6];
  if ([v12 count])
  {
    v13 = [v19 observer];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v19 observer];
      [v15 mousePointerDevicesDidDisconnect:v12];
    }
  }

  v16 = [v19 observer];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [v19 observer];
    [v18 mousePointerDevicesDidChange:v6];
  }

  [v19 setVisibleDevices:v6];
}

- (id)_unlocked_serverTarget
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPreferences:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [v8 setPreferences:v7 forDevice:v6];
}

- (id)preferencesForDevice:(id)a3
{
  v4 = a3;
  v5 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v6 = [v5 preferencesForDevice:v4];

  return v6;
}

- (id)addPointerPreferencesObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_preferencesObservers)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E698E658];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__BKSMousePointerService_addPointerPreferencesObserver___block_invoke;
    v13[3] = &unk_1E6F47890;
    objc_copyWeak(&v14, &location);
    v6 = [v5 assertionWithIdentifier:@"preferences-observers" stateDidChangeHandler:v13];
    preferencesObservers = self->_preferencesObservers;
    self->_preferencesObservers = v6;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_alloc_init(BKSMousePointerPreferencesObserverInfo);
  [(BKSMousePointerPreferencesObserverInfo *)v8 setObserver:v4];
  v9 = self->_preferencesObservers;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v4];
  v11 = [(BSCompoundAssertion *)v9 acquireForReason:v10 withContext:v8];

  return v11;
}

void __56__BKSMousePointerService_addPointerPreferencesObserver___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    -[os_unfair_lock_s _locked_setMousePointerPreferencesObservationEnabled:](v4, "_locked_setMousePointerPreferencesObservationEnabled:", [v5 isActive]);
    os_unfair_lock_unlock(v4 + 4);
  }
}

- (void)setGlobalDevicePreferences:(id)a3
{
  v4 = a3;
  v5 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [v5 setGlobalDevicePreferences:v4];
}

- (BKSMousePointerDevicePreferences)globalDevicePreferences
{
  v2 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v3 = [v2 globalDevicePreferences];

  return v3;
}

- (id)addPointerDeviceObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_deviceConnectionObservers)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E698E658];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__BKSMousePointerService_addPointerDeviceObserver___block_invoke;
    v13[3] = &unk_1E6F47890;
    objc_copyWeak(&v14, &location);
    v6 = [v5 assertionWithIdentifier:@"mouse-device-observers" stateDidChangeHandler:v13];
    deviceConnectionObservers = self->_deviceConnectionObservers;
    self->_deviceConnectionObservers = v6;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v8 = objc_alloc_init(BKSMousePointerDeviceObserverInfo);
  [(BKSMousePointerDeviceObserverInfo *)v8 setObserver:v4];
  [(BKSMousePointerService *)self _locked_updateObserver:v8 withPointingDevices:self->_attachedDevices];
  os_unfair_lock_unlock(&self->_lock);
  v9 = self->_deviceConnectionObservers;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v4];
  v11 = [(BSCompoundAssertion *)v9 acquireForReason:v10 withContext:v8];

  return v11;
}

void __51__BKSMousePointerService_addPointerDeviceObserver___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    -[os_unfair_lock_s _locked_setMousePointerDeviceObservationEnabled:](v4, "_locked_setMousePointerDeviceObservationEnabled:", [v5 isActive]);
    os_unfair_lock_unlock(v4 + 4);
  }
}

- (void)getHitTestContextsAtPoint:(id)a3 withAdditionalContexts:(id)a4 onDisplay:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [v14 getHitTestContextsAtPoint:v13 withAdditionalContexts:v12 onDisplay:v11 withCompletion:v10];
}

void __85__BKSMousePointerService_requestGlobalMouseEventsForDisplay_targetContextID_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  [*(a1 + 32) _locked_updateEventRoutesFromContext:v4 forDisplayUUID:*(a1 + 40)];

  v5 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v5);
}

void __85__BKSMousePointerService_requestGlobalMouseEventsForDisplay_targetContextID_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setContextID:v3];
  [v4 setOptions:*(a1 + 32)];
}

- (id)pointerSuppressionAssertionOnDisplay:(id)a3 forReason:(id)a4 withOptionsMask:(unint64_t)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!a5)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suppression Options must suppress something"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v35 = v25;
      v36 = 2114;
      v37 = v27;
      v38 = 2048;
      v39 = self;
      v40 = 2114;
      v41 = @"BKSMousePointerService.m";
      v42 = 1024;
      v43 = 189;
      v44 = 2114;
      v45 = v24;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863809ACLL);
  }

  v11 = v10;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v12 = v9;
  v13 = [(__CFString *)v12 length];
  v14 = @"<main>";
  if (v13)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [(BKSMousePointerService *)self _locked_infoForDisplayUUID:v15 createIfNeeded:1];
  v17 = [v16 pointerSuppressionAssertion];
  if (!v17)
  {
    v18 = MEMORY[0x1E698E658];
    v19 = [@"mouse-pointer-suppression:" stringByAppendingString:v15];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __89__BKSMousePointerService_pointerSuppressionAssertionOnDisplay_forReason_withOptionsMask___block_invoke;
    v31 = &unk_1E6F46DC0;
    v32 = self;
    v33 = v15;
    v17 = [v18 assertionWithIdentifier:v19 stateDidChangeHandler:&v28];

    [v16 setPointerSuppressionAssertion:{v17, v28, v29, v30, v31, v32}];
  }

  v20 = objc_alloc_init(BKSMousePointerSuppressionAssertionDescriptor);
  [(BKSMousePointerSuppressionAssertionDescriptor *)v20 setSuppressionOptions:a5];
  os_unfair_lock_unlock(&self->_lock);
  v21 = [v17 acquireForReason:v11 withContext:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __89__BKSMousePointerService_pointerSuppressionAssertionOnDisplay_forReason_withOptionsMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 4);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(a1 + 32) _locked_sendCurrentAssertionParameters:v4 forDisplayUUID:*(a1 + 40)];

  v5 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v5);
}

void __137__BKSMousePointerService_acquireButtonDownPointerRepositionAssertionForReason_contextRelativePointerPosition_onDisplay_restrictingToPID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _unlocked_serverTarget];
  [v2 invalidateButtonDownPointerRepositionAssertionWithUniqueIdentifier:*(a1 + 32) onDisplay:*(a1 + 40)];
}

- (void)setPointerPosition:(CGPoint)a3 onDisplay:(id)a4 withAnimationParameters:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = a4;
  v12 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v11 = [MEMORY[0x1E696B098] bs_valueWithCGPoint:{x, y}];
  [v12 setPointerPosition:v11 onDisplay:v10 withAnimationParameters:v9];
}

- (void)setGlobalPointerPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGPoint:{x, y}];
  [v6 setGlobalPointerPosition:v5];
}

- (CGPoint)normalizedGlobalPointerPosition
{
  v2 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v3 = [v2 normalizedGlobalPointerPosition];

  [v3 bs_CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)globalPointerPosition
{
  v2 = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v3 = [v2 globalPointerPosition];

  [v3 bs_CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must be invalidated before deallocation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BKSMousePointerService.m";
      v18 = 1024;
      v19 = 128;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863812C8);
  }

  v9.receiver = self;
  v9.super_class = BKSMousePointerService;
  [(BKSMousePointerService *)&v9 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

void __31__BKSMousePointerService__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  v5 = [*(a1 + 32) _locked_serverTarget];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 isActive];

  v8 = [v6 numberWithBool:v7];
  [v5 setSuppressAllEvents:v8];

  v9 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v9);
}

- (BKSMousePointerService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is unsupported -- use +sharedInstance instead"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSMousePointerService.m";
    v17 = 1024;
    v18 = 93;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+new is unsupported -- use +sharedInstance instead"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a1;
    v15 = 2114;
    v16 = @"BKSMousePointerService.m";
    v17 = 1024;
    v18 = 88;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end