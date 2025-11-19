@interface CBPeripheral
- (BOOL)sendMsg:(int)a3 args:(id)a4 withReply:(id)a5;
- (CBPeripheral)initWithCentralManager:(id)a3 info:(id)a4;
- (NSUInteger)maximumWriteValueLengthForType:(CBCharacteristicWriteType)type;
- (id)delegate;
- (id)description;
- (id)extendedDescription;
- (id)l2capChannelForPeer:(id)a3 withCID:(unsigned __int16)a4;
- (id)l2capChannelForPeer:(id)a3 withPsm:(unsigned __int16)a4;
- (id)sendSyncMsg:(int)a3 args:(id)a4;
- (void)dealloc;
- (void)discoverCharacteristics:(NSArray *)characteristicUUIDs forService:(CBService *)service;
- (void)discoverDescriptorsForCharacteristic:(CBCharacteristic *)characteristic;
- (void)discoverIncludedServices:(NSArray *)includedServiceUUIDs forService:(CBService *)service;
- (void)discoverServices:(NSArray *)serviceUUIDs;
- (void)getRangingTones:(id)a3;
- (void)handleAttributeEvent:(id)a3 args:(id)a4 attributeSelector:(SEL)a5 delegateSelector:(SEL)a6 delegateFlag:(BOOL)a7;
- (void)handleCSProcedureEventForDeviceMsg:(id)a3;
- (void)handleDisconnection;
- (void)handleL2CAPChannelClosed:(id)a3;
- (void)handleL2CAPChannelDidReceiveData:(id)a3;
- (void)handleL2CAPChannelOpened:(id)a3;
- (void)handleLEAudioActivePresetUpdated:(id)a3;
- (void)handleLEAudioConnected:(id)a3;
- (void)handleLEAudioEvents:(id)a3;
- (void)handleLEAudioHearingAidFeaturesUpdated:(id)a3;
- (void)handleLEAudioMicrophoneGainUpdated:(id)a3;
- (void)handleLEAudioMicrophoneMuteUpdated:(id)a3;
- (void)handleLEAudioMsg:(int)a3 args:(id)a4;
- (void)handleLEAudioPresetNameUpdated:(id)a3;
- (void)handleLEAudioPresetUpdated:(id)a3;
- (void)handleLEAudioVolumeGainUpdated:(id)a3;
- (void)handleLEAudioVolumeMuteUpdated:(id)a3;
- (void)handleLEAudioVolumeOffsetUpdated:(id)a3;
- (void)handleLEAudioVolumeUpdated:(id)a3;
- (void)handleNameUpdated:(id)a3;
- (void)handleRSSIUpdated:(id)a3;
- (void)handleServicesChanged:(id)a3;
- (void)handleServicesDiscovered:(id)a3;
- (void)handleSuccessfulConnection:(id)a3;
- (void)handleTimeSyncResponse:(id)a3;
- (void)handleVisibilityChanged:(id)a3;
- (void)invalidateAllAttributes;
- (void)isReadyForUpdates;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)readPresets:(id)a3;
- (void)readRSSI;
- (void)readValueForCharacteristic:(CBCharacteristic *)characteristic;
- (void)readValueForDescriptor:(CBDescriptor *)descriptor;
- (void)sendLEAudioMsg:(id)a3 args:(id)a4 completion:(id)a5;
- (void)sendMsg:(int)a3 requiresConnected:(BOOL)a4 args:(id)a5;
- (void)setActivePreset:(int64_t)a3 OptionalPresetIndex:(unsigned __int8)a4 withResponse:(id)a5;
- (void)setMicrophoneMute:(int64_t)a3 withResponse:(id)a4;
- (void)setPeripheralName:(id)a3;
- (void)setVolume:(unsigned __int8)a3 withResponse:(id)a4;
- (void)setVolumeMute:(int64_t)a3 withResponse:(id)a4;
- (void)setVolumeOffSet:(unsigned int)a3 withOffSetValue:(signed __int16)a4 withResponse:(id)a5;
- (void)updateFindMyInfo:(id)a3;
- (void)writeMicrophoneAudioInput:(int64_t)a3 forAudioInputType:(unsigned __int8)a4 withOptionalGain:(char)a5 withResponse:(id)a6;
- (void)writePresetName:(unsigned __int8)a3 withName:(id)a4 withResponse:(id)a5;
- (void)writeValue:(NSData *)data forCharacteristic:(CBCharacteristic *)characteristic type:(CBCharacteristicWriteType)type;
- (void)writeValue:(NSData *)data forDescriptor:(CBDescriptor *)descriptor;
- (void)writeVolumeAudioInput:(int64_t)a3 forAudioInputType:(unsigned __int8)a4 withOptionalGain:(char)a5 withResponse:(id)a6;
@end

@implementation CBPeripheral

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Cancelling connection for unused peripheral %@, Did you forget to keep a reference to it?", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (CBPeripheral)initWithCentralManager:(id)a3 info:(id)a4
{
  v6 = a4;
  v27.receiver = self;
  v27.super_class = CBPeripheral;
  v7 = [(CBPeer *)&v27 initWithInfo:v6 manager:a3];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"kCBMsgArgName"];
    name = v7->_name;
    v7->_name = v8;

    v10 = [v6 objectForKeyedSubscript:@"kCBMsgArgAdvertisementData"];
    v11 = [v10 objectForKeyedSubscript:@"kCBAdvDataAppearance"];
    v7->_appearance = [v11 unsignedShortValue];

    RSSI = v7->_RSSI;
    v7->_RSSI = 0;

    v7->_state = 0;
    services = v7->_services;
    v7->_services = 0;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributes = v7->_attributes;
    v7->_attributes = v14;

    v16 = [v6 objectForKeyedSubscript:@"kCBMsgArgConnectionState"];
    v7->_isConnectedToSystem = [v16 BOOLValue];

    v17 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    l2capChannels = v7->_l2capChannels;
    v7->_l2capChannels = v17;

    v19 = [v6 objectForKeyedSubscript:@"kCBMsgArgAncsAuthorization"];
    v7->_ancsAuthorized = [v19 BOOLValue];

    v20 = [v6 objectForKey:@"kCBMsgArgVisibleInSettings"];

    if (v20)
    {
      v21 = [v6 objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
      v7->_visibleInSettings = [v21 BOOLValue];
    }

    else
    {
      v7->_visibleInSettings = 1;
    }

    v22 = [v6 objectForKeyedSubscript:@"kCBMsgArgWhbStableIdentifier"];
    stableIdentifier = v7->_stableIdentifier;
    v7->_stableIdentifier = v22;

    v24 = [v6 objectForKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];
    remoteControllerId = v7->_remoteControllerId;
    v7->_remoteControllerId = v24;

    [(CBPeripheral *)v7 addObserver:v7 forKeyPath:@"delegate" options:0 context:0];
    [(CBPeripheral *)v7 updateFindMyInfo:v6];
  }

  return v7;
}

- (void)updateFindMyInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgFindMyGroupMembers"];
  findMyGroupMembers = self->_findMyGroupMembers;
  self->_findMyGroupMembers = v5;

  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgFindMySerialNumberString"];
  findMySerialNumberString = self->_findMySerialNumberString;
  self->_findMySerialNumberString = v7;

  v9 = [v4 objectForKeyedSubscript:@"kCBMsgArgFindMyPartNumber"];
  self->_findMyPartIdentifier = [v9 intValue];

  v10 = [v4 objectForKeyedSubscript:@"kCBMsgArgFindMyManaged"];
  self->_managedByFindMy = [v10 BOOLValue];

  v11 = [v4 objectForKeyedSubscript:@"kCBMsgArgFindMyBeaconID"];
  findMyBeaconIdentifier = self->_findMyBeaconIdentifier;
  self->_findMyBeaconIdentifier = v11;

  v13 = [v4 objectForKeyedSubscript:@"kCBMsgArgFindMyUserID"];

  findMyUserIdentifier = self->_findMyUserIdentifier;
  self->_findMyUserIdentifier = v13;
}

- (id)description
{
  state = self->_state;
  if (state > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E811E780[state];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(CBPeer *)self identifier];
  v8 = [v7 UUIDString];
  v9 = [v5 stringWithFormat:@"<%@: %p, identifier = %@, name = %@, mtu = %lu, state = %@>", v6, self, v8, self->_name, -[CBPeer mtuLength](self, "mtuLength"), v4];

  return v9;
}

- (id)extendedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CBPeripheral *)self description];
  v5 = v4;
  v6 = "NO";
  if (self->_visibleInSettings)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_managedByFindMy)
  {
    v6 = "YES";
  }

  v8 = [v3 stringWithFormat:@"%@ visibleInSettings %s findMyPartId:%d findMySerialNum:%@ findMyGroupMembers:%@ _findMyBeaconIdentifier:%@ _findMyUserIdentifier:%@ managedByFindMy:%s ", v4, v7, self->_findMyPartIdentifier, self->_findMySerialNumberString, self->_findMyGroupMembers, self->_findMyBeaconIdentifier, self->_findMyUserIdentifier, v6];

  return v8;
}

- (void)sendMsg:(int)a3 requiresConnected:(BOOL)a4 args:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(CBPeer *)self manager];

  if (v9)
  {
    if (self->_state == 2 || !v5)
    {
      goto LABEL_9;
    }

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer sendMsg:requiresConnected:args:];
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      if (v8)
      {
LABEL_11:
        v11 = [(CBPeer *)self identifier];
        [v8 setObject:v11 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

        v12 = [(CBPeer *)self manager];
        [v12 sendMsg:v6 args:v8];

LABEL_12:
        return;
      }
    }

    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  [CBPeripheral sendMsg:requiresConnected:args:];
}

- (id)sendSyncMsg:(int)a3 args:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v7 = [(CBPeer *)self identifier];
  [v6 setObject:v7 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v8 = [(CBPeer *)self manager];
  v9 = [v8 sendSyncMsg:v4 args:v6];

  return v9;
}

- (BOOL)sendMsg:(int)a3 args:(id)a4 withReply:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v10 = [(CBPeer *)self identifier];
  [v8 setObject:v10 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v11 = [(CBPeer *)self manager];
  v12 = [v11 sendMsg:v6 args:v8 withReply:v9];

  return v12;
}

- (void)invalidateAllAttributes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_services;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CBPeripheral *)self setServices:0];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleSuccessfulConnection:(id)a3
{
  v4 = a3;
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsLinkEncrypted"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionRole"];

  [(CBPeer *)self setHostState:0];
  -[CBPeer setMtuLength:](self, "setMtuLength:", [v8 unsignedIntegerValue]);
  -[CBPeer setIsLinkEncrypted:](self, "setIsLinkEncrypted:", [v5 BOOLValue]);
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:1];
  -[CBPeer setConnectedTransport:](self, "setConnectedTransport:", [v6 unsignedIntegerValue]);
  if (v7)
  {
    -[CBPeer setRole:](self, "setRole:", [v7 unsignedIntegerValue]);
  }

  [(CBPeripheral *)self setState:2];
}

- (void)handleDisconnection
{
  [(CBPeripheral *)self setRSSI:0];
  [(CBPeripheral *)self setState:0];
  [(CBPeer *)self setHostState:0];
  [(CBPeer *)self setMtuLength:23];
  [(CBPeer *)self setIsLinkEncrypted:0];
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:0];
  [(CBPeer *)self setRole:-1];
  [(CBPeripheral *)self invalidateAllAttributes];

  [(CBPeripheral *)self setRemoteControllerId:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"delegate", a4, a5, a6}])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);

    v8 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFD | v9);

    v10 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFB | v11);

    v12 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFF7 | v13);

    v14 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFEF | v15);

    v16 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFDF | v17);

    v18 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v19 = 64;
    }

    else
    {
      v19 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFBF | v19);

    v20 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v21 = 128;
    }

    else
    {
      v21 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFF7F | v21);

    v22 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFEFF | v23);

    v24 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFDFF | v25);

    v26 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v27 = 1024;
    }

    else
    {
      v27 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFBFF | v27);

    v28 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v29 = 2048;
    }

    else
    {
      v29 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFF7FF | v29);

    v30 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v31 = 4096;
    }

    else
    {
      v31 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFEFFF | v31);

    v32 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v33 = 0x2000;
    }

    else
    {
      v33 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFDFFF | v33);

    v34 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v35 = 0x4000;
    }

    else
    {
      v35 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFBFFF | v35);

    v36 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v37 = 0x8000;
    }

    else
    {
      v37 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFF7FFF | v37);

    v39 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v38 = 0x10000;
    }

    else
    {
      v38 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFEFFFF | v38);
  }
}

- (void)readRSSI
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Reading RSSI for peripheral %@ while delegate is either nil or does not implement peripheral:didReadRSSI:error:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)discoverServices:(NSArray *)serviceUUIDs
{
  v4 = serviceUUIDs;
  if ((*&self->_delegateFlags & 0x10) == 0)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral discoverServices:];
    }
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"kCBMsgArgUUIDs", 0}];
  [(CBPeripheral *)self sendMsg:187 args:v6];
}

- (void)discoverIncludedServices:(NSArray *)includedServiceUUIDs forService:(CBService *)service
{
  v6 = includedServiceUUIDs;
  v7 = service;
  if (!v7)
  {
    [CBPeripheral discoverIncludedServices:forService:];
  }

  if ((*&self->_delegateFlags & 0x20) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral discoverIncludedServices:forService:];
  }

LABEL_6:
  v8 = [(CBService *)v7 peripheral];

  if (v8 == self)
  {
    v9 = MEMORY[0x1E695DF90];
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v11 = [(CBService *)v7 startHandle];
    v12 = [(CBService *)v7 endHandle];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgUUIDs", v11, @"kCBMsgArgServiceStartHandle", v12, @"kCBMsgArgServiceEndHandle", 0}];
    [(CBPeripheral *)self sendMsg:199 args:v13];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      [CBPeripheral discoverIncludedServices:forService:];
    }
  }

LABEL_14:
}

- (void)discoverCharacteristics:(NSArray *)characteristicUUIDs forService:(CBService *)service
{
  v6 = characteristicUUIDs;
  v7 = service;
  if (!v7)
  {
    [CBPeripheral discoverCharacteristics:forService:];
  }

  if ((*&self->_delegateFlags & 0x40) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral discoverCharacteristics:forService:];
  }

LABEL_6:
  v8 = [(CBService *)v7 peripheral];

  if (v8 == self)
  {
    v9 = MEMORY[0x1E695DF90];
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v11 = [(CBService *)v7 startHandle];
    v12 = [(CBService *)v7 endHandle];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgUUIDs", v11, @"kCBMsgArgServiceStartHandle", v12, @"kCBMsgArgServiceEndHandle", 0}];
    [(CBPeripheral *)self sendMsg:200 args:v13];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      [CBPeripheral discoverIncludedServices:forService:];
    }
  }

LABEL_14:
}

- (void)readValueForCharacteristic:(CBCharacteristic *)characteristic
{
  v4 = characteristic;
  if (!v4)
  {
    [CBPeripheral readValueForCharacteristic:];
  }

  if ((*&self->_delegateFlags & 0x80) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral readValueForCharacteristic:];
  }

LABEL_6:
  v5 = [(CBCharacteristic *)v4 peripheral];

  if (v5 == self)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = [(CBCharacteristic *)v4 handle];
    v8 = [(CBCharacteristic *)v4 valueHandle];
    v9 = [v6 dictionaryWithObjectsAndKeys:{v7, @"kCBMsgArgCharacteristicHandle", v8, @"kCBMsgArgCharacteristicValueHandle", 0}];
    [(CBPeripheral *)self sendMsg:203 args:v9];

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    [CBPeripheral readValueForCharacteristic:];
  }

LABEL_11:
}

- (NSUInteger)maximumWriteValueLengthForType:(CBCharacteristicWriteType)type
{
  if (type == CBCharacteristicWriteWithResponse)
  {
    return 512;
  }

  if (type != CBCharacteristicWriteWithoutResponse)
  {
    return 0;
  }

  v5 = [(CBPeer *)self mtuLength:v3];
  if (v5 - 3 >= 0x200)
  {
    return 512;
  }

  else
  {
    return v5 - 3;
  }
}

- (void)isReadyForUpdates
{
  v3 = [(CBPeripheral *)self writesPending];
  [(CBPeripheral *)self setWritesPending:0];
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:1];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 peripheralIsReadyToSendWriteWithoutResponse:self];
      }
    }
  }
}

- (void)writeValue:(NSData *)data forCharacteristic:(CBCharacteristic *)characteristic type:(CBCharacteristicWriteType)type
{
  v8 = data;
  v9 = characteristic;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CBPeripheral writeValue:forCharacteristic:type:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [CBPeripheral writeValue:forCharacteristic:type:];
LABEL_3:
  v11 = [(CBCharacteristic *)v10 peripheral];

  if (v11 == self)
  {
    if (type == CBCharacteristicWriteWithoutResponse && ([(CBCharacteristic *)v10 properties]& 4) == 0)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBPeripheral writeValue:forCharacteristic:type:];
      }
    }

    v12 = MEMORY[0x1E695DF90];
    v13 = [(CBCharacteristic *)v10 handle];
    v14 = [(CBCharacteristic *)v10 valueHandle];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v16 = [v12 dictionaryWithObjectsAndKeys:{v13, @"kCBMsgArgCharacteristicHandle", v14, @"kCBMsgArgCharacteristicValueHandle", v8, @"kCBMsgArgData", v15, @"kCBMsgArgType", 0}];
    [(CBPeripheral *)self sendMsg:204 args:v16];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral readValueForCharacteristic:];
    }
  }

  if (type == CBCharacteristicWriteWithoutResponse)
  {
    [(CBPeripheral *)self setWritesPending:[(CBPeripheral *)self writesPending]+ 1];
    [(CBPeripheral *)self setCanSendWriteWithoutResponse:[(CBPeripheral *)self writesPending]== 0];
  }
}

- (void)discoverDescriptorsForCharacteristic:(CBCharacteristic *)characteristic
{
  v4 = characteristic;
  if (!v4)
  {
    [CBPeripheral discoverDescriptorsForCharacteristic:];
  }

  if ((*(&self->_delegateFlags + 1) & 4) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral discoverDescriptorsForCharacteristic:];
  }

LABEL_6:
  v5 = [(CBCharacteristic *)v4 peripheral];

  if (v5 == self)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = [(CBCharacteristic *)v4 handle];
    v8 = [(CBCharacteristic *)v4 valueHandle];
    v9 = [v6 dictionaryWithObjectsAndKeys:{v7, @"kCBMsgArgCharacteristicHandle", v8, @"kCBMsgArgCharacteristicValueHandle", 0}];
    [(CBPeripheral *)self sendMsg:207 args:v9];

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    [CBPeripheral readValueForCharacteristic:];
  }

LABEL_11:
}

- (void)readValueForDescriptor:(CBDescriptor *)descriptor
{
  v4 = descriptor;
  if (!v4)
  {
    [CBPeripheral readValueForDescriptor:];
  }

  if ((*(&self->_delegateFlags + 1) & 8) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral readValueForDescriptor:];
  }

LABEL_6:
  v5 = [(CBDescriptor *)v4 peripheral];

  if (v5 == self)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = [(CBDescriptor *)v4 handle];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, @"kCBMsgArgDescriptorHandle", 0}];
    [(CBPeripheral *)self sendMsg:213 args:v8];

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    [CBPeripheral readValueForDescriptor:];
  }

LABEL_11:
}

- (void)writeValue:(NSData *)data forDescriptor:(CBDescriptor *)descriptor
{
  v6 = data;
  v7 = descriptor;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CBPeripheral writeValue:forDescriptor:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CBPeripheral writeValue:forDescriptor:];
LABEL_3:
  v9 = [(CBAttribute *)v8 UUID];
  v10 = [CBUUID UUIDWithString:@"2902"];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    [CBPeripheral writeValue:forDescriptor:];
  }

  v12 = [(CBDescriptor *)v8 peripheral];

  if (v12 == self)
  {
    v13 = MEMORY[0x1E695DF90];
    v14 = [(CBDescriptor *)v8 handle];
    v15 = [v13 dictionaryWithObjectsAndKeys:{v14, @"kCBMsgArgDescriptorHandle", v6, @"kCBMsgArgData", 0}];
    [(CBPeripheral *)self sendMsg:214 args:v15];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral readValueForDescriptor:];
    }
  }
}

- (void)getRangingTones:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [CBPeripheral getRangingTones:];
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = MEMORY[0x1E695DF90];
  v6 = [(CBPeer *)self identifier];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgDeviceUUID", v4, @"kCBMsgArgOptions", 0}];
  [(CBPeripheral *)self sendMsg:198 args:v7];
}

- (void)setPeripheralName:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [CBPeripheral setPeripheralName:];
    v4 = 0;
  }

  [(CBPeripheral *)self setName:v4];
  v5 = MEMORY[0x1E695DF90];
  v6 = [(CBPeer *)self identifier];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgDeviceUUID", v8, @"kCBMsgArgName", 0}];
  [(CBPeripheral *)self sendMsg:194 args:v7];
}

- (id)l2capChannelForPeer:(id)a3 withPsm:(unsigned __int16)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_l2capChannels;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = [v12 peer];
      if ([v13 isEqual:v6])
      {
        v14 = [v12 PSM];

        if (v14 == v4)
        {
          v15 = v12;

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (!v9)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBPeripheral l2capChannelForPeer:withPsm:];
  }

  v15 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)l2capChannelForPeer:(id)a3 withCID:(unsigned __int16)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_l2capChannels;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = [v12 peer];
      if ([v13 isEqual:v6])
      {
        v14 = [v12 cid];

        if (v14 == v4)
        {
          v15 = v12;

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (!v9)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBPeripheral l2capChannelForPeer:withCID:];
  }

  v15 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __59__CBPeripheral_enableFastLeConnection_withInfo_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:a2];
    (*(v3 + 16))(v3, v6);
  }
}

- (void)handleNameUpdated:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"kCBMsgArgName"];
  [(CBPeripheral *)self setName:?];
  if (*&self->_delegateFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheralDidUpdateName:self];
  }
}

- (void)handleServicesChanged:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
  v22 = v4;
  v24 = [v4 objectForKeyedSubscript:@"kCBMsgArgServiceEndHandle"];
  v23 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = self;
  v6 = self->_services;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 endHandle];
        v13 = [v12 unsignedShortValue];
        if (v13 < [v5 unsignedShortValue])
        {
        }

        else
        {
          v14 = [v11 startHandle];
          v15 = [v14 unsignedShortValue];
          v16 = [v24 unsignedShortValue];

          if (v15 <= v16)
          {
            [v11 invalidate];
            [v23 addObject:v11];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if ([v23 count])
  {
    v17 = [(NSArray *)v21->_services mutableCopy];
    [v17 removeObjectsInArray:v23];
    [(CBPeripheral *)v21 setServices:v17];
  }

  if ((*&v21->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&v21->_delegate);
    [WeakRetained peripheral:v21 didModifyServices:v23];

    v18 = v22;
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    v18 = v22;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral handleServicesChanged:];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)handleRSSIUpdated:(id)a3
{
  v4 = a3;
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgData"];
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];

  delegateFlags = self->_delegateFlags;
  if ((*&delegateFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheral:self didReadRSSI:v8 error:v5];
LABEL_8:

    goto LABEL_9;
  }

  if (!v5)
  {
    [(CBPeripheral *)self setRSSI:v8];
    if ((*&self->_delegateFlags & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((*&delegateFlags & 8) != 0)
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheralDidUpdateRSSI:self error:v5];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)handleVisibilityChanged:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
  self->_visibleInSettings = [v4 BOOLValue];
}

- (void)handleTimeSyncResponse:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:?];
  if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v11 objectForKeyedSubscript:@"kCBMsgArgTimeOfDay"];
    v7 = [v11 objectForKeyedSubscript:@"kCBMsgArgLocalRefTime"];
    v8 = [v11 objectForKeyedSubscript:@"kCBMsgArgRemoteRefTime"];
    v9 = [v11 objectForKeyedSubscript:@"kCBMsgArgTimeToSend"];
    v10 = [v11 objectForKeyedSubscript:@"kCBMsgArgGMTDelta"];
    [WeakRetained peripheral:self didReceiveTimeSyncWithReferenceTime:v6 localAbsolute:v7 remoteAbsolute:v8 receiveTime:v9 GMTDelta:v10 error:v4];
  }
}

- (void)handleCSProcedureEventForDeviceMsg:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:?];
  if ((*(&self->_delegateFlags + 1) & 0x40) != 0)
  {
    v5 = [(CBPeripheral *)self delegate];
    [v5 peripheral:self didCompleteChannelSoundingProcedure:v6 error:v4];
  }
}

- (void)handleServicesDiscovered:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (!v5)
  {
    v23 = v4;
    v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgServices"];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_services];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v11)
    {
LABEL_29:

      v22 = [v9 copy];
      [(CBPeripheral *)self setServices:v22];

      v5 = 0;
      v4 = v23;
      if ((*&self->_delegateFlags & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v12 = v11;
    v13 = *v25;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v24 + 1) + 8 * v14);
      v17 = [v16 objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
      v15 = [(CBPeripheral *)self attributeForHandle:v17];
      if (v15)
      {
        if (([v9 containsObject:v15] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v19 = [v16 objectForKeyedSubscript:@"kCBMsgArgUUID"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v19 length] != 2 && objc_msgSend(v19, "length") != 4 && objc_msgSend(v19, "length") != 16)
        {
          if (CBLogInitOnce != -1)
          {
            [CBClassicPeer handlePeerUpdated:];
          }

          v21 = CBLogComponent;
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v29 = self;
            v30 = 2112;
            v31 = v17;
            _os_log_debug_impl(&dword_1C0AC1000, v21, OS_LOG_TYPE_DEBUG, "Data in %@ does not contain a valid UUID for service handle = %@", buf, 0x16u);
          }

          v15 = 0;
          goto LABEL_10;
        }

        v15 = [[CBService alloc] initWithPeripheral:self dictionary:v16];
        v20 = [(CBService *)v15 startHandle];
        [(CBPeripheral *)self setAttribute:v15 forHandle:v20];

        if (([v9 containsObject:v15] & 1) == 0)
        {
LABEL_15:
          [v9 addObject:v15];
          if (CBLogInitOnce != -1)
          {
            [CBClassicPeer handlePeerUpdated:];
          }

          v18 = CBLogComponent;
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v29 = v15;
            v30 = 2112;
            v31 = self;
            _os_log_debug_impl(&dword_1C0AC1000, v18, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
          }
        }
      }

LABEL_10:

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }
  }

  if ((*&self->_delegateFlags & 0x10) != 0)
  {
LABEL_3:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheral:self didDiscoverServices:v5];
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelOpened:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheral handleL2CAPChannelOpened:v5];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v6)
  {
    if (CBLogInitOnce == -1)
    {
      v7 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v7 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        v8 = 0;
        if ((*(&self->_delegateFlags + 1) & 0x80) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    [CBPeripheral handleL2CAPChannelOpened:v7];
    v8 = 0;
    if ((*(&self->_delegateFlags + 1) & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v11 = [(CBPeripheral *)self delegate];
    [v11 peripheral:self didOpenL2CAPChannel:v8 error:v6];

    goto LABEL_12;
  }

  v9 = [CBL2CAPChannel alloc];
  v10 = [(CBPeer *)self manager];
  v8 = [(CBL2CAPChannel *)v9 initWithPeer:self manager:v10 info:v4];

  [(NSHashTable *)self->_l2capChannels addObject:v8];
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)handleL2CAPChannelClosed:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  v6 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v7 = [v6 intValue];

  v8 = [v4 objectForKey:@"kCBMsgArgCID"];
  v9 = [v8 intValue];

  v10 = [(CBPeripheral *)self l2capChannelForPeer:self withCID:v9];
  if (v10 || ([(CBPeripheral *)self l2capChannelForPeer:self withPsm:v7], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v10 handleChannelClosed:v4];
    if (*(&self->_delegateFlags + 2))
    {
      v12 = [(CBPeripheral *)self delegate];
      [v12 peripheral:self didCloseL2CAPChannel:v11];
    }

    [(NSHashTable *)self->_l2capChannels removeObject:v11];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v14 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109634;
      v15[1] = v7;
      v16 = 1024;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v14, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel closed with psm:%u cid:%u and result:%@", v15, 0x18u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelDidReceiveData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  v6 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v7 = [v6 intValue];

  v8 = [v4 objectForKey:@"kCBMsgArgCID"];
  v9 = [v8 intValue];

  v10 = [(CBPeripheral *)self l2capChannelForPeer:self withCID:v9];
  if (v10 || ([(CBPeripheral *)self l2capChannelForPeer:self withPsm:v7], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v10 handleDataReceived:v4];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v13 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109634;
      v14[1] = v7;
      v15 = 1024;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v13, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel received Data with psm:%u cid:%u and result:%@", v14, 0x18u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendLEAudioMsg:(id)a3 args:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CBPeer *)self manager];
  [v11 sendLEAudioMsg:v10 args:v9 completion:v8];
}

- (void)setVolume:(unsigned __int8)a3 withResponse:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  *uuid = 0;
  v14 = 0;
  v7 = [(CBPeer *)self identifier];
  [v7 getUUIDBytes:uuid];
  *keys = xmmword_1E811E6C8;
  v10 = xpc_uuid_create(uuid);
  v11 = xpc_int64_create(v4);
  v8 = xpc_dictionary_create(keys, &v10, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolume" args:v8 completion:v6];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setVolumeOffSet:(unsigned int)a3 withOffSetValue:(signed __int16)a4 withResponse:(id)a5
{
  v5 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  *uuid = 0;
  v18 = 0;
  v9 = [(CBPeer *)self identifier];
  [v9 getUUIDBytes:uuid];
  *keys = xmmword_1E811E6D8;
  v16 = "kCBMsgArgLEAudioVolumeOffset";
  values = xpc_uuid_create(uuid);
  v13 = xpc_uint64_create(a3);
  v14 = xpc_int64_create(v5);
  v10 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolumeOffSet" args:v10 completion:v8];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setVolumeMute:(int64_t)a3 withResponse:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  *uuid = 0;
  v14 = 0;
  v7 = [(CBPeer *)self identifier];
  [v7 getUUIDBytes:uuid];
  *keys = xmmword_1E811E6F0;
  v10 = xpc_uuid_create(uuid);
  v11 = xpc_uint64_create(a3);
  v8 = xpc_dictionary_create(keys, &v10, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolumeMute" args:v8 completion:v6];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)writeVolumeAudioInput:(int64_t)a3 forAudioInputType:(unsigned __int8)a4 withOptionalGain:(char)a5 withResponse:(id)a6
{
  v6 = a5;
  v7 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a6;
  *uuid = 0;
  v21 = 0;
  v11 = [(CBPeer *)self identifier];
  [v11 getUUIDBytes:uuid];
  *keys = xmmword_1E811E700;
  v19 = *&off_1E811E710;
  v14 = xpc_uuid_create(uuid);
  v15 = xpc_uint64_create(a3);
  v16 = xpc_uint64_create(v7);
  v17 = xpc_int64_create(v6);
  v12 = xpc_dictionary_create(keys, &v14, 4uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWriteVolumeAudioInput" args:v12 completion:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setMicrophoneMute:(int64_t)a3 withResponse:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  *uuid = 0;
  v14 = 0;
  v7 = [(CBPeer *)self identifier];
  [v7 getUUIDBytes:uuid];
  *keys = xmmword_1E811E720;
  v10 = xpc_uuid_create(uuid);
  v11 = xpc_uint64_create(a3);
  v8 = xpc_dictionary_create(keys, &v10, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetMicrophoneMute" args:v8 completion:v6];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)writeMicrophoneAudioInput:(int64_t)a3 forAudioInputType:(unsigned __int8)a4 withOptionalGain:(char)a5 withResponse:(id)a6
{
  v6 = a5;
  v7 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a6;
  *uuid = 0;
  v21 = 0;
  v11 = [(CBPeer *)self identifier];
  [v11 getUUIDBytes:uuid];
  *keys = xmmword_1E811E730;
  v19 = *&off_1E811E740;
  v14 = xpc_uuid_create(uuid);
  v15 = xpc_uint64_create(a3);
  v16 = xpc_uint64_create(v7);
  v17 = xpc_int64_create(v6);
  v12 = xpc_dictionary_create(keys, &v14, 4uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWriteMicrophoneAudioInput" args:v12 completion:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)readPresets:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v11 = 0;
  v4 = a3;
  v5 = [(CBPeer *)self identifier];
  [v5 getUUIDBytes:uuid];

  keys = "kCBMsgArgLEAudioDeviceUUID";
  values = xpc_uuid_create(uuid);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgReadPresets" args:v6 completion:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setActivePreset:(int64_t)a3 OptionalPresetIndex:(unsigned __int8)a4 withResponse:(id)a5
{
  v5 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  *uuid = 0;
  v18 = 0;
  v9 = [(CBPeer *)self identifier];
  [v9 getUUIDBytes:uuid];
  *keys = xmmword_1E811E750;
  v16 = "kCBMsgArgLEAudioPresetIndex";
  values = xpc_uuid_create(uuid);
  v13 = xpc_uint64_create(a3);
  v14 = xpc_uint64_create(v5);
  v10 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetActivePreset" args:v10 completion:v8];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)writePresetName:(unsigned __int8)a3 withName:(id)a4 withResponse:(id)a5
{
  v6 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  *uuid = 0;
  v20 = 0;
  v10 = [(CBPeer *)self identifier];
  [v10 getUUIDBytes:uuid];
  *keys = xmmword_1E811E768;
  v18 = "kCBMsgArgLEAudioPresetName";
  v16 = 0;
  values = xpc_uuid_create(uuid);
  v15 = xpc_uint64_create(v6);
  v11 = v8;
  v16 = xpc_string_create([v8 UTF8String]);
  v12 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWritePresetName" args:v12 completion:v9];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioMsg:(int)a3 args:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 - 236) < 0x14 && ((0xFFC01u >> (a3 + 20)))
  {
    if (self->_state == 2)
    {
      [self *off_1E811E7A0[a3 - 236]];
      goto LABEL_10;
    }

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v12 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = self;
      v15 = 1024;
      v16 = a3;
      v8 = "%@ is not connected, ignoring message: %u";
      v9 = v12;
      v10 = 18;
      goto LABEL_9;
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v7 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = a3;
      v8 = "Unhandled message: %d";
      v9 = v7;
      v10 = 8;
LABEL_9:
      _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioConnected:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioServiceID"];
  if ([v4 unsignedIntValue] == 4)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v5 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "Set LE Audio device type: %@", &v7, 0xCu);
    }

    [(CBPeripheral *)self setLEAudioDeviceType:1];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioVolumeUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioVolume"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:1 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioPresetUpdated:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetIndexes"];
  v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetProperties"];
  v21 = v3;
  v6 = [v3 objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetNames"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v7 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 67109890;
    LOBYTE(v23) = [v4 count];
    v23 = v23;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_1C0AC1000, v8, OS_LOG_TYPE_DEFAULT, "handleLEAudioPresetUpdated, size:%d, %@, %@, %@", buf, 0x26u);
  }

  v19 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithEventType:8];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v4 objectAtIndexedSubscript:v10];
      v13 = [v12 unsignedCharValue];

      v14 = [v5 objectAtIndexedSubscript:v10];
      v15 = [v14 unsignedCharValue];

      v16 = [v6 objectAtIndexedSubscript:v10];
      v17 = [[CBLEAudioHearingAidPreset alloc] initWithValues:v13 withProperty:v15 withName:v16];
      [v9 addObject:v17];

      v10 = ++v11;
    }

    while ([v4 count] > v11);
  }

  [(CBLEAudioHearingAidUpdateEvent *)v19 setPresetResults:v9];
  [(CBPeripheral *)self handleLEAudioEvents:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioVolumeOffsetUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeOffset"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeOffsetUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:2 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioVolumeMuteUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeMuteState"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeMuteUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:4 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioVolumeGainUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeGain"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeGainUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:3 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioMicrophoneMuteUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioMicrophoneMuteState"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioMicrophoneMuteUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:5 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioMicrophoneGainUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioMicrophoneGain"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioMicrophoneGainUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:6 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioActivePresetUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioPresetIndex"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioActivePresetUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithValue:9 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioPresetNameUpdated:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgLEAudioPresetIndex"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioActivePresetUpdated, %@", &v8, 0xCu);
  }

  v6 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithValue:10 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioHearingAidFeaturesUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidType"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidSyncSupported"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidIndependent"];
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidDynamic"];
  v9 = [v4 objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidWritable"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v10 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleLEAudioHearingAidFeaturesUpdated, %@", &v13, 0xCu);
  }

  self->_hearingAidType = [v5 unsignedCharValue];
  self->_presetSyncSupported = [v6 BOOLValue];
  self->_independentPresets = [v7 BOOLValue];
  self->_dynamicPresets = [v8 BOOLValue];
  self->_writablePresets = [v9 BOOLValue];
  v11 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithEventType:7];
  [(CBPeripheral *)self handleLEAudioEvents:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioEvents:(id)a3
{
  v4 = a3;
  v5 = [(CBPeripheral *)self updateHandler];

  if (v5)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v6 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C0AC1000, v6, OS_LOG_TYPE_DEFAULT, "Calling LE audio event handler", v8, 2u);
    }

    v7 = [(CBPeripheral *)self updateHandler];
    (v7)[2](v7, self, v4);

LABEL_7:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  [CBPeripheral handleLEAudioEvents:];
}

- (void)handleAttributeEvent:(id)a3 args:(id)a4 attributeSelector:(SEL)a5 delegateSelector:(SEL)a6 delegateFlag:(BOOL)a7
{
  v7 = a7;
  v17 = a4;
  v12 = [(CBPeripheral *)self attributeForHandle:a3];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x1E696ABC0] errorWithInfo:v17];
    if (!v14)
    {
      v15 = [v13 a5];

      v13 = v15;
    }

    if (v13 && v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained a6];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendMsg:requiresConnected:args:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "WARNING: %@ is not a valid peripheral", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleMsg:args:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_DEBUG, "%@ is not connected, ignoring message: %u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)discoverServices:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Discovering services for peripheral %@ while delegate is either nil or does not implement peripheral:didDiscoverServices:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)discoverIncludedServices:forService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"service != nil" object:? file:? lineNumber:? description:?];
}

- (void)discoverIncludedServices:forService:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Discovering included services for peripheral %@ while delegate is either nil or does not implement peripheral:didDiscoverIncludedServicesForService:error:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)discoverIncludedServices:forService:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)discoverCharacteristics:forService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"service != nil" object:? file:? lineNumber:? description:?];
}

- (void)discoverCharacteristics:forService:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Discovering characteristics on peripheral %@ while delegate is either nil or does not implement peripheral:didDiscoverCharacteristicsForService:error:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)readValueForCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)readValueForCharacteristic:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Reading characteristic value for peripheral %@ while delegate is either nil or does not implement peripheral:didUpdateValueForCharacteristic:error:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)readValueForCharacteristic:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeValue:forCharacteristic:type:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forCharacteristic:type:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forCharacteristic:type:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "WARNING: Characteristic %@ does not specify the Write Without Response property - ignoring response-less write", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBroadcastValue:forCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)setNotifyValue:forCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)discoverDescriptorsForCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)discoverDescriptorsForCharacteristic:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Discovering characteristic descriptors for peripheral %@ while delegate is either nil or does not implement peripheral:didDiscoverDescriptorsForCharacteristic:error:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)readValueForDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"descriptor != nil" object:? file:? lineNumber:? description:?];
}

- (void)readValueForDescriptor:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Reading descriptor value for peripheral %@ while delegate is either nil or does not implement peripheral:didUpdateValueForDescriptor:error:", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)readValueForDescriptor:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeValue:forDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forDescriptor:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"descriptor != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forDescriptor:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)getRangingTones:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"options != nil" object:? file:? lineNumber:? description:?];
}

- (void)setPeripheralName:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];
}

- (void)openL2CAPChannel:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"psm > 0" object:? file:? lineNumber:? description:?];
}

- (void)l2capChannelForPeer:withPsm:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)l2capChannelForPeer:withCID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleServicesChanged:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "WARNING: The delegate for %@ does not implement -[peripheral:didModifyServices:]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioEvents:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "WARNING: No LE audio event handler registered:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end