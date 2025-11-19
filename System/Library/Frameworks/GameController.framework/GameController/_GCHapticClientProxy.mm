@interface _GCHapticClientProxy
+ (_GCHapticClientProxy)clientProxyWithConnection:(id)a3 server:(id)a4 clientID:(unint64_t)a5;
- (BOOL)isMuted;
- (BOOL)isMutedForReason:(unint64_t)a3;
- (_GCHapticClientProxy)init;
- (double)totalLifetimeInSeconds;
- (id).cxx_construct;
- (id)_initWithConnection:(id)a3 server:(id)a4 clientID:(unint64_t)a5;
- (id)addInvalidationHandler:(id)a3;
- (void)_configureActuatorsLegacyWithOptions:(id)a3;
- (void)addActiveTime:(double)a3;
- (void)allocateClientResources:(id)a3;
- (void)configureWithOptions:(id)a3 reply:(id)a4;
- (void)copyCustomAudioEvent:(unint64_t)a3 options:(id)a4 reply:(id)a5;
- (void)createCustomAudioEvent:(id)a3 format:(id)a4 frames:(unint64_t)a5 options:(id)a6 reply:(id)a7;
- (void)dealloc;
- (void)debugExpectNotifyOnFinishAfter:(double)a3 reply:(id)a4;
- (void)detachSequence:(unint64_t)a3;
- (void)getHapticLatency:(id)a3;
- (void)invalidate;
- (void)invalidateDueToControllerDisconnect;
- (void)loadHapticEvent:(id)a3 reply:(id)a4;
- (void)loadHapticSequenceFromData:(id)a3 reply:(id)a4;
- (void)loadHapticSequenceFromEvents:(id)a3 reply:(id)a4;
- (void)loadVibePattern:(id)a3 reply:(id)a4;
- (void)notifyClientCompletedWithError:(id)a3;
- (void)notifyClientOnStopWithReason:(int64_t)a3 error:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareHapticSequence:(unint64_t)a3 reply:(id)a4;
- (void)prewarm:(id)a3;
- (void)queryCapabilities:(id)a3 reply:(id)a4;
- (void)referenceCustomAudioEvent:(unint64_t)a3 reply:(id)a4;
- (void)refreshUserSettingForMuteHaptics;
- (void)releaseChannels;
- (void)releaseClientResources;
- (void)releaseCustomAudioEvent:(unint64_t)a3 reply:(id)a4;
- (void)removeChannel:(unint64_t)a3 reply:(id)a4;
- (void)removeCustomAudioEvent:(unint64_t)a3 reply:(id)a4;
- (void)requestChannels:(unint64_t)a3 reply:(id)a4;
- (void)setBundleIdentifier:(id)a3;
- (void)setChannelEventBehavior:(unint64_t)a3 behavior:(unint64_t)a4 reply:(id)a5;
- (void)setComplete:(BOOL)a3;
- (void)setMute:(BOOL)a3 forReason:(unint64_t)a4;
- (void)setPlayerBehavior:(unint64_t)a3 reply:(id)a4;
- (void)setSequenceEventBehavior:(unint64_t)a3 behavior:(unint64_t)a4 channelIndex:(unint64_t)a5 reply:(id)a6;
- (void)startRunning:(id)a3;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunning:(id)a3;
- (void)teardownAndReleaseChannels;
@end

@implementation _GCHapticClientProxy

+ (_GCHapticClientProxy)clientProxyWithConnection:(id)a3 server:(id)a4 clientID:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[a1 alloc] _initWithConnection:v8 server:v9 clientID:a5];

  return v10;
}

- (id)_initWithConnection:(id)a3 server:(id)a4 clientID:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v32.receiver = self;
  v32.super_class = _GCHapticClientProxy;
  v11 = [(_GCHapticClientProxy *)&v32 init];
  v12 = v11;
  if (v11)
  {
    v11->_applicationState = 0;
    objc_storeStrong(&v11->_server, a4);
    objc_storeStrong(&v12->_connection, a3);
    v12->_clientID = a5;
    v13 = [MEMORY[0x1E695DF90] dictionary];
    hapticPlayers = v12->_hapticPlayers;
    v12->_hapticPlayers = v13;

    v15 = [MEMORY[0x1E695DF70] array];
    actuators = v12->_actuators;
    v12->_actuators = v15;

    *&v12->_shouldSquareContinuousIntensity = 257;
    v17 = GCLookupService();
    settingsStore = v12->_settingsStore;
    v12->_settingsStore = v17;

    v19 = [(GCSSettingsStoreService *)v12->_settingsStore profiles];
    [v19 addObserver:v12 forKeyPath:@"values" options:1 context:kGCSettingsContext];

    v20 = [(GCSSettingsStoreService *)v12->_settingsStore games];
    [v20 addObserver:v12 forKeyPath:@"values" options:1 context:kGCSettingsContext];

    v21 = objc_opt_new();
    invalidationHandlers = v12->_invalidationHandlers;
    v12->_invalidationHandlers = v21;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60___GCHapticClientProxy__initWithConnection_server_clientID___block_invoke;
    aBlock[3] = &unk_1E841A280;
    v23 = v12;
    v31 = v23;
    v24 = _Block_copy(aBlock);
    v25 = [(_GCIPCIncomingConnection *)v12->_connection addInvalidationHandler:v24];
    connectionInvalidationRegistration = v23->_connectionInvalidationRegistration;
    v23->_connectionInvalidationRegistration = v25;

    v27 = [(_GCIPCIncomingConnection *)v12->_connection addInterruptionHandler:v24];
    connectionInterruptedRegistration = v23->_connectionInterruptedRegistration;
    v23->_connectionInterruptedRegistration = v27;

    v23->_initializationTime = mach_absolute_time() * 0.0000000416666667;
    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy _initWithConnection:server:clientID:];
    }
  }

  return v12;
}

- (_GCHapticClientProxy)init
{
  [(_GCHapticClientProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v4 = [(GCSSettingsStoreService *)self->_settingsStore profiles];

  if (v4)
  {
    v5 = [(GCSSettingsStoreService *)self->_settingsStore profiles];
    [v5 removeObserver:self forKeyPath:@"values" context:kGCSettingsContext];
  }

  v6 = [(GCSSettingsStoreService *)self->_settingsStore games];

  if (v6)
  {
    v7 = [(GCSSettingsStoreService *)self->_settingsStore games];
    [v7 removeObserver:self forKeyPath:@"values" context:kGCSettingsContext];
  }

  v8 = +[GCAnalytics instance];
  v9 = [(_GCHapticClientProxy *)self bundleIdentifier];
  v10 = [v9 copy];
  v11 = [(_GCHapticClientProxy *)self controllerProductCategory];
  v12 = [v11 copy];
  v13 = [(_GCHapticClientProxy *)self totalPlayers];
  [(_GCHapticClientProxy *)self totalLifetimeInSeconds];
  v15 = v14;
  [(_GCHapticClientProxy *)self activeLifetimeInSeconds];
  [v8 sendHapticsClientDestroyedEventForBundleID:v10 productCategory:v12 totalPlayers:v13 sessionTotalDuration:v15 sessionActiveDuration:v16 terminationReason:@"Dealloc"];

  v17 = atomic_load(&self->_invalid);
  if ((v17 & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"GCHapticClientProxy.mm" lineNumber:136 description:{@"%@ is being deallocated, but is still valid.", self}];
  }

  [(_GCHapticClientProxy *)self invalidate];
  [(_GCHapticClientProxy *)self releaseClientResources];
  v19.receiver = self;
  v19.super_class = _GCHapticClientProxy;
  [(_GCHapticClientProxy *)&v19 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kGCSettingsContext == a6)
  {
    [(_GCHapticClientProxy *)self refreshUserSettingForMuteHaptics];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCHapticClientProxy;
    [(_GCHapticClientProxy *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)invalidateDueToControllerDisconnect
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = getGCHapticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBundleIdentifier:(id)a3
{
  v5 = a3;
  p_bundleIdentifier = &self->_bundleIdentifier;
  if (!self->_bundleIdentifier)
  {
    objc_storeStrong(&self->_bundleIdentifier, a3);
    if (([(NSString *)*p_bundleIdentifier isEqual:@"com.apple.TVSettings"]& 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)*p_bundleIdentifier isEqual:@"com.apple.Preferences"];
    }

    self->_neverMute = v7;
    if (gc_isInternalBuild())
    {
      v8 = getGCHapticsLogger();
      [(_GCHapticClientProxy *)v8 setBundleIdentifier:&self->_neverMute];
    }

    [(_GCHapticClientProxy *)self refreshUserSettingForMuteHaptics];
  }
}

- (void)refreshUserSettingForMuteHaptics
{
  v18 = *MEMORY[0x1E69E9840];
  [(_GCHapticClientProxy *)self setMute:0 forReason:4];
  v3 = [(GCSSettingsStoreService *)self->_settingsStore profileForPersistentControllerIdentifier:self->_persistentControllerIdentifier appBundleIdentifier:self->_bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    [v3 hapticStrength];
    v6 = v5;
    v7 = v6;
    if (gc_isInternalBuild())
    {
      v10 = getGCHapticsLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = self->_bundleIdentifier;
        v12 = 138412802;
        v13 = self;
        v14 = 1024;
        v15 = v7 < 0.01;
        v16 = 2112;
        v17 = bundleIdentifier;
        _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "%@ setMute=%d for %@", &v12, 0x1Cu);
      }
    }

    [(_GCHapticClientProxy *)self setMute:v7 < 0.01 forReason:4];
    if (v7 >= 0.01)
    {
      *&v8 = v6;
      [(_GCHapticClientProxy *)self setHapticStrength:v8];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientOnStopWithReason:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  [(_GCHapticClientProxy *)self stopRunning];
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy notifyClientOnStopWithReason:error:];
  }

  v7 = [(_GCIPCIncomingConnection *)self->_connection remoteProxy];
  [v7 clientStoppedForReason:a3 error:v6];
}

- (void)setMute:(BOOL)a3 forReason:(unint64_t)a4
{
  v4 = self + 4 * a4;
  v5 = *(v4 + 25);
  if (a3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  *(v4 + 25) = fmax(v6, 0.0);
  self->_dirtyMuteState = 1;
}

- (BOOL)isMutedForReason:(unint64_t)a3
{
  if (a3 >= 5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"GCHapticClientProxy.mm" lineNumber:250 description:@"Attempting to check if player is muted for invalid reason"];
  }

  return self->_muteReasons[a3] != 0;
}

- (BOOL)isMuted
{
  if (self->_dirtyMuteState)
  {
    self->_muted = 0;
    if (self->_neverMute)
    {
      return 0;
    }

    else
    {
      v2 = 0;
      while (!self->_muteReasons[v2])
      {
        if (++v2 == 5)
        {
          return 0;
        }
      }

      v3 = 1;
      self->_muted = 1;
    }
  }

  else
  {
    return self->_muted;
  }

  return v3;
}

- (void)notifyClientCompletedWithError:(id)a3
{
  v4 = a3;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy notifyClientCompletedWithError:];
  }

  v5 = [(_GCIPCIncomingConnection *)self->_connection remoteProxy];
  [v5 clientCompletedWithError:0];
}

- (void)setComplete:(BOOL)a3
{
  if (self->_complete != a3)
  {
    v3 = a3;
    if (gc_isInternalBuild())
    {
      [_GCHapticClientProxy setComplete:];
    }

    self->_complete = v3;
    if (v3)
    {
      [(_GCHapticClientProxy *)self notifyClientCompletedWithError:0];
    }
  }
}

- (double)totalLifetimeInSeconds
{
  result = 0.0;
  if (self->_initializationTime >= 0.0)
  {
    return mach_absolute_time() * 0.0000000416666667 - self->_initializationTime;
  }

  return result;
}

- (void)addActiveTime:(double)a3
{
  if (a3 >= 0.0)
  {
    self->_activeLifetimeInSeconds = self->_activeLifetimeInSeconds + a3;
  }
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 14) = 0;
  *(self + 60) = 0xFFFFFFFFLL;
  *(self + 9) = 0;
  *(self + 3) = &unk_1F4E38B18;
  return self;
}

- (id)addInvalidationHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];

  v6 = self;
  objc_sync_enter(v6);
  v7 = atomic_load(&v6->_invalid);
  if (v7)
  {
    objc_sync_exit(v6);

    v8 = 0;
  }

  else
  {
    v9 = [(_GCHapticClientProxy *)v6 invalidationHandlers];
    v10 = [v9 mutableCopy];

    v11 = _Block_copy(v5);
    [v10 addObject:v11];

    [(_GCHapticClientProxy *)v6 setInvalidationHandlers:v10];
    objc_sync_exit(v6);

    objc_initWeak(&location, v6);
    v12 = [_GCObservation alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71___GCHapticClientProxy_InvalidationObservable__addInvalidationHandler___block_invoke;
    v14[3] = &unk_1E841B2C0;
    objc_copyWeak(&v16, &location);
    v15 = v5;
    v8 = [(_GCObservation *)v12 initWithCleanupHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)_configureActuatorsLegacyWithOptions:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"hapticEngineInfo"];
  if (!v5)
  {
    if (gc_isInternalBuild())
    {
      v20 = getGCHapticsLogger();
      [_GCHapticClientProxy(HapticServer) _configureActuatorsLegacyWithOptions:v20];
    }

    v7 = [v4 objectForKey:@"hapticEngineLabel"];
    if (!v7)
    {
      v14 = [v4 objectForKey:@"hapticEngineName"];
      if (v14)
      {
        v7 = v14;
      }

      else
      {
        v7 = @"Unknown";
      }
    }

    v15 = [v4 objectForKey:@"hapticEngineIndex"];
    if (v15)
    {
      v6 = v15;
    }

    else
    {
      v6 = &unk_1F4E8F1E8;
    }

    v12 = [v4 objectForKey:@"hapticEngineType"];
    v16 = [[GCHapticActuator alloc] initWithLabel:v7 type:[v12 isEqualToString:@"LRA"] index:[(__CFString *)v6 integerValue]];
    v22 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    actuators = self->_actuators;
    self->_actuators = v17;

    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy(HapticServer) _configureActuatorsLegacyWithOptions:];
    }

    goto LABEL_18;
  }

  v21 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v21];
  v7 = v21;
  v25[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v9 = self->_actuators;
  self->_actuators = v8;

  if (!v7)
  {
    if (!gc_isInternalBuild())
    {
      goto LABEL_20;
    }

    v12 = getGCHapticsLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v24 = v6;
    v13 = "Haptic actuator received: %@";
    goto LABEL_23;
  }

  v10 = +[GCAnalytics instance];
  v11 = currentProcessBundleIdentifier();
  [v10 sendHapticsErrorRaisedEventFromSource:v11 productCategory:self->_controllerProductCategory errorType:@"ConfigureActuatorsLegacyFailure"];

  if (gc_isInternalBuild())
  {
    v12 = getGCHapticsLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:

      goto LABEL_20;
    }

    *buf = 138412290;
    v24 = v7;
    v13 = "Failed to unarchive haptic actuator! %@";
LABEL_23:
    _os_log_impl(&dword_1D2CD5000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_18;
  }

LABEL_20:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:(id)a3 reply:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
  }

  v8 = [v6 objectForKey:@"controllerProductCategory"];
  controllerProductCategory = self->_controllerProductCategory;
  self->_controllerProductCategory = v8;

  if (self->_controllerProductCategory && gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
  }

  v10 = [v6 objectForKey:@"actuators"];
  if (v10)
  {
    v30 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v10 error:&v30];
    v12 = v30;
    if (v12)
    {
      v13 = +[GCAnalytics instance];
      v14 = currentProcessBundleIdentifier();
      [v13 sendHapticsErrorRaisedEventFromSource:v14 productCategory:self->_controllerProductCategory errorType:@"ConfigureActuatorsFailure"];

      if (!gc_isInternalBuild())
      {
LABEL_16:

        goto LABEL_17;
      }

      p_super = getGCHapticsLogger();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1D2CD5000, p_super, OS_LOG_TYPE_DEFAULT, "Failed to unarchive haptic actuator! %@", buf, 0xCu);
      }
    }

    else
    {
      if (gc_isInternalBuild())
      {
        getGCHapticsLogger();
        objc_claimAutoreleasedReturnValue();
        [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
      }

      v16 = v11;
      p_super = &self->_actuators->super;
      self->_actuators = v16;
    }

    goto LABEL_16;
  }

  [(_GCHapticClientProxy *)self _configureActuatorsLegacyWithOptions:v6];
LABEL_17:
  v17 = [v6 objectForKey:@"controllerIdentifier"];
  identifier = self->_identifier;
  self->_identifier = v17;

  if (self->_identifier && gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
  }

  v19 = [v6 objectForKey:@"persistentControllerIdentifier"];
  persistentControllerIdentifier = self->_persistentControllerIdentifier;
  self->_persistentControllerIdentifier = v19;

  v21 = self->_persistentControllerIdentifier;
  if (!v21)
  {
    self->_persistentControllerIdentifier = @"__Unknown";
    goto LABEL_24;
  }

  if (gc_isInternalBuild())
  {
    v22 = getGCHapticsLogger();
    [(_GCHapticClientProxy(HapticServer) *)v22 configureWithOptions:buf reply:?];
    v21 = *buf;
LABEL_24:
  }

  v23 = [v6 objectForKey:@"isDummyServer"];
  v24 = v23;
  if (v23 && [v23 BOOLValue])
  {
    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  [(_GCHapticClientProxy *)self setMockClient:v25];
  v26 = [v6 objectForKey:@"shouldSquareContinuousIntensity"];
  v27 = v26;
  if (v26 && [v26 BOOLValue] && gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
  }

  v28 = +[_GCHapticServerManager sharedInstance];
  [v28 hapticClientProxyInitialized:self];

  v7[2](v7, self->_clientID);
  v29 = *MEMORY[0x1E69E9840];
}

- (void)queryCapabilities:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [v6 objectForKey:@"RequestedLocality"];
  v10 = [(NSArray *)self->_actuators firstObject];
  v11 = [v10 type] == 0;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62___GCHapticClientProxy_HapticServer__queryCapabilities_reply___block_invoke;
  v14[3] = &unk_1E841B2E8;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  v17 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v14];
  v7[2](v7, v12, 0);
}

- (void)allocateClientResources:(id)a3
{
  v4 = a3;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) allocateClientResources:];
  }

  v9 = xpc_null_create();
  v8 = 5376;
  v5 = HapticSharedMemory::allocate(&self->_sharedMemory, &v9, &v8);
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.GameController.gamecontrollerd.haptics" code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v4[2](v4, v9, v8, v6);

  v7 = v9;
  v9 = 0;
}

- (void)releaseClientResources
{
  if (gc_isInternalBuild())
  {
    [(_GCHapticClientProxy(HapticServer) *)self releaseClientResources];
  }

  (*(self->_sharedMemory._vptr$SharableMemoryBase + 2))(&self->_sharedMemory);
}

- (void)getHapticLatency:(id)a3
{
  v3 = a3;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) getHapticLatency:];
  }

  v3[2](v3, 0, 15.0);
}

- (void)setPlayerBehavior:(unint64_t)a3 reply:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) setPlayerBehavior:reply:];
  }

  v7 = v4 & 0x40;
  if ([(_GCHapticClientProxy *)self isMutedForReason:0]!= v7 >> 6)
  {
    if (gc_isInternalBuild())
    {
      v9 = getGCHapticsLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(_GCHapticClientProxy *)self identifier];
        v11 = @"Unmute";
        if (v7)
        {
          v11 = @"Mute";
        }

        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v10;
        v12 = v10;
        _os_log_impl(&dword_1D2CD5000, v9, OS_LOG_TYPE_INFO, "%@ haptics for client %@", &v13, 0x16u);
      }
    }

    [(_GCHapticClientProxy *)self setMute:v7 != 0 forReason:0];
  }

  v6[2](v6, 0);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)teardownAndReleaseChannels
{
  v3 = +[_GCHapticServerManager sharedInstance];
  v4 = [v3 runloopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke;
  block[3] = &unk_1E841A280;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)releaseChannels
{
  v3 = +[_GCHapticServerManager sharedInstance];
  v4 = [v3 runloopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke;
  block[3] = &unk_1E841A280;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)requestChannels:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = +[_GCHapticServerManager sharedInstance];
  v9 = [v8 runloopQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke;
  v11[3] = &unk_1E841B310;
  v13 = a3;
  v14 = a2;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

- (void)removeChannel:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[_GCHapticServerManager sharedInstance];
  v8 = [v7 runloopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke;
  block[3] = &unk_1E841B338;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)setChannelEventBehavior:(unint64_t)a3 behavior:(unint64_t)a4 reply:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (gc_isInternalBuild())
  {
    v15 = getGCHapticsLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      clientID = self->_clientID;
      v23 = 134218496;
      v24 = clientID;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&dword_1D2CD5000, v15, OS_LOG_TYPE_DEFAULT, "HapticClient %lu - setChannelEventBehavior %lu, behavior %lu", &v23, 0x20u);
    }
  }

  hapticPlayers = self->_hapticPlayers;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)hapticPlayers objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = a4 & 2;
    if ([v12 isMutedForReason:0] != v13 >> 1)
    {
      if (gc_isInternalBuild())
      {
        v19 = getGCHapticsLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v12 identifier];
          v21 = v20;
          v22 = @"Unmute";
          if (v13)
          {
            v22 = @"Mute";
          }

          v23 = 138412546;
          v24 = v22;
          v25 = 2112;
          v26 = v20;
          _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_INFO, "%@ haptics for player %@", &v23, 0x16u);
        }
      }

      [v12 setMute:v13 != 0 forReason:0];
    }

    v9[2](v9, 0);
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"GCHapticClientProxy.mm" lineNumber:618 description:@"Attempting to setChannelEventBehavior for unbound channel!"];

    v18 = NSErrorFromOSStatus(-4804);
    (v9)[2](v9, v18);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticEvent:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadHapticEvent:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v6[2](v6, -1, v7);
}

- (void)loadHapticSequenceFromData:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadHapticSequenceFromData:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v6[2](v6, -1, -1, v7, -1.0);
}

- (void)loadHapticSequenceFromEvents:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadHapticSequenceFromEvents:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v6[2](v6, -1, -1, v7, -1.0);
}

- (void)loadVibePattern:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadVibePattern:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v6[2](v6, -1, v7);
}

- (void)setSequenceEventBehavior:(unint64_t)a3 behavior:(unint64_t)a4 channelIndex:(unint64_t)a5 reply:(id)a6
{
  v6 = a6;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) setSequenceEventBehavior:behavior:channelIndex:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v6[2](v6, v7);
}

- (void)createCustomAudioEvent:(id)a3 format:(id)a4 frames:(unint64_t)a5 options:(id)a6 reply:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (gc_isInternalBuild())
  {
    v18 = getGCHapticsLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      clientID = self->_clientID;
      v20 = 134219010;
      v21 = clientID;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2048;
      v27 = a5;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_DEFAULT, "HapticClient %lu - createCustomAudioEvent %@ format %@, frames %lu, options %@", &v20, 0x34u);
    }
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v15[2](v15, -1, v16);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)copyCustomAudioEvent:(unint64_t)a3 options:(id)a4 reply:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (gc_isInternalBuild())
  {
    v12 = getGCHapticsLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      clientID = self->_clientID;
      v14 = 134218498;
      v15 = clientID;
      v16 = 2048;
      v17 = a3;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1D2CD5000, v12, OS_LOG_TYPE_DEFAULT, "HapticClient %lu - copyCustomAudioEvent %lu, options %@", &v14, 0x20u);
    }
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v9[2](v9, -1, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)referenceCustomAudioEvent:(unint64_t)a3 reply:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) referenceCustomAudioEvent:reply:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v4[2](v4, v5);
}

- (void)releaseCustomAudioEvent:(unint64_t)a3 reply:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) releaseCustomAudioEvent:reply:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v4[2](v4, v5);
}

- (void)removeCustomAudioEvent:(unint64_t)a3 reply:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) removeCustomAudioEvent:reply:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v4[2](v4, v5);
}

- (void)prepareHapticSequence:(unint64_t)a3 reply:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) prepareHapticSequence:reply:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  v4[2](v4, v5);
}

- (void)detachSequence:(unint64_t)a3
{
  if (gc_isInternalBuild())
  {
    [_GCHapticClientProxy(HapticServer) detachSequence:?];
  }
}

- (void)prewarm:(id)a3
{
  v3 = a3;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) prewarm:];
  }

  v3[2](v3, 0);
}

- (void)stopPrewarm
{
  if (gc_isInternalBuild())
  {
    [(_GCHapticClientProxy(HapticServer) *)self stopPrewarm];
  }
}

- (void)startRunning:(id)a3
{
  v4 = a3;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) startRunning:];
  }

  self->_running = 1;
  v4[2](v4, 0);
}

- (void)stopRunning
{
  if (gc_isInternalBuild())
  {
    [(_GCHapticClientProxy(HapticServer) *)self stopRunning];
  }

  *&self->_running = 0;
}

- (void)stopRunning:(id)a3
{
  v4 = a3;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) stopRunning:];
  }

  *&self->_running = 256;
  v4[2](v4, 0);
  self->_stopping = 0;
}

- (void)debugExpectNotifyOnFinishAfter:(double)a3 reply:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) debugExpectNotifyOnFinishAfter:reply:];
  }

  v4[2](v4);
}

- (void)_initWithConnection:server:clientID:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBundleIdentifier:(unsigned __int8 *)a3 .cold.1(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_6_4();
  v5 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v6))
  {
    v7 = *a3;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientOnStopWithReason:error:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v2))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientCompletedWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v2))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setComplete:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = getGCHapticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end