@interface CBClassicManager
- (BOOL)isMsgAllowedAlways:(unsigned __int16)always;
- (BOOL)setBTPowerState:(BOOL)state;
- (CBClassicManager)initWithQueue:(id)queue options:(id)options;
- (id)classicPeerWithInfo:(id)info;
- (id)getLocalSDPDatabase;
- (id)peerWithIdentifier:(id)identifier;
- (id)peerWithInfo:(id)info;
- (id)retrievePairedPeersWithOptions:(id)options;
- (id)retrievePeerWithAddress:(id)address;
- (unsigned)addServiceWithData:(id)data;
- (void)addService:(id)service;
- (void)addService:(id)service sdpRecord:(id)record sdpRecordAddedHandler:(id)handler;
- (void)addServiceToInquiryList:(id)list;
- (void)cancelPeerConnection:(id)connection;
- (void)cancelPeerConnection:(id)connection force:(BOOL)force;
- (void)cancelPeerConnection:(id)connection options:(id)options;
- (void)connectPeer:(id)peer options:(id)options;
- (void)dealloc;
- (void)forEachClassicPeer:(id)peer;
- (void)handleLocalDeviceStateUpdatedMsg:(id)msg;
- (void)handlePeerConnectionCompleted:(id)completed;
- (void)handlePeerConnectionStateUpdated:(id)updated;
- (void)handlePeerDisconnectionCompleted:(id)completed;
- (void)handlePeerDiscovered:(id)discovered;
- (void)handleSDPRecordAdded:(id)added;
- (void)handleServiceAddedToInquiryList:(id)list;
- (void)handleServiceAddedToSDP:(id)p;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)orphanClassicPeers;
- (void)removeAllServices;
- (void)removeAllServicesFromInquiryList;
- (void)removeService:(id)service;
- (void)removeServiceFromInquiryList:(id)list;
- (void)setBTConnectable:(BOOL)connectable;
- (void)setBTDiscoverable:(BOOL)discoverable;
- (void)setTestMode:(BOOL)mode;
- (void)startInquiryWithOptions:(id)options classicPeerDiscovered:(id)discovered;
- (void)stopInquiry;
@end

@implementation CBClassicManager

- (CBClassicManager)initWithQueue:(id)queue options:(id)options
{
  queueCopy = queue;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = CBClassicManager;
  initInternal = [(CBManager *)&v12 initInternal];
  if (initInternal)
  {
    [(CBClassicManager *)initInternal addObserver:initInternal forKeyPath:@"state" options:0 context:objc_opt_class()];
    [(CBClassicManager *)initInternal addObserver:initInternal forKeyPath:@"powerState" options:0 context:objc_opt_class()];
    [(CBClassicManager *)initInternal addObserver:initInternal forKeyPath:@"localName" options:0 context:objc_opt_class()];
    [(CBClassicManager *)initInternal addObserver:initInternal forKeyPath:@"inquiryState" options:0 context:objc_opt_class()];
    [(CBClassicManager *)initInternal addObserver:initInternal forKeyPath:@"discoverable" options:0 context:objc_opt_class()];
    [(CBClassicManager *)initInternal addObserver:initInternal forKeyPath:@"connectable" options:0 context:objc_opt_class()];
    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    peers = initInternal->_peers;
    initInternal->_peers = v9;

    initInternal->_testMode = 0;
    initInternal->_connectable = 0;
    initInternal->_discoverable = 0;
    initInternal->_powerState = 1;
    [(CBManager *)initInternal startWithQueue:queueCopy options:optionsCopy sessionType:3];
  }

  return initInternal;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  pathCopy = path;
  if (objc_opt_class() == context)
  {
    v13 = [pathCopy isEqualToString:@"state"];

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
    [(CBClassicManager *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)peerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CBManager *)self tccApproved])
  {
    v5 = self->_peers;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)self->_peers objectForKey:identifierCopy];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)classicPeerWithInfo:(id)info
{
  infoCopy = info;
  if ([(CBManager *)self tccApproved])
  {
    v5 = self->_peers;
    objc_sync_enter(v5);
    peers = self->_peers;
    v7 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    v8 = [(NSMapTable *)peers objectForKey:v7];

    if (!v8)
    {
      v8 = [[CBClassicPeer alloc] initWithInfo:infoCopy manager:self];
      v9 = [(CBManager *)self sendSyncMsg:47 args:infoCopy];
      [(CBClassicPeer *)v8 handleMsg:47 args:v9];
      v10 = self->_peers;
      v11 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
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

- (id)peerWithInfo:(id)info
{
  infoCopy = info;
  if ([(CBManager *)self tccApproved])
  {
    v5 = [(CBClassicManager *)self classicPeerWithInfo:infoCopy];

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)forEachClassicPeer:(id)peer
{
  peerCopy = peer;
  if ([(CBManager *)self tccApproved])
  {
    v4 = self->_peers;
    objc_sync_enter(v4);
    objectEnumerator = [(NSMapTable *)self->_peers objectEnumerator];
    for (i = 0; ; i = nextObject)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      peerCopy[2](peerCopy, nextObject);
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

- (BOOL)isMsgAllowedAlways:(unsigned __int16)always
{
  if ((always - 10) <= 0x38 && ((1 << (always - 10)) & 0x100000000000003) != 0)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = CBClassicManager;
  return [(CBManager *)&v6 isMsgAllowedAlways:?];
}

- (void)setBTConnectable:(BOOL)connectable
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_connectable != connectable)
  {
    v7 = @"kCBMsgArgConnectableState";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBManager *)self sendMsg:34 args:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBTDiscoverable:(BOOL)discoverable
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_discoverable != discoverable)
  {
    v7 = @"kCBMsgArgDiscoverableState";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBManager *)self sendMsg:35 args:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)setBTPowerState:(BOOL)state
{
  v11[1] = *MEMORY[0x1E69E9840];
  powerState = self->_powerState;
  if (state)
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
  selfCopy = self;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  LOBYTE(selfCopy) = [(CBManager *)selfCopy sendMsg:33 args:v8];

  result = selfCopy;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleLocalDeviceStateUpdatedMsg:(id)msg
{
  msgCopy = msg;
  v14 = [msgCopy objectForKeyedSubscript:@"kCBMsgArgInquiryState"];
  v5 = [msgCopy objectForKeyedSubscript:@"kCBMsgArgConnectableState"];
  v6 = [msgCopy objectForKeyedSubscript:@"kCBMsgArgDiscoverableState"];
  v7 = [msgCopy objectForKeyedSubscript:@"kCBMsgArgBTPowerState"];

  if (v14)
  {
    [(CBClassicManager *)self willChangeValueForKey:@"inquiryState"];
    self->_inquiryState = [v14 BOOLValue];
    [(CBClassicManager *)self didChangeValueForKey:@"inquiryState"];
  }

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
    if (self->_connectable != bOOLValue)
    {
      v9 = bOOLValue;
      [(CBClassicManager *)self willChangeValueForKey:@"connectable"];
      self->_connectable = v9;
      [(CBClassicManager *)self didChangeValueForKey:@"connectable"];
    }
  }

  if (v6)
  {
    bOOLValue2 = [v6 BOOLValue];
    if (self->_discoverable != bOOLValue2)
    {
      v11 = bOOLValue2;
      [(CBClassicManager *)self willChangeValueForKey:@"discoverable"];
      self->_discoverable = v11;
      [(CBClassicManager *)self didChangeValueForKey:@"discoverable"];
    }
  }

  if (v7)
  {
    intValue = [v7 intValue];
    [(CBClassicManager *)self willChangeValueForKey:@"powerState"];
    v13 = intValue == 2;
    if (intValue == 1)
    {
      v13 = 2;
    }

    self->_powerState = v13;
    [(CBClassicManager *)self didChangeValueForKey:@"powerState"];
  }
}

- (void)startInquiryWithOptions:(id)options classicPeerDiscovered:(id)discovered
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  discoveredCopy = discovered;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v8 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBClassicManager *)v8 startInquiryWithOptions:optionsCopy classicPeerDiscovered:?];
  }

  [(CBClassicManager *)self setClassicPeerDiscovered:discoveredCopy];
  if ([(CBManager *)self state]== CBManagerStatePoweredOn)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBMsgArgInquiryState"];
    if (![optionsCopy count])
    {
LABEL_21:
      if ([(CBManager *)self sendMsg:36 args:dictionary])
      {
        self->_isInquiryRunning = 1;
      }

      goto LABEL_24;
    }

    v10 = [optionsCopy objectForKeyedSubscript:@"kCBInquiryLength"];
    if (v10)
    {
      [dictionary setObject:v10 forKeyedSubscript:@"kCBMsgArgInquiryLength"];
    }

    v11 = [optionsCopy objectForKeyedSubscript:@"kCBInquiryInfinite"];
    if (v11)
    {
      [dictionary setObject:v11 forKeyedSubscript:@"kCBMsgArgInquiryInfinite"];
    }

    v12 = [optionsCopy objectForKeyedSubscript:@"kCBInquiryServices"];
    if (v12)
    {
      [dictionary setObject:v12 forKeyedSubscript:@"kCBMsgArgServiceUUIDs"];
    }

    v13 = [optionsCopy objectForKeyedSubscript:@"kCBInquiryRSSIThreshold"];
    if (v13)
    {
      [dictionary setObject:v13 forKeyedSubscript:@"kCBMsgArgRssi"];
    }

    v14 = [optionsCopy objectForKeyedSubscript:@"kCBInquiryReportDuplicates"];
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
        [dictionary setObject:v14 forKeyedSubscript:@"kCBMsgArgInquiryReportDuplicates"];
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

- (id)retrievePairedPeersWithOptions:(id)options
{
  optionsCopy = options;
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

    v5 = [optionsCopy objectForKeyedSubscript:@"kCBOptionConnectedKey"];
    v6 = [optionsCopy objectForKeyedSubscript:@"kCBOptionServicesKey"];
    v7 = [optionsCopy objectForKeyedSubscript:@"kCBOptionIdentifiersKey"];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = dictionary;
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"kCBMsgArgConnectionState"];
    }

    if ([v6 count])
    {
      [v9 setObject:v6 forKeyedSubscript:@"kCBMsgArgServiceUUIDs"];
    }

    if ([v7 count])
    {
      [v9 setObject:v7 forKeyedSubscript:@"kCBMsgArgUUIDs"];
    }

    array = [MEMORY[0x1E695DF70] array];
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
        v13 = array;
        v17 = v13;
        selfCopy = self;
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

- (void)addService:(id)service
{
  v15[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_15;
  }

  if (serviceCopy)
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
    [(CBClassicManager *)serviceCopy addService:v6];
  }

  data = [serviceCopy data];
  if ([data length] != 2)
  {
    data2 = [serviceCopy data];
    if ([data2 length] == 4)
    {
    }

    else
    {
      data3 = [serviceCopy data];
      v10 = [data3 length];

      if (v10 == 16)
      {
        goto LABEL_12;
      }

      data = [MEMORY[0x1E696AAA8] currentHandler];
      [data handleFailureInMethod:a2 object:self file:@"CBClassicManager.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"serviceUUID.data.length == 2 || serviceUUID.data.length == 4 || serviceUUID.data.length == 16"}];
    }
  }

LABEL_12:
  v14 = @"kCBMsgArgServiceUUID";
  v15[0] = serviceCopy;
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

- (void)removeService:(id)service
{
  v9[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_9;
  }

  if (serviceCopy)
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
  v9[0] = serviceCopy;
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

- (void)addServiceToInquiryList:(id)list
{
  v14[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_15;
  }

  if (listCopy)
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

  data = [listCopy data];
  if ([data length] != 2)
  {
    data2 = [listCopy data];
    if ([data2 length] == 4)
    {
    }

    else
    {
      data3 = [listCopy data];
      v9 = [data3 length];

      if (v9 == 16)
      {
        goto LABEL_12;
      }

      data = [MEMORY[0x1E696AAA8] currentHandler];
      [data handleFailureInMethod:a2 object:self file:@"CBClassicManager.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"serviceUUID.data.length == 2 || serviceUUID.data.length == 4 || serviceUUID.data.length == 16"}];
    }
  }

LABEL_12:
  v13 = @"kCBMsgArgServiceUUID";
  v14[0] = listCopy;
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

- (void)removeServiceFromInquiryList:(id)list
{
  v9[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_9;
  }

  if (listCopy)
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
  v9[0] = listCopy;
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

- (void)addService:(id)service sdpRecord:(id)record sdpRecordAddedHandler:(id)handler
{
  v15[2] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  recordCopy = record;
  handlerCopy = handler;
  if (![(CBManager *)self tccApproved])
  {
    goto LABEL_9;
  }

  if (serviceCopy | recordCopy)
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

  [(CBClassicManager *)self setSdpRecordAddedHandler:handlerCopy];
  v14[0] = @"kCBMsgArgUUID";
  v14[1] = @"kCBMsgArgOptions";
  v15[0] = serviceCopy;
  v15[1] = recordCopy;
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

- (unsigned)addServiceWithData:(id)data
{
  v12[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([(CBManager *)self tccApproved])
  {
    if (!dataCopy)
    {
      [CBClassicManager addServiceWithData:];
    }

    v11 = @"kCBMsgArgSDPRecordData";
    v12[0] = dataCopy;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [(CBManager *)self sendSyncMsg:37 args:v5];

    v7 = [v6 objectForKeyedSubscript:@"kCBMsgArgServiceHandle"];
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return unsignedIntValue;
}

- (void)connectPeer:(id)peer options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  optionsCopy = options;
  if ([(CBManager *)self tccApproved])
  {
    if (!peerCopy)
    {
      [CBClassicManager connectPeer:options:];
    }

    v8 = [optionsCopy objectForKeyedSubscript:@"kCBOptionServicesKey"];
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v9 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      name = [peerCopy name];
      *buf = 136315650;
      v20 = "[CBClassicManager connectPeer:options:]";
      v21 = 2112;
      v22 = name;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ uuids: %@", buf, 0x20u);
    }

    identifier = [peerCopy identifier];
    v17[1] = @"kCBMsgArgOptions";
    v18[0] = identifier;
    v18[1] = optionsCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [(CBManager *)self sendMsg:45 args:v13];

    if (v14)
    {
      state = [peerCopy state];
      if (state == 3 || !state)
      {
        [peerCopy setState:1];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cancelPeerConnection:(id)connection
{
  connectionCopy = connection;
  if ([(CBManager *)self tccApproved])
  {
    [(CBClassicManager *)self cancelPeerConnection:connectionCopy force:0];
  }
}

- (void)cancelPeerConnection:(id)connection force:(BOOL)force
{
  forceCopy = force;
  connectionCopy = connection;
  if ([(CBManager *)self tccApproved])
  {
    if (!connectionCopy)
    {
      [CBClassicManager cancelPeerConnection:force:];
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = dictionary;
    if (forceCopy)
    {
      v8 = MEMORY[0x1E695E118];
    }

    else
    {
      v8 = MEMORY[0x1E695E110];
    }

    [dictionary setObject:v8 forKey:@"kCBCancelConnectOptionForce"];
    [(CBClassicManager *)self cancelPeerConnection:connectionCopy options:v7];
  }
}

- (void)cancelPeerConnection:(id)connection options:(id)options
{
  v15[2] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  optionsCopy = options;
  if ([(CBManager *)self tccApproved])
  {
    if (!connectionCopy)
    {
      [CBClassicManager cancelPeerConnection:options:];
    }

    v14[0] = @"kCBMsgArgDeviceUUID";
    identifier = [connectionCopy identifier];
    v9 = identifier;
    v14[1] = @"kCBMsgArgOptions";
    v10 = MEMORY[0x1E695E0F8];
    if (optionsCopy)
    {
      v10 = optionsCopy;
    }

    v15[0] = identifier;
    v15[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [(CBManager *)self sendMsg:46 args:v11];

    if (v12 && ([connectionCopy state] - 1) <= 1)
    {
      [connectionCopy setState:3];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setTestMode:(BOOL)mode
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_testMode != mode)
  {
    v9 = @"kCBMsgArgState";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [(CBManager *)self sendMsg:49 args:v6];

    if (v7)
    {
      self->_testMode = mode;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)retrievePeerWithAddress:(id)address
{
  v14[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if ([(CBManager *)self tccApproved])
  {
    if ([addressCopy length])
    {
      v13 = @"kCBMsgArgAddressString";
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v6 = [addressCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      v14[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v8 = [(CBManager *)self sendSyncMsg:44 args:v7];

      v9 = [v8 objectForKeyedSubscript:@"kCBMsgArgDevices"];
      if (v9)
      {
        v10 = [(CBClassicManager *)self classicPeerWithInfo:v9];
        [v10 setAddressString:addressCopy];
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

- (void)handlePeerDiscovered:(id)discovered
{
  v17 = *MEMORY[0x1E69E9840];
  discoveredCopy = discovered;
  if (self->_isInquiryRunning)
  {
    v5 = [(CBClassicManager *)self classicPeerWithInfo:discoveredCopy];
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
        name = [v5 name];
        v11 = 136315650;
        v12 = "[CBClassicManager handlePeerDiscovered:]";
        v13 = 2112;
        v14 = name;
        v15 = 2112;
        v16 = discoveredCopy;
        _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ - %@", &v11, 0x20u);
      }

      classicPeerDiscovered = [(CBClassicManager *)self classicPeerDiscovered];
      (classicPeerDiscovered)[2](classicPeerDiscovered, self, v5, discoveredCopy);
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

- (void)handlePeerConnectionStateUpdated:(id)updated
{
  updatedCopy = updated;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handlePeerConnectionStateUpdated:];
  }

  v5 = [(CBClassicManager *)self classicPeerWithInfo:updatedCopy];
  [v5 handlePeerUpdated:updatedCopy];
  connectionStatusHandler = [(CBClassicManager *)self connectionStatusHandler];
  if (!connectionStatusHandler || [v5 state] == 1)
  {
    goto LABEL_9;
  }

  state = [v5 state];

  if (state != 3)
  {
    connectionStatusHandler = [MEMORY[0x1E696ABC0] errorWithInfo:updatedCopy];
    connectionStatusHandler2 = [(CBClassicManager *)self connectionStatusHandler];
    (connectionStatusHandler2)[2](connectionStatusHandler2, v5, [connectionStatusHandler code]);

LABEL_9:
  }
}

- (void)handleServiceAddedToSDP:(id)p
{
  pCopy = p;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handleServiceAddedToSDP:];
    serviceAddedHandler = [(CBClassicManager *)self serviceAddedHandler];

    if (!serviceAddedHandler)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  serviceAddedHandler2 = [(CBClassicManager *)self serviceAddedHandler];

  if (serviceAddedHandler2)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:pCopy];
    v7 = [pCopy objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
    serviceAddedHandler3 = [(CBClassicManager *)self serviceAddedHandler];
    (serviceAddedHandler3)[2](serviceAddedHandler3, v7, [v6 code]);
  }

LABEL_6:
}

- (void)handleServiceAddedToInquiryList:(id)list
{
  listCopy = list;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handleServiceAddedToInquiryList:];
    inquiryServiceAddedHandler = [(CBClassicManager *)self inquiryServiceAddedHandler];

    if (!inquiryServiceAddedHandler)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  inquiryServiceAddedHandler2 = [(CBClassicManager *)self inquiryServiceAddedHandler];

  if (inquiryServiceAddedHandler2)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:listCopy];
    v7 = [listCopy objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
    inquiryServiceAddedHandler3 = [(CBClassicManager *)self inquiryServiceAddedHandler];
    (inquiryServiceAddedHandler3)[2](inquiryServiceAddedHandler3, v7, [v6 code]);
  }

LABEL_6:
}

- (void)handleSDPRecordAdded:(id)added
{
  addedCopy = added;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicManager handleSDPRecordAdded:];
    sdpRecordAddedHandler = [(CBClassicManager *)self sdpRecordAddedHandler];

    if (!sdpRecordAddedHandler)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sdpRecordAddedHandler2 = [(CBClassicManager *)self sdpRecordAddedHandler];

  if (sdpRecordAddedHandler2)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:addedCopy];
    v7 = [addedCopy objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
    sdpRecordAddedHandler3 = [(CBClassicManager *)self sdpRecordAddedHandler];
    (sdpRecordAddedHandler3)[2](sdpRecordAddedHandler3, v7, [v6 code]);
  }

LABEL_6:
}

- (void)handlePeerConnectionCompleted:(id)completed
{
  v22 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  v5 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
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
      v21 = completedCopy;
      _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v16, 0x20u);
    }

    v8 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgInternalState"];
    v9 = v8;
    if (v8)
    {
      [v6 setInternalState:{objc_msgSend(v8, "intValue")}];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithInfo:completedCopy];
    if (v10)
    {
      [v6 handleFailedConnection];
      connectCallback = [(CBClassicManager *)self connectCallback];

      if (!connectCallback)
      {
LABEL_11:

        goto LABEL_16;
      }
    }

    else
    {
      [v6 handleSuccessfulConnection:completedCopy];
      connectCallback2 = [(CBClassicManager *)self connectCallback];

      if (!connectCallback2)
      {
        goto LABEL_11;
      }
    }

    connectCallback3 = [(CBClassicManager *)self connectCallback];
    (connectCallback3)[2](connectCallback3, v6, [v10 code]);

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v13 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [(CBClassicManager *)v13 handlePeerConnectionCompleted:completedCopy];
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerDisconnectionCompleted:(id)completed
{
  v21 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  v5 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
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
      v20 = completedCopy;
      _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v15, 0x20u);
    }

    v8 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgInternalState"];
    v9 = v8;
    if (v8)
    {
      [v6 setInternalState:{objc_msgSend(v8, "intValue")}];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithInfo:completedCopy];
    [v6 handleDisconnection];
    disconnectCallback = [(CBClassicManager *)self disconnectCallback];

    if (disconnectCallback)
    {
      disconnectCallback2 = [(CBClassicManager *)self disconnectCallback];
      (disconnectCallback2)[2](disconnectCallback2, v6, [v10 code]);
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
      [(CBClassicManager *)v13 handlePeerDisconnectionCompleted:completedCopy];
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