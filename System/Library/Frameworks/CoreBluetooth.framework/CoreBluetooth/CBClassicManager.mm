@interface CBClassicManager
- (BOOL)isMsgAllowedAlways:(unsigned __int16)a3;
- (BOOL)setBTPowerState:(BOOL)a3;
- (CBClassicManager)initWithQueue:(id)a3 options:(id)a4;
- (id)classicPeerWithInfo:(id)a3;
- (id)getLocalSDPDatabase;
- (id)peerWithIdentifier:(id)a3;
- (id)peerWithInfo:(id)a3;
- (id)retrievePairedPeersWithOptions:(id)a3;
- (id)retrievePeerWithAddress:(id)a3;
- (unsigned)addServiceWithData:(id)a3;
- (void)addService:(id)a3;
- (void)addService:(id)a3 sdpRecord:(id)a4 sdpRecordAddedHandler:(id)a5;
- (void)addServiceToInquiryList:(id)a3;
- (void)cancelPeerConnection:(id)a3;
- (void)cancelPeerConnection:(id)a3 force:(BOOL)a4;
- (void)cancelPeerConnection:(id)a3 options:(id)a4;
- (void)connectPeer:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)forEachClassicPeer:(id)a3;
- (void)handleLocalDeviceStateUpdatedMsg:(id)a3;
- (void)handlePeerConnectionCompleted:(id)a3;
- (void)handlePeerConnectionStateUpdated:(id)a3;
- (void)handlePeerDisconnectionCompleted:(id)a3;
- (void)handlePeerDiscovered:(id)a3;
- (void)handleSDPRecordAdded:(id)a3;
- (void)handleServiceAddedToInquiryList:(id)a3;
- (void)handleServiceAddedToSDP:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)orphanClassicPeers;
- (void)removeAllServices;
- (void)removeAllServicesFromInquiryList;
- (void)removeService:(id)a3;
- (void)removeServiceFromInquiryList:(id)a3;
- (void)setBTConnectable:(BOOL)a3;
- (void)setBTDiscoverable:(BOOL)a3;
- (void)setTestMode:(BOOL)a3;
- (void)startInquiryWithOptions:(id)a3 classicPeerDiscovered:(id)a4;
- (void)stopInquiry;
@end

@implementation CBClassicManager

- (CBClassicManager)initWithQueue:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CBClassicManager;
  v8 = [(CBManager *)&v12 initInternal];
  if (v8)
  {
    [(CBClassicManager *)v8 addObserver:v8 forKeyPath:@"state" options:0 context:objc_opt_class()];
    [(CBClassicManager *)v8 addObserver:v8 forKeyPath:@"powerState" options:0 context:objc_opt_class()];
    [(CBClassicManager *)v8 addObserver:v8 forKeyPath:@"localName" options:0 context:objc_opt_class()];
    [(CBClassicManager *)v8 addObserver:v8 forKeyPath:@"inquiryState" options:0 context:objc_opt_class()];
    [(CBClassicManager *)v8 addObserver:v8 forKeyPath:@"discoverable" options:0 context:objc_opt_class()];
    [(CBClassicManager *)v8 addObserver:v8 forKeyPath:@"connectable" options:0 context:objc_opt_class()];
    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    peers = v8->_peers;
    v8->_peers = v9;

    v8->_testMode = 0;
    v8->_connectable = 0;
    v8->_discoverable = 0;
    v8->_powerState = 1;
    [(CBManager *)v8 startWithQueue:v6 options:v7 sessionType:3];
  }

  return v8;
}

- (void)dealloc
{
  [(CBClassicManager *)self orphanClassicPeers];
  [(CBClassicManager *)self removeObserver:self forKeyPath:@"state" context:objc_opt_class()];
  [(CBClassicManager *)self removeObserver:self forKeyPath:@"powerState" context:objc_opt_class()];
  [(CBClassicManager *)self removeObserver:self forKeyPath:@"localName" context:objc_opt_class()];
  [(CBClassicManager *)self removeObserver:self forKeyPath:@"inquiryState" context:objc_opt_class()];
  [(CBClassicManager *)self removeObserver:self forKeyPath:@"discoverable" context:objc_opt_class()];
  [(CBClassicManager *)self removeObserver:self forKeyPath:@"connectable" context:objc_opt_class()];
  v3.receiver = self;
  v3.super_class = CBClassicManager;
  [(CBManager *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  if (objc_opt_class() == a6)
  {
    v13 = [v12 isEqualToString:@"state"];

    if (v13)
    {
      if ([(CBManager *)self state]!= CBManagerStatePoweredOn && [(CBManager *)self state]!= 10)
      {
        [(CBClassicManager *)self forEachClassicPeer:&__block_literal_global_3];
        if ([(CBManager *)self state]== CBManagerStateResetting)
        {
          [(CBClassicManager *)self orphanClassicPeers];
        }
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CBClassicManager;
    [(CBClassicManager *)&v14 observeValueForKeyPath:v12 ofObject:v10 change:v11 context:a6];
  }
}

- (id)peerWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    v5 = self->_peers;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)self->_peers objectForKey:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)classicPeerWithInfo:(id)a3
{
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    v5 = self->_peers;
    objc_sync_enter(v5);
    peers = self->_peers;
    v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    v8 = [(NSMapTable *)peers objectForKey:v7];

    if (!v8)
    {
      v8 = [[CBClassicPeer alloc] initWithInfo:v4 manager:self];
      v9 = [(CBManager *)self sendSyncMsg:47 args:v4];
      [(CBClassicPeer *)v8 handleMsg:47 args:v9];
      v10 = self->_peers;
      v11 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
      [(NSMapTable *)v10 setObject:v8 forKey:v11];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)peerWithInfo:(id)a3
{
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    v5 = [(CBClassicManager *)self classicPeerWithInfo:v4];

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)forEachClassicPeer:(id)a3
{
  v8 = a3;
  if ([(CBManager *)self tccApproved])
  {
    v4 = self->_peers;
    objc_sync_enter(v4);
    v5 = [(NSMapTable *)self->_peers objectEnumerator];
    for (i = 0; ; i = v7)
    {
      v7 = [v5 nextObject];

      if (!v7)
      {
        break;
      }

      v8[2](v8, v7);
    }

    objc_sync_exit(v4);
  }
}

- (void)orphanClassicPeers
{
  if ([(CBManager *)self tccApproved])
  {
    [(CBClassicManager *)self forEachClassicPeer:&__block_literal_global_60];
    obj = self->_peers;
    objc_sync_enter(obj);
    [(NSMapTable *)self->_peers removeAllObjects];
    objc_sync_exit(obj);
  }
}

void __38__CBClassicManager_orphanClassicPeers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __38__CBClassicManager_orphanClassicPeers__block_invoke_cold_2();
  }

  [v2 handleDisconnection];
  [v2 setOrphan];
}

- (BOOL)isMsgAllowedAlways:(unsigned __int16)a3
{
  if ((a3 - 10) <= 0x38 && ((1 << (a3 - 10)) & 0x100000000000003) != 0)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = CBClassicManager;
  return [(CBManager *)&v6 isMsgAllowedAlways:?];
}

- (void)setBTConnectable:(BOOL)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_connectable != a3)
  {
    v7 = @"kCBMsgArgConnectableState";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBManager *)self sendMsg:34 args:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBTDiscoverable:(BOOL)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_discoverable != a3)
  {
    v7 = @"kCBMsgArgDiscoverableState";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBManager *)self sendMsg:35 args:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)setBTPowerState:(BOOL)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  powerState = self->_powerState;
  if (a3)
  {
    if (powerState == 2)
    {
LABEL_3:
      result = 0;
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else if (powerState != 2)
  {
    goto LABEL_3;
  }

  v10 = @"kCBMsgArgBTPowerState";
  v6 = self;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  LOBYTE(v6) = [(CBManager *)v6 sendMsg:33 args:v8];

  result = v6;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleLocalDeviceStateUpdatedMsg:(id)a3
{
  v4 = a3;
  v14 = [v4 objectForKeyedSubscript:@"kCBMsgArgInquiryState"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectableState"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgDiscoverableState"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgBTPowerState"];

  if (v14)
  {
    [(CBClassicManager *)self willChangeValueForKey:@"inquiryState"];
    self->_inquiryState = [v14 BOOLValue];
    [(CBClassicManager *)self didChangeValueForKey:@"inquiryState"];
  }

  if (v5)
  {
    v8 = [v5 BOOLValue];
    if (self->_connectable != v8)
    {
      v9 = v8;
      [(CBClassicManager *)self willChangeValueForKey:@"connectable"];
      self->_connectable = v9;
      [(CBClassicManager *)self didChangeValueForKey:@"connectable"];
    }
  }

  if (v6)
  {
    v10 = [v6 BOOLValue];
    if (self->_discoverable != v10)
    {
      v11 = v10;
      [(CBClassicManager *)self willChangeValueForKey:@"discoverable"];
      self->_discoverable = v11;
      [(CBClassicManager *)self didChangeValueForKey:@"discoverable"];
    }
  }

  if (v7)
  {
    v12 = [v7 intValue];
    [(CBClassicManager *)self willChangeValueForKey:@"powerState"];
    v13 = v12 == 2;
    if (v12 == 1)
    {
      v13 = 2;
    }

    self->_powerState = v13;
    [(CBClassicManager *)self didChangeValueForKey:@"powerState"];
  }
}

- (void)startInquiryWithOptions:(id)a3 classicPeerDiscovered:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v8 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBClassicManager *)v8 startInquiryWithOptions:v6 classicPeerDiscovered:?];
  }

  [(CBClassicManager *)self setClassicPeerDiscovered:v7];
  if ([(CBManager *)self state]== CBManagerStatePoweredOn)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBMsgArgInquiryState"];
    if (![v6 count])
    {
LABEL_21:
      if ([(CBManager *)self sendMsg:36 args:v9])
      {
        self->_isInquiryRunning = 1;
      }

      goto LABEL_24;
    }

    v10 = [v6 objectForKeyedSubscript:@"kCBInquiryLength"];
    if (v10)
    {
      [v9 setObject:v10 forKeyedSubscript:@"kCBMsgArgInquiryLength"];
    }

    v11 = [v6 objectForKeyedSubscript:@"kCBInquiryInfinite"];
    if (v11)
    {
      [v9 setObject:v11 forKeyedSubscript:@"kCBMsgArgInquiryInfinite"];
    }

    v12 = [v6 objectForKeyedSubscript:@"kCBInquiryServices"];
    if (v12)
    {
      [v9 setObject:v12 forKeyedSubscript:@"kCBMsgArgServiceUUIDs"];
    }

    v13 = [v6 objectForKeyedSubscript:@"kCBInquiryRSSIThreshold"];
    if (v13)
    {
      [v9 setObject:v13 forKeyedSubscript:@"kCBMsgArgRssi"];
    }

    v14 = [v6 objectForKeyedSubscript:@"kCBInquiryReportDuplicates"];
    if (!v14)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (CBLogInitOnce == -1)
    {
      v15 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        [v9 setObject:v14 forKeyedSubscript:@"kCBMsgArgInquiryReportDuplicates"];
        goto LABEL_20;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v15 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    v17 = 136315394;
    v18 = "[CBClassicManager startInquiryWithOptions:classicPeerDiscovered:]";
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1C0AC1000, v15, OS_LOG_TYPE_DEFAULT, "%s reportDuplicates set to %@", &v17, 0x16u);
    goto LABEL_19;
  }

LABEL_24:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopInquiry
{
  [(CBClassicManager *)self setClassicPeerDiscovered:0];
  if (self->_isInquiryRunning)
  {
    [(CBManager *)self sendMsg:58 args:0];
    self->_isInquiryRunning = 0;
  }
}

- (id)retrievePairedPeersWithOptions:(id)a3
{
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      [CBClassicManager retrievePairedPeersWithOptions:];
    }

    v5 = [v4 objectForKeyedSubscript:@"kCBOptionConnectedKey"];
    v6 = [v4 objectForKeyedSubscript:@"kCBOptionServicesKey"];
    v7 = [v4 objectForKeyedSubscript:@"kCBOptionIdentifiersKey"];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = v8;
    if (v5)
    {
      [v8 setObject:v5 forKeyedSubscript:@"kCBMsgArgConnectionState"];
    }

    if ([v6 count])
    {
      [v9 setObject:v6 forKeyedSubscript:@"kCBMsgArgServiceUUIDs"];
    }

    if ([v7 count])
    {
      [v9 setObject:v7 forKeyedSubscript:@"kCBMsgArgUUIDs"];
    }

    v10 = [MEMORY[0x1E695DF70] array];
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:
        v11 = [(CBManager *)self sendSyncMsg:43 args:v9];
        v12 = [v11 objectForKeyedSubscript:@"kCBMsgArgDevices"];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __51__CBClassicManager_retrievePairedPeersWithOptions___block_invoke;
        v16[3] = &unk_1E8120490;
        v13 = v10;
        v17 = v13;
        v18 = self;
        [v12 enumerateObjectsUsingBlock:v16];
        v14 = v13;

        goto LABEL_16;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }
    }

    [CBClassicManager retrievePairedPeersWithOptions:];
    goto LABEL_14;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

void __51__CBClassicManager_retrievePairedPeersWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) peerWithInfo:a2];
  [v2 addObject:v3];
}

- (id)getLocalSDPDatabase
{
  if ([(CBManager *)self tccApproved])
  {
    v3 = [(CBManager *)self sendSyncMsg:65 args:MEMORY[0x1E695E0F8]];
    v4 = [v3 objectForKeyedSubscript:@"kCBMsgArgSDPRecordData"];

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addService:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_15;
  }

  if (v5)
  {
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CBClassicManager addService:];
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  [CBClassicPeer dealloc];
LABEL_4:
  v6 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBClassicManager *)v5 addService:v6];
  }

  v7 = [v5 data];
  if ([v7 length] != 2)
  {
    v8 = [v5 data];
    if ([v8 length] == 4)
    {
    }

    else
    {
      v9 = [v5 data];
      v10 = [v9 length];

      if (v10 == 16)
      {
        goto LABEL_12;
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"CBClassicManager.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"serviceUUID.data.length == 2 || serviceUUID.data.length == 4 || serviceUUID.data.length == 16"}];
    }
  }

LABEL_12:
  v14 = @"kCBMsgArgServiceUUID";
  v15[0] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [(CBManager *)self sendMsg:37 args:v11];

  if (!v12)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    [CBClassicManager addService:];
  }

LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeService:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_9;
  }

  if (v4)
  {
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CBClassicManager removeService:];
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  [CBClassicPeer dealloc];
LABEL_4:
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager removeService:];
  }

  v8 = @"kCBMsgArgServiceUUID";
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(CBManager *)self sendMsg:38 args:v5];

  if (!v6)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    [CBClassicManager removeService:];
  }

LABEL_9:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeAllServices
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addServiceToInquiryList:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_15;
  }

  if (v5)
  {
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CBClassicManager addServiceToInquiryList:];
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  [CBClassicPeer dealloc];
LABEL_4:
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager addServiceToInquiryList:];
  }

  v6 = [v5 data];
  if ([v6 length] != 2)
  {
    v7 = [v5 data];
    if ([v7 length] == 4)
    {
    }

    else
    {
      v8 = [v5 data];
      v9 = [v8 length];

      if (v9 == 16)
      {
        goto LABEL_12;
      }

      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"CBClassicManager.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"serviceUUID.data.length == 2 || serviceUUID.data.length == 4 || serviceUUID.data.length == 16"}];
    }
  }

LABEL_12:
  v13 = @"kCBMsgArgServiceUUID";
  v14[0] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [(CBManager *)self sendMsg:40 args:v10];

  if (!v11)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    [CBClassicManager addServiceToInquiryList:];
  }

LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeServiceFromInquiryList:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_9;
  }

  if (v4)
  {
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CBClassicManager removeServiceFromInquiryList:];
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  [CBClassicPeer dealloc];
LABEL_4:
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager removeServiceFromInquiryList:];
  }

  v8 = @"kCBMsgArgServiceUUID";
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(CBManager *)self sendMsg:41 args:v5];

  if (!v6)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    [CBClassicManager removeServiceFromInquiryList:];
  }

LABEL_9:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeAllServicesFromInquiryList
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addService:(id)a3 sdpRecord:(id)a4 sdpRecordAddedHandler:(id)a5
{
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_9;
  }

  if (v8 | v9)
  {
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CBClassicManager addService:sdpRecord:sdpRecordAddedHandler:];
    if (CBLogInitOnce == -1)
    {
      goto LABEL_4;
    }
  }

  [CBClassicPeer dealloc];
LABEL_4:
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager addService:sdpRecord:sdpRecordAddedHandler:];
  }

  [(CBClassicManager *)self setSdpRecordAddedHandler:v10];
  v14[0] = @"kCBMsgArgUUID";
  v14[1] = @"kCBMsgArgOptions";
  v15[0] = v8;
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [(CBManager *)self sendMsg:37 args:v11];

  if (!v12)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    [CBClassicManager addService:sdpRecord:sdpRecordAddedHandler:];
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

- (unsigned)addServiceWithData:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    if (!v4)
    {
      [CBClassicManager addServiceWithData:];
    }

    v11 = @"kCBMsgArgSDPRecordData";
    v12[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [(CBManager *)self sendSyncMsg:37 args:v5];

    v7 = [v6 objectForKeyedSubscript:@"kCBMsgArgServiceHandle"];
    v8 = [v7 unsignedIntValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)connectPeer:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CBManager *)self tccApproved])
  {
    if (!v6)
    {
      [CBClassicManager connectPeer:options:];
    }

    v8 = [v7 objectForKeyedSubscript:@"kCBOptionServicesKey"];
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v9 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v6 name];
      *buf = 136315650;
      v20 = "[CBClassicManager connectPeer:options:]";
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ uuids: %@", buf, 0x20u);
    }

    v12 = [v6 identifier];
    v17[1] = @"kCBMsgArgOptions";
    v18[0] = v12;
    v18[1] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [(CBManager *)self sendMsg:45 args:v13];

    if (v14)
    {
      v15 = [v6 state];
      if (v15 == 3 || !v15)
      {
        [v6 setState:1];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cancelPeerConnection:(id)a3
{
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    [(CBClassicManager *)self cancelPeerConnection:v4 force:0];
  }
}

- (void)cancelPeerConnection:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if ([(CBManager *)self tccApproved])
  {
    if (!v9)
    {
      [CBClassicManager cancelPeerConnection:force:];
    }

    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = v6;
    if (v4)
    {
      v8 = MEMORY[0x1E695E118];
    }

    else
    {
      v8 = MEMORY[0x1E695E110];
    }

    [v6 setObject:v8 forKey:@"kCBCancelConnectOptionForce"];
    [(CBClassicManager *)self cancelPeerConnection:v9 options:v7];
  }
}

- (void)cancelPeerConnection:(id)a3 options:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CBManager *)self tccApproved])
  {
    if (!v6)
    {
      [CBClassicManager cancelPeerConnection:options:];
    }

    v14[0] = @"kCBMsgArgDeviceUUID";
    v8 = [v6 identifier];
    v9 = v8;
    v14[1] = @"kCBMsgArgOptions";
    v10 = MEMORY[0x1E695E0F8];
    if (v7)
    {
      v10 = v7;
    }

    v15[0] = v8;
    v15[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [(CBManager *)self sendMsg:46 args:v11];

    if (v12 && ([v6 state] - 1) <= 1)
    {
      [v6 setState:3];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setTestMode:(BOOL)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_testMode != a3)
  {
    v9 = @"kCBMsgArgState";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [(CBManager *)self sendMsg:49 args:v6];

    if (v7)
    {
      self->_testMode = a3;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)retrievePeerWithAddress:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CBManager *)self tccApproved])
  {
    if ([v4 length])
    {
      v13 = @"kCBMsgArgAddressString";
      v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v6 = [v4 stringByTrimmingCharactersInSet:v5];
      v14[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v8 = [(CBManager *)self sendSyncMsg:44 args:v7];

      v9 = [v8 objectForKeyedSubscript:@"kCBMsgArgDevices"];
      if (v9)
      {
        v10 = [(CBClassicManager *)self classicPeerWithInfo:v9];
        [v10 setAddressString:v4];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_12;
    }

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicManager retrievePeerWithAddress:];
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)handlePeerDiscovered:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isInquiryRunning)
  {
    v5 = [(CBClassicManager *)self classicPeerWithInfo:v4];
    if (v5)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      v6 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [v5 name];
        v11 = 136315650;
        v12 = "[CBClassicManager handlePeerDiscovered:]";
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ - %@", &v11, 0x20u);
      }

      v9 = [(CBClassicManager *)self classicPeerDiscovered];
      (v9)[2](v9, self, v5, v4);
    }

    else
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBClassicManager handlePeerDiscovered:];
      }
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicManager handlePeerDiscovered:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerConnectionStateUpdated:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handlePeerConnectionStateUpdated:];
  }

  v5 = [(CBClassicManager *)self classicPeerWithInfo:v4];
  [v5 handlePeerUpdated:v4];
  v6 = [(CBClassicManager *)self connectionStatusHandler];
  if (!v6 || [v5 state] == 1)
  {
    goto LABEL_9;
  }

  v7 = [v5 state];

  if (v7 != 3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    v8 = [(CBClassicManager *)self connectionStatusHandler];
    (v8)[2](v8, v5, [v6 code]);

LABEL_9:
  }
}

- (void)handleServiceAddedToSDP:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handleServiceAddedToSDP:];
    v9 = [(CBClassicManager *)self serviceAddedHandler];

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [(CBClassicManager *)self serviceAddedHandler];

  if (v5)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
    v8 = [(CBClassicManager *)self serviceAddedHandler];
    (v8)[2](v8, v7, [v6 code]);
  }

LABEL_6:
}

- (void)handleServiceAddedToInquiryList:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handleServiceAddedToInquiryList:];
    v9 = [(CBClassicManager *)self inquiryServiceAddedHandler];

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [(CBClassicManager *)self inquiryServiceAddedHandler];

  if (v5)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
    v8 = [(CBClassicManager *)self inquiryServiceAddedHandler];
    (v8)[2](v8, v7, [v6 code]);
  }

LABEL_6:
}

- (void)handleSDPRecordAdded:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handleSDPRecordAdded:];
    v9 = [(CBClassicManager *)self sdpRecordAddedHandler];

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [(CBClassicManager *)self sdpRecordAddedHandler];

  if (v5)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
    v8 = [(CBClassicManager *)self sdpRecordAddedHandler];
    (v8)[2](v8, v7, [v6 code]);
  }

LABEL_6:
}

- (void)handlePeerConnectionCompleted:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBClassicManager *)self peerWithIdentifier:v5];

  if (v6)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v7 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[CBClassicManager handlePeerConnectionCompleted:]";
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v16, 0x20u);
    }

    v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgInternalState"];
    v9 = v8;
    if (v8)
    {
      [v6 setInternalState:{objc_msgSend(v8, "intValue")}];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    if (v10)
    {
      [v6 handleFailedConnection];
      v11 = [(CBClassicManager *)self connectCallback];

      if (!v11)
      {
LABEL_11:

        goto LABEL_16;
      }
    }

    else
    {
      [v6 handleSuccessfulConnection:v4];
      v15 = [(CBClassicManager *)self connectCallback];

      if (!v15)
      {
        goto LABEL_11;
      }
    }

    v12 = [(CBClassicManager *)self connectCallback];
    (v12)[2](v12, v6, [v10 code]);

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v13 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [(CBClassicManager *)v13 handlePeerConnectionCompleted:v4];
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerDisconnectionCompleted:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBClassicManager *)self peerWithIdentifier:v5];

  if (v6)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v7 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[CBClassicManager handlePeerDisconnectionCompleted:]";
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v15, 0x20u);
    }

    v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgInternalState"];
    v9 = v8;
    if (v8)
    {
      [v6 setInternalState:{objc_msgSend(v8, "intValue")}];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    [v6 handleDisconnection];
    v11 = [(CBClassicManager *)self disconnectCallback];

    if (v11)
    {
      v12 = [(CBClassicManager *)self disconnectCallback];
      (v12)[2](v12, v6, [v10 code]);
    }
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
      [(CBClassicManager *)v13 handlePeerDisconnectionCompleted:v4];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __38__CBClassicManager_orphanClassicPeers__block_invoke_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)secureBluetooth:withAuthData:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"authData != nil" object:? file:? lineNumber:? description:?];
}

- (void)startInquiryWithOptions:(uint64_t)a3 classicPeerDiscovered:.cold.2(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = 136315650;
  v8 = "[CBClassicManager startInquiryWithOptions:classicPeerDiscovered:]";
  v9 = 2048;
  v10 = [a2 state];
  v11 = 2112;
  v12 = a3;
  _os_log_debug_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEBUG, "%s block with state %ld and options: %@ ", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)retrievePairedPeersWithOptions:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceUUID != nil" object:? file:? lineNumber:? description:?];
}

- (void)addService:(void *)a1 .cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 data];
  v6 = 136315650;
  v7 = "[CBClassicManager addService:]";
  v8 = 2112;
  v9 = a1;
  v10 = 2048;
  v11 = [v4 length];
  _os_log_debug_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEBUG, "%s %@, len: %lu", &v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addService:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceUUID != nil" object:? file:? lineNumber:? description:?];
}

- (void)removeService:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeService:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeServiceHandle:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceHandle != 0" object:? file:? lineNumber:? description:?];
}

- (void)removeServiceHandle:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[CBClassicManager removeServiceHandle:]";
  v5 = 1024;
  v6 = a1;
  _os_log_debug_impl(&dword_1C0AC1000, a2, OS_LOG_TYPE_DEBUG, "%s %X", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeServiceHandle:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addServiceToInquiryList:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceUUID != nil" object:? file:? lineNumber:? description:?];
}

- (void)addServiceToInquiryList:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addServiceToInquiryList:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeServiceFromInquiryList:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceUUID != nil" object:? file:? lineNumber:? description:?];
}

- (void)removeServiceFromInquiryList:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeServiceFromInquiryList:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addService:sdpRecord:sdpRecordAddedHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceUUID != nil || sdpRecord != nil" object:? file:? lineNumber:? description:?];
}

- (void)addService:sdpRecord:sdpRecordAddedHandler:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_2_6();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_1C0AC1000, v2, OS_LOG_TYPE_DEBUG, "%s %@ sdp: %@", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)addService:sdpRecord:sdpRecordAddedHandler:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addServiceWithData:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceData != nil" object:? file:? lineNumber:? description:?];
}

- (void)connectPeer:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer != nil" object:? file:? lineNumber:? description:?];
}

- (void)cancelPeerConnection:force:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer != nil" object:? file:? lineNumber:? description:?];
}

- (void)cancelPeerConnection:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peer != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrievePeerWithAddress:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleMsg:args:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_ERROR, "%@ is not powered on, ignoring message: %u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerDiscovered:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handlePeerDiscovered:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handlePeerConnectionStateUpdated:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleServiceAddedToSDP:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleServiceAddedToInquiryList:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleSDPRecordAdded:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_5(&dword_1C0AC1000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerConnectionCompleted:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_2_6();
  _os_log_error_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_ERROR, "%s %@ not found", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerDisconnectionCompleted:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_ERROR, "handlePeerDisconnectionCompleted: %@ not found", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end