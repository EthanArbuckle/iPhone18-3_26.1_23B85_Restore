@interface CBPeripheral
- (BOOL)sendMsg:(int)msg args:(id)args withReply:(id)reply;
- (CBPeripheral)initWithCentralManager:(id)manager info:(id)info;
- (NSUInteger)maximumWriteValueLengthForType:(CBCharacteristicWriteType)type;
- (id)delegate;
- (id)description;
- (id)extendedDescription;
- (id)l2capChannelForPeer:(id)peer withCID:(unsigned __int16)d;
- (id)l2capChannelForPeer:(id)peer withPsm:(unsigned __int16)psm;
- (id)sendSyncMsg:(int)msg args:(id)args;
- (void)dealloc;
- (void)discoverCharacteristics:(NSArray *)characteristicUUIDs forService:(CBService *)service;
- (void)discoverDescriptorsForCharacteristic:(CBCharacteristic *)characteristic;
- (void)discoverIncludedServices:(NSArray *)includedServiceUUIDs forService:(CBService *)service;
- (void)discoverServices:(NSArray *)serviceUUIDs;
- (void)getRangingTones:(id)tones;
- (void)handleAttributeEvent:(id)event args:(id)args attributeSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag;
- (void)handleCSProcedureEventForDeviceMsg:(id)msg;
- (void)handleDisconnection;
- (void)handleL2CAPChannelClosed:(id)closed;
- (void)handleL2CAPChannelDidReceiveData:(id)data;
- (void)handleL2CAPChannelOpened:(id)opened;
- (void)handleLEAudioActivePresetUpdated:(id)updated;
- (void)handleLEAudioConnected:(id)connected;
- (void)handleLEAudioEvents:(id)events;
- (void)handleLEAudioHearingAidFeaturesUpdated:(id)updated;
- (void)handleLEAudioMicrophoneGainUpdated:(id)updated;
- (void)handleLEAudioMicrophoneMuteUpdated:(id)updated;
- (void)handleLEAudioMsg:(int)msg args:(id)args;
- (void)handleLEAudioPresetNameUpdated:(id)updated;
- (void)handleLEAudioPresetUpdated:(id)updated;
- (void)handleLEAudioVolumeGainUpdated:(id)updated;
- (void)handleLEAudioVolumeMuteUpdated:(id)updated;
- (void)handleLEAudioVolumeOffsetUpdated:(id)updated;
- (void)handleLEAudioVolumeUpdated:(id)updated;
- (void)handleNameUpdated:(id)updated;
- (void)handleRSSIUpdated:(id)updated;
- (void)handleServicesChanged:(id)changed;
- (void)handleServicesDiscovered:(id)discovered;
- (void)handleSuccessfulConnection:(id)connection;
- (void)handleTimeSyncResponse:(id)response;
- (void)handleVisibilityChanged:(id)changed;
- (void)invalidateAllAttributes;
- (void)isReadyForUpdates;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)readPresets:(id)presets;
- (void)readRSSI;
- (void)readValueForCharacteristic:(CBCharacteristic *)characteristic;
- (void)readValueForDescriptor:(CBDescriptor *)descriptor;
- (void)sendLEAudioMsg:(id)msg args:(id)args completion:(id)completion;
- (void)sendMsg:(int)msg requiresConnected:(BOOL)connected args:(id)args;
- (void)setActivePreset:(int64_t)preset OptionalPresetIndex:(unsigned __int8)index withResponse:(id)response;
- (void)setMicrophoneMute:(int64_t)mute withResponse:(id)response;
- (void)setPeripheralName:(id)name;
- (void)setVolume:(unsigned __int8)volume withResponse:(id)response;
- (void)setVolumeMute:(int64_t)mute withResponse:(id)response;
- (void)setVolumeOffSet:(unsigned int)set withOffSetValue:(signed __int16)value withResponse:(id)response;
- (void)updateFindMyInfo:(id)info;
- (void)writeMicrophoneAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response;
- (void)writePresetName:(unsigned __int8)name withName:(id)withName withResponse:(id)response;
- (void)writeValue:(NSData *)data forCharacteristic:(CBCharacteristic *)characteristic type:(CBCharacteristicWriteType)type;
- (void)writeValue:(NSData *)data forDescriptor:(CBDescriptor *)descriptor;
- (void)writeVolumeAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response;
@end

@implementation CBPeripheral

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: Cancelling connection for unused peripheral %@, Did you forget to keep a reference to it?", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (CBPeripheral)initWithCentralManager:(id)manager info:(id)info
{
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = CBPeripheral;
  v7 = [(CBPeer *)&v27 initWithInfo:infoCopy manager:manager];
  if (v7)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgName"];
    name = v7->_name;
    v7->_name = v8;

    v10 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgAdvertisementData"];
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

    v16 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgConnectionState"];
    v7->_isConnectedToSystem = [v16 BOOLValue];

    v17 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    l2capChannels = v7->_l2capChannels;
    v7->_l2capChannels = v17;

    v19 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgAncsAuthorization"];
    v7->_ancsAuthorized = [v19 BOOLValue];

    v20 = [infoCopy objectForKey:@"kCBMsgArgVisibleInSettings"];

    if (v20)
    {
      v21 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
      v7->_visibleInSettings = [v21 BOOLValue];
    }

    else
    {
      v7->_visibleInSettings = 1;
    }

    v22 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgWhbStableIdentifier"];
    stableIdentifier = v7->_stableIdentifier;
    v7->_stableIdentifier = v22;

    v24 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];
    remoteControllerId = v7->_remoteControllerId;
    v7->_remoteControllerId = v24;

    [(CBPeripheral *)v7 addObserver:v7 forKeyPath:@"delegate" options:0 context:0];
    [(CBPeripheral *)v7 updateFindMyInfo:infoCopy];
  }

  return v7;
}

- (void)updateFindMyInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyGroupMembers"];
  findMyGroupMembers = self->_findMyGroupMembers;
  self->_findMyGroupMembers = v5;

  v7 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMySerialNumberString"];
  findMySerialNumberString = self->_findMySerialNumberString;
  self->_findMySerialNumberString = v7;

  v9 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyPartNumber"];
  self->_findMyPartIdentifier = [v9 intValue];

  v10 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyManaged"];
  self->_managedByFindMy = [v10 BOOLValue];

  v11 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyBeaconID"];
  findMyBeaconIdentifier = self->_findMyBeaconIdentifier;
  self->_findMyBeaconIdentifier = v11;

  v13 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyUserID"];

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
  identifier = [(CBPeer *)self identifier];
  uUIDString = [identifier UUIDString];
  v9 = [v5 stringWithFormat:@"<%@: %p, identifier = %@, name = %@, mtu = %lu, state = %@>", v6, self, uUIDString, self->_name, -[CBPeer mtuLength](self, "mtuLength"), v4];

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

- (void)sendMsg:(int)msg requiresConnected:(BOOL)connected args:(id)args
{
  connectedCopy = connected;
  msgCopy = msg;
  argsCopy = args;
  manager = [(CBPeer *)self manager];

  if (manager)
  {
    if (self->_state == 2 || !connectedCopy)
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
      if (argsCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      if (argsCopy)
      {
LABEL_11:
        identifier = [(CBPeer *)self identifier];
        [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

        manager2 = [(CBPeer *)self manager];
        [manager2 sendMsg:msgCopy args:argsCopy];

LABEL_12:
        return;
      }
    }

    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
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

- (id)sendSyncMsg:(int)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if (!argsCopy)
  {
    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  identifier = [(CBPeer *)self identifier];
  [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  manager = [(CBPeer *)self manager];
  v9 = [manager sendSyncMsg:msgCopy args:argsCopy];

  return v9;
}

- (BOOL)sendMsg:(int)msg args:(id)args withReply:(id)reply
{
  msgCopy = msg;
  argsCopy = args;
  replyCopy = reply;
  if (!argsCopy)
  {
    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  identifier = [(CBPeer *)self identifier];
  [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  manager = [(CBPeer *)self manager];
  v12 = [manager sendMsg:msgCopy args:argsCopy withReply:replyCopy];

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

- (void)handleSuccessfulConnection:(id)connection
{
  connectionCopy = connection;
  v8 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
  v5 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgIsLinkEncrypted"];
  v6 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
  v7 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgConnectionRole"];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"delegate", object, change, context}])
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
  peripheral = [(CBService *)v7 peripheral];

  if (peripheral == self)
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

    startHandle = [(CBService *)v7 startHandle];
    endHandle = [(CBService *)v7 endHandle];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgUUIDs", startHandle, @"kCBMsgArgServiceStartHandle", endHandle, @"kCBMsgArgServiceEndHandle", 0}];
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
  peripheral = [(CBService *)v7 peripheral];

  if (peripheral == self)
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

    startHandle = [(CBService *)v7 startHandle];
    endHandle = [(CBService *)v7 endHandle];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgUUIDs", startHandle, @"kCBMsgArgServiceStartHandle", endHandle, @"kCBMsgArgServiceEndHandle", 0}];
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
  peripheral = [(CBCharacteristic *)v4 peripheral];

  if (peripheral == self)
  {
    v6 = MEMORY[0x1E695DF90];
    handle = [(CBCharacteristic *)v4 handle];
    valueHandle = [(CBCharacteristic *)v4 valueHandle];
    v9 = [v6 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", 0}];
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
  writesPending = [(CBPeripheral *)self writesPending];
  [(CBPeripheral *)self setWritesPending:0];
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:1];
  if (writesPending)
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
  peripheral = [(CBCharacteristic *)v10 peripheral];

  if (peripheral == self)
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
    handle = [(CBCharacteristic *)v10 handle];
    valueHandle = [(CBCharacteristic *)v10 valueHandle];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v16 = [v12 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", v8, @"kCBMsgArgData", v15, @"kCBMsgArgType", 0}];
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
  peripheral = [(CBCharacteristic *)v4 peripheral];

  if (peripheral == self)
  {
    v6 = MEMORY[0x1E695DF90];
    handle = [(CBCharacteristic *)v4 handle];
    valueHandle = [(CBCharacteristic *)v4 valueHandle];
    v9 = [v6 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", 0}];
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
  peripheral = [(CBDescriptor *)v4 peripheral];

  if (peripheral == self)
  {
    v6 = MEMORY[0x1E695DF90];
    handle = [(CBDescriptor *)v4 handle];
    v8 = [v6 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgDescriptorHandle", 0}];
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
  uUID = [(CBAttribute *)v8 UUID];
  v10 = [CBUUID UUIDWithString:@"2902"];
  v11 = [uUID isEqual:v10];

  if (v11)
  {
    [CBPeripheral writeValue:forDescriptor:];
  }

  peripheral = [(CBDescriptor *)v8 peripheral];

  if (peripheral == self)
  {
    v13 = MEMORY[0x1E695DF90];
    handle = [(CBDescriptor *)v8 handle];
    v15 = [v13 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgDescriptorHandle", v6, @"kCBMsgArgData", 0}];
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

- (void)getRangingTones:(id)tones
{
  tonesCopy = tones;
  v8 = tonesCopy;
  if (!tonesCopy)
  {
    [CBPeripheral getRangingTones:];
    tonesCopy = MEMORY[0x1E695E0F8];
  }

  v5 = MEMORY[0x1E695DF90];
  identifier = [(CBPeer *)self identifier];
  v7 = [v5 dictionaryWithObjectsAndKeys:{identifier, @"kCBMsgArgDeviceUUID", tonesCopy, @"kCBMsgArgOptions", 0}];
  [(CBPeripheral *)self sendMsg:198 args:v7];
}

- (void)setPeripheralName:(id)name
{
  nameCopy = name;
  v8 = nameCopy;
  if (!nameCopy)
  {
    [CBPeripheral setPeripheralName:];
    nameCopy = 0;
  }

  [(CBPeripheral *)self setName:nameCopy];
  v5 = MEMORY[0x1E695DF90];
  identifier = [(CBPeer *)self identifier];
  v7 = [v5 dictionaryWithObjectsAndKeys:{identifier, @"kCBMsgArgDeviceUUID", v8, @"kCBMsgArgName", 0}];
  [(CBPeripheral *)self sendMsg:194 args:v7];
}

- (id)l2capChannelForPeer:(id)peer withPsm:(unsigned __int16)psm
{
  psmCopy = psm;
  v23 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
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
      peer = [v12 peer];
      if ([peer isEqual:peerCopy])
      {
        v14 = [v12 PSM];

        if (v14 == psmCopy)
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

- (id)l2capChannelForPeer:(id)peer withCID:(unsigned __int16)d
{
  dCopy = d;
  v23 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
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
      peer = [v12 peer];
      if ([peer isEqual:peerCopy])
      {
        v14 = [v12 cid];

        if (v14 == dCopy)
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

- (void)handleNameUpdated:(id)updated
{
  v5 = [updated objectForKeyedSubscript:@"kCBMsgArgName"];
  [(CBPeripheral *)self setName:?];
  if (*&self->_delegateFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheralDidUpdateName:self];
  }
}

- (void)handleServicesChanged:(id)changed
{
  v30 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = [changedCopy objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
  v22 = changedCopy;
  v24 = [changedCopy objectForKeyedSubscript:@"kCBMsgArgServiceEndHandle"];
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
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
        endHandle = [v11 endHandle];
        unsignedShortValue = [endHandle unsignedShortValue];
        if (unsignedShortValue < [v5 unsignedShortValue])
        {
        }

        else
        {
          startHandle = [v11 startHandle];
          unsignedShortValue2 = [startHandle unsignedShortValue];
          unsignedShortValue3 = [v24 unsignedShortValue];

          if (unsignedShortValue2 <= unsignedShortValue3)
          {
            [v11 invalidate];
            [array addObject:v11];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v17 = [(NSArray *)selfCopy->_services mutableCopy];
    [v17 removeObjectsInArray:array];
    [(CBPeripheral *)selfCopy setServices:v17];
  }

  if ((*&selfCopy->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained peripheral:selfCopy didModifyServices:array];

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

- (void)handleRSSIUpdated:(id)updated
{
  updatedCopy = updated;
  v8 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgData"];
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:updatedCopy];

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

- (void)handleVisibilityChanged:(id)changed
{
  v4 = [changed objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
  self->_visibleInSettings = [v4 BOOLValue];
}

- (void)handleTimeSyncResponse:(id)response
{
  responseCopy = response;
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:?];
  if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgTimeOfDay"];
    v7 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgLocalRefTime"];
    v8 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgRemoteRefTime"];
    v9 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgTimeToSend"];
    v10 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgGMTDelta"];
    [WeakRetained peripheral:self didReceiveTimeSyncWithReferenceTime:v6 localAbsolute:v7 remoteAbsolute:v8 receiveTime:v9 GMTDelta:v10 error:v4];
  }
}

- (void)handleCSProcedureEventForDeviceMsg:(id)msg
{
  msgCopy = msg;
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:?];
  if ((*(&self->_delegateFlags + 1) & 0x40) != 0)
  {
    delegate = [(CBPeripheral *)self delegate];
    [delegate peripheral:self didCompleteChannelSoundingProcedure:msgCopy error:v4];
  }
}

- (void)handleServicesDiscovered:(id)discovered
{
  v33 = *MEMORY[0x1E69E9840];
  discoveredCopy = discovered;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:discoveredCopy];
  if (!v5)
  {
    v23 = discoveredCopy;
    v8 = [discoveredCopy objectForKeyedSubscript:@"kCBMsgArgServices"];
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
      discoveredCopy = v23;
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
            selfCopy = self;
            v30 = 2112;
            selfCopy2 = v17;
            _os_log_debug_impl(&dword_1C0AC1000, v21, OS_LOG_TYPE_DEBUG, "Data in %@ does not contain a valid UUID for service handle = %@", buf, 0x16u);
          }

          v15 = 0;
          goto LABEL_10;
        }

        v15 = [[CBService alloc] initWithPeripheral:self dictionary:v16];
        startHandle = [(CBService *)v15 startHandle];
        [(CBPeripheral *)self setAttribute:v15 forHandle:startHandle];

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
            selfCopy = v15;
            v30 = 2112;
            selfCopy2 = self;
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

- (void)handleL2CAPChannelOpened:(id)opened
{
  openedCopy = opened;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheral handleL2CAPChannelOpened:v5];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:openedCopy];
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
    delegate = [(CBPeripheral *)self delegate];
    [delegate peripheral:self didOpenL2CAPChannel:v8 error:v6];

    goto LABEL_12;
  }

  v9 = [CBL2CAPChannel alloc];
  manager = [(CBPeer *)self manager];
  v8 = [(CBL2CAPChannel *)v9 initWithPeer:self manager:manager info:openedCopy];

  [(NSHashTable *)self->_l2capChannels addObject:v8];
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)handleL2CAPChannelClosed:(id)closed
{
  v20 = *MEMORY[0x1E69E9840];
  closedCopy = closed;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:closedCopy];
  v6 = [closedCopy objectForKey:@"kCBMsgArgPSM"];
  intValue = [v6 intValue];

  v8 = [closedCopy objectForKey:@"kCBMsgArgCID"];
  intValue2 = [v8 intValue];

  v10 = [(CBPeripheral *)self l2capChannelForPeer:self withCID:intValue2];
  if (v10 || ([(CBPeripheral *)self l2capChannelForPeer:self withPsm:intValue], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v10 handleChannelClosed:closedCopy];
    if (*(&self->_delegateFlags + 2))
    {
      delegate = [(CBPeripheral *)self delegate];
      [delegate peripheral:self didCloseL2CAPChannel:v11];
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
      v15[1] = intValue;
      v16 = 1024;
      v17 = intValue2;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v14, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel closed with psm:%u cid:%u and result:%@", v15, 0x18u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelDidReceiveData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:dataCopy];
  v6 = [dataCopy objectForKey:@"kCBMsgArgPSM"];
  intValue = [v6 intValue];

  v8 = [dataCopy objectForKey:@"kCBMsgArgCID"];
  intValue2 = [v8 intValue];

  v10 = [(CBPeripheral *)self l2capChannelForPeer:self withCID:intValue2];
  if (v10 || ([(CBPeripheral *)self l2capChannelForPeer:self withPsm:intValue], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v10 handleDataReceived:dataCopy];
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
      v14[1] = intValue;
      v15 = 1024;
      v16 = intValue2;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v13, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel received Data with psm:%u cid:%u and result:%@", v14, 0x18u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendLEAudioMsg:(id)msg args:(id)args completion:(id)completion
{
  completionCopy = completion;
  argsCopy = args;
  msgCopy = msg;
  manager = [(CBPeer *)self manager];
  [manager sendLEAudioMsg:msgCopy args:argsCopy completion:completionCopy];
}

- (void)setVolume:(unsigned __int8)volume withResponse:(id)response
{
  volumeCopy = volume;
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v14 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E6C8;
  v10 = xpc_uuid_create(uuid);
  v11 = xpc_int64_create(volumeCopy);
  v8 = xpc_dictionary_create(keys, &v10, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolume" args:v8 completion:responseCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setVolumeOffSet:(unsigned int)set withOffSetValue:(signed __int16)value withResponse:(id)response
{
  valueCopy = value;
  v19 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v18 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E6D8;
  v16 = "kCBMsgArgLEAudioVolumeOffset";
  values = xpc_uuid_create(uuid);
  v13 = xpc_uint64_create(set);
  v14 = xpc_int64_create(valueCopy);
  v10 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolumeOffSet" args:v10 completion:responseCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setVolumeMute:(int64_t)mute withResponse:(id)response
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v14 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E6F0;
  v10 = xpc_uuid_create(uuid);
  v11 = xpc_uint64_create(mute);
  v8 = xpc_dictionary_create(keys, &v10, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolumeMute" args:v8 completion:responseCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)writeVolumeAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response
{
  gainCopy = gain;
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v21 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E700;
  v19 = *&off_1E811E710;
  v14 = xpc_uuid_create(uuid);
  v15 = xpc_uint64_create(input);
  v16 = xpc_uint64_create(typeCopy);
  v17 = xpc_int64_create(gainCopy);
  v12 = xpc_dictionary_create(keys, &v14, 4uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWriteVolumeAudioInput" args:v12 completion:responseCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setMicrophoneMute:(int64_t)mute withResponse:(id)response
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v14 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E720;
  v10 = xpc_uuid_create(uuid);
  v11 = xpc_uint64_create(mute);
  v8 = xpc_dictionary_create(keys, &v10, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetMicrophoneMute" args:v8 completion:responseCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)writeMicrophoneAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response
{
  gainCopy = gain;
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v21 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E730;
  v19 = *&off_1E811E740;
  v14 = xpc_uuid_create(uuid);
  v15 = xpc_uint64_create(input);
  v16 = xpc_uint64_create(typeCopy);
  v17 = xpc_int64_create(gainCopy);
  v12 = xpc_dictionary_create(keys, &v14, 4uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWriteMicrophoneAudioInput" args:v12 completion:responseCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)readPresets:(id)presets
{
  v12 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v11 = 0;
  presetsCopy = presets;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];

  keys = "kCBMsgArgLEAudioDeviceUUID";
  values = xpc_uuid_create(uuid);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgReadPresets" args:v6 completion:presetsCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setActivePreset:(int64_t)preset OptionalPresetIndex:(unsigned __int8)index withResponse:(id)response
{
  indexCopy = index;
  v19 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v18 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E750;
  v16 = "kCBMsgArgLEAudioPresetIndex";
  values = xpc_uuid_create(uuid);
  v13 = xpc_uint64_create(preset);
  v14 = xpc_uint64_create(indexCopy);
  v10 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetActivePreset" args:v10 completion:responseCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)writePresetName:(unsigned __int8)name withName:(id)withName withResponse:(id)response
{
  nameCopy = name;
  v21 = *MEMORY[0x1E69E9840];
  withNameCopy = withName;
  responseCopy = response;
  *uuid = 0;
  v20 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E768;
  v18 = "kCBMsgArgLEAudioPresetName";
  v16 = 0;
  values = xpc_uuid_create(uuid);
  v15 = xpc_uint64_create(nameCopy);
  v11 = withNameCopy;
  v16 = xpc_string_create([withNameCopy UTF8String]);
  v12 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWritePresetName" args:v12 completion:responseCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioMsg:(int)msg args:(id)args
{
  v17 = *MEMORY[0x1E69E9840];
  argsCopy = args;
  if (msg - 236) < 0x14 && ((0xFFC01u >> (msg + 20)))
  {
    if (self->_state == 2)
    {
      [self *off_1E811E7A0[msg - 236]];
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
      selfCopy = self;
      v15 = 1024;
      msgCopy = msg;
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
      LODWORD(selfCopy) = msg;
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

- (void)handleLEAudioConnected:(id)connected
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [connected objectForKeyedSubscript:@"kCBMsgArgLEAudioServiceID"];
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

- (void)handleLEAudioVolumeUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolume"];
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

- (void)handleLEAudioPresetUpdated:(id)updated
{
  v30 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v4 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetIndexes"];
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetProperties"];
  v21 = updatedCopy;
  v6 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetNames"];
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
      unsignedCharValue = [v12 unsignedCharValue];

      v14 = [v5 objectAtIndexedSubscript:v10];
      unsignedCharValue2 = [v14 unsignedCharValue];

      v16 = [v6 objectAtIndexedSubscript:v10];
      v17 = [[CBLEAudioHearingAidPreset alloc] initWithValues:unsignedCharValue withProperty:unsignedCharValue2 withName:v16];
      [v9 addObject:v17];

      v10 = ++v11;
    }

    while ([v4 count] > v11);
  }

  [(CBLEAudioHearingAidUpdateEvent *)v19 setPresetResults:v9];
  [(CBPeripheral *)self handleLEAudioEvents:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioVolumeOffsetUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeOffset"];
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

- (void)handleLEAudioVolumeMuteUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeMuteState"];
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

- (void)handleLEAudioVolumeGainUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeGain"];
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

- (void)handleLEAudioMicrophoneMuteUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioMicrophoneMuteState"];
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

- (void)handleLEAudioMicrophoneGainUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioMicrophoneGain"];
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

- (void)handleLEAudioActivePresetUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioPresetIndex"];
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

- (void)handleLEAudioPresetNameUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioPresetIndex"];
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

- (void)handleLEAudioHearingAidFeaturesUpdated:(id)updated
{
  v15 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidType"];
  v6 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidSyncSupported"];
  v7 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidIndependent"];
  v8 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidDynamic"];
  v9 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidWritable"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v10 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = updatedCopy;
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

- (void)handleLEAudioEvents:(id)events
{
  eventsCopy = events;
  updateHandler = [(CBPeripheral *)self updateHandler];

  if (updateHandler)
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

    updateHandler2 = [(CBPeripheral *)self updateHandler];
    (updateHandler2)[2](updateHandler2, self, eventsCopy);

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

- (void)handleAttributeEvent:(id)event args:(id)args attributeSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag
{
  flagCopy = flag;
  argsCopy = args;
  v12 = [(CBPeripheral *)self attributeForHandle:event];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x1E696ABC0] errorWithInfo:argsCopy];
    if (!v14)
    {
      selector = [v13 selector];

      v13 = selector;
    }

    if (v13 && flagCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained delegateSelector];
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