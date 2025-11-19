@interface CBPeripheralManager
+ (CBPeripheralManagerAuthorizationStatus)authorizationStatus;
+ (void)authorizationStatus;
- (BOOL)isMsgAllowedAlways:(unsigned __int16)a3;
- (BOOL)isMsgAllowedWhenOff:(unsigned __int16)a3;
- (BOOL)supportsMultipleAdvertising;
- (BOOL)updateValue:(NSData *)value forCharacteristic:(CBMutableCharacteristic *)characteristic onSubscribedCentrals:(NSArray *)centrals;
- (CBPeripheralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (CBPeripheralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue options:(NSDictionary *)options;
- (id)addXPCDelayTiming:(id)a3 args:(id)a4;
- (id)centralWithInfo:(id)a3;
- (id)delegate;
- (id)getNonConnectableIdentity;
- (id)l2capChannelForPeer:(id)a3 withCID:(unsigned __int16)a4;
- (id)l2capChannelForPeer:(id)a3 withPsm:(unsigned __int16)a4;
- (void)HandleControllerPeripheralBTClockUpdateMsg:(id)a3;
- (void)HandleOfflineAdvPayloadRequestedWithReason:(id)a3;
- (void)addService:(CBMutableService *)service;
- (void)addressRotationState:(id)a3;
- (void)dealloc;
- (void)disconnectCISPeripheral:(id)a3;
- (void)forEachCentral:(id)a3;
- (void)handleAdvertisingStarted:(id)a3;
- (void)handleAdvertisingStopped:(id)a3;
- (void)handleCSProcedureEventMsg:(id)a3;
- (void)handleCentralDidUpdateANCSAuthorization:(id)a3;
- (void)handleConnectCISPeripheralComplete:(id)a3;
- (void)handleConnectionParametersUpdated:(id)a3;
- (void)handleDisconnectCISPeripheralComplete:(id)a3;
- (void)handleGetAttributeValue:(id)a3;
- (void)handleIncomingCISConnectionRequest:(id)a3;
- (void)handleL2CAPChannelClosed:(id)a3;
- (void)handleL2CAPChannelDidReceiveData:(id)a3;
- (void)handleL2CAPChannelOpened:(id)a3;
- (void)handleL2CAPChannelPublished:(id)a3;
- (void)handleL2CAPChannelUnpublished:(id)a3;
- (void)handleNotificationAdded:(id)a3;
- (void)handleNotificationRemoved:(id)a3;
- (void)handlePeriodicAdvertisingStarted:(id)a3;
- (void)handlePeriodicAdvertisingStopped:(id)a3;
- (void)handleReadyForUpdates:(id)a3;
- (void)handleRestoringState:(id)a3;
- (void)handleServiceAdded:(id)a3;
- (void)handleSetAttributeValues:(id)a3;
- (void)handleSolicitedServicesFound:(id)a3;
- (void)handleSupportedFeatures:(id)a3;
- (void)incomingAddress:(id)a3;
- (void)initCISPeripheral:(id)a3 completion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)overrideLocalLeAddress:(id)a3;
- (void)removeAllServices;
- (void)removeService:(CBMutableService *)service;
- (void)requestStableAddress:(id)a3;
- (void)respondToCISConnectionRequest:(id)a3;
- (void)respondToRequest:(CBATTRequest *)request withResult:(CBATTError)result;
- (void)respondToTransaction:(id)a3 value:(id)a4 attributeID:(id)a5 result:(int64_t)a6;
- (void)retrieveBluetoothUsageStatistics:(id)a3 completion:(id)a4;
- (void)setDesiredConnectionLatency:(CBPeripheralManagerConnectionLatency)latency forCentral:(CBCentral *)central;
- (void)startAdvertising:(NSDictionary *)advertisementData;
- (void)startPeriodicAdvertising:(id)a3;
- (void)stopPeriodicAdvertising:(id)a3;
- (void)supportsMultipleAdvertising;
@end

@implementation CBPeripheralManager

- (id)centralWithInfo:(id)a3
{
  v4 = a3;
  centrals = self->_centrals;
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v7 = [(NSMapTable *)centrals objectForKey:v6];

  if (!v7)
  {
    v7 = [(CBPeer *)[CBCentral alloc] initWithInfo:v4 manager:self];
    v8 = self->_centrals;
    v9 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    [(NSMapTable *)v8 setObject:v7 forKey:v9];
  }

  v10 = [v4 objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
  v11 = v10;
  if (v10)
  {
    -[CBPeer setMtuLength:](v7, "setMtuLength:", [v10 unsignedIntegerValue]);
  }

  return v7;
}

- (void)forEachCentral:(id)a3
{
  v8 = a3;
  v4 = [(NSMapTable *)self->_centrals objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v8[2](v8, v6);
      v7 = [v4 nextObject];

      v6 = v7;
    }

    while (v7);
  }
}

- (void)dealloc
{
  l2capChannels = self->_l2capChannels;
  if (l2capChannels)
  {
    [(NSHashTable *)l2capChannels removeAllObjects];
  }

  if (self->_observingKeyPaths)
  {
    [(CBPeripheralManager *)self removeObserver:self forKeyPath:@"delegate" context:objc_opt_class()];
    [(CBPeripheralManager *)self removeObserver:self forKeyPath:@"state" context:objc_opt_class()];
    [(CBPeripheralManager *)self removeObserver:self forKeyPath:@"localName" context:objc_opt_class()];
    self->_observingKeyPaths = 0;
  }

  v4.receiver = self;
  v4.super_class = CBPeripheralManager;
  [(CBManager *)&v4 dealloc];
}

- (void)overrideLocalLeAddress:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheralManager overrideLocalLeAddress:];
  }

  v9 = @"kCBMsgArgAddressString";
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(CBManager *)self sendMsg:66 args:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addressRotationState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CBPeripheralManager_addressRotationState___block_invoke;
  v6[3] = &unk_1E811CFC8;
  v7 = v4;
  v5 = v4;
  [(CBManager *)self sendMsg:52 args:MEMORY[0x1E695E0F8] withReply:v6];
}

void __44__CBPeripheralManager_addressRotationState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (a3)
  {
    (*(v6 + 16))(v6, a3, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v5];
    (*(v6 + 16))(v6, v7, v8);
  }
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
    [CBPeripheralManager l2capChannelForPeer:withPsm:];
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
    [CBPeripheralManager l2capChannelForPeer:withCID:];
  }

  v15 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)initCISPeripheral:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1C68DF720](a4, a2, a3);
  incomingConnectionRequestCompletion = self->_incomingConnectionRequestCompletion;
  self->_incomingConnectionRequestCompletion = v5;

  [(CBManager *)self sendMsg:155 args:0];
}

- (void)respondToCISConnectionRequest:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a3, @"kCBMsgArgOptions", 0}];
  [(CBManager *)self sendMsg:170 args:v4];
}

- (void)disconnectCISPeripheral:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgOptions";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:166 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestStableAddress:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CBPeripheralManager_requestStableAddress___block_invoke;
  v6[3] = &unk_1E811CFC8;
  v7 = v4;
  v5 = v4;
  [(CBManager *)self sendMsg:51 args:MEMORY[0x1E695E0F8] withReply:v6];
}

void __44__CBPeripheralManager_requestStableAddress___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (id)getNonConnectableIdentity
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [(CBManager *)self sendSyncMsg:173 args:0];
  v3 = [v2 objectForKeyedSubscript:@"kCBMsgArgIdentityIRK"];
  v4 = [v2 objectForKeyedSubscript:@"kCBMsgArgIdentityAddress"];
  v5 = v4;
  v6 = 0;
  if (v4 && v3)
  {
    v9[0] = @"kCBMsgArgIdentityAddress";
    v9[1] = @"kCBMsgArgIdentityIRK";
    v10[0] = v4;
    v10[1] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (CBPeripheralManagerAuthorizationStatus)authorizationStatus
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    +[CBPeripheralManager authorizationStatus];
  }

  return 3;
}

- (CBPeripheralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"kCBInitOptionShowPowerAlert";
  v14[0] = MEMORY[0x1E695E118];
  v6 = MEMORY[0x1E695DF20];
  v7 = queue;
  v8 = delegate;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [(CBPeripheralManager *)self initWithDelegate:v8 queue:v7 options:v9];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CBPeripheralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue options:(NSDictionary *)options
{
  v9 = delegate;
  v10 = queue;
  v11 = options;
  v12 = [MEMORY[0x1E696AE30] processInfo];
  v13 = [v12 environment];
  v14 = [v13 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  if (v14)
  {

LABEL_3:
    goto LABEL_4;
  }

  v27 = _os_feature_enabled_impl();

  if (v27)
  {
    v28 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v28 objectForInfoDictionaryKey:@"NSAccessorySetupKitSupports"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 containsObject:@"Bluetooth"] && +[CBManager tccAvailable](CBManager, "tccAvailable") && +[CBManager preflightCheckForTCC](CBManager, "preflightCheckForTCC") == 2)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      v9 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBPeripheralManager initWithDelegate:queue:options:];
      }

      abort_with_payload();
      goto LABEL_18;
    }

    goto LABEL_3;
  }

LABEL_4:
  v36.receiver = self;
  v36.super_class = CBPeripheralManager;
  self = [(CBManager *)&v36 initInternal];
  if (self)
  {
    [(CBPeripheralManager *)self addObserver:self forKeyPath:@"state" options:0 context:objc_opt_class()];
    [(CBPeripheralManager *)self addObserver:self forKeyPath:@"delegate" options:0 context:objc_opt_class()];
    [(CBPeripheralManager *)self addObserver:self forKeyPath:@"localName" options:0 context:objc_opt_class()];
    v15 = 1;
    self->_observingKeyPaths = 1;
    [(CBPeripheralManager *)self setDelegate:v9];
    v16 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    centrals = self->_centrals;
    self->_centrals = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    services = self->_services;
    self->_services = v18;

    a2 = 0x1E695D000;
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    characteristicIDs = self->_characteristicIDs;
    self->_characteristicIDs = v20;

    v22 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    l2capChannels = self->_l2capChannels;
    self->_l2capChannels = v22;

    v24 = objc_alloc_init(MEMORY[0x1E696AD10]);
    updateLock = self->_updateLock;
    self->_updateLock = v24;

    *&self->_readyForUpdates = 1;
    self->_attributeIDGenerator = 1;
    [(CBManager *)self setTccComplete:0];
    v26 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v26 objectForInfoDictionaryKey:@"UIBackgroundModes"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    if ([v12 containsObject:@"bluetooth-peripheral"])
    {
      v15 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v15 = [v12 containsObject:@"bluetooth"] ^ 1;
LABEL_19:
    v29 = [(NSDictionary *)v11 objectForKeyedSubscript:@"kCBInitOptionRestoreIdentifier"];

    delegateFlags = self->_delegateFlags;
    v31 = [*(a2 + 498) dictionaryWithDictionary:v11];
    v32 = [(CBManager *)self getCBPrivacySupported];
    v33 = [MEMORY[0x1E696AD98] numberWithBool:v32];
    [v31 setObject:v33 forKey:@"kCBManagerPrivacySupported"];

    if (!v29)
    {
      if (*&delegateFlags)
      {
        if (CBLogInitOnce != -1)
        {
          [CBClassicPeer handlePeerUpdated:];
        }

        if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
        {
          [CBPeripheralManager initWithDelegate:queue:options:];
        }
      }

      goto LABEL_28;
    }

    if (*&delegateFlags)
    {
      if (!v15)
      {
LABEL_28:
        v34 = [v31 copy];
        [(CBManager *)self startWithQueue:v10 options:v34 sessionType:1];

        goto LABEL_29;
      }
    }

    else
    {
      [CBPeripheralManager initWithDelegate:queue:options:];
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    [CBPeripheralManager initWithDelegate:queue:options:];
    goto LABEL_28;
  }

LABEL_29:

  return self;
}

- (void)incomingAddress:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgAddressBytes";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:50 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_opt_class() == a6)
  {
    if ([v10 isEqualToString:@"state"])
    {
      if ([(CBManager *)self state]== CBManagerStatePoweredOn || [(CBManager *)self state]== 10)
      {
        [(NSLock *)self->_updateLock lock];
        self->_readyForUpdates = 1;
        self->_waitingForReady = 0;
        [(NSLock *)self->_updateLock unlock];
      }

      else
      {
        v60 = self->_services;
        objc_sync_enter(v60);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v61 = self->_services;
        v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v62)
        {
          v63 = *v68;
          do
          {
            for (i = 0; i != v62; ++i)
            {
              if (*v68 != v63)
              {
                objc_enumerationMutation(v61);
              }

              [*(*(&v67 + 1) + 8 * i) handlePowerNotOn];
            }

            v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v67 objects:v71 count:16];
          }

          while (v62);
        }

        objc_sync_exit(v60);
        [(CBPeripheralManager *)self forEachCentral:&__block_literal_global_6];
        [(NSMapTable *)self->_centrals removeAllObjects];
        [(CBPeripheralManager *)self setIsAdvertising:0];
        if ([(CBManager *)self state]== CBManagerStateResetting)
        {
          v65 = self->_services;
          objc_sync_enter(v65);
          [(NSMutableArray *)self->_services removeAllObjects];
          [(NSMutableDictionary *)self->_characteristicIDs removeAllObjects];
          objc_sync_exit(v65);
        }
      }

      v13 = [(CBPeripheralManager *)self delegate];
      [v13 peripheralManagerDidUpdateState:self];
    }

    else if ([v10 isEqualToString:@"delegate"])
    {
      v14 = [(CBPeripheralManager *)self delegate];
      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);

      v15 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFD | v16);

      v17 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFB | v18);

      v19 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFF7 | v20);

      v21 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v22 = 16;
      }

      else
      {
        v22 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFEF | v22);

      v23 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v24 = 32;
      }

      else
      {
        v24 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFDF | v24);

      v25 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v26 = 64;
      }

      else
      {
        v26 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFBF | v26);

      v27 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v28 = 128;
      }

      else
      {
        v28 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFF7F | v28);

      v29 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v30 = 256;
      }

      else
      {
        v30 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFEFF | v30);

      v31 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v32 = 512;
      }

      else
      {
        v32 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFDFF | v32);

      v33 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v34 = 1024;
      }

      else
      {
        v34 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFBFF | v34);

      v35 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v36 = 2048;
      }

      else
      {
        v36 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFF7FF | v36);

      v37 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v38 = 4096;
      }

      else
      {
        v38 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFEFFF | v38);

      v39 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v40 = 0x2000;
      }

      else
      {
        v40 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFDFFF | v40);

      v41 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v42 = 0x4000;
      }

      else
      {
        v42 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFBFFF | v42);

      v43 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v44 = 0x8000;
      }

      else
      {
        v44 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFF7FFF | v44);

      v45 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v46 = 0x10000;
      }

      else
      {
        v46 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFEFFFF | v46);

      v47 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v48 = 0x20000;
      }

      else
      {
        v48 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFDFFFF | v48);

      v49 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v50 = 0x40000;
      }

      else
      {
        v50 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFBFFFF | v50);

      v51 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v52 = 0x80000;
      }

      else
      {
        v52 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFF7FFFF | v52);

      v53 = [(CBPeripheralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v54 = 0x100000;
      }

      else
      {
        v54 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFEFFFFF | v54);

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v56 = 0x200000;
      }

      else
      {
        v56 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFDFFFFF | v56);

      v57 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v58 = 0x400000;
      }

      else
      {
        v58 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFBFFFFF | v58);
    }
  }

  else
  {
    v66.receiver = self;
    v66.super_class = CBPeripheralManager;
    [(CBPeripheralManager *)&v66 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)setDesiredConnectionLatency:(CBPeripheralManagerConnectionLatency)latency forCentral:(CBCentral *)central
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = central;
  if (!v6)
  {
    [CBPeripheralManager setDesiredConnectionLatency:forCentral:];
  }

  v11[0] = @"kCBMsgArgDeviceUUID";
  v7 = [(CBPeer *)v6 identifier];
  v11[1] = @"kCBMsgArgConnectionLatency";
  v12[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:latency];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(CBManager *)self sendMsg:174 args:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertising:(NSDictionary *)advertisementData
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = advertisementData;
  v3 = [(NSDictionary *)v23 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    v21 = @"kCBAdvDataHashedServiceUUIDs";
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        if ([v8 isEqualToString:{@"kCBAdvDataTxPowerLevel", v21}])
        {
          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_11:
            [(CBPeripheralManager *)&v44 startAdvertising:v45];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }
        }

        else if ([v8 isEqualToString:@"kCBAdvDataManufacturerData"])
        {
          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_15:
            [(CBPeripheralManager *)&v42 startAdvertising:v43];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }
        }

        else if ([v8 isEqualToString:@"kCBAdvDataTDSData"])
        {
          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
            {
              continue;
            }

LABEL_19:
            [(CBPeripheralManager *)&v40 startAdvertising:v41];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }
        }

        else if ([v8 isEqualToString:@"kCBAdvDataIsContact"])
        {
          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
            {
              continue;
            }

LABEL_23:
            [(CBPeripheralManager *)&v38 startAdvertising:v39];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }
        }

        else if ([v8 isEqualToString:@"kCBAdvDataServiceData"])
        {
          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_27:
            [(CBPeripheralManager *)&v36 startAdvertising:v37];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }
        }

        else if ([v8 isEqualToString:@"kCBAdvDataIsConnectable"])
        {
          v9 = [(NSDictionary *)v23 objectForKeyedSubscript:@"kCBMsgArgIsPrivilegedDaemon"];
          v10 = [v9 BOOLValue];

          if (v10)
          {
            continue;
          }

          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_32:
            [(CBPeripheralManager *)&v34 startAdvertising:v35];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }
        }

        else if (([v8 isEqualToString:@"kCBAdvDataIsExtended"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"kCBAdvDataIsExtendedConnectable"))
        {
          v11 = [(NSDictionary *)v23 objectForKeyedSubscript:@"kCBMsgArgIsPrivilegedDaemon"];
          v12 = [v11 BOOLValue];

          if (v12)
          {
            continue;
          }

          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_38:
            [(CBPeripheralManager *)&v32 startAdvertising:v33];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }
        }

        else if ([v8 isEqualToString:@"kCBAdvDataIsTDS"])
        {
          v13 = [(NSDictionary *)v23 objectForKeyedSubscript:@"kCBMsgArgIsPrivilegedDaemon"];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            continue;
          }

          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_43:
            [(CBPeripheralManager *)&v30 startAdvertising:v31];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }
        }

        else if (([v8 isEqualToString:@"kCBAdvDataTDSData"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"kCBAdvertisementTDSTypeKey"))
        {
          v15 = [(NSDictionary *)v23 objectForKeyedSubscript:@"kCBMsgArgIsPrivilegedDaemon"];
          v16 = [v15 BOOLValue];

          if (v16)
          {
            continue;
          }

          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_49:
            [(CBPeripheralManager *)&v28 startAdvertising:v29];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }
        }

        else if (([v8 isEqualToString:@"kCBAdvDataRawBytesData"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"kCBAdvDataRawBytesDataAdvInd") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"kCBAdvDataRawBytesDataScanRsp"))
        {
          v17 = [(NSDictionary *)v23 objectForKeyedSubscript:@"kCBMsgArgIsPrivilegedDaemon"];
          v18 = [v17 BOOLValue];

          if (v18)
          {
            continue;
          }

          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_56:
            [(CBPeripheralManager *)&v26 startAdvertising:v27];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (![v8 isEqualToString:v21])
          {
            continue;
          }

          if (CBLogInitOnce == -1)
          {
            if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_66:
            [(CBPeripheralManager *)&v24 startAdvertising:v25];
            continue;
          }

          [CBClassicPeer handlePeerUpdated:];
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v5);
  }

  if (v23)
  {
    v19 = v23;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  [(CBManager *)self sendMsg:38 args:v19];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)startPeriodicAdvertising:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  [(CBManager *)self sendMsg:40 args:v3];
}

- (void)stopPeriodicAdvertising:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  [(CBManager *)self sendMsg:41 args:v3];
}

- (void)addService:(CBMutableService *)service
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = service;
  v61 = v3;
  if (!v3)
  {
    [CBPeripheralManager addService:];
    v3 = 0;
  }

  v4 = [(CBAttribute *)v3 UUID];
  v5 = [v4 data];
  if ([v5 length] == 2)
  {
  }

  else
  {
    v6 = [(CBAttribute *)v61 UUID];
    v7 = [v6 data];
    v8 = [v7 length];

    if (v8 == 16)
    {
      goto LABEL_8;
    }

    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"CBPeripheralManager.m" lineNumber:547 description:{@"Invalid parameter not satisfying: %@", @"service.UUID.data.length == 2 || service.UUID.data.length == 16"}];
  }

LABEL_8:
  v59 = self->_services;
  objc_sync_enter(v59);
  if ([(NSMutableArray *)self->_services indexOfObject:v61]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    [v58 handleFailureInMethod:a2 object:self file:@"CBPeripheralManager.m" lineNumber:551 description:@"Services cannot be added more than once"];
  }

  v9 = MEMORY[0x1E696AD98];
  ++self->_attributeIDGenerator;
  v10 = [v9 numberWithUnsignedInteger:?];
  [(CBMutableService *)v61 setID:v10];

  v11 = objc_alloc(MEMORY[0x1E695DF90]);
  v12 = [(CBMutableService *)v61 ID];
  v13 = [(CBAttribute *)v61 UUID];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBService isPrimary](v61, "isPrimary")}];
  v60 = [v11 initWithObjectsAndKeys:{v12, @"kCBMsgArgAttributeID", v13, @"kCBMsgArgUUID", v14, @"kCBMsgArgType", 0}];

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v60 setObject:v15 forKeyedSubscript:@"kCBMsgArgAttributeIDs"];
  v70 = v15;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v16 = [(CBService *)v61 includedServices];
  v17 = [v16 countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v17)
  {
    v18 = *v85;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v85 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v84 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_services indexOfObject:v20]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          [v22 handleFailureInMethod:a2 object:self file:@"CBPeripheralManager.m" lineNumber:566 description:{@"Included services must be published before the service(s) that reference them (%@)", v20}];
        }

        v21 = [v20 ID];
        [v70 addObject:v21];
      }

      v17 = [v16 countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v17);
  }

  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v60 setObject:v65 forKeyedSubscript:@"kCBMsgArgCharacteristics"];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v23 = [(CBService *)v61 characteristics];
  v66 = [v23 countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v66)
  {
    v64 = *v81;
    obj = v23;
    do
    {
      for (j = 0; j != v66; ++j)
      {
        if (*v81 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v80 + 1) + 8 * j);
        v25 = [v24 value];
        if (v25)
        {
          if ([v24 properties] != 2 || (objc_msgSend(v24, "permissions") & 2) != 0)
          {

LABEL_30:
            v27 = [MEMORY[0x1E696AAA8] currentHandler];
            [v27 handleFailureInMethod:a2 object:self file:@"CBPeripheralManager.m" lineNumber:576 description:@"Characteristics with cached values must be read-only"];

            goto LABEL_31;
          }

          v26 = ([v24 permissions] & 8) == 0;

          if (!v26)
          {
            goto LABEL_30;
          }
        }

LABEL_31:
        v28 = [(NSMutableDictionary *)self->_characteristicIDs allKeysForObject:v24];
        v29 = [v28 count] == 0;

        if (!v29)
        {
          v49 = [MEMORY[0x1E696AAA8] currentHandler];
          [v49 handleFailureInMethod:a2 object:self file:@"CBPeripheralManager.m" lineNumber:580 description:@"Characteristics cannot be added more than once"];
        }

        v30 = MEMORY[0x1E696AD98];
        ++self->_attributeIDGenerator;
        v31 = [v30 numberWithUnsignedInteger:?];
        [v24 setID:v31];

        v32 = objc_alloc(MEMORY[0x1E695DF90]);
        v33 = [v24 ID];
        v34 = [v24 UUID];
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "properties")}];
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "permissions")}];
        v37 = [v24 value];
        v38 = v37;
        if (!v37)
        {
          v67 = [MEMORY[0x1E695DFB0] null];
          v38 = v67;
        }

        v69 = [v32 initWithObjectsAndKeys:{v33, @"kCBMsgArgAttributeID", v34, @"kCBMsgArgUUID", v35, @"kCBMsgArgCharacteristicProperties", v36, @"kCBMsgArgAttributePermissions", v38, @"kCBMsgArgData", 0}];
        if (!v37)
        {
        }

        v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v69 setObject:v39 forKeyedSubscript:@"kCBMsgArgDescriptors"];
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v40 = [v24 descriptors];
        v41 = [v40 countByEnumeratingWithState:&v76 objects:v89 count:16];
        if (v41)
        {
          v42 = *v77;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v77 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v76 + 1) + 8 * k);
              v45 = objc_alloc(MEMORY[0x1E695DF90]);
              v46 = [v44 UUID];
              v47 = [v44 value];
              v48 = [v45 initWithObjectsAndKeys:{v46, @"kCBMsgArgUUID", v47, @"kCBMsgArgData", 0}];

              [v39 addObject:v48];
            }

            v41 = [v40 countByEnumeratingWithState:&v76 objects:v89 count:16];
          }

          while (v41);
        }

        [v65 addObject:v69];
      }

      v23 = obj;
      v66 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v66);
  }

  if ([(CBManager *)self sendMsg:42 args:v60])
  {
    [(NSMutableArray *)self->_services addObject:v61];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v50 = [(CBService *)v61 characteristics];
    v51 = [v50 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v51)
    {
      v52 = *v73;
      do
      {
        for (m = 0; m != v51; ++m)
        {
          if (*v73 != v52)
          {
            objc_enumerationMutation(v50);
          }

          v54 = *(*(&v72 + 1) + 8 * m);
          characteristicIDs = self->_characteristicIDs;
          v56 = [v54 ID];
          [(NSMutableDictionary *)characteristicIDs setObject:v54 forKeyedSubscript:v56];
        }

        v51 = [v50 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v51);
    }
  }

  objc_sync_exit(v59);
  v57 = *MEMORY[0x1E69E9840];
}

- (void)removeService:(CBMutableService *)service
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = service;
  if (!v4)
  {
    [CBPeripheralManager removeService:];
  }

  v36 = self->_services;
  objc_sync_enter(v36);
  services = self->_services;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __37__CBPeripheralManager_removeService___block_invoke;
  v49[3] = &unk_1E8120B10;
  v6 = v4;
  v50 = v6;
  v7 = [(NSMutableArray *)services indexOfObjectPassingTest:v49];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
  }

  else
  {
    v9 = v7;
    v8 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:v7];
    v32 = v9;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = self->_services;
    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v10)
    {
      v33 = *v46;
      do
      {
        v31 = v10;
        for (i = 0; i != v31; ++i)
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v13 = [v12 includedServices];
          v14 = [v13 countByEnumeratingWithState:&v41 objects:v54 count:16];
          if (v14)
          {
            v15 = *v42;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v42 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = [*(*(&v41 + 1) + 8 * j) ID];
                v18 = [v8 ID];
                v19 = [v17 isEqualToNumber:v18];

                if (v19)
                {

                  v20 = [MEMORY[0x1E696AAA8] currentHandler];
                  [v20 handleFailureInMethod:a2 object:self file:@"CBPeripheralManager.m" lineNumber:644 description:@"Cannot remove a service that is still included by one or more published services"];
                  goto LABEL_22;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v41 objects:v54 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

        v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v10);
    }

    v20 = obj;
LABEL_22:

    v52 = @"kCBMsgArgAttributeID";
    v21 = [v8 ID];
    v53 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v23 = [(CBManager *)self sendMsg:43 args:v22];

    if (v23)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v24 = [v8 characteristics];
      v25 = [v24 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v25)
      {
        v26 = *v38;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v24);
            }

            characteristicIDs = self->_characteristicIDs;
            v29 = [*(*(&v37 + 1) + 8 * k) ID];
            [(NSMutableDictionary *)characteristicIDs removeObjectForKey:v29];
          }

          v25 = [v24 countByEnumeratingWithState:&v37 objects:v51 count:16];
        }

        while (v25);
      }

      [(NSMutableArray *)self->_services removeObjectAtIndex:v32];
    }
  }

  objc_sync_exit(v36);
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __37__CBPeripheralManager_removeService___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ID];
  v4 = [*(a1 + 32) ID];
  v5 = [v3 isEqualToNumber:v4];

  return v5;
}

- (void)removeAllServices
{
  obj = self->_services;
  objc_sync_enter(obj);
  if ([(CBManager *)self sendMsg:44 args:0])
  {
    [(NSMutableDictionary *)self->_characteristicIDs removeAllObjects];
    [(NSMutableArray *)self->_services removeAllObjects];
  }

  objc_sync_exit(obj);
}

- (void)respondToRequest:(CBATTRequest *)request withResult:(CBATTError)result
{
  v6 = request;
  v11 = v6;
  if (v6)
  {
    if ([(CBATTRequest *)v6 ignoreResponse])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [CBPeripheralManager respondToRequest:withResult:];
  if (([0 ignoreResponse] & 1) == 0)
  {
LABEL_3:
    v7 = [(CBATTRequest *)v11 transactionID];
    v8 = [(CBATTRequest *)v11 value];
    v9 = [(CBATTRequest *)v11 characteristic];
    v10 = [v9 ID];
    [(CBPeripheralManager *)self respondToTransaction:v7 value:v8 attributeID:v10 result:result];
  }

LABEL_4:
}

- (void)respondToTransaction:(id)a3 value:(id)a4 attributeID:(id)a5 result:(int64_t)a6
{
  v10 = MEMORY[0x1E695DF90];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  v17 = [v14 initWithObjectsAndKeys:{v13, @"kCBMsgArgTransactionID", v15, @"kCBMsgArgData", v11, @"kCBMsgArgAttributeID", v16, @"kCBMsgArgResult", 0}];

  if (!v12)
  {
  }

  [(CBManager *)self sendMsg:45 args:v17];
}

- (BOOL)updateValue:(NSData *)value forCharacteristic:(CBMutableCharacteristic *)characteristic onSubscribedCentrals:(NSArray *)centrals
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = value;
  v9 = characteristic;
  v10 = centrals;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CBPeripheralManager updateValue:forCharacteristic:onSubscribedCentrals:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CBPeripheralManager updateValue:forCharacteristic:onSubscribedCentrals:];
LABEL_3:
  [(NSLock *)self->_updateLock lock];
  readyForUpdates = self->_readyForUpdates;
  if (readyForUpdates)
  {
    self->_readyForUpdates = 0;
    [(NSLock *)self->_updateLock unlock];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v10;
    v13 = v10;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v25 + 1) + 8 * i) identifier];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    v20 = [(CBMutableCharacteristic *)v9 ID];
    v21 = [v19 initWithObjectsAndKeys:{v12, @"kCBMsgArgUUIDs", v8, @"kCBMsgArgData", v20, @"kCBMsgArgAttributeID", 0}];

    [(CBManager *)self sendMsg:46 args:v21];
    v10 = v24;
  }

  else
  {
    self->_waitingForReady = 1;
    [(NSLock *)self->_updateLock unlock];
  }

  v22 = *MEMORY[0x1E69E9840];
  return readyForUpdates;
}

- (BOOL)supportsMultipleAdvertising
{
  v3 = [(CBPeripheralManager *)self multipleAdvertisingSupported];

  if (!v3)
  {
    v4 = [(CBManager *)self sendSyncMsg:47 args:0];
    v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgData"];
    v6 = [v5 BOOLValue];

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      [CBPeripheralManager supportsMultipleAdvertising];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [(CBPeripheralManager *)self setMultipleAdvertisingSupported:v7];
  }

  v8 = [(CBPeripheralManager *)self multipleAdvertisingSupported];
  v9 = [v8 BOOLValue];

  return v9;
}

- (void)retrieveBluetoothUsageStatistics:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CBPeripheralManager_retrieveBluetoothUsageStatistics_completion___block_invoke;
  v7[3] = &unk_1E811CFC8;
  v8 = v5;
  v6 = v5;
  [(CBManager *)self sendMsg:230 args:&unk_1F4021068 withReply:v7];
}

void __67__CBPeripheralManager_retrieveBluetoothUsageStatistics_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v12 = objc_alloc_init(v5);
  v8 = [v7 objectForKeyedSubscript:@"kCBUsageStatsLePercent"];
  [v12 setObject:v8 forKeyedSubscript:@"kCBUsageStatsLePercent"];

  v9 = [v7 objectForKeyedSubscript:@"kCBUsageStatsClPercent"];
  [v12 setObject:v9 forKeyedSubscript:@"kCBUsageStatsClPercent"];

  v10 = [v7 objectForKeyedSubscript:@"kCBUsageStatsIsAudioStreaming"];
  [v12 setObject:v10 forKeyedSubscript:@"kCBUsageStatsIsAudioStreaming"];

  v11 = [v7 objectForKeyedSubscript:@"kCBUsageStatsTimeStampNsMonotonic"];

  [v12 setObject:v11 forKeyedSubscript:@"kCBUsageStatsTimeStampNsMonotonic"];
  (*(*(a1 + 32) + 16))();
}

- (void)handleRestoringState:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_delegateFlags & 1) == 0)
  {
    [CBPeripheralManager handleRestoringState:];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63 = [v4 objectForKeyedSubscript:@"kCBMsgArgSubscribedHandles"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgAdvertisementData"];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"kCBRestoredAdvertisement"];
    [(CBPeripheralManager *)self setIsAdvertising:1];
  }

  v53 = v7;
  v54 = v5;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v55 = v4;
  obj = [v4 objectForKeyedSubscript:@"kCBMsgArgServices"];
  v65 = self;
  v60 = v6;
  v58 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
  if (v58)
  {
    v57 = *v90;
    do
    {
      v8 = 0;
      do
      {
        if (*v90 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v8;
        v9 = *(*(&v89 + 1) + 8 * v8);
        v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = [[CBMutableService alloc] initWithDictionary:v9];
        [(NSMutableArray *)self->_services addObject:v10];
        v11 = [(CBMutableService *)v10 ID];
        v12 = [v11 unsignedIntegerValue];
        attributeIDGenerator = self->_attributeIDGenerator;

        if (v12 > attributeIDGenerator)
        {
          v14 = [(CBMutableService *)v10 ID];
          self->_attributeIDGenerator = [v14 unsignedIntegerValue];
        }

        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v15 = [v9 objectForKeyedSubscript:@"kCBMsgArgIncludedServices"];
        v16 = [v15 countByEnumeratingWithState:&v85 objects:v98 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v86;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v86 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v85 + 1) + 8 * i);
              v97[0] = v10;
              v96[0] = @"service";
              v96[1] = @"incID";
              v21 = [v20 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
              v97[1] = v21;
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
              [v62 addObject:v22];
            }

            v17 = [v15 countByEnumeratingWithState:&v85 objects:v98 count:16];
          }

          while (v17);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v61 = [v9 objectForKeyedSubscript:@"kCBMsgArgCharacteristics"];
        self = v65;
        v23 = v66;
        v67 = [v61 countByEnumeratingWithState:&v81 objects:v95 count:16];
        if (v67)
        {
          v64 = *v82;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v82 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v25 = *(*(&v81 + 1) + 8 * j);
              v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v27 = [[CBMutableCharacteristic alloc] initWithService:v10 dictionary:v25];
              characteristicIDs = self->_characteristicIDs;
              v29 = [(CBMutableCharacteristic *)v27 ID];
              [(NSMutableDictionary *)characteristicIDs setObject:v27 forKeyedSubscript:v29];

              v30 = [(CBMutableCharacteristic *)v27 ID];
              v31 = [v30 unsignedIntegerValue];
              v32 = self->_attributeIDGenerator;

              if (v31 > v32)
              {
                v33 = [(CBMutableCharacteristic *)v27 ID];
                self->_attributeIDGenerator = [v33 unsignedIntegerValue];
              }

              v79[0] = MEMORY[0x1E69E9820];
              v79[1] = 3221225472;
              v79[2] = __44__CBPeripheralManager_handleRestoringState___block_invoke;
              v79[3] = &unk_1E8120B38;
              v79[4] = self;
              v34 = v27;
              v80 = v34;
              [v63 enumerateObjectsUsingBlock:v79];
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v35 = [v25 objectForKeyedSubscript:@"kCBMsgArgDescriptors"];
              v36 = [v35 countByEnumeratingWithState:&v75 objects:v94 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v76;
                do
                {
                  for (k = 0; k != v37; ++k)
                  {
                    if (*v76 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = [[CBMutableDescriptor alloc] initWithCharacteristic:v34 dictionary:*(*(&v75 + 1) + 8 * k)];
                    [v26 addObject:v40];
                  }

                  v37 = [v35 countByEnumeratingWithState:&v75 objects:v94 count:16];
                }

                while (v37);
              }

              if ([v26 count])
              {
                [(CBCharacteristic *)v34 setDescriptors:v26];
              }

              v23 = v66;
              [v66 addObject:v34];

              self = v65;
            }

            v67 = [v61 countByEnumeratingWithState:&v81 objects:v95 count:16];
          }

          while (v67);
        }

        if ([v23 count])
        {
          [(CBService *)v10 setCharacteristics:v23];
        }

        [v60 addObject:v10];

        v8 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
    }

    while (v58);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v41 = v62;
  v42 = [v41 countByEnumeratingWithState:&v71 objects:v93 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v72;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v72 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v71 + 1) + 8 * m);
        v47 = [v46 objectForKeyedSubscript:@"service"];
        v48 = [v46 objectForKeyedSubscript:@"incID"];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __44__CBPeripheralManager_handleRestoringState___block_invoke_2;
        v68[3] = &unk_1E8120B38;
        v69 = v48;
        v70 = v47;
        v49 = v47;
        v50 = v48;
        [v60 enumerateObjectsUsingBlock:v68];
      }

      v43 = [v41 countByEnumeratingWithState:&v71 objects:v93 count:16];
    }

    while (v43);
  }

  if ([v60 count])
  {
    [v54 setObject:v60 forKeyedSubscript:@"kCBRestoredServices"];
    v65->_attributeIDGenerator += 16;
  }

  v51 = [(CBPeripheralManager *)v65 delegate];
  [v51 peripheralManager:v65 willRestoreState:v54];

  v52 = *MEMORY[0x1E69E9840];
}

void __44__CBPeripheralManager_handleRestoringState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
  v4 = [*(a1 + 32) centralWithInfo:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) ID];
    v6 = [v7 isEqualToNumber:v5];

    if (v6)
    {
      [*(a1 + 40) handleCentralSubscribed:v4];
    }
  }
}

void __44__CBPeripheralManager_handleRestoringState___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 ID];
  v7 = [v6 isEqualToNumber:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) includedServices];
    if (v8)
    {
      v9 = [*(a1 + 40) includedServices];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v10 addObject:v11];
    [*(a1 + 40) setIncludedServices:v10];
    *a4 = 1;
  }
}

- (void)handleServiceAdded:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
  v6 = self->_services;
  objc_sync_enter(v6);
  services = self->_services;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __42__CBPeripheralManager_handleServiceAdded___block_invoke;
  v24[3] = &unk_1E8120B10;
  v18 = v5;
  v25 = v18;
  v8 = [(NSMutableArray *)services indexOfObjectPassingTest:v24];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:v8];
    if (v19)
    {
      [(NSMutableArray *)self->_services removeObjectAtIndex:v8];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v17 characteristics];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v9);
            }

            characteristicIDs = self->_characteristicIDs;
            v14 = [*(*(&v20 + 1) + 8 * i) ID];
            [(NSMutableDictionary *)characteristicIDs removeObjectForKey:v14];
          }

          v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v10);
      }
    }

    if ((*&self->_delegateFlags & 2) != 0)
    {
      v15 = [(CBPeripheralManager *)self delegate];
      [v15 peripheralManager:self didAddService:v17 error:v19];
    }
  }

  objc_sync_exit(v6);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __42__CBPeripheralManager_handleServiceAdded___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ID];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (void)handleGetAttributeValue:(id)a3
{
  v14 = a3;
  v4 = [v14 objectForKeyedSubscript:@"kCBMsgArgTransactionID"];
  v5 = [v14 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
  v6 = [v14 objectForKeyedSubscript:@"kCBMsgArgOffset"];
  v7 = self->_services;
  objc_sync_enter(v7);
  v8 = [CBATTRequest alloc];
  v9 = [(CBPeripheralManager *)self centralWithInfo:v14];
  v10 = [(NSMutableDictionary *)self->_characteristicIDs objectForKeyedSubscript:v5];
  v11 = -[CBATTRequest initWithCentral:characteristic:offset:transactionID:](v8, "initWithCentral:characteristic:offset:transactionID:", v9, v10, [v6 unsignedIntegerValue], v4);

  v12 = [(CBATTRequest *)v11 characteristic];

  if (v12)
  {
    if ((*&self->_delegateFlags & 4) != 0)
    {
      v13 = [(CBPeripheralManager *)self delegate];
      [v13 peripheralManager:self didReceiveReadRequest:v11];
    }

    else
    {
      [(CBPeripheralManager *)self respondToRequest:v11 withResult:6];
    }
  }

  else
  {
    [(CBPeripheralManager *)self respondToTransaction:v4 value:0 attributeID:v5 result:10];
  }

  objc_sync_exit(v7);
}

- (void)handleSetAttributeValues:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v26 = [(CBPeripheralManager *)self centralWithInfo:?];
  v27 = [v24 objectForKeyedSubscript:@"kCBMsgArgTransactionID"];
  v4 = [v24 objectForKeyedSubscript:@"kCBMsgArgATTWrites"];
  v5 = self->_services;
  objc_sync_enter(v5);
  v23 = v5;
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v29 = *v31;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v31 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
      v11 = [(NSMutableDictionary *)self->_characteristicIDs objectForKeyedSubscript:v10];
      v12 = [v9 objectForKeyedSubscript:@"kCBMsgArgOffset"];
      v13 = [v12 unsignedIntegerValue];

      v14 = [(CBATTRequest *)v6 characteristic];
      v15 = v14;
      if (v11 == v14)
      {
        v16 = v13 == [(CBATTRequest *)v6 endOffset];

        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v17 = [[CBATTRequest alloc] initWithCentral:v26 characteristic:v11 offset:v13 transactionID:v27];

      [v28 addObject:v17];
      v6 = v17;
LABEL_10:
      v18 = [v9 objectForKeyedSubscript:@"kCBMsgArgData"];
      [(CBATTRequest *)v6 appendValueData:v18];

      v19 = [v9 objectForKeyedSubscript:@"kCBMsgArgIgnoreResponse"];
      -[CBATTRequest setIgnoreResponse:](v6, "setIgnoreResponse:", [v19 BOOLValue]);

      v20 = [(CBATTRequest *)v6 characteristic];
      LODWORD(v19) = v20 == 0;

      if (v19)
      {
        if (![(CBATTRequest *)v6 ignoreResponse])
        {
          [(CBPeripheralManager *)self respondToTransaction:v27 value:0 attributeID:v10 result:10];
        }

        goto LABEL_18;
      }

      if ((*&self->_delegateFlags & 8) == 0)
      {
        [(CBPeripheralManager *)self respondToRequest:v6 withResult:6];
LABEL_18:

        v21 = obj;
        goto LABEL_19;
      }

      if (v7 == ++v8)
      {
        v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = [(CBPeripheralManager *)self delegate];
  [v21 peripheralManager:self didReceiveWriteRequests:v28];
LABEL_19:

  objc_sync_exit(v23);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleNotificationAdded:(id)a3
{
  v9 = a3;
  v4 = [(CBPeripheralManager *)self centralWithInfo:v9];
  v5 = [v9 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
  v6 = self->_services;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)self->_characteristicIDs objectForKeyedSubscript:v5];
  if ([v7 handleCentralSubscribed:v4] && (*&self->_delegateFlags & 0x10) != 0)
  {
    v8 = [(CBPeripheralManager *)self delegate];
    [v8 peripheralManager:self central:v4 didSubscribeToCharacteristic:v7];
  }

  objc_sync_exit(v6);
}

- (void)handleNotificationRemoved:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v27 = self;
  v4 = [(CBPeripheralManager *)self centralWithInfo:v26];
  v25 = [v26 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
  v24 = self->_services;
  objc_sync_enter(v24);
  v5 = [(NSMutableDictionary *)self->_characteristicIDs objectForKeyedSubscript:v25];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 handleCentralUnsubscribed:v4] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v22 = v7;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_services;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  v23 = v6;
  if (!v8)
  {

LABEL_31:
    [v4 setMtuLength:23];
    goto LABEL_32;
  }

  v29 = *v41;
  v30 = v8;
  v9 = 1;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v41 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [v10 characteristics];
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v12)
      {
        v13 = *v37;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v36 + 1) + 8 * j);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v16 = [v15 subscribedCentrals];
            v17 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v17)
            {
              v18 = *v33;
              while (2)
              {
                for (k = 0; k != v17; ++k)
                {
                  if (*v33 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if ([*(*(&v32 + 1) + 8 * k) isEqual:v4])
                  {
                    v9 = 0;
                    goto LABEL_24;
                  }
                }

                v17 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_24:
          }

          v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v12);
      }
    }

    v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  }

  while (v30);

  if (v9)
  {
    goto LABEL_31;
  }

LABEL_32:
  if ((v22 & 1) == 0 && (*&v27->_delegateFlags & 0x20) != 0)
  {
    v20 = [(CBPeripheralManager *)v27 delegate];
    [v20 peripheralManager:v27 central:v4 didUnsubscribeFromCharacteristic:v23];
  }

  objc_sync_exit(v24);
  v21 = *MEMORY[0x1E69E9840];
}

- (void)handleAdvertisingStarted:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (!v5)
  {
    [(CBPeripheralManager *)self setIsAdvertising:1];
  }

  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgResult"];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:341];
  v8 = [v6 isEqualToNumber:v7];

  if (v8)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
    {
      [CBPeripheralManager handleAdvertisingStarted:];
      if ((*&self->_delegateFlags & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"kCBMsgArgResult"];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:348];
    v11 = [v9 isEqualToNumber:v10];

    if (v11)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
      {
        [CBPeripheralManager handleAdvertisingStarted:];
        if ((*&self->_delegateFlags & 0x40) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }
  }

  if ((*&self->_delegateFlags & 0x40) != 0)
  {
LABEL_14:
    v12 = [(CBPeripheralManager *)self delegate];
    [v12 peripheralManagerDidStartAdvertising:self error:v5];
  }

LABEL_15:
}

- (void)handleAdvertisingStopped:(id)a3
{
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:a3];
  [(CBPeripheralManager *)self setIsAdvertising:0];
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    v4 = [(CBPeripheralManager *)self delegate];
    [v4 peripheralManager:self didStopAdvertisingWithError:v5];
  }
}

- (void)handlePeriodicAdvertisingStarted:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:a3];
  if ((*&self->_delegateFlags & 0x80) != 0)
  {
    v6 = v4;
    v5 = [(CBPeripheralManager *)self delegate];
    [v5 peripheralManager:self didStartPeriodicAdvertising:v6];

    v4 = v6;
  }
}

- (void)handlePeriodicAdvertisingStopped:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:a3];
  if (*(&self->_delegateFlags + 1))
  {
    v6 = v4;
    v5 = [(CBPeripheralManager *)self delegate];
    [v5 peripheralManager:self didStopPeriodicAdvertising:v6];

    v4 = v6;
  }
}

- (void)handleReadyForUpdates:(id)a3
{
  [(NSLock *)self->_updateLock lock];
  self->_readyForUpdates = 1;
  waitingForReady = self->_waitingForReady;
  self->_waitingForReady = 0;
  [(NSLock *)self->_updateLock unlock];
  if (waitingForReady && (*(&self->_delegateFlags + 1) & 2) != 0)
  {
    v5 = [(CBPeripheralManager *)self delegate];
    [v5 peripheralManagerIsReadyToUpdateSubscribers:self];
  }
}

- (void)handleSolicitedServicesFound:(id)a3
{
  v4 = a3;
  v7 = [(CBPeripheralManager *)self centralWithInfo:v4];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgUUIDs"];

  if ((*(&self->_delegateFlags + 1) & 4) != 0)
  {
    v6 = [(CBPeripheralManager *)self delegate];
    [v6 peripheralManager:self central:v7 didConnectWithServiceUUIDs:v5];
  }
}

- (void)handleConnectionParametersUpdated:(id)a3
{
  v4 = a3;
  v9 = [(CBPeripheralManager *)self centralWithInfo:v4];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionInterval"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionLatency"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgSupervisionTimeout"];

  if (v9 && (*(&self->_delegateFlags + 1) & 8) != 0)
  {
    v8 = [(CBPeripheralManager *)self delegate];
    [v8 peripheralManager:self didUpdateConnectionParameters:v9 interval:v5 latency:v6 supervisionTimeout:v7];
  }
}

- (void)handleSupportedFeatures:(id)a3
{
  gSupportedFeatures_0 = 0;
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgSupportedFeatures"];
  v3 = [v4 objectForKey:@"kCBMsgArgSupportsExtendedAdvertising"];

  if (v3)
  {
    gSupportedFeatures_0 = 1;
  }
}

- (void)handleL2CAPChannelOpened:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheralManager handleL2CAPChannelOpened:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v5)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        v6 = 0;
        if ((*(&self->_delegateFlags + 1) & 0x40) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    [CBPeripheralManager handleL2CAPChannelOpened:];
    v6 = 0;
    if ((*(&self->_delegateFlags + 1) & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    v12 = [(CBPeripheralManager *)self delegate];
    [v12 peripheralManager:self didOpenL2CAPChannel:v6 error:v5];

    goto LABEL_16;
  }

  centrals = self->_centrals;
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v9 = [(NSMapTable *)centrals objectForKey:v8];

  if (!v9)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        v9 = [(CBPeer *)[CBCentral alloc] initWithInfo:v4 manager:self];
        v10 = self->_centrals;
        v11 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
        [(NSMapTable *)v10 setObject:v9 forKey:v11];

        goto LABEL_14;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    [CBPeripheralManager handleL2CAPChannelOpened:];
    goto LABEL_13;
  }

LABEL_14:
  v6 = [[CBL2CAPChannel alloc] initWithPeer:v9 manager:self info:v4];
  [(NSHashTable *)self->_l2capChannels addObject:v6];

  if ((*(&self->_delegateFlags + 1) & 0x40) != 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)handleL2CAPChannelClosed:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  v6 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v7 = [v6 intValue];

  v8 = [v4 objectForKey:@"kCBMsgArgCID"];
  v9 = [v8 intValue];

  centrals = self->_centrals;
  v11 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v12 = [(NSMapTable *)centrals objectForKey:v11];

  v13 = [(CBPeripheralManager *)self l2capChannelForPeer:v12 withCID:v9];
  if (v13 || ([(CBPeripheralManager *)self l2capChannelForPeer:v12 withPsm:v7], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    [v13 handleChannelClosed:v4];
    if ((*(&self->_delegateFlags + 2) & 0x20) != 0)
    {
      v15 = [(CBPeripheralManager *)self delegate];
      [v15 peripheralManager:self didCloseL2CAPChannel:v14];
    }

    [(NSHashTable *)self->_l2capChannels removeObject:v14];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v17 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67109634;
      v18[1] = v7;
      v19 = 1024;
      v20 = v9;
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v17, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel closed with psm:%u cid:%u and result:%@", v18, 0x18u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelPublished:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKey:@"kCBMsgArgResult"];
  [v7 intValue];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheralManager handleL2CAPChannelPublished:];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if ((*(&self->_delegateFlags + 1) & 0x10) != 0)
  {
    v9 = [(CBPeripheralManager *)self delegate];
    [v9 peripheralManager:self didPublishL2CAPChannel:v6 error:v8];
  }
}

- (void)handleL2CAPChannelUnpublished:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKey:@"kCBMsgArgResult"];
  [v7 intValue];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheralManager handleL2CAPChannelUnpublished:];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
  {
    v9 = [(CBPeripheralManager *)self delegate];
    [v9 peripheralManager:self didUnpublishL2CAPChannel:v6 error:v8];
  }
}

- (void)handleL2CAPChannelDidReceiveData:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  v6 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v7 = [v6 intValue];

  v8 = [v4 objectForKey:@"kCBMsgArgCID"];
  v9 = [v8 intValue];

  centrals = self->_centrals;
  v11 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v12 = [(NSMapTable *)centrals objectForKey:v11];

  v13 = [(CBPeripheralManager *)self l2capChannelForPeer:v12 withCID:v9];
  if (v13 || ([(CBPeripheralManager *)self l2capChannelForPeer:v12 withPsm:v7], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    [v13 handleDataReceived:v4];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v16 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109634;
      v17[1] = v7;
      v18 = 1024;
      v19 = v9;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel received Data with psm:%u cid:%u and result:%@", v17, 0x18u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleCentralDidUpdateANCSAuthorization:(id)a3
{
  v4 = a3;
  centrals = self->_centrals;
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v7 = [(NSMapTable *)centrals objectForKey:v6];

  if (!v7)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [(CBPeripheralManager *)v4 handleCentralDidUpdateANCSAuthorization:?];
    }

    v7 = [(CBPeripheralManager *)self centralWithInfo:v4];
  }

  v8 = [v4 objectForKey:@"kCBMsgArgAncsAuthorization"];
  v9 = [v8 BOOLValue];

  if (*(&self->_delegateFlags + 2))
  {
    v10 = [(CBPeripheralManager *)self delegate];
    [v10 peripheralManager:self central:v7 didUpdateANCSAuthorization:v9];
  }
}

- (void)HandleControllerPeripheralBTClockUpdateMsg:(id)a3
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"kCBGetControllerBTClockSeconds"];
  v5 = [v12 objectForKeyedSubscript:@"kCBGetControllerBTClockMicroSeconds"];
  v6 = [v12 objectForKeyedSubscript:@"kCBGetControllerBTClockEventType"];
  v7 = [v12 objectForKeyedSubscript:@"kCBGetControllerBTLocalClock"];
  v8 = [v12 objectForKeyedSubscript:@"kCBGetControllerBTRemoteClock"];
  delegateFlags = self->_delegateFlags;
  if ((*&delegateFlags & 0x20000) != 0)
  {
    v10 = [(CBPeripheralManager *)self delegate];
    [v10 peripheralManager:self didUpdateControllerBTClock:v6 seconds:v4 microseconds:v5 localClock:v7 remoteClock:v8];

    delegateFlags = self->_delegateFlags;
  }

  if ((*&delegateFlags & 0x40000) != 0)
  {
    v11 = [(CBPeripheralManager *)self delegate];
    [v11 peripheralManager:self didUpdateControllerBTClockDict:v12];
  }
}

- (void)HandleOfflineAdvPayloadRequestedWithReason:(id)a3
{
  v4 = [a3 objectForKey:@"kCBMsgArgReason"];
  v5 = [v4 intValue];

  if ((*(&self->_delegateFlags + 2) & 8) != 0)
  {
    v6 = [(CBPeripheralManager *)self delegate];
    [v6 peripheralManager:self offlineAdvPayloadRequestedWithReason:v5];
  }
}

- (void)handleIncomingCISConnectionRequest:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheralManager handleIncomingCISConnectionRequest:];
    if (!self->_incomingConnectionRequestCompletion)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self->_incomingConnectionRequestCompletion)
  {
LABEL_5:
    v5 = [v4 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
    v6 = [v4 objectForKeyedSubscript:@"kCBLEAudioArgCisId"];
    (*(self->_incomingConnectionRequestCompletion + 2))();
  }

LABEL_6:
}

- (void)handleConnectCISPeripheralComplete:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v9 = [v4 errorWithInfo:v5];
  v6 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
  v7 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCisId"];

  cisPeripheralConnectEvent = self->_cisPeripheralConnectEvent;
  if (cisPeripheralConnectEvent)
  {
    cisPeripheralConnectEvent[2](cisPeripheralConnectEvent, v9, v6, v7);
  }
}

- (void)handleDisconnectCISPeripheralComplete:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v9 = [v4 errorWithInfo:v5];
  v6 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
  v7 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCisId"];

  cisPeripheralDisconnectEvent = self->_cisPeripheralDisconnectEvent;
  if (cisPeripheralDisconnectEvent)
  {
    cisPeripheralDisconnectEvent[2](cisPeripheralDisconnectEvent, v9, v6, v7);
  }
}

- (void)handleCSProcedureEventMsg:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "CBPeripheralManager: handleCSProcedureEventMsg for args %@", &v13, 0xCu);
  }

  centrals = self->_centrals;
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v8 = [(NSMapTable *)centrals objectForKey:v7];

  v9 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (!v8)
  {
    if (CBLogInitOnce == -1)
    {
      v11 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v11 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1C0AC1000, v11, OS_LOG_TYPE_DEFAULT, "No peripheral found in handleCSProcedureEventMsg for args %@", &v13, 0xCu);
    goto LABEL_11;
  }

  if ((*(&self->_delegateFlags + 2) & 0x10) != 0)
  {
    v10 = [(CBPeripheralManager *)self delegate];
    [v10 peripheralManager:self didChannelSoundingProcedureEvent:v8 results:v4 error:v9];
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMsgAllowedWhenOff:(unsigned __int16)a3
{
  if (a3 - 16) < 0x1D && ((0x1CC00001u >> (a3 - 16)))
  {
    return 1;
  }

  return a3 == 12 || a3 == 49;
}

- (BOOL)isMsgAllowedAlways:(unsigned __int16)a3
{
  if (a3 <= 0x2Fu && ((1 << a3) & 0x800000000C00) != 0)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = CBPeripheralManager;
  return [(CBManager *)&v6 isMsgAllowedAlways:?];
}

- (id)addXPCDelayTiming:(id)a3 args:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [v5 objectForKeyedSubscript:@"kCBOptionUseCase"];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v5 objectForKeyedSubscript:@"kCBOptionUseCase"];
  if ([v9 unsignedLongValue] != 22)
  {

    goto LABEL_9;
  }

  v10 = [v5 objectForKeyedSubscript:@"kCBMsgArgTimeXpcTimestampsTracking"];

  if (!v10)
  {
LABEL_9:
    v11 = v5;
    goto LABEL_10;
  }

  if (!v6)
  {
    v6 = @"Unknown Timestamp";
  }

  v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
  v12 = MEMORY[0x1E695DF90];
  v13 = [v11 objectForKeyedSubscript:@"kCBMsgArgTimeXpcTimestampsTracking"];
  v14 = [v12 dictionaryWithDictionary:v13];

  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC) / 0xF4240];
  [v14 setObject:v15 forKeyedSubscript:v6];

  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
  [v11 setObject:v16 forKeyedSubscript:@"kCBMsgArgTimeXpcTimestampsTracking"];

LABEL_10:

  return v11;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)publishL2CAPChannel:requiresEncryption:options:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_2();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_9_1(&dword_1C0AC1000, v1, v2, "Publish L2CAP channel with psm : %u and encryptionRequirement:%d", v4, v5);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)unpublishL2CAPChannel:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)unpublishL2CAPChannel:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:@"psm > 0" object:? file:? lineNumber:? description:?];
}

- (void)overrideLocalLeAddress:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)l2capChannelForPeer:withPsm:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_10_2(&dword_1C0AC1000, v0, v1, "No known channel matching peer %@ with psm %u");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)l2capChannelForPeer:withCID:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_10_2(&dword_1C0AC1000, v0, v1, "No known channel matching peer %@ with cid %u");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)authorizationStatus
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDelegate:queue:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:options:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:options:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithDelegate:queue:options:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setDesiredConnectionLatency:forCentral:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"central != nil" object:? file:? lineNumber:? description:?];
}

- (void)addService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"service != nil" object:? file:? lineNumber:? description:?];
}

- (void)removeService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"service != nil" object:? file:? lineNumber:? description:?];
}

- (void)respondToRequest:withResult:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"request != nil" object:? file:? lineNumber:? description:?];
}

- (void)updateValue:forCharacteristic:onSubscribedCentrals:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"value != nil" object:? file:? lineNumber:? description:?];
}

- (void)updateValue:forCharacteristic:onSubscribedCentrals:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)supportsMultipleAdvertising
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleRestoringState:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)handleL2CAPChannelOpened:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleL2CAPChannelOpened:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleL2CAPChannelOpened:.cold.6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleL2CAPChannelPublished:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_2();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_9_1(&dword_1C0AC1000, v0, v1, "l2CAP channel published : psm : %u, result : %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelUnpublished:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_2();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_9_1(&dword_1C0AC1000, v0, v1, "l2CAP channel unpublished : psm : %u, result : %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleCentralDidUpdateANCSAuthorization:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(*(a2 + 120)) & 1;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_10_2(&dword_1C0AC1000, v3, v4, "Unexpectedly could not find a central given args %{public}@ delegateImplemented %d");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingCISConnectionRequest:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end