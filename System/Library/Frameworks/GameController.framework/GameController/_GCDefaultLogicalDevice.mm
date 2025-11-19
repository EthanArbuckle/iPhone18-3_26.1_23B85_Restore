@interface _GCDefaultLogicalDevice
- (BOOL)_addClient:(id)a3;
- (NSSet)components;
- (NSSet)underlyingDevices;
- (NSString)debugDescription;
- (_GCDefaultLogicalDevice)init;
- (_GCDefaultLogicalDevice)initWithPhysicalDevice:(id)a3 configuration:(id)a4 manager:(id)a5;
- (_GCDefaultLogicalDeviceDelegate)delegate;
- (_GCDeviceManager)manager;
- (id)_makeControllerGamepadEventSource;
- (id)hapticDriver;
- (id)makeControllerForClient:(id)a3;
- (id)makeSyntheticController;
- (id)persistentIdentifierForSettings;
- (uint64_t)updateAdaptiveTriggersForActiveClient;
- (void)_removeClient:(id)a3;
- (void)activateLogical;
- (void)deactivateLogical;
- (void)dealloc;
- (void)lightXPCProxyServerEndpoint:(id)a3 didReceiveLightChange:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerIndicatorXPCProxyServerEndpoint:(id)a3 didReceivePlayerIndexChange:(int64_t)a4;
- (void)setActiveApplicationPID:(int)a3;
- (void)settingsDidChange;
- (void)startTrackingSessionForClient:(void *)a1;
- (void)stopTrackingSessionForClient:(void *)a1;
- (void)stopTrackingSessionsForAllClients;
- (void)systemGestureXPCProxyServerEndpoint:(void *)a3 didSetSystemGestureStateForInput:(int)a4 enabled:;
- (void)updateAdaptiveTriggersForActiveClient;
- (void)updateAnalyticsForActiveClient;
- (void)updateLightForActiveClient;
- (void)updateSystemGestureStateForActiveClient;
- (void)updateSystemGestureStateForSettings;
@end

@implementation _GCDefaultLogicalDevice

- (_GCDefaultLogicalDevice)initWithPhysicalDevice:(id)a3 configuration:(id)a4 manager:(id)a5
{
  v178 = *MEMORY[0x1E69E9840];
  v124 = a3;
  v9 = a4;
  v10 = a5;
  v168.receiver = self;
  v168.super_class = _GCDefaultLogicalDevice;
  v11 = [(_GCDefaultLogicalDevice *)&v168 init];

  if (v11)
  {
    v12 = [v9 deviceIdentifier];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_underlyingDevice, a3);
    objc_storeStrong(&v11->_configuration, a4);
    objc_storeWeak(&v11->_manager, v10);
    v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clients = v11->_clients;
    v11->_clients = v14;

    v16 = objc_opt_new();
    pidToAnalytics = v11->_pidToAnalytics;
    v11->_pidToAnalytics = v16;

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v18 = [(_GCDefaultLogicalDevice *)v11 components];
    v19 = [v18 countByEnumeratingWithState:&v164 objects:v177 count:16];
    if (v19)
    {
      v20 = *v165;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v165 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v164 + 1) + 8 * i);
          if ([v22 conformsToProtocol:&unk_1F4E9B3C8])
          {
            objc_storeStrong(&v11->_devicePlayerIndicatorComponent, v22);
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v164 objects:v177 count:16];
      }

      while (v19);
    }

    if (v11->_devicePlayerIndicatorComponent)
    {
      v11->_indicatedPlayerIndex = -1;
      v23 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientPlayerIndicatorEndpoints = v11->_clientPlayerIndicatorEndpoints;
      v11->_clientPlayerIndicatorEndpoints = v23;
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v25 = [(_GCDefaultLogicalDevice *)v11 components];
    v26 = [v25 countByEnumeratingWithState:&v160 objects:v176 count:16];
    if (v26)
    {
      v27 = *v161;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v161 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v160 + 1) + 8 * j);
          if ([v29 conformsToProtocol:&unk_1F4E9FF28])
          {
            objc_storeStrong(&v11->_deviceLightComponent, v29);
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v160 objects:v176 count:16];
      }

      while (v26);
    }

    if (v11->_deviceLightComponent)
    {
      v30 = dispatch_semaphore_create(0);
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 3221225472;
      v158[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke;
      v158[3] = &unk_1E8418C28;
      v31 = v30;
      v159 = v31;
      [(_GCDeviceLightComponent *)v11->_deviceLightComponent setDeviceLightServiceConnectedHandler:v158];
      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
      }

      v32 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v31, v32);
      v33 = [(_GCDeviceLightComponent *)v11->_deviceLightComponent light];
      p_light = &v11->_light;
      light = v11->_light;
      v11->_light = v33;

      if (!v11->_light)
      {
        if (gc_isInternalBuild())
        {
          [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
        }

        v36 = [GCDeviceLight alloc];
        v37 = [GCColor alloc];
        LODWORD(v38) = 1056997505;
        LODWORD(v39) = 1040220289;
        LODWORD(v40) = 1017159841;
        v41 = [(GCColor *)v37 initWithRed:v38 green:v39 blue:v40];
        v42 = [(GCDeviceLight *)v36 initWithColor:v41];
        v43 = *p_light;
        *p_light = v42;
      }

      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      v44 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientLightEndpoints = v11->_clientLightEndpoints;
      v11->_clientLightEndpoints = v44;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v46 = [(_GCDefaultLogicalDevice *)v11 components];
    v47 = [v46 countByEnumeratingWithState:&v154 objects:v175 count:16];
    if (v47)
    {
      v48 = *v155;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v155 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = *(*(&v154 + 1) + 8 * k);
          if ([v50 conformsToProtocol:&unk_1F4E9FE68])
          {
            objc_storeStrong(&v11->_deviceAdaptiveTriggersComponent, v50);
          }
        }

        v47 = [v46 countByEnumeratingWithState:&v154 objects:v175 count:16];
      }

      while (v47);
    }

    if (v11->_deviceAdaptiveTriggersComponent)
    {
      v51 = dispatch_semaphore_create(0);
      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 3221225472;
      v152[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_181;
      v152[3] = &unk_1E8418C28;
      v52 = v51;
      v153 = v52;
      [(_GCDeviceAdaptiveTriggersComponent *)v11->_deviceAdaptiveTriggersComponent setDeviceAdaptiveTriggersServiceConnectedHandler:v152];
      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
      }

      v53 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v52, v53);
      v54 = [(_GCDeviceAdaptiveTriggersComponent *)v11->_deviceAdaptiveTriggersComponent triggerStatuses];
      p_adaptiveTriggerStatuses = &v11->_adaptiveTriggerStatuses;
      adaptiveTriggerStatuses = v11->_adaptiveTriggerStatuses;
      v11->_adaptiveTriggerStatuses = v54;

      if (!v11->_adaptiveTriggerStatuses)
      {
        if (gc_isInternalBuild())
        {
          [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
        }

        v57 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:0 armPosition:0 mode:0];
        v174[0] = v57;
        v58 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:0 armPosition:0 mode:0];
        v174[1] = v58;
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:2];
        v60 = *p_adaptiveTriggerStatuses;
        *p_adaptiveTriggerStatuses = v59;
      }

      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      v61 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientAdaptiveTriggersEndpoints = v11->_clientAdaptiveTriggersEndpoints;
      v11->_clientAdaptiveTriggersEndpoints = v61;

      v63 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      pidToAdaptiveTriggersComponent = v11->_pidToAdaptiveTriggersComponent;
      v11->_pidToAdaptiveTriggersComponent = v63;

      objc_initWeak(location, v11);
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_184;
      v150[3] = &unk_1E841A5D8;
      objc_copyWeak(&v151, location);
      [(_GCDeviceAdaptiveTriggersComponent *)v11->_deviceAdaptiveTriggersComponent setDeviceAdaptiveTriggersComponentStatusUpdatedHandler:v150];
      objc_destroyWeak(&v151);
      objc_destroyWeak(location);
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v65 = [(_GCDefaultLogicalDevice *)v11 components];
    v66 = [v65 countByEnumeratingWithState:&v146 objects:v173 count:16];
    if (v66)
    {
      v67 = *v147;
      do
      {
        for (m = 0; m != v66; ++m)
        {
          if (*v147 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v146 + 1) + 8 * m);
          if ([v69 conformsToProtocol:&unk_1F4EA0008])
          {
            objc_storeStrong(&v11->_deviceMotionComponent, v69);
          }
        }

        v66 = [v65 countByEnumeratingWithState:&v146 objects:v173 count:16];
      }

      while (v66);
    }

    if (v11->_deviceMotionComponent)
    {
      v70 = dispatch_semaphore_create(0);
      v144[0] = MEMORY[0x1E69E9820];
      v144[1] = 3221225472;
      v144[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_2;
      v144[3] = &unk_1E8418C28;
      v71 = v70;
      v145 = v71;
      [(_GCDeviceMotionComponent *)v11->_deviceMotionComponent setDeviceMotionServiceConnectedHandler:v144];
      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
      }

      v72 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v71, v72);
      v11->_motionSensorsActive = 0;
      [(_GCDeviceMotionComponent *)v11->_deviceMotionComponent setSensorsActive:0];
      v73 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientMotionEndpoints = v11->_clientMotionEndpoints;
      v11->_clientMotionEndpoints = v73;
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v75 = [(_GCDefaultLogicalDevice *)v11 components];
    v76 = [v75 countByEnumeratingWithState:&v140 objects:v172 count:16];
    if (v76)
    {
      v77 = *v141;
      do
      {
        for (n = 0; n != v76; ++n)
        {
          if (*v141 != v77)
          {
            objc_enumerationMutation(v75);
          }

          v79 = *(*(&v140 + 1) + 8 * n);
          if ([v79 conformsToProtocol:&unk_1F4E9B500])
          {
            objc_storeStrong(&v11->_deviceBatteryComponent, v79);
          }
        }

        v76 = [v75 countByEnumeratingWithState:&v140 objects:v172 count:16];
      }

      while (v76);
    }

    if (v11->_deviceBatteryComponent)
    {
      v80 = dispatch_semaphore_create(0);
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_212;
      v138[3] = &unk_1E8418C28;
      v81 = v80;
      v139 = v81;
      [(_GCDeviceBatteryComponent *)v11->_deviceBatteryComponent setDeviceBatteryServiceConnectedHandler:v138];
      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
      }

      v82 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v81, v82);
      v83 = [(_GCDeviceBatteryComponent *)v11->_deviceBatteryComponent battery];
      p_battery = &v11->_battery;
      battery = v11->_battery;
      v11->_battery = v83;

      if (!v11->_battery)
      {
        if (gc_isInternalBuild())
        {
          [_GCDefaultLogicalDevice initWithPhysicalDevice:configuration:manager:];
        }

        v86 = [[GCDeviceBattery alloc] initWithLevel:-1 batteryState:0.0];
        v87 = *p_battery;
        *p_battery = v86;
      }

      if (gc_isInternalBuild())
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      v88 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientBatteryEndpoints = v11->_clientBatteryEndpoints;
      v11->_clientBatteryEndpoints = v88;

      objc_initWeak(location, v11);
      v136[0] = MEMORY[0x1E69E9820];
      v136[1] = 3221225472;
      v136[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_214;
      v136[3] = &unk_1E841A470;
      objc_copyWeak(&v137, location);
      [(_GCDeviceBatteryComponent *)v11->_deviceBatteryComponent setDeviceBatteryComponentBatteryUpdatedHandler:v136];
      objc_destroyWeak(&v137);
      objc_destroyWeak(location);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v90 = [(_GCDefaultLogicalDevice *)v11 components];
    v91 = [v90 countByEnumeratingWithState:&v132 objects:v171 count:16];
    if (v91)
    {
      v92 = *v133;
      do
      {
        for (ii = 0; ii != v91; ++ii)
        {
          if (*v133 != v92)
          {
            objc_enumerationMutation(v90);
          }

          v94 = *(*(&v132 + 1) + 8 * ii);
          if ([v94 conformsToProtocol:&unk_1F4E9FB90])
          {
            objc_storeStrong(&v11->_deviceSystemGestureComponent, v94);
          }
        }

        v91 = [v90 countByEnumeratingWithState:&v132 objects:v171 count:16];
      }

      while (v91);
    }

    if (v11->_deviceSystemGestureComponent)
    {
      objc_initWeak(&from, v11);
      v95 = objc_alloc_init(GCSystemGesturesState);
      activeSystemGesturesState = v11->_activeSystemGesturesState;
      v11->_activeSystemGesturesState = v95;

      v97 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientSystemGestureEndpoints = v11->_clientSystemGestureEndpoints;
      v11->_clientSystemGestureEndpoints = v97;

      v99 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientToSystemGesturesState = v11->_clientToSystemGesturesState;
      v11->_clientToSystemGesturesState = v99;

      v101 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientToSystemButtonResponderAssertion = v11->_clientToSystemButtonResponderAssertion;
      v11->_clientToSystemButtonResponderAssertion = v101;

      v103 = GCLookupService();
      userDefaults = v11->_userDefaults;
      v11->_userDefaults = v103;

      objc_opt_class();
      v105 = GCLookupService();
      systemButtonServer = v11->_systemButtonServer;
      v11->_systemButtonServer = v105;

      if (!v11->_userDefaults)
      {
        v122 = _gc_log_logical_device();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v123 = [(_GCDefaultLogicalDevice *)v11 identifier];
          [_GCDefaultLogicalDevice initWithPhysicalDevice:v123 configuration:location manager:v122];
        }
      }

      v129[0] = MEMORY[0x1E69E9820];
      v129[1] = 3221225472;
      v129[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228;
      v129[3] = &unk_1E841A628;
      objc_copyWeak(&v130, &from);
      [(_GCDeviceSystemGestureComponent *)v11->_deviceSystemGestureComponent setDeviceSystemGestureTriggeredHandler:v129];
      objc_destroyWeak(&v130);
      objc_destroyWeak(&from);
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v107 = [(_GCDefaultLogicalDevice *)v11 components];
    v108 = [v107 countByEnumeratingWithState:&v125 objects:v169 count:16];
    if (v108)
    {
      v109 = *v126;
      do
      {
        for (jj = 0; jj != v108; ++jj)
        {
          if (*v126 != v109)
          {
            objc_enumerationMutation(v107);
          }

          v111 = *(*(&v125 + 1) + 8 * jj);
          if ([v111 conformsToProtocol:&unk_1F4E9E828])
          {
            objc_storeWeak(&v11->_deviceSettingsComponent, v111);
          }
        }

        v108 = [v107 countByEnumeratingWithState:&v125 objects:v169 count:16];
      }

      while (v108);
    }

    WeakRetained = objc_loadWeakRetained(&v11->_deviceSettingsComponent);
    if (WeakRetained)
    {
      v113 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientSettingsEndpoints = v11->_clientSettingsEndpoints;
      v11->_clientSettingsEndpoints = v113;

      v115 = GCLookupService();
      settingsStore = v11->_settingsStore;
      v11->_settingsStore = v115;

      v117 = [(GCSSettingsStoreService *)v11->_settingsStore profiles];
      [v117 addObserver:v11 forKeyPath:@"values" options:5 context:0];

      v118 = [(GCSSettingsStoreService *)v11->_settingsStore games];
      [v118 addObserver:v11 forKeyPath:@"values" options:5 context:0];

      if (([(GCSSettingsStoreService *)v11->_settingsStore showGCPreferencesPane]& 1) == 0)
      {
        [(GCSSettingsStoreService *)v11->_settingsStore setShowGCPreferencesPane:1];
      }
    }
  }

  v119 = v11;

  v120 = *MEMORY[0x1E69E9840];
  return v119;
}

- (_GCDefaultLogicalDevice)init
{
  [(_GCDefaultLogicalDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'>", v5, self, self->_identifier];

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_systemButtonServer == v11 && [v10 isEqualToString:@"hasButtonThief"])
  {
LABEL_8:
    [(_GCDefaultLogicalDevice *)self updateSystemGestureStateForSettings];
    goto LABEL_14;
  }

  if (self->_userDefaults == v11 && [v10 isEqualToString:@"bluetoothPrefsMenuLongPressAction"])
  {
    v13 = _gc_log_logical_device();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(_GCDefaultLogicalDevice *)self identifier];
      v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      *buf = 138412546;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Shortcuts Enabled changed: %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if ([v10 isEqualToString:@"values"])
  {
    [(_GCDefaultLogicalDevice *)self settingsDidChange];
  }

  else if ([v10 isEqualToString:@"deferringTarget"])
  {
    v16 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
    -[_GCDefaultLogicalDevice setActiveApplicationPID:](self, "setActiveApplicationPID:", [v16 intValue]);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _GCDefaultLogicalDevice;
    [(_GCDefaultLogicalDevice *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updateSystemGestureStateForSettings
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEFAULT, "[%@] Does not support system button.", buf, 0xCu);
}

- (void)dealloc
{
  settingsStore = self->_settingsStore;
  if (settingsStore)
  {
    v4 = [(GCSSettingsStoreService *)settingsStore profiles];
    [v4 removeObserver:self forKeyPath:@"values" context:0];

    v5 = [(GCSSettingsStoreService *)self->_settingsStore games];
    [v5 removeObserver:self forKeyPath:@"values" context:0];
  }

  v6.receiver = self;
  v6.super_class = _GCDefaultLogicalDevice;
  [(_GCDefaultLogicalDevice *)&v6 dealloc];
}

- (void)playerIndicatorXPCProxyServerEndpoint:(id)a3 didReceivePlayerIndexChange:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  self->_indicatedPlayerIndex = a4;
  [(_GCDevicePlayerIndexIndicatorComponent *)self->_devicePlayerIndicatorComponent setIndicatedPlayerIndex:a4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMapTable *)self->_clientPlayerIndicatorEndpoints objectEnumerator];
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

        [*(*(&v12 + 1) + 8 * v10++) setPlayerIndex:a4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)lightXPCProxyServerEndpoint:(id)a3 didReceiveLightChange:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_storeStrong(&self->_light, a4);
  self->_lightClientOverrideEnabled = 1;
  if (!self->_lightUserOverrideEnabled)
  {
    [(_GCDeviceLightComponent *)self->_deviceLightComponent setLight:v6];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSMapTable *)self->_clientLightEndpoints objectEnumerator];
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

        [*(*(&v13 + 1) + 8 * v11++) setLight:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)systemGestureXPCProxyServerEndpoint:(void *)a3 didSetSystemGestureStateForInput:(int)a4 enabled:
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v41 = a3;
  if (a1)
  {
    if (gc_isInternalBuild())
    {
      [_GCDefaultLogicalDevice systemGestureXPCProxyServerEndpoint:didSetSystemGestureStateForInput:enabled:];
    }

    context = objc_autoreleasePoolPush();
    v7 = a1;
    objc_sync_enter(v7);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = [v7[29] keyEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v9)
    {
      v10 = *v43;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          v13 = [v7[29] objectForKey:v12];
          v14 = [v13 isEqual:v6];

          if (v14)
          {
            v9 = v12;
            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v7);
    if (!v9)
    {
      goto LABEL_29;
    }

    v15 = v7;
    objc_sync_enter(v15);
    v16 = [v15[27] objectForKey:v9];
    if (!v16)
    {
      v17 = [GCSystemGesturesState alloc];
      v18 = objc_opt_new();
      v19 = objc_opt_new();
      v20 = [v9 bundleIdentifier];
      v16 = [(GCSystemGesturesState *)v17 initWithEnabledSystemGestures:v18 disabledSystemGestures:v19 bundleIdentifier:v20];
    }

    v21 = [(GCSystemGesturesState *)v16 disabledSystemGestureInputNames];
    v22 = [v21 mutableCopy];

    v23 = [(GCSystemGesturesState *)v16 enabledSystemGestureInputNames];
    v24 = [v23 mutableCopy];

    if (a4)
    {
      [v24 addObject:v41];
      [v22 removeObject:v41];
    }

    else
    {
      [v24 removeObject:v41];
      [v22 addObject:v41];
    }

    v25 = [GCSystemGesturesState alloc];
    v26 = [v9 bundleIdentifier];
    v27 = [(GCSystemGesturesState *)v25 initWithEnabledSystemGestures:v24 disabledSystemGestures:v22 bundleIdentifier:v26];

    [v15[27] setObject:v27 forKey:v9];
    v28 = [(GCSystemGesturesState *)v27 disabledSystemGestureInputNames];
    if ([v28 containsObject:@"Button Home"])
    {
      v29 = [v15[28] objectForKey:v9];
      v30 = v29 == 0;

      if (v30)
      {
        objc_opt_class();
        v31 = GCLookupService();
        v32 = [v9 bundleIdentifier];
        v33 = [v31 activeProcessRespondingToSystemButton:v32];

        [v15[28] setObject:v33 forKey:v9];
LABEL_26:

        objc_sync_exit(v15);
        v37 = *(v15 + 67);
        if (v37 == [v9 processIdentifier])
        {
          [(_GCDefaultLogicalDevice *)v15 updateSystemGestureStateForActiveClient];
        }

LABEL_29:
        objc_autoreleasePoolPop(context);
        goto LABEL_30;
      }
    }

    else
    {
    }

    v34 = [(GCSystemGesturesState *)v27 disabledSystemGestureInputNames];
    v35 = [v34 containsObject:@"Button Home"];

    if ((v35 & 1) == 0)
    {
      v36 = [v15[28] objectForKey:v9];
      [v36 invalidate];

      [v15[28] removeObjectForKey:v9];
    }

    goto LABEL_26;
  }

LABEL_30:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)updateSystemGestureStateForActiveClient
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = *(v1 + 67);
    obj = v1;
    v3 = [v1[26] disabledSystemGestureInputNames];
    v22 = [v3 containsObject:@"Button Home"];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [v1[27] keyEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v36 count:16];
    location = v1 + 26;
    v6 = 0;
    if (v5)
    {
      v7 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          if ([v9 processIdentifier] == v2)
          {
            v10 = [obj[27] objectForKey:v9];
            v11 = [v10 disabledSystemGestureInputNames];
            v12 = [v11 containsObject:@"Button Home"];

            v6 |= v12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v5);
    }

    objc_sync_exit(obj);
    if ((v22 ^ v6))
    {
      v13 = _gc_log_logical_device();
      v14 = v6 & 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [obj identifier];
        *buf = 138413058;
        v29 = v15;
        v30 = 1024;
        v31 = v2;
        v32 = 1024;
        v33 = v22;
        v34 = 1024;
        v35 = v6 & 1;
        _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Update active process (%i) wants HOME button %{BOOL}d -> %{BOOL}d", buf, 0x1Eu);
      }

      v16 = objc_opt_new();
      v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
      if (v14)
      {
        [v16 setDisabledSystemGestureInputNames:v17];
      }

      else
      {
        [v16 setEnabledSystemGestureInputNames:v17];
      }

      v18 = obj;
      objc_sync_enter(v18);
      objc_storeStrong(location, v16);
      objc_sync_exit(v18);

      v19 = v18[23];
      if (v19)
      {
        [v19 setForwardHomeButtonPress:v14];
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (NSSet)components
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
  v5 = [v4 components];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addObject:*(*(&v13 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v3 addObject:self];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSSet)underlyingDevices
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_underlyingDevice;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)activateLogical
{
  devicePlayerIndicatorComponent = self->_devicePlayerIndicatorComponent;
  if (devicePlayerIndicatorComponent)
  {
    self->_indicatedPlayerIndex = -1;
    [(_GCDevicePlayerIndexIndicatorComponent *)devicePlayerIndicatorComponent setIndicatedPlayerIndex:-1];
  }

  if (self->_deviceSystemGestureComponent)
  {
    [(GCSystemButtonServer *)self->_systemButtonServer addObserver:self forKeyPath:@"hasButtonThief" options:1 context:0];
    [(GCUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"bluetoothPrefsMenuLongPressAction" options:1 context:0];

    [(_GCDefaultLogicalDevice *)self updateSystemGestureStateForSettings];
  }
}

- (void)deactivateLogical
{
  v18 = *MEMORY[0x1E69E9840];
  [(_GCDefaultLogicalDevice *)self stopTrackingSessionsForAllClients];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_clientToSystemButtonResponderAssertion;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_clientToSystemButtonResponderAssertion objectForKey:*(*(&v13 + 1) + 8 * v7), v13];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_clientToSystemButtonResponderAssertion removeAllObjects];
  [self->_deviceSystemGestureButtonHandle invalidate];
  deviceSystemGestureButtonHandle = self->_deviceSystemGestureButtonHandle;
  self->_deviceSystemGestureButtonHandle = 0;

  systemButtonServer = self->_systemButtonServer;
  if (systemButtonServer)
  {
    [(GCSystemButtonServer *)systemButtonServer removeObserver:self forKeyPath:@"hasButtonThief"];
  }

  userDefaults = self->_userDefaults;
  if (userDefaults)
  {
    [(GCUserDefaults *)userDefaults removeObserver:self forKeyPath:@"bluetoothPrefsMenuLongPressAction"];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)stopTrackingSessionsForAllClients
{
  if (OUTLINED_FUNCTION_11(a1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)startTrackingSessionForClient:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [v3 bundleIdentifier];

    if (v5 && (v6 = v4[32], [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      v9 = [v4 delegate];
      v10 = objc_opt_respondsToSelector();

      [v4 delegate];
      if (v10)
        v11 = {;
        [v11 logicalDeviceControllerDetailedProductCategory:v4];
      }

      else
        v11 = {;
        [v11 logicalDeviceControllerProductCategory:v4];
      }
      v12 = ;

      v13 = [GCLogicalDeviceAnalytics alloc];
      v14 = +[_GCDaemonSettings instance];
      v15 = [v14 anonymizedIdentifierForControllerIdentifier:v4[34]];
      v16 = [v3 bundleIdentifier];
      v17 = [(GCLogicalDeviceAnalytics *)v13 initWithAnonymousIdentifier:v15 bundleIdentifier:v16 productCategory:v12];

      v18 = v4[32];
      v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      [v18 setObject:v17 forKeyedSubscript:v19];

      if (gc_isInternalBuild())
      {
        v20 = getGCAnalyticsLogger();
        [_GCDefaultLogicalDevice startTrackingSessionForClient:v20];
      }

      if (gc_isInternalBuild())
      {
        v21 = getGCAnalyticsLogger();
        [(_GCDefaultLogicalDevice *)v21 startTrackingSessionForClient:?];
      }

      objc_sync_exit(v4);
      [(_GCDefaultLogicalDevice *)v4 updateAnalyticsForActiveClient];
    }

    else
    {
      objc_sync_exit(v4);
    }
  }
}

- (void)updateAnalyticsForActiveClient
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[67];
  if (v2 == v1[66])
  {
    objc_sync_exit(v1);
    v9 = 0;
  }

  else
  {
    v3 = *(v1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v9 = [v3 objectForKeyedSubscript:v4];

    v5 = *(v1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v2];
    v7 = [v5 objectForKeyedSubscript:v6];

    v1[66] = v2;
    objc_sync_exit(v1);

    v8 = v9;
    if (v9)
    {
      [v9 pauseSession];
      v8 = v9;
    }

    if (!v7)
    {
      goto LABEL_9;
    }

    [v7 resumeSession];
    v1 = v7;
  }

  v8 = v9;
LABEL_9:
}

- (void)stopTrackingSessionForClient:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [v3 bundleIdentifier];

    if (v5 && (v6 = v4[32], [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = v4[32];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = v4[32];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      [v12 removeObjectForKey:v13];

      if (gc_isInternalBuild())
      {
        v14 = getGCAnalyticsLogger();
        [_GCDefaultLogicalDevice stopTrackingSessionForClient:v14];
      }

      if (gc_isInternalBuild())
      {
        v15 = getGCAnalyticsLogger();
        [(_GCDefaultLogicalDevice *)v15 stopTrackingSessionForClient:?];
      }

      [v11 flushSessionAndSendCAEvent];

      objc_sync_exit(v4);
      [(_GCDefaultLogicalDevice *)v4 updateAnalyticsForActiveClient];
    }

    else
    {
      objc_sync_exit(v4);
    }
  }
}

- (BOOL)_addClient:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_clients objectForKey:v4];

    if (v6)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      objc_initWeak(&location, v5);
      objc_initWeak(&from, v4);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __38___GCDefaultLogicalDevice__addClient___block_invoke;
      v17 = &unk_1E8419D00;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      v8 = [v4 addInvalidationHandler:&v14];
      v7 = v8 != 0;
      if (v8)
      {
        [(NSMapTable *)v5->_clients setObject:v8 forKey:v4, v14, v15, v16, v17];
        v9 = _gc_log_logical_device();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [(_GCDefaultLogicalDevice *)v5 identifier];
          [(_GCDefaultLogicalDevice *)v10 _addClient:v4, v22];
        }

        if ([(NSMapTable *)v5->_clients count]== 1)
        {
          v13 = +[_GCHIDEventDeliveryMonitor sharedInstance];
          [v13 addObserver:v5 forKeyPath:@"deferringTarget" options:5 context:0];
        }

        [(_GCDefaultLogicalDevice *)v5 startTrackingSessionForClient:v4];
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v5);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_removeClient:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [(NSMapTable *)v5->_clients objectForKey:v4];

    if (v6)
    {
      v7 = [(NSMapTable *)v5->_clientToSystemButtonResponderAssertion objectForKey:v4];
      [v7 invalidate];

      [(_GCDefaultLogicalDevice *)v5 stopTrackingSessionForClient:v4];
      [(NSMapTable *)v5->_clientPlayerIndicatorEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientLightEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientAdaptiveTriggersEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientMotionEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientBatteryEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientSettingsEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientSystemGestureEndpoints removeObjectForKey:v4];
      v6 = [(NSMapTable *)v5->_clients objectForKey:v4];
      [(NSMapTable *)v5->_clients removeObjectForKey:v4];
      pidToAdaptiveTriggersComponent = v5->_pidToAdaptiveTriggersComponent;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
      [(NSMapTable *)pidToAdaptiveTriggersComponent removeObjectForKey:v9];

      [(NSMapTable *)v5->_clientToSystemGesturesState removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientToSystemButtonResponderAssertion removeObjectForKey:v4];
      if (!v5->_clients)
      {
        v13 = +[_GCHIDEventDeliveryMonitor sharedInstance];
        [v13 removeObserver:v5 forKeyPath:@"deferringTarget" context:0];
      }

      v10 = _gc_log_logical_device();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(_GCDefaultLogicalDevice *)v5 identifier];
        [(_GCDefaultLogicalDevice *)v11 _removeClient:v4, v14];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v5);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setActiveApplicationPID:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _gc_log_logical_device();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(_GCDefaultLogicalDevice *)self identifier];
    activeApplicationPID = self->_activeApplicationPID;
    v9 = 138412802;
    v10 = v6;
    v11 = 1024;
    v12 = activeApplicationPID;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "[%@] setActiveApplicationPID - was %d now %d", &v9, 0x18u);
  }

  if (self->_activeApplicationPID != a3)
  {
    self->_activeApplicationPID = a3;
    [(_GCDefaultLogicalDevice *)self updateAnalyticsForActiveClient];
    [(_GCDefaultLogicalDevice *)&self->super.isa updateAdaptiveTriggersForActiveClient];
    [(_GCDefaultLogicalDevice *)&self->super.isa updateLightForActiveClient];
    [(_GCDefaultLogicalDevice *)self updateSystemGestureStateForActiveClient];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateAdaptiveTriggersForActiveClient
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 + 6;
    if (a1[6])
    {
      v2 = a1;
      objc_sync_enter(v2);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v3 = [v2[9] keyEnumerator];
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v4)
      {
        v5 = *v17;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v17 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(*(&v16 + 1) + 8 * i);
            if ([v7 processIdentifier] == *(v2 + 67))
            {
              v4 = v7;
              goto LABEL_13;
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      objc_sync_exit(v2);
      if (v4)
      {
        v8 = v2;
        objc_sync_enter(v8);
        v9 = v8[8];
        v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
        v11 = [v9 objectForKey:v10];
        v12 = [v11 copy];

        objc_sync_exit(v8);
        if ([v12 count])
        {
          v13 = 0;
          do
          {
            v14 = [v12 objectAtIndexedSubscript:v13];
            [*v1 setAdaptiveTriggersPayload:v14 forIndex:v13];

            ++v13;
          }

          while ([v12 count] > v13);
        }
      }

      else
      {
        [(_GCDefaultLogicalDevice *)v1 updateAdaptiveTriggersForActiveClient];
        v12 = v20;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateLightForActiveClient
{
  objc_sync_exit(a2);

  v7 = *(a2 + 160);
  v8 = [a2 persistentIdentifierForSettings];
  if (a1)
  {
    v9 = [a1 bundleIdentifier];
    v10 = [v7 profileForPersistentControllerIdentifier:v8 appBundleIdentifier:v9];
  }

  else
  {
    v10 = [v7 profileForPersistentControllerIdentifier:v8 appBundleIdentifier:0];
  }

  if ([v10 lightbarColor])
  {
    v11 = -[GCColor initWithColorPreset:]([GCColor alloc], "initWithColorPreset:", [v10 lightbarColor]);
    v12 = [[GCDeviceLight alloc] initWithColor:v11];
    [*a3 setLight:v12];

    *(a2 + 97) = 1;
  }

  else
  {
    *(a2 + 97) = 0;
    if (*(a2 + 96))
    {
      [*a3 setLight:*(a2 + 88)];
    }
  }
}

- (_GCDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (_GCDefaultLogicalDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)makeControllerForClient:(id)a3
{
  v122 = a2;
  v135[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(_GCDefaultLogicalDevice *)self _addClient:v4])
  {
    v6 = 0;
    goto LABEL_104;
  }

  v5 = [(_GCDefaultLogicalDevice *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 logicalDevice:self shouldMakeControllerForClient:{v4, v122}])
  {
    v6 = 0;
    goto LABEL_103;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [(_GCDefaultLogicalDevice *)self components];
    v124 = [MEMORY[0x1E695DF70] array];
    v8 = [[GCProductInformation alloc] initWithIdentifier:@"ProductInfo"];
    if (objc_opt_respondsToSelector())
    {
      [v5 logicalDeviceControllerProductCategory:self forClient:v4];
    }

    else
    {
      [v5 logicalDeviceControllerProductCategory:self];
    }
    v9 = ;
    [(GCProductInformation *)v8 setProductCategory:v9, v122];

    if (objc_opt_respondsToSelector())
    {
      [v5 logicalDeviceControllerDetailedProductCategory:self];
    }

    else
    {
      [(GCProductInformation *)v8 productCategory];
    }
    v10 = ;
    [(GCProductInformation *)v8 setDetailedProductCategory:v10];

    if (objc_opt_respondsToSelector())
    {
      v11 = [v5 logicalDeviceControllerVendorName:self forClient:v4];
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v11 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
        v12 = [v11 propertyForKey:@"Product"];
        [(GCProductInformation *)v8 setVendorName:v12];

        goto LABEL_22;
      }

      v11 = [v5 logicalDeviceControllerVendorName:self];
      if (!v11)
      {
LABEL_21:
        v13 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
        v14 = [v13 propertyForKey:@"Product"];
        [(GCProductInformation *)v8 setVendorName:v14];

LABEL_22:
        v15 = +[_GCDaemonSettings instance];
        v16 = [v15 anonymizedIdentifierForControllerIdentifier:self->_identifier];
        [(GCProductInformation *)v8 setAnonymizedIdentifier:v16];

        if (objc_opt_respondsToSelector())
        {
          v17 = [v5 logicalDeviceControllerUniformTypeIdentifier:self];
          [(GCProductInformation *)v8 setUniformTypeIdentifier:v17];
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "logicalDeviceControllerIsAttachedToHost:", self)}];
          [(GCProductInformation *)v8 setAttachedToDevice:v18];
        }

        else
        {
          v19 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
          v18 = [v19 propertyForKey:@"GameControllerFormFitting"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v18 BOOLValue];
          }

          else
          {
            v20 = 0;
          }

          v21 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
          v22 = [v21 propertyForKey:@"IAPHIDAccessoryCategory"];

          objc_opt_class();
          v23 = (objc_opt_isKindOfClass() & 1) != 0 && [v22 intValue] - 3 < 2;
          v24 = [MEMORY[0x1E696AD98] numberWithBool:(v20 | v23) & 1];
          [(GCProductInformation *)v8 setAttachedToDevice:v24];
        }

        v25 = [[_GCControllerComponentDescription alloc] initWithComponent:v8 bindings:0];
        [v124 addObject:v25];

        v26 = [GCHIDInformationDescription alloc];
        v27 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
        v28 = [v27 propertyForKey:@"RegistryID"];
        v29 = [(GCHIDInformationDescription *)v26 initWithIdentifier:@"HIDInfo" registryID:v28];

        [v124 addObject:v29];
        v30 = [(_GCDefaultLogicalDevice *)self _makeControllerGamepadEventSource];
        if (!v30)
        {
LABEL_55:

          if (self->_deviceMotionComponent)
          {
            v45 = [v5 logicalDevice:self makeControllerMotionWithIdentifier:@"Motion"];
            v46 = [(_GCDeviceMotionComponent *)self->_deviceMotionComponent motionEventSource];
            v47 = [_GCControllerComponentDescription alloc];
            v130 = v46;
            v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
            v49 = [(_GCControllerComponentDescription *)v47 initWithComponent:v45 bindings:v48];

            [v124 addObject:v49];
            v50 = self;
            objc_sync_enter(v50);
            v51 = [(NSMapTable *)v50->_clientMotionEndpoints objectForKey:v4];
            if (!v51)
            {
              v52 = [GCMotionXPCProxyServerEndpoint alloc];
              v53 = [MEMORY[0x1E696AFB0] UUID];
              v51 = [(GCMotionXPCProxyServerEndpoint *)v52 initWithIdentifier:v53 initialValue:0];

              [(GCMotionXPCProxyServerEndpoint *)v51 setDelegate:v50];
              [(NSMapTable *)v50->_clientMotionEndpoints setObject:v51 forKey:v4];
              v54 = [v4 IPCObjectRegistry];
              [v54 registerIPCObject:v51];
            }

            v55 = [(GCMotionXPCProxyServerEndpoint *)v51 receiverDescription];
            [v124 addObject:v55];

            objc_sync_exit(v50);
          }

          if (objc_opt_respondsToSelector())
          {
            v56 = [v5 logicalDevice:self makeControllerSpatialDescriptionWithIdentifier:@"SpatialInput" forClient:v4];
            if (v56)
            {
              [v124 addObject:v56];
            }
          }

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v57 = v7;
          v58 = [v57 countByEnumeratingWithState:&v125 objects:v129 count:16];
          v59 = v57;
          if (v58)
          {
            v59 = 0;
            v60 = *v126;
            do
            {
              for (i = 0; i != v58; ++i)
              {
                if (*v126 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v125 + 1) + 8 * i);
                if ([v62 conformsToProtocol:&unk_1F4E9B580])
                {
                  v63 = v62;

                  v59 = v63;
                }
              }

              v58 = [v57 countByEnumeratingWithState:&v125 objects:v129 count:16];
            }

            while (v58);

            if (!v59)
            {
              goto LABEL_75;
            }

            v64 = [GCHapticCapabilities alloc];
            v65 = [v59 hapticEngines];
            v66 = [v59 hapticCapabilityGraph];
            v67 = [(GCHapticCapabilities *)v64 initWithIdentifier:@"HapticCapabilities" hapticEnginesInfo:v65 hapticCapabilityGraph:v66];

            v68 = [[_GCControllerComponentDescription alloc] initWithComponent:v67 bindings:0];
            [v124 addObject:v68];
          }

LABEL_75:
          if (self->_devicePlayerIndicatorComponent)
          {
            v69 = self;
            objc_sync_enter(v69);
            v70 = [(NSMapTable *)v69->_clientPlayerIndicatorEndpoints objectForKey:v4];
            if (!v70)
            {
              v71 = [GCPlayerIndicatorXPCProxyServerEndpoint alloc];
              v72 = [MEMORY[0x1E696AFB0] UUID];
              v70 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v71 initWithIdentifier:v72 initialValue:v69->_indicatedPlayerIndex];

              [(GCPlayerIndicatorXPCProxyServerEndpoint *)v70 setDelegate:v69];
              [(NSMapTable *)v69->_clientPlayerIndicatorEndpoints setObject:v70 forKey:v4];
              v73 = [v4 IPCObjectRegistry];
              [v73 registerIPCObject:v70];
            }

            v74 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v70 receiverDescription];
            [v124 addObject:v74];

            objc_sync_exit(v69);
          }

          if (self->_deviceLightComponent)
          {
            v75 = self;
            objc_sync_enter(v75);
            v76 = [(NSMapTable *)v75->_clientLightEndpoints objectForKey:v4];
            if (!v76)
            {
              v77 = [GCLightXPCProxyServerEndpoint alloc];
              v78 = [MEMORY[0x1E696AFB0] UUID];
              v76 = [(GCLightXPCProxyServerEndpoint *)v77 initWithIdentifier:v78 initialValue:v75->_light];

              [(GCLightXPCProxyServerEndpoint *)v76 setDelegate:v75];
              [(NSMapTable *)v75->_clientLightEndpoints setObject:v76 forKey:v4];
              v79 = [v4 IPCObjectRegistry];
              [v79 registerIPCObject:v76];
            }

            v80 = [(GCLightXPCProxyServerEndpoint *)v76 receiverDescription];
            [v124 addObject:v80];

            objc_sync_exit(v75);
          }

          if (self->_deviceAdaptiveTriggersComponent)
          {
            v81 = self;
            objc_sync_enter(v81);
            v82 = [(NSMapTable *)v81->_clientAdaptiveTriggersEndpoints objectForKey:v4];
            if (!v82)
            {
              v83 = [GCAdaptiveTriggersXPCProxyServerEndpoint alloc];
              v84 = [MEMORY[0x1E696AFB0] UUID];
              v82 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)v83 initWithIdentifier:v84 initialStatuses:v81->_adaptiveTriggerStatuses];

              [(GCAdaptiveTriggersXPCProxyServerEndpoint *)v82 setDelegate:v81];
              [(NSMapTable *)v81->_clientAdaptiveTriggersEndpoints setObject:v82 forKey:v4];
              v85 = [v4 IPCObjectRegistry];
              [v85 registerIPCObject:v82];
            }

            v86 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)v82 receiverDescription];
            [v124 addObject:v86];

            v87 = objc_opt_new();
            v88 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
            [v87 addObject:v88];

            v89 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
            [v87 addObject:v89];

            pidToAdaptiveTriggersComponent = v81->_pidToAdaptiveTriggersComponent;
            v91 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
            [(NSMapTable *)pidToAdaptiveTriggersComponent setObject:v87 forKey:v91];

            objc_sync_exit(v81);
          }

          if (self->_deviceBatteryComponent)
          {
            v92 = self;
            objc_sync_enter(v92);
            v93 = [(NSMapTable *)v92->_clientBatteryEndpoints objectForKey:v4];
            if (!v93)
            {
              v94 = [GCBatteryXPCProxyServerEndpoint alloc];
              v95 = [MEMORY[0x1E696AFB0] UUID];
              v93 = [(GCBatteryXPCProxyServerEndpoint *)v94 initWithIdentifier:v95 initialValue:v92->_battery];

              [(GCBatteryXPCProxyServerEndpoint *)v93 setDelegate:v92];
              [(NSMapTable *)v92->_clientBatteryEndpoints setObject:v93 forKey:v4];
              v96 = [v4 IPCObjectRegistry];
              [v96 registerIPCObject:v93];
            }

            v97 = [(GCBatteryXPCProxyServerEndpoint *)v93 receiverDescription];
            [v124 addObject:v97];

            objc_sync_exit(v92);
          }

          if (self->_deviceSystemGestureComponent)
          {
            v98 = self;
            objc_sync_enter(v98);
            v99 = [(NSMapTable *)v98->_clientSystemGestureEndpoints objectForKey:v4];
            if (!v99)
            {
              v100 = [GCSystemGestureXPCProxyServerEndpoint alloc];
              v101 = [MEMORY[0x1E696AFB0] UUID];
              v99 = [(GCSystemGestureXPCProxyServerEndpoint *)v100 initWithIdentifier:v101];

              [(GCSystemGestureXPCProxyServerEndpoint *)v99 setDelegate:v98];
              [(NSMapTable *)v98->_clientSystemGestureEndpoints setObject:v99 forKey:v4];
              v102 = [v4 IPCObjectRegistry];
              [v102 registerIPCObject:v99];
            }

            v103 = [(GCSystemGestureXPCProxyServerEndpoint *)v99 receiverDescription];
            [v124 addObject:v103];

            objc_sync_exit(v98);
          }

          WeakRetained = objc_loadWeakRetained(&self->_deviceSettingsComponent);

          if (WeakRetained)
          {
            v105 = self;
            objc_sync_enter(v105);
            v106 = [(NSMapTable *)v105->_clientSettingsEndpoints objectForKey:v4];
            if (!v106)
            {
              settingsStore = v105->_settingsStore;
              v108 = [(_GCDefaultLogicalDevice *)v105 persistentIdentifierForSettings];
              v109 = [v4 bundleIdentifier];
              v110 = [(GCSSettingsStoreService *)settingsStore profileForPersistentControllerIdentifier:v108 appBundleIdentifier:v109];
              v111 = [v110 anonymizedCopy];

              v112 = [GCSettingsXPCProxyServerEndpoint alloc];
              v113 = [MEMORY[0x1E696AFB0] UUID];
              v106 = [(GCSettingsXPCProxyServerEndpoint *)v112 initWithIdentifier:v113 initialValueForProfile:v111];

              [(GCSettingsXPCProxyServerEndpoint *)v106 setDelegate:v105];
              [(NSMapTable *)v105->_clientSettingsEndpoints setObject:v106 forKey:v4];
              v114 = [v4 IPCObjectRegistry];
              [v114 registerIPCObject:v106];
            }

            v115 = [(GCSettingsXPCProxyServerEndpoint *)v106 receiverDescription];
            [v124 addObject:v115];

            objc_sync_exit(v105);
          }

          v116 = objc_opt_class();
          if (objc_opt_respondsToSelector())
          {
            v116 = [v5 logicalDeviceControllerDescriptionClass:self];
            if (([v116 isSubclassOfClass:objc_opt_class()] & 1) == 0)
            {
              [(_GCDefaultLogicalDevice(ControllerProviding) *)v123 makeControllerForClient:?];
            }
          }

          v117 = [v116 alloc];
          v118 = [(_GCDefaultLogicalDevice *)self identifier];
          v119 = [v117 initWithIdentifier:v118 components:v124];

          v6 = v119;
          goto LABEL_103;
        }

        if (objc_opt_respondsToSelector())
        {
          v135[0] = v30;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:1];
          v32 = [v5 logicalDevice:self makeControllerInputDescriptionWithIdentifier:@"Input" bindings:v31];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_41;
          }

          v134 = v30;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
          v32 = [v5 logicalDevice:self makeControllerInputDescriptionWithIdentifier:@"Input" bindings:v33 forClient:v4];
        }

        if (v32)
        {
          [v124 addObject:v32];
        }

LABEL_41:
        if (objc_opt_respondsToSelector())
        {
          v133 = v30;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
          v35 = [v5 logicalDevice:self makeControllerPhysicalInputProfileDescriptionWithIdentifier:@"PhysicalInput" bindings:v34];

          if (v35)
          {
            [v124 addObject:v35];
LABEL_54:

            goto LABEL_55;
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v132 = v30;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
          v35 = [v5 logicalDevice:self makeControllerPhysicalInputProfileDescriptionWithIdentifier:@"PhysicalInput" bindings:v36 forClient:v4];

          if (v35)
          {
            [v124 addObject:v35];
            goto LABEL_54;
          }
        }

        v35 = [v5 logicalDevice:self makeControllerPhysicalInputProfileWithIdentifier:@"PhysicalInput"];
        [v35 setGlyphFlags:0];
        v37 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
        v38 = [v37 conformsToProtocol:&unk_1F4E9F9E0];

        if (v38)
        {
          v39 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
          v40 = [(_GCDefaultLogicalDevice *)self underlyingDevice];
          v41 = objc_opt_respondsToSelector();

          if (v41)
          {
            [v35 setGlyphFlags:{objc_msgSend(v39, "getGlyphFlags")}];
            if (gc_isInternalBuild())
            {
              [_GCDefaultLogicalDevice(ControllerProviding) makeControllerForClient:v35];
            }
          }
        }

        if ([v35 conformsToProtocol:&unk_1F4E92DF0])
        {
          v42 = [_GCControllerComponentDescription alloc];
          v131 = v30;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
          v44 = [(_GCControllerComponentDescription *)v42 initWithComponent:v35 bindings:v43];

          [v124 addObject:v44];
        }

        goto LABEL_54;
      }
    }

    [(GCProductInformation *)v8 setVendorName:v11];
    goto LABEL_22;
  }

  v6 = [v5 logicalDevice:self makeControllerForClient:v4];
LABEL_103:

LABEL_104:
  v120 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_makeControllerGamepadEventSource
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(_GCDefaultLogicalDevice *)self components];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&unk_1F4E9B320])
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = [v5 gamepadEventSource];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)settingsDidChange
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = getGCSettingsLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_INFO, "settingsDidChange", buf, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSMapTable *)v4->_clientSettingsEndpoints keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSMapTable *)v4->_clientSettingsEndpoints objectForKey:v9];
        settingsStore = v4->_settingsStore;
        v12 = [(_GCDefaultLogicalDevice *)v4 persistentIdentifierForSettings];
        v13 = [v9 bundleIdentifier];
        v14 = [(GCSSettingsStoreService *)settingsStore profileForPersistentControllerIdentifier:v12 appBundleIdentifier:v13];
        v15 = [v14 anonymizedCopy];

        [v10 setSettingsProfile:v15];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  [(_GCDefaultLogicalDevice *)&v4->super.isa updateLightForActiveClient];
  objc_sync_exit(v4);

  v16 = *MEMORY[0x1E69E9840];
}

- (id)persistentIdentifierForSettings
{
  v3 = [(_GCDefaultLogicalDevice *)self identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(_GCDefaultLogicalDevice *)self identifier];
  }

  else
  {
    v5 = &stru_1F4E3B4E0;
  }

  return v5;
}

- (id)makeSyntheticController
{
  v3 = [_GCSyntheticControllerDescription alloc];
  v4 = [(_GCDefaultLogicalDevice *)self identifier];
  v5 = [(_GCDefaultLogicalDevice *)self persistentIdentifierForSettings];
  v6 = [(_GCSyntheticControllerDescription *)v3 initWithControllerIdentifier:v4 persistentIdentifier:v5];

  return v6;
}

- (id)hapticDriver
{
  v2 = [(_GCPhysicalDevice *)self->_underlyingDevice driverConnection];
  v3 = [v2 remoteProxy];

  return v3;
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v2, v3, "Unable to receive response from driver light service!", v4, v5, v6, v7, 0);
  }
}

- (void)initWithPhysicalDevice:(uint64_t *)a1 configuration:manager:.cold.3(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.4()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.5()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v2, v3, "Unable to receive response from driver adaptive trigger service!", v4, v5, v6, v7, 0);
  }
}

- (void)initWithPhysicalDevice:(uint64_t *)a1 configuration:manager:.cold.6(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.7()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.8()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initWithPhysicalDevice:configuration:manager:.cold.9()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v2, v3, "Unable to receive response from driver battery service!", v4, v5, v6, v7, 0);
  }
}

- (void)initWithPhysicalDevice:(uint64_t *)a1 configuration:manager:.cold.10(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithPhysicalDevice:(void *)a1 configuration:(uint8_t *)buf manager:(os_log_t)log .cold.11(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_ERROR, "[%@] #WARNING: Missing user defaults.", buf, 0xCu);
}

- (void)adaptiveTriggersXPCProxyServerEndpoint:didReceiveAdaptiveTriggersChange:forIndex:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)systemGestureXPCProxyServerEndpoint:didSetSystemGestureStateForInput:enabled:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)motionXPCProxyServerEndpoint:didReceiveSensorsActiveChange:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingSessionForClient:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingSessionForClient:(NSObject *)a1 .cold.2(NSObject *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    v5 = *a2;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopTrackingSessionForClient:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopTrackingSessionForClient:(NSObject *)a1 .cold.2(NSObject *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    v5 = *a2;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_addClient:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_7(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_DEBUG, "[%@] Client added: %@", v4, 0x16u);
}

- (void)_removeClient:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_7(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_DEBUG, "[%@] Client removed: %@", v4, 0x16u);
}

- (uint64_t)updateAdaptiveTriggersForActiveClient
{
  v4 = *a1;
  v5 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
  [v4 setAdaptiveTriggersPayload:v5 forIndex:0];

  v6 = *a1;
  v7 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
  *a2 = v7;
  return [v6 setAdaptiveTriggersPayload:v7 forIndex:1];
}

@end