@interface AXRDeviceDiscoveryManager
+ (id)sharedInstance;
- (id)_init;
- (id)cachedDiscoveredDevices;
- (id)mineDevices;
- (unint64_t)_indexOfDeviceWithEffectiveIdentifier:(id)a3;
- (void)_discoveredDevicesChanged;
- (void)_enumerateObservers:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation AXRDeviceDiscoveryManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXRDeviceDiscoveryManager sharedInstance];
  }

  v3 = sharedInstance__Manager;

  return v3;
}

uint64_t __43__AXRDeviceDiscoveryManager_sharedInstance__block_invoke()
{
  sharedInstance__Manager = [[AXRDeviceDiscoveryManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)cachedDiscoveredDevices
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __52__AXRDeviceDiscoveryManager_cachedDiscoveredDevices__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) discoveredDevices];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_enumerateObservers:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v5 = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = AXRDeviceDiscoveryManager;
  v2 = [(AXRDeviceDiscoveryManager *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.AXRemoteServices.DiscoveryDeviceQueue", v4);
    deviceQueue = v2->_deviceQueue;
    v2->_deviceQueue = v5;

    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v7;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.accessibility.switchcontrol"];
    [(AXRDeviceDiscoveryManager *)v2 setService:v9];

    v10 = [(AXRDeviceDiscoveryManager *)v2 mineDevices];
    v11 = objc_opt_new();
    [(AXRDeviceDiscoveryManager *)v2 setDiscoveredDevices:v11];

    [(AXRDeviceDiscoveryManager *)v2 setDevicesLock:0];
    v12 = objc_alloc_init(MEMORY[0x277D44160]);
    [(AXRDeviceDiscoveryManager *)v2 setCompanionLinkClient:v12];

    v13 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v13 setAppID:@"com.apple.AXRemoteServices.DeviceDiscoveryManager"];

    v14 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v14 setControlFlags:0x200000002];

    v15 = v2->_deviceQueue;
    v16 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v16 setDispatchQueue:v15];

    objc_initWeak(&location, v2);
    v17 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v17 setDisconnectHandler:&__block_literal_global_14];

    v18 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v18 setInterruptionHandler:&__block_literal_global_17];

    v19 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v19 setInvalidationHandler:&__block_literal_global_20];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __34__AXRDeviceDiscoveryManager__init__block_invoke_21;
    v26[3] = &unk_2786656F8;
    objc_copyWeak(&v27, &location);
    v20 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v20 setDeviceFoundHandler:v26];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __34__AXRDeviceDiscoveryManager__init__block_invoke_2;
    v24[3] = &unk_2786656F8;
    objc_copyWeak(&v25, &location);
    v21 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v21 setDeviceLostHandler:v24];

    v22 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [v22 activateWithCompletion:&__block_literal_global_35];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke()
{
  v0 = ax_remote_connection_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_22952F000, v0, OS_LOG_TYPE_INFO, "discovery companion link disconnected", v1, 2u);
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_15()
{
  v0 = ax_remote_connection_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_22952F000, v0, OS_LOG_TYPE_INFO, "discovery companion link interrupted", v1, 2u);
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_18()
{
  v0 = ax_remote_connection_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_22952F000, v0, OS_LOG_TYPE_INFO, "discovery companion link invalidated", v1, 2u);
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_21(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sourceVersion];
  v5 = ax_remote_connection_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 proximity];
    if (v6 > 19)
    {
      if (v6 == 20)
      {
        v7 = "Near";
        goto LABEL_12;
      }

      if (v6 == 30)
      {
        v7 = "Far";
        goto LABEL_12;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = "Unknown";
        goto LABEL_12;
      }

      if (v6 == 10)
      {
        v7 = "Immed";
LABEL_12:
        *buf = 138412802;
        v49 = v3;
        v50 = 2112;
        v51 = v4;
        v52 = 2080;
        v53 = v7;
        _os_log_impl(&dword_22952F000, v5, OS_LOG_TYPE_INFO, "found device: %@ (version: %@), proximity: %s", buf, 0x20u);
        goto LABEL_13;
      }
    }

    v7 = "?";
    goto LABEL_12;
  }

LABEL_13:

  if (!v4)
  {
    v8 = _os_feature_enabled_impl();
    v9 = ax_remote_connection_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (!v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_22952F000, v9, OS_LOG_TYPE_INFO, "No source version!", buf, 2u);
      }

      goto LABEL_61;
    }

    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_22952F000, v9, OS_LOG_TYPE_INFO, "Ignoring source version", buf, 2u);
    }
  }

  v9 = [v4 componentsSeparatedByString:@"."];
  v11 = [v9 count];
  if (v11 < 1)
  {
    v14 = 0.0;
  }

  else
  {
    v12 = v11;
    v13 = [v9 objectAtIndexedSubscript:0];
    v14 = (10000 * [v13 integerValue]);

    if (v12 != 1)
    {
      v15 = [v9 objectAtIndexedSubscript:1];
      v16 = (fmax([v15 integerValue], 99.0) * 100.0 + v14);

      if (v12 > 2)
      {
        v17 = [v9 objectAtIndexedSubscript:2];
        v16 = (fmax([v17 integerValue], 99.0) + v16);
      }

      goto LABEL_24;
    }
  }

  v16 = v14;
LABEL_24:
  if (v16 <= 3999999)
  {
    v18 = _os_feature_enabled_impl();
    WeakRetained = ax_remote_connection_log();
    v20 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO);
    if (!v18)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_22952F000, WeakRetained, OS_LOG_TYPE_INFO, "skipping older source version", buf, 2u);
      }

      goto LABEL_60;
    }

    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_22952F000, WeakRetained, OS_LOG_TYPE_INFO, "Ignoring rapport version", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = [WeakRetained mineDevices];
  v22 = [v21 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v22)
  {
    v30 = v21;
    goto LABEL_59;
  }

  v23 = v22;
  v39 = v9;
  v40 = v4;
  v24 = *v44;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v44 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v43 + 1) + 8 * i);
      v27 = [v3 idsDeviceIdentifier];
      v28 = [v26 uniqueIDOverride];
      v29 = [v27 isEqualToString:v28];

      if (v29)
      {
        v30 = v26;

        if (!v30)
        {
          v9 = v39;
          v4 = v40;
          goto LABEL_60;
        }

        v31 = [v30 deviceType];
        v32 = v31 > 8 || ((1 << v31) & 0x1E3) == 0;
        v9 = v39;
        if (!v32)
        {
          v33 = _os_feature_enabled_impl();
          v34 = ax_remote_connection_log();
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
          if (!v33)
          {
            if (v35)
            {
              *buf = 0;
              _os_log_impl(&dword_22952F000, v34, OS_LOG_TYPE_INFO, "skipping unsupported device type", buf, 2u);
            }

            goto LABEL_58;
          }

          if (v35)
          {
            *buf = 0;
            _os_log_impl(&dword_22952F000, v34, OS_LOG_TYPE_INFO, "Ignoring unsupported device type", buf, 2u);
          }
        }

        v34 = [v3 effectiveIdentifier];
        v36 = [WeakRetained _indexOfDeviceWithEffectiveIdentifier:v34];
        v37 = [[AXRemoteDevice alloc] initWithDevice:v3];
        if (v36 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = WeakRetained;
          v42 = v37;
          AX_PERFORM_WITH_LOCK();
          [v41 _discoveredDevicesChanged];
        }

LABEL_58:
        v4 = v40;

        goto LABEL_59;
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

  v30 = v21;
  v9 = v39;
  v4 = v40;
LABEL_59:

LABEL_60:
LABEL_61:

  v38 = *MEMORY[0x277D85DE8];
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveredDevices];
  [v2 addObject:*(a1 + 40)];
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "lost device: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 effectiveIdentifier];
  if ([WeakRetained _indexOfDeviceWithEffectiveIdentifier:v6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = WeakRetained;
    AX_PERFORM_WITH_LOCK();
    [v9 _discoveredDevicesChanged];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveredDevices];
  [v2 removeObjectAtIndex:*(a1 + 40)];
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_2_32(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ax_remote_connection_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22952F000, v3, OS_LOG_TYPE_INFO, "activated discovery companion link with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)mineDevices
{
  v2 = [(AXRDeviceDiscoveryManager *)self service];
  v3 = [v2 linkedDevicesWithRelationship:1];

  return v3;
}

- (unint64_t)_indexOfDeviceWithEffectiveIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AXRDeviceDiscoveryManager *)self discoveredDevices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__AXRDeviceDiscoveryManager__indexOfDeviceWithEffectiveIdentifier___block_invoke;
  v9[3] = &unk_278665768;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __67__AXRDeviceDiscoveryManager__indexOfDeviceWithEffectiveIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_discoveredDevicesChanged
{
  v3 = [(AXRDeviceDiscoveryManager *)self cachedDiscoveredDevices];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__AXRDeviceDiscoveryManager__discoveredDevicesChanged__block_invoke;
  v5[3] = &unk_2786656D0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __54__AXRDeviceDiscoveryManager__discoveredDevicesChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AXRDeviceDiscoveryManager__discoveredDevicesChanged__block_invoke_2;
  v2[3] = &unk_278665790;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _enumerateObservers:v2];
}

@end