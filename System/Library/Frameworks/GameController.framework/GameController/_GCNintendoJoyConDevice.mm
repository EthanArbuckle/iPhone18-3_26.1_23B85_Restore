@interface _GCNintendoJoyConDevice
- ($536A88BB5CAE6CA76785073378A79450)bodyColor;
- ($536A88BB5CAE6CA76785073378A79450)buttonsColor;
- (GCHapticCapabilityGraph)hapticCapabilityGraph;
- (NSArray)hapticEngines;
- (_GCDeviceManager)manager;
- (_GCGamepadEventSourceDescription)gamepadEventSource;
- (_GCNintendoFusedJoyConDevice)fusionDevice;
- (_GCNintendoJoyConDevice)init;
- (_GCNintendoJoyConDevice)initWithHIDDevice:(id)a3 manager:(id)a4 type:(unsigned __int8)a5;
- (id)deviceBatteryComponentBatteryUpdatedHandler;
- (id)makeControllerForClient:(id)a3;
- (id)propertyForKey:(id)a3;
- (id)readBattery;
- (unsigned)inputMode;
- (void)_addClient:(id)a3;
- (void)_removeClient:(id)a3;
- (void)homeButtonLongPressGesture:(BOOL)a3;
- (void)playerIndicatorXPCProxyServerEndpoint:(id)a3 didReceivePlayerIndexChange:(int64_t)a4;
- (void)propagateBattery:(id)a3;
- (void)requestIdleDisconnect:(id)a3;
- (void)setDeviceBatteryComponentBatteryUpdatedHandler:(id)a3;
- (void)setDriverConnection:(id)a3;
- (void)setIndicatedPlayerIndex:(int64_t)a3;
@end

@implementation _GCNintendoJoyConDevice

- (_GCNintendoJoyConDevice)initWithHIDDevice:(id)a3 manager:(id)a4 type:(unsigned __int8)a5
{
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = _GCNintendoJoyConDevice;
  v11 = [(_GCNintendoJoyConDevice *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceInfo, a3);
    objc_storeWeak(&v12->_manager, v10);
    v12->_type = a5;
    v13 = [v9 stringPropertyForKey:@"SerialNumber"];
    p_identifier = &v12->_identifier;
    identifier = v12->_identifier;
    v12->_identifier = v13;

    if (!v12->_identifier)
    {
      v16 = [MEMORY[0x1E696AFB0] UUID];
      v17 = *p_identifier;
      *p_identifier = v16;

      if (gc_isInternalBuild())
      {
        [_GCNintendoJoyConDevice initWithHIDDevice:v9 manager:&v12->_identifier type:?];
      }
    }

    v18 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clients = v12->_clients;
    v12->_clients = v18;

    v12->_indicatedPlayerIndex = -1;
    v20 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientPlayerIndicatorEndpoints = v12->_clientPlayerIndicatorEndpoints;
    v12->_clientPlayerIndicatorEndpoints = v20;

    v22 = [[GCDeviceBattery alloc] initWithLevel:-1 batteryState:0.0];
    battery = v12->_battery;
    v12->_battery = v22;

    v24 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientBatteryEndpoints = v12->_clientBatteryEndpoints;
    v12->_clientBatteryEndpoints = v24;
  }

  return v12;
}

- (_GCNintendoJoyConDevice)init
{
  [(_GCNintendoJoyConDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setDriverConnection:(id)a3
{
  v5 = a3;
  driverConnectionInvalidationRegistration = self->_driverConnectionInvalidationRegistration;
  self->_driverConnectionInvalidationRegistration = 0;

  driverConnection = self->_driverConnection;
  self->_driverConnection = 0;

  objc_storeStrong(&self->_driverConnection, a3);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke;
  v25[3] = &unk_1E8418C28;
  v25[4] = self;
  v8 = [v5 addInvalidationHandler:v25];
  v9 = self->_driverConnectionInvalidationRegistration;
  self->_driverConnectionInvalidationRegistration = v8;

  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_2;
  activity_block[3] = &unk_1E8418C50;
  v10 = v5;
  v22 = v10;
  v23 = self;
  _os_activity_initiate(&dword_1D2CD5000, "Connect JoyCon Fusion Gesture Service", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_104;
  v17[3] = &unk_1E8419CD8;
  v11 = v10;
  v18 = v11;
  v19 = self;
  objc_copyWeak(&v20, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Battery Service", OS_ACTIVITY_FLAG_DEFAULT, v17);
  objc_destroyWeak(&v20);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47___GCNintendoJoyConDevice_setDriverConnection___block_invoke_107;
  v13[3] = &unk_1E8419CD8;
  v14 = v11;
  v15 = self;
  v12 = v11;
  objc_copyWeak(&v16, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Idle Service", OS_ACTIVITY_FLAG_DEFAULT, v13);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (unsigned)inputMode
{
  v2 = [(GCHIDServiceInfo *)self->_serviceInfo stringPropertyForKey:@"JoyConInputMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (([v2 isEqualToString:@"HID"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"STANDARD-FULL"])
    {
      v3 = 48;
      goto LABEL_7;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 63;
LABEL_7:

  return v3;
}

- ($536A88BB5CAE6CA76785073378A79450)bodyColor
{
  v2 = [(GCHIDServiceInfo *)self->_serviceInfo dictionaryPropertyForKey:@"JoyConBodyColorInfo"];
  v4 = 0;
  v5 = 0;
  DecodeJoyConRGBColor(v2, &v4);

  return (v4 | (v5 << 16));
}

- ($536A88BB5CAE6CA76785073378A79450)buttonsColor
{
  v2 = [(GCHIDServiceInfo *)self->_serviceInfo dictionaryPropertyForKey:@"JoyConButtonsColorInfo"];
  v4 = 0;
  v5 = 0;
  DecodeJoyConRGBColor(v2, &v4);

  return (v4 | (v5 << 16));
}

- (id)propertyForKey:(id)a3
{
  serviceInfo = self->_serviceInfo;
  v4 = a3;
  v5 = IOHIDServiceClientCopyProperty([(GCHIDServiceInfo *)serviceInfo service], v4);

  return v5;
}

- (void)playerIndicatorXPCProxyServerEndpoint:(id)a3 didReceivePlayerIndexChange:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  [(_GCNintendoJoyConDevice *)self setIndicatedPlayerIndex:a4];
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

- (_GCDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (_GCNintendoFusedJoyConDevice)fusionDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_fusionDevice);

  return WeakRetained;
}

- (void)_addClient:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [(NSMapTable *)v5->_clients objectForKey:v4];

    if (!v6)
    {
      objc_initWeak(&location, v5);
      objc_initWeak(&from, v4);
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __46___GCNintendoJoyConDevice_Client___addClient___block_invoke;
      v12 = &unk_1E8419D00;
      objc_copyWeak(&v13, &location);
      objc_copyWeak(&v14, &from);
      v7 = [v4 addInvalidationHandler:&v9];
      if (v7)
      {
        [(NSMapTable *)v5->_clients setObject:v7 forKey:v4, v9, v10, v11, v12];
        if (gc_isInternalBuild())
        {
          v8 = getGCLogger();
          [_GCNintendoJoyConDevice(Client) _addClient:v8];
        }
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(v5);
}

- (void)_removeClient:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [(NSMapTable *)v5->_clients objectForKey:v4];

    if (v6)
    {
      [(NSMapTable *)v5->_clientPlayerIndicatorEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clientBatteryEndpoints removeObjectForKey:v4];
      [(NSMapTable *)v5->_clients removeObjectForKey:v4];
      if (gc_isInternalBuild())
      {
        v7 = getGCLogger();
        [_GCNintendoJoyConDevice(Client) _removeClient:v7];
      }
    }
  }

  objc_sync_exit(v5);
}

- (id)makeControllerForClient:(id)a3
{
  v89[9] = *MEMORY[0x1E69E9840];
  v80 = a3;
  v81 = self;
  [(_GCNintendoJoyConDevice *)self _addClient:?];
  v85 = [MEMORY[0x1E695DF70] array];
  v5 = [[GCProductInformation alloc] initWithIdentifier:@"ProductInfo"];
  v6 = [(GCHIDServiceInfo *)v81->_serviceInfo stringPropertyForKey:@"Product"];
  [(GCProductInformation *)v5 setVendorName:v6];

  v7 = [(_GCNintendoJoyConDevice *)v81 type];
  if (v7 == 1)
  {
    v8 = @"Nintendo Switch Joy-Con (L)";
  }

  else if (v7 == 2)
  {
    v8 = @"Nintendo Switch Joy-Con (R)";
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:v81 file:@"_GCNintendoJoyConDevice.m" lineNumber:254 description:@"Unexpected type!"];

    v8 = @"Nintendo Switch Joy-Con";
  }

  [(GCProductInformation *)v5 setProductCategory:v8];
  v10 = [(GCProductInformation *)v5 productCategory];
  [(GCProductInformation *)v5 setDetailedProductCategory:v10];

  v11 = [[_GCControllerComponentDescription alloc] initWithComponent:v5 bindings:0];
  [v85 addObject:v11];

  v83 = [(_GCNintendoJoyConDevice *)v81 gamepadEventSource];
  v12 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:4 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v13 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:5 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v14 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:6 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v15 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:7 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v16 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:8 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v17 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:9 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v18 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:23 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v19 = [GCDeviceButtonInputDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:" additionalAliases:22 attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
  v20 = [GCDeviceDirectionPadDescription initWithName:"initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceUpExtendedEventField:sourceDownExtendedEventField:sourceLeftExtendedEventField:sourceRightExtendedEventField:" additionalAliases:0 attributes:1 nameLocalizationKey:2 symbolName:3 sourceAttributes:? sourceUpExtendedEventField:? sourceDownExtendedEventField:? sourceLeftExtendedEventField:? sourceRightExtendedEventField:?];
  v21 = [_GCDeviceGamepadComponentDescription alloc];
  v77 = v12;
  v78 = v13;
  v89[0] = v12;
  v89[1] = v13;
  v89[2] = v14;
  v89[3] = v15;
  v89[4] = v16;
  v89[5] = v17;
  v89[6] = v18;
  v89[7] = v19;
  v89[8] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:9];
  v88 = v83;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v24 = [(_GCDevicePhysicalInputComponentDescription *)v21 initWithIdentifier:@"PhysicalInput" elements:v22 bindings:v23];

  [v85 addObject:v24];
  v79 = [(_GCNintendoJoyConDevice *)v81 gamepadEventSource];
  v84 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v84 setAliases:v25];

  [v84 setLocalizedName:*MEMORY[0x1E69A0338]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v84 setSymbol:v26];

  [v84 setEventPressedValueField:4];
  v82 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v82 setAliases:v27];

  [v82 setLocalizedName:*MEMORY[0x1E69A0340]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v82 setSymbol:v28];

  [v82 setEventPressedValueField:5];
  v29 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v29 setAliases:v30];

  [v29 setLocalizedName:*MEMORY[0x1E69A03A8]];
  v31 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v29 setSymbol:v31];

  [v29 setEventPressedValueField:6];
  v32 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v33 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v32 setAliases:v33];

  [v32 setLocalizedName:*MEMORY[0x1E69A03B0]];
  v34 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v32 setSymbol:v34];

  [v32 setEventPressedValueField:7];
  v35 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v36 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v35 setAliases:v36];

  [v35 setLocalizedName:*MEMORY[0x1E69A0480]];
  v37 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v35 setSymbol:v37];

  [v35 setEventPressedValueField:8];
  v38 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v39 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v38 setAliases:v39];

  [v38 setLocalizedName:*MEMORY[0x1E69A0518]];
  v40 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v38 setSymbol:v40];

  [v38 setEventPressedValueField:9];
  v41 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.start"];
  v42 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v41 setAliases:v42];

  [v41 setLocalizedName:*MEMORY[0x1E69A0380]];
  v43 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
  [v41 setSymbol:v43];

  [v41 setEventPressedValueField:23];
  v44 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.home"];
  v45 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v44 setAliases:v45];

  [v44 setLocalizedName:*MEMORY[0x1E69A0348]];
  v46 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
  [v44 setSymbol:v46];

  [v44 setEventPressedValueField:22];
  v47 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v48 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v47 setAliases:v48];

  [v47 setLocalizedName:*MEMORY[0x1E69A03B8]];
  v49 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v47 setSymbol:v49];

  [v47 setAnalog:0];
  [v47 setEventUpValueField:0];
  [v47 setEventDownValueField:1];
  [v47 setEventLeftValueField:2];
  [v47 setEventRightValueField:3];
  v50 = objc_opt_new();
  v87[0] = v84;
  v87[1] = v82;
  v87[2] = v29;
  v87[3] = v32;
  v87[4] = v35;
  v87[5] = v38;
  v87[6] = v41;
  v87[7] = v44;
  v87[8] = v47;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:9];
  [v50 setElements:v51];

  v52 = [_GCControllerInputComponentDescription alloc];
  v86 = v79;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v54 = [(_GCControllerInputComponentDescription *)v52 initWithIdentifier:@"Input" controllerInputs:v50 bindings:v53];

  [v85 addObject:v54];
  v55 = v81;
  objc_sync_enter(v55);
  v56 = [(NSMapTable *)v55->_clientPlayerIndicatorEndpoints objectForKey:v80];
  if (!v56)
  {
    v57 = [GCPlayerIndicatorXPCProxyServerEndpoint alloc];
    v58 = [MEMORY[0x1E696AFB0] UUID];
    v56 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v57 initWithIdentifier:v58 initialValue:v55->_indicatedPlayerIndex];

    [(GCPlayerIndicatorXPCProxyServerEndpoint *)v56 setDelegate:v55];
    [(NSMapTable *)v55->_clientPlayerIndicatorEndpoints setObject:v56 forKey:v80];
    v59 = [v80 IPCObjectRegistry];
    [v59 registerIPCObject:v56];
  }

  v60 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v56 receiverDescription];
  [v85 addObject:v60];

  objc_sync_exit(v55);
  v61 = v55;
  objc_sync_enter(v61);
  v62 = [v61[12] objectForKey:v80];
  if (!v62)
  {
    v63 = [GCBatteryXPCProxyServerEndpoint alloc];
    v64 = [MEMORY[0x1E696AFB0] UUID];
    v62 = [(GCBatteryXPCProxyServerEndpoint *)v63 initWithIdentifier:v64 initialValue:v61[11]];

    [(GCBatteryXPCProxyServerEndpoint *)v62 setDelegate:v61];
    [v61[12] setObject:v62 forKey:v80];
    v65 = [v80 IPCObjectRegistry];
    [v65 registerIPCObject:v62];
  }

  v66 = [(GCBatteryXPCProxyServerEndpoint *)v62 receiverDescription];
  [v85 addObject:v66];

  objc_sync_exit(v61);
  v67 = [GCHapticCapabilities alloc];
  v68 = [v61 hapticEngines];
  v69 = [v61 hapticCapabilityGraph];
  v70 = [(GCHapticCapabilities *)v67 initWithIdentifier:@"HapticCapabilities" hapticEnginesInfo:v68 hapticCapabilityGraph:v69];

  v71 = [[_GCControllerComponentDescription alloc] initWithComponent:v70 bindings:0];
  [v85 addObject:v71];

  v72 = [_GCControllerDescription alloc];
  v73 = [v61 identifier];
  v74 = [(_GCControllerDescription *)v72 initWithIdentifier:v73 components:v85];

  v75 = *MEMORY[0x1E69E9840];

  return v74;
}

- (_GCGamepadEventSourceDescription)gamepadEventSource
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_GCCControllerManagerDescription);
  v4 = [[_GCCControllerHIDServiceInfoDescription alloc] initWithServiceInfo:self->_serviceInfo];
  v5 = [[_GCKeyboardEventHIDAdapterDescription alloc] initWithSource:v3 service:v4];
  v6 = [[_GCGamepadEventGamepadHIDAdapterDescription alloc] initWithSource:v3 service:v4];
  v7 = objc_opt_new();
  [v7 mapUsagePage:12 usage:547 toGamepadElement:22];
  [v7 mapUsagePage:12 usage:516 toGamepadElement:23];
  [v7 mapUsagePage:12 usage:521 toGamepadElement:24];
  [v7 mapUsagePage:12 usage:178 toGamepadElement:40];
  v8 = [[_GCGamepadEventKeyboardEventAdapterDescription alloc] initWithConfiguration:v7 source:v5];
  v9 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
  for (i = 0; i != 47; ++i)
  {
    v12 = ((i - 24) & 0xFFFFFFFFFFFFFFEFLL) != 0 && (i & 0x3E) != 22;
    [(_GCGamepadEventFusionConfig *)v9 setPassRule:1 forElement:i forSourceAtIndex:v12];
  }

  v13 = [_GCGamepadEventFusionDescription alloc];
  v18[0] = v8;
  v18[1] = v6;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [(_GCGamepadEventFusionDescription *)v13 initWithConfiguration:v9 sources:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setIndicatedPlayerIndex:(int64_t)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  self->_indicatedPlayerIndex = a3;
  v3 = a3 + 1;
  if ((a3 + 1) <= 8)
  {
    v4 = [(GCHIDServiceInfo *)self->_serviceInfo service];
    v5 = dword_1D2DEE2D0[v3];
    v6 = dword_1D2DEE2D0[v3];
    v21 = @"LED";
    if (v6 >= 3)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v5];
      v7 = [v8 description];
    }

    else
    {
      v7 = off_1E8419D48[v5 & 3];
    }

    v20[0] = v7;
    if (BYTE1(v5) >= 3u)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:BYTE1(v5)];
      v9 = [v10 description];
    }

    else
    {
      v9 = off_1E8419D48[(v5 >> 8) & 3];
    }

    v20[1] = v9;
    if (BYTE2(v5) >= 3u)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:BYTE2(v5)];
      v11 = [v12 description];
    }

    else
    {
      v11 = off_1E8419D48[WORD1(v5) & 3];
    }

    v13 = v5 >> 24;
    v20[2] = v11;
    if (BYTE3(v5) >= 3u)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v13];
      v14 = [v15 description];
    }

    else
    {
      v14 = off_1E8419D48[v13];
    }

    v20[3] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v22[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v18 = v17;
    IOHIDServiceClientSetProperty(v4, @"JoyConPlayerLights", v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)deviceBatteryComponentBatteryUpdatedHandler
{
  v2 = _Block_copy(self->_batteryComponentBatteryUpdatedHandler);

  return v2;
}

- (void)setDeviceBatteryComponentBatteryUpdatedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  batteryComponentBatteryUpdatedHandler = self->_batteryComponentBatteryUpdatedHandler;
  self->_batteryComponentBatteryUpdatedHandler = v4;
}

- (id)readBattery
{
  v3 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  batteryServiceServer = self->_batteryServiceServer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___GCNintendoJoyConDevice_Components__readBattery__block_invoke;
  v9[3] = &unk_1E8419D28;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [(GCBatteryServiceServerInterface *)batteryServiceServer readBatteryWithReply:v9];
  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)propagateBattery:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(GCDeviceBattery *)self->_battery isEqual:v5])
  {
    if (gc_isInternalBuild())
    {
      [_GCNintendoJoyConDevice(Components) propagateBattery:];
    }

    objc_storeStrong(&self->_battery, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NSMapTable *)self->_clientBatteryEndpoints objectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v15 + 1) + 8 * i) setBattery:self->_battery];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if (self->_batteryComponentBatteryUpdatedHandler)
    {
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56___GCNintendoJoyConDevice_Components__propagateBattery___block_invoke;
      v12[3] = &unk_1E8418D18;
      objc_copyWeak(&v13, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v12);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)hapticEngines
{
  v9[1] = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type == 2)
  {
    v3 = [[GCHapticActuator alloc] initWithLabel:@"JoyCon Right" type:1 index:1];
    v8 = v3;
    v4 = &v8;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = [[GCHapticActuator alloc] initWithLabel:@"JoyCon Left" type:1 index:0];
    v9[0] = v3;
    v4 = v9;
LABEL_5:
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (GCHapticCapabilityGraph)hapticCapabilityGraph
{
  type = self->_type;
  v3 = objc_opt_class();
  if (type == 1)
  {
    v4 = @"JoyConLeftHapticCapabilityGraph";
  }

  else
  {
    v4 = @"JoyConRightHapticCapabilityGraph";
  }

  v5 = loadNSDictionaryFromJSON(v3, v4);
  v6 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v5];

  return v6;
}

- (void)homeButtonLongPressGesture:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___GCNintendoJoyConDevice_Fusion__homeButtonLongPressGesture___block_invoke;
  v3[3] = &unk_1E8419650;
  v3[4] = self;
  v4 = a3;
  _os_activity_initiate(&dword_1D2CD5000, "(JoyCon Fusion Gesture Service) Home Button Long Press Gesture", OS_ACTIVITY_FLAG_DEFAULT, v3);
}

- (void)requestIdleDisconnect:(id)a3
{
  v3 = a3;
  if (gc_isInternalBuild())
  {
    [_GCNintendoJoyConDevice(Idle) requestIdleDisconnect:];
  }

  v4 = [_GCBluetoothDeviceIdentifier identifierWithHardwareAddressString:v3];
  v5 = [[_GCBluetoothDeviceDisconnectionRequest alloc] initWithDeviceIdentifier:v4];
  [(_GCBluetoothDeviceDisconnectionRequest *)v5 performRequest:0];
}

- (void)initWithHIDDevice:(uint64_t)a1 manager:(uint64_t *)a2 type:.cold.1(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v4))
  {
    v11 = *a2;
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end