@interface _GCNintendoFusedJoyConDevice
+ (id)identifierForFusedJoyConDeviceWithLeftDevice:(id)device rightDevice:(id)rightDevice;
- (GCDeviceBattery)battery;
- (NSSet)underlyingDevices;
- (_GCDeviceManager)manager;
- (_GCGamepadEventSourceDescription)gamepadEventSource;
- (_GCNintendoFusedJoyConDevice)init;
- (_GCNintendoFusedJoyConDevice)initWithLeft:(id)left right:(id)right manager:(id)manager;
- (id)makeControllerForClient:(id)client;
- (id)persistentIdentifierForSettings;
- (void)_addClient:(id)client;
- (void)_propagateBattery;
- (void)_refreshBattery;
- (void)_removeClient:(id)client;
- (void)activateLogical;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playerIndicatorXPCProxyServerEndpoint:(id)endpoint didReceivePlayerIndexChange:(int64_t)change;
- (void)setIndicatedPlayerIndex:(int64_t)index;
- (void)settingsDidChange;
@end

@implementation _GCNintendoFusedJoyConDevice

- (_GCNintendoFusedJoyConDevice)initWithLeft:(id)left right:(id)right manager:(id)manager
{
  leftCopy = left;
  rightCopy = right;
  managerCopy = manager;
  v42.receiver = self;
  v42.super_class = _GCNintendoFusedJoyConDevice;
  v12 = [(_GCNintendoFusedJoyConDevice *)&v42 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_manager, managerCopy);
    v14 = [objc_opt_class() identifierForFusedJoyConDeviceWithLeftDevice:leftCopy rightDevice:rightCopy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_leftDevice, left);
    objc_storeStrong(&v13->_rightDevice, right);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clients = v13->_clients;
    v13->_clients = strongToStrongObjectsMapTable;

    v13->_indicatedPlayerIndex = -1;
    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientPlayerIndicatorEndpoints = v13->_clientPlayerIndicatorEndpoints;
    v13->_clientPlayerIndicatorEndpoints = strongToStrongObjectsMapTable2;

    v20 = [[GCDeviceBattery alloc] initWithLevel:-1 batteryState:0.0];
    battery = v13->_battery;
    v13->_battery = v20;

    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientBatteryEndpoints = v13->_clientBatteryEndpoints;
    v13->_clientBatteryEndpoints = strongToStrongObjectsMapTable3;

    objc_initWeak(&location, v13);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __59___GCNintendoFusedJoyConDevice_initWithLeft_right_manager___block_invoke;
    v39[3] = &unk_1E841A470;
    objc_copyWeak(&v40, &location);
    [(_GCNintendoJoyConDevice *)v13->_leftDevice setDeviceBatteryComponentBatteryUpdatedHandler:v39];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __59___GCNintendoFusedJoyConDevice_initWithLeft_right_manager___block_invoke_2;
    v37[3] = &unk_1E841A470;
    objc_copyWeak(&v38, &location);
    [(_GCNintendoJoyConDevice *)v13->_rightDevice setDeviceBatteryComponentBatteryUpdatedHandler:v37];
    v24 = objc_opt_class();
    v25 = loadNSDictionaryFromJSON(v24, @"JoyConFusedHapticCapabilityGraph");
    v26 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v25];
    hapticCapabilityGraph = v13->_hapticCapabilityGraph;
    v13->_hapticCapabilityGraph = v26;

    v28 = [[_GCNintendoFusedJoyConHapticDriver alloc] initWithDevice:v13];
    hapticDriver = v13->_hapticDriver;
    v13->_hapticDriver = v28;

    strongToStrongObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientSettingsEndpoints = v13->_clientSettingsEndpoints;
    v13->_clientSettingsEndpoints = strongToStrongObjectsMapTable4;

    v32 = GCLookupService();
    settingsStore = v13->_settingsStore;
    v13->_settingsStore = v32;

    profiles = [(GCSSettingsStoreService *)v13->_settingsStore profiles];
    [profiles addObserver:v13 forKeyPath:@"values" options:5 context:0];

    games = [(GCSSettingsStoreService *)v13->_settingsStore games];
    [games addObserver:v13 forKeyPath:@"values" options:5 context:0];

    if (([(GCSSettingsStoreService *)v13->_settingsStore showGCPreferencesPane]& 1) == 0)
    {
      [(GCSSettingsStoreService *)v13->_settingsStore setShowGCPreferencesPane:1];
    }

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (_GCNintendoFusedJoyConDevice)init
{
  [(_GCNintendoFusedJoyConDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  settingsStore = self->_settingsStore;
  if (settingsStore)
  {
    profiles = [(GCSSettingsStoreService *)settingsStore profiles];
    [profiles removeObserver:self forKeyPath:@"values" context:0];

    games = [(GCSSettingsStoreService *)self->_settingsStore games];
    [games removeObserver:self forKeyPath:@"values" context:0];
  }

  v6.receiver = self;
  v6.super_class = _GCNintendoFusedJoyConDevice;
  [(_GCNintendoFusedJoyConDevice *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"values"])
  {
    [(_GCNintendoFusedJoyConDevice *)self settingsDidChange];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCNintendoFusedJoyConDevice;
    [(_GCNintendoFusedJoyConDevice *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)playerIndicatorXPCProxyServerEndpoint:(id)endpoint didReceivePlayerIndexChange:(int64_t)change
{
  v17 = *MEMORY[0x1E69E9840];
  [(_GCNintendoFusedJoyConDevice *)self setIndicatedPlayerIndex:change];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clientPlayerIndicatorEndpoints objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v12 + 1) + 8 * v10++) setPlayerIndex:change];
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSSet)underlyingDevices
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  rightDevice = self->_rightDevice;
  v8[0] = self->_leftDevice;
  v8[1] = rightDevice;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)activateLogical
{
  [(_GCNintendoJoyConDevice *)self->_leftDevice setInputMode:48];
  rightDevice = self->_rightDevice;

  [(_GCNintendoJoyConDevice *)rightDevice setInputMode:48];
}

+ (id)identifierForFusedJoyConDeviceWithLeftDevice:(id)device rightDevice:(id)rightDevice
{
  v5 = MEMORY[0x1E696AEC0];
  rightDeviceCopy = rightDevice;
  deviceCopy = device;
  v8 = [v5 alloc];
  identifier = [deviceCopy identifier];

  identifier2 = [rightDeviceCopy identifier];

  v11 = [v8 initWithFormat:@"FUSED_JOYCONS(L: %@, R: %@)", identifier, identifier2];

  return v11;
}

- (_GCDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)_addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (clientCopy)
  {
    v6 = [(NSMapTable *)selfCopy->_clients objectForKey:clientCopy];

    if (!v6)
    {
      objc_initWeak(&location, selfCopy);
      objc_initWeak(&from, clientCopy);
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __51___GCNintendoFusedJoyConDevice_Client___addClient___block_invoke;
      v12 = &unk_1E8419D00;
      objc_copyWeak(&v13, &location);
      objc_copyWeak(&v14, &from);
      v7 = [clientCopy addInvalidationHandler:&v9];
      [(NSMapTable *)selfCopy->_clients setObject:v7 forKey:clientCopy, v9, v10, v11, v12];
      if (gc_isInternalBuild())
      {
        v8 = getGCLogger();
        [_GCNintendoFusedJoyConDevice(Client) _addClient:v8];
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_removeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (clientCopy)
  {
    v6 = [(NSMapTable *)selfCopy->_clients objectForKey:clientCopy];

    if (v6)
    {
      [(NSMapTable *)selfCopy->_clientPlayerIndicatorEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientBatteryEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientSettingsEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clients removeObjectForKey:clientCopy];
      if (gc_isInternalBuild())
      {
        v7 = getGCLogger();
        [_GCNintendoFusedJoyConDevice(Client) _removeClient:v7];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)makeControllerForClient:(id)client
{
  v208[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  array = [MEMORY[0x1E695DF70] array];
  v3 = [[GCProductInformation alloc] initWithIdentifier:@"ProductInfo"];
  [(GCProductInformation *)v3 setProductCategory:@"Nintendo Switch Joy-Con (L/R)"];
  [(GCProductInformation *)v3 setVendorName:@"Joy-Con (L/R)"];
  v4 = [[_GCControllerComponentDescription alloc] initWithComponent:v3 bindings:0];
  [array addObject:v4];

  gamepadEventSource = [(_GCNintendoFusedJoyConDevice *)self gamepadEventSource];
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v183 = 0u;
  memset(v182, 0, sizeof(v182));
  GCExtendedGamepadInitInfoMake(v182);
  for (i = 0; i != 1152; i += 72)
  {
    *(v182 + i + 8) = 257;
  }

  BYTE1(v183) = 0;
  BYTE9(v187) = 0;
  v7 = [(GCExtendedGamepad *)[_GCNintendoSwitchGamepad alloc] initWithIdentifier:@"PhysicalInput" info:v182];
  v8 = [_GCControllerComponentDescription alloc];
  v208[0] = gamepadEventSource;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:1];
  v10 = [(_GCControllerComponentDescription *)v8 initWithComponent:v7 bindings:v9];

  [array addObject:v10];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v182 + j);
  }

  gamepadEventSource2 = [(_GCNintendoFusedJoyConDevice *)self gamepadEventSource];
  v179 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.home"];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v179 setAliases:v12];

  [v179 setLocalizedName:*MEMORY[0x1E69A0540]];
  v13 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
  [v179 setSymbol:v13];

  [v179 setEventPressedValueField:22];
  v178 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.capture"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Share"];
  [v178 setAliases:v14];

  [v178 setLocalizedName:*MEMORY[0x1E69A03A0]];
  v15 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.square"];
  [v178 setSymbol:v15];

  [v178 setEventPressedValueField:40];
  v177 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.plus"];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v177 setAliases:v16];

  [v177 setLocalizedName:*MEMORY[0x1E69A0550]];
  v17 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"plus.circle"];
  [v177 setSymbol:v17];

  [v177 setEventPressedValueField:23];
  v176 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.minus"];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v176 setAliases:v18];

  [v176 setLocalizedName:*MEMORY[0x1E69A0558]];
  v19 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"minus.circle"];
  [v176 setSymbol:v19];

  [v176 setEventPressedValueField:24];
  v175 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
  v20 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v175 setAliases:v20];

  [v175 setLocalizedName:*MEMORY[0x1E69A0530]];
  v21 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v175 setSymbol:v21];

  [v175 setEventPressedValueField:4];
  v174 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v174 setAliases:v22];

  [v174 setLocalizedName:*MEMORY[0x1E69A0538]];
  v23 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v174 setSymbol:v23];

  [v174 setEventPressedValueField:5];
  v173 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v24 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v173 setAliases:v24];

  [v173 setLocalizedName:*MEMORY[0x1E69A0568]];
  v25 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v173 setSymbol:v25];

  [v173 setEventPressedValueField:6];
  v172 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v26 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v172 setAliases:v26];

  [v172 setLocalizedName:*MEMORY[0x1E69A0570]];
  v27 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v172 setSymbol:v27];

  [v172 setEventPressedValueField:7];
  v171 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v171 setAliases:v28];

  [v171 setLocalizedName:*MEMORY[0x1E69A0580]];
  v29 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v171 setSymbol:v29];

  [v171 setEventPressedValueField:8];
  v170 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v170 setAliases:v30];

  [v170 setLocalizedName:*MEMORY[0x1E69A05C0]];
  v31 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v170 setSymbol:v31];

  [v170 setEventPressedValueField:9];
  v169 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zl"];
  v32 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v169 setAliases:v32];

  [v169 setLocalizedName:*MEMORY[0x1E69A0590]];
  v33 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zl.rectangle.roundedtop"];
  [v169 setSymbol:v33];

  [v169 setEventPressedValueField:18];
  v168 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zr"];
  v34 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v168 setAliases:v34];

  [v168 setLocalizedName:*MEMORY[0x1E69A05D0]];
  v35 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zr.rectangle.roundedtop"];
  [v168 setSymbol:v35];

  [v168 setEventPressedValueField:19];
  v36 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v37 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v36 setAliases:v37];

  [v36 setLocalizedName:*MEMORY[0x1E69A0578]];
  v38 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v36 setSymbol:v38];

  [v36 setAnalog:0];
  [v36 setEventUpValueField:0];
  [v36 setEventDownValueField:1];
  [v36 setEventLeftValueField:2];
  [v36 setEventRightValueField:3];
  v39 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
  v40 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  [v39 setAliases:v40];

  [v39 setLocalizedName:*MEMORY[0x1E69A0588]];
  v41 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v39 setSymbol:v41];

  [v39 setAnalog:1];
  [v39 setEventUpValueField:10];
  [v39 setEventDownValueField:11];
  [v39 setEventLeftValueField:12];
  [v39 setEventRightValueField:13];
  [v39 setEventPressedValueField:20];
  v42 = MEMORY[0x1E69A06B8];
  v43 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName = [v39 localizedName];
  symbol = [v39 symbol];
  v46 = [v42 sourceWithElementAliases:v43 localizedName:localizedName symbol:symbol direction:10];
  v207 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v207 count:1];
  [v39 setXSources:v47];

  v48 = MEMORY[0x1E69A06B8];
  v49 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName2 = [v39 localizedName];
  symbol2 = [v39 symbol];
  v52 = [v48 sourceWithElementAliases:v49 localizedName:localizedName2 symbol:symbol2 direction:5];
  v206 = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v206 count:1];
  [v39 setYSources:v53];

  v54 = MEMORY[0x1E69A06B8];
  v55 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName3 = [v39 localizedName];
  symbol3 = [v39 symbol];
  v58 = [v54 sourceWithElementAliases:v55 localizedName:localizedName3 symbol:symbol3 direction:1];
  v205 = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v205 count:1];
  [v39 setUpSources:v59];

  v60 = MEMORY[0x1E69A06B8];
  v61 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName4 = [v39 localizedName];
  symbol4 = [v39 symbol];
  v64 = [v60 sourceWithElementAliases:v61 localizedName:localizedName4 symbol:symbol4 direction:2];
  v204 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v204 count:1];
  [v39 setRightSources:v65];

  v66 = MEMORY[0x1E69A06B8];
  v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName5 = [v39 localizedName];
  symbol5 = [v39 symbol];
  v70 = [v66 sourceWithElementAliases:v67 localizedName:localizedName5 symbol:symbol5 direction:4];
  v203 = v70;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v203 count:1];
  [v39 setDownSources:v71];

  v72 = MEMORY[0x1E69A06B8];
  v73 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName6 = [v39 localizedName];
  symbol6 = [v39 symbol];
  v76 = [v72 sourceWithElementAliases:v73 localizedName:localizedName6 symbol:symbol6 direction:8];
  v202 = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v202 count:1];
  [v39 setLeftSources:v77];

  v78 = MEMORY[0x1E69A06B8];
  v79 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v80 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v81 = [v78 sourceWithElementAliases:v79 localizedName:*MEMORY[0x1E69A0548] symbol:v80];
  v201 = v81;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v201 count:1];
  [v39 setPressedSources:v82];

  v83 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v84 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v83 setAliases:v84];

  [v83 setLocalizedName:*MEMORY[0x1E69A05C8]];
  v85 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v83 setSymbol:v85];

  [v83 setAnalog:1];
  [v83 setEventUpValueField:14];
  [v83 setEventDownValueField:15];
  [v83 setEventLeftValueField:16];
  [v83 setEventRightValueField:17];
  [v83 setEventPressedValueField:21];
  v86 = MEMORY[0x1E69A06B8];
  v87 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName7 = [v83 localizedName];
  symbol7 = [v83 symbol];
  v90 = [v86 sourceWithElementAliases:v87 localizedName:localizedName7 symbol:symbol7 direction:10];
  v200 = v90;
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v200 count:1];
  [v83 setXSources:v91];

  v92 = MEMORY[0x1E69A06B8];
  v93 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName8 = [v83 localizedName];
  symbol8 = [v83 symbol];
  v96 = [v92 sourceWithElementAliases:v93 localizedName:localizedName8 symbol:symbol8 direction:5];
  v199 = v96;
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v199 count:1];
  [v83 setYSources:v97];

  v98 = MEMORY[0x1E69A06B8];
  v99 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName9 = [v83 localizedName];
  symbol9 = [v83 symbol];
  v102 = [v98 sourceWithElementAliases:v99 localizedName:localizedName9 symbol:symbol9 direction:1];
  v198 = v102;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v198 count:1];
  [v83 setUpSources:v103];

  v104 = MEMORY[0x1E69A06B8];
  v105 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName10 = [v83 localizedName];
  symbol10 = [v83 symbol];
  v108 = [v104 sourceWithElementAliases:v105 localizedName:localizedName10 symbol:symbol10 direction:2];
  v197 = v108;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v197 count:1];
  [v83 setRightSources:v109];

  v110 = MEMORY[0x1E69A06B8];
  v111 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName11 = [v83 localizedName];
  symbol11 = [v83 symbol];
  v114 = [v110 sourceWithElementAliases:v111 localizedName:localizedName11 symbol:symbol11 direction:4];
  v196 = v114;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v196 count:1];
  [v83 setDownSources:v115];

  v116 = MEMORY[0x1E69A06B8];
  v117 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName12 = [v83 localizedName];
  symbol12 = [v83 symbol];
  v120 = [v116 sourceWithElementAliases:v117 localizedName:localizedName12 symbol:symbol12 direction:8];
  v195 = v120;
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v195 count:1];
  [v83 setLeftSources:v121];

  v122 = MEMORY[0x1E69A06B8];
  v123 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v124 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v125 = [v122 sourceWithElementAliases:v123 localizedName:*MEMORY[0x1E69A0560] symbol:v124];
  v194 = v125;
  v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v194 count:1];
  [v83 setPressedSources:v126];

  v127 = objc_opt_new();
  v193[0] = v179;
  v193[1] = v178;
  v193[2] = v177;
  v193[3] = v176;
  v193[4] = v175;
  v193[5] = v174;
  v193[6] = v173;
  v193[7] = v172;
  v193[8] = v171;
  v193[9] = v170;
  v193[10] = v169;
  v193[11] = v168;
  v193[12] = v36;
  v193[13] = v39;
  v193[14] = v83;
  v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:15];
  [v127 setElements:v128];

  v129 = [_GCControllerInputComponentDescription alloc];
  v192 = gamepadEventSource2;
  v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v192 count:1];
  v131 = [(_GCControllerInputComponentDescription *)v129 initWithIdentifier:@"Input" controllerInputs:v127 bindings:v130];

  [array addObject:v131];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v133 = [(NSMapTable *)selfCopy->_clientPlayerIndicatorEndpoints objectForKey:clientCopy];
  if (!v133)
  {
    v134 = [GCPlayerIndicatorXPCProxyServerEndpoint alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v133 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v134 initWithIdentifier:uUID initialValue:selfCopy->_indicatedPlayerIndex];

    [(GCPlayerIndicatorXPCProxyServerEndpoint *)v133 setDelegate:selfCopy];
    [(NSMapTable *)selfCopy->_clientPlayerIndicatorEndpoints setObject:v133 forKey:clientCopy];
    iPCObjectRegistry = [clientCopy IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v133];
  }

  receiverDescription = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v133 receiverDescription];
  [array addObject:receiverDescription];

  objc_sync_exit(selfCopy);
  v138 = selfCopy;
  objc_sync_enter(v138);
  v139 = [(NSMapTable *)v138->_clientBatteryEndpoints objectForKey:clientCopy];
  if (!v139)
  {
    v140 = [GCBatteryXPCProxyServerEndpoint alloc];
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    v139 = [(GCBatteryXPCProxyServerEndpoint *)v140 initWithIdentifier:uUID2 initialValue:v138->_battery];

    [(GCBatteryXPCProxyServerEndpoint *)v139 setDelegate:v138];
    [(NSMapTable *)v138->_clientBatteryEndpoints setObject:v139 forKey:clientCopy];
    iPCObjectRegistry2 = [clientCopy IPCObjectRegistry];
    [iPCObjectRegistry2 registerIPCObject:v139];
  }

  receiverDescription2 = [(GCBatteryXPCProxyServerEndpoint *)v139 receiverDescription];
  [array addObject:receiverDescription2];

  objc_sync_exit(v138);
  v144 = [GCHapticCapabilities alloc];
  hapticEngines = [(_GCNintendoJoyConDevice *)v138->_leftDevice hapticEngines];
  hapticEngines2 = [(_GCNintendoJoyConDevice *)v138->_rightDevice hapticEngines];
  v147 = [hapticEngines arrayByAddingObjectsFromArray:hapticEngines2];
  v148 = [(GCHapticCapabilities *)v144 initWithIdentifier:@"HapticCapabilities" hapticEnginesInfo:v147 hapticCapabilityGraph:v138->_hapticCapabilityGraph];

  v149 = [[_GCControllerComponentDescription alloc] initWithComponent:v148 bindings:0];
  [array addObject:v149];

  v150 = v138;
  objc_sync_enter(v150);
  v151 = [v150[7] objectForKey:clientCopy];
  if (!v151)
  {
    v152 = v150[6];
    persistentIdentifierForSettings = [v150 persistentIdentifierForSettings];
    bundleIdentifier = [clientCopy bundleIdentifier];
    v155 = [v152 profileForPersistentControllerIdentifier:persistentIdentifierForSettings appBundleIdentifier:bundleIdentifier];
    anonymizedCopy = [v155 anonymizedCopy];

    v157 = [GCSettingsXPCProxyServerEndpoint alloc];
    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    v151 = [(GCSettingsXPCProxyServerEndpoint *)v157 initWithIdentifier:uUID3 initialValueForProfile:anonymizedCopy];

    [(GCSettingsXPCProxyServerEndpoint *)v151 setDelegate:v150];
    [v150[7] setObject:v151 forKey:clientCopy];
    iPCObjectRegistry3 = [clientCopy IPCObjectRegistry];
    [iPCObjectRegistry3 registerIPCObject:v151];
  }

  receiverDescription3 = [(GCSettingsXPCProxyServerEndpoint *)v151 receiverDescription];
  [array addObject:receiverDescription3];

  objc_sync_exit(v150);
  v161 = [_GCControllerDescription alloc];
  identifier = [v150 identifier];
  v163 = [(_GCControllerDescription *)v161 initWithIdentifier:identifier components:array];

  v164 = *MEMORY[0x1E69E9840];

  return v163;
}

- (_GCGamepadEventSourceDescription)gamepadEventSource
{
  v11[2] = *MEMORY[0x1E69E9840];
  gamepadEventSource = [(_GCNintendoJoyConDevice *)self->_leftDevice gamepadEventSource];
  gamepadEventSource2 = [(_GCNintendoJoyConDevice *)self->_rightDevice gamepadEventSource];
  v5 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:0 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:1 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:2 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:3 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:10 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:11 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:12 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:13 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:8 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:18 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:20 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:24 forSourceAtIndex:0];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:4 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:5 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:6 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:7 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:14 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:15 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:16 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:17 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:9 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:19 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:21 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:22 forSourceAtIndex:1];
  [(_GCGamepadEventFusionConfig *)v5 setPassRule:1 forElement:23 forSourceAtIndex:1];
  v6 = [_GCGamepadEventFusionDescription alloc];
  v11[0] = gamepadEventSource;
  v11[1] = gamepadEventSource2;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [(_GCGamepadEventFusionDescription *)v6 initWithConfiguration:v5 sources:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setIndicatedPlayerIndex:(int64_t)index
{
  [(_GCNintendoJoyConDevice *)self->_leftDevice setIndicatedPlayerIndex:?];
  rightDevice = self->_rightDevice;

  [(_GCNintendoJoyConDevice *)rightDevice setIndicatedPlayerIndex:index];
}

- (void)_refreshBattery
{
  battery = [(_GCNintendoJoyConDevice *)self->_leftDevice battery];
  battery2 = [(_GCNintendoJoyConDevice *)self->_rightDevice battery];
  battery = self->_battery;
  [battery batteryLevel];
  v6 = v5;
  [battery2 batteryLevel];
  if (v6 < *&v7)
  {
    *&v7 = v6;
  }

  [(GCDeviceBattery *)battery _setBatteryLevel:v7];
  batteryState = [battery batteryState];
  if (batteryState == [battery2 batteryState])
  {
    batteryState2 = [battery batteryState];
  }

  else
  {
    batteryState2 = -1;
  }

  [(GCDeviceBattery *)self->_battery _setBatteryState:batteryState2];
}

- (void)_propagateBattery
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clientBatteryEndpoints objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v7++) setBattery:self->_battery];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (GCDeviceBattery)battery
{
  [(_GCNintendoFusedJoyConDevice *)self _refreshBattery];
  battery = self->_battery;

  return battery;
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyEnumerator = [(NSMapTable *)selfCopy->_clientSettingsEndpoints keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSMapTable *)selfCopy->_clientSettingsEndpoints objectForKey:v9];
        settingsStore = selfCopy->_settingsStore;
        persistentIdentifierForSettings = [(_GCNintendoFusedJoyConDevice *)selfCopy persistentIdentifierForSettings];
        bundleIdentifier = [v9 bundleIdentifier];
        v14 = [(GCSSettingsStoreService *)settingsStore profileForPersistentControllerIdentifier:persistentIdentifierForSettings appBundleIdentifier:bundleIdentifier];
        anonymizedCopy = [v14 anonymizedCopy];

        [v10 setSettingsProfile:anonymizedCopy];
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)persistentIdentifierForSettings
{
  identifier = [(_GCNintendoFusedJoyConDevice *)self identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [(_GCNintendoFusedJoyConDevice *)self identifier];
  }

  else
  {
    identifier2 = &stru_1F4E3B4E0;
  }

  return identifier2;
}

@end