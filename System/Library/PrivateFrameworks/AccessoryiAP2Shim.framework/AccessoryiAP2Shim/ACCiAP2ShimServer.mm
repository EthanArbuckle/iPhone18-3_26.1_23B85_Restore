@interface ACCiAP2ShimServer
+ (id)sharedInstance;
+ (void)markClientAsInterestedInBleNotifications:(id)notifications;
+ (void)notifyInterestedClientsOfACCBLEAccessoryEvent:(id)event withPayload:(id)payload;
+ (void)postNSDistributeNotificationType:(id)type notifyDict:(id)dict;
+ (void)postNotifydNotificationType:(id)type;
- (ACCiAP2ShimServer)init;
- (BOOL)processXPCMessage:(id)message connection:(id)connection;
- (id)_findAccessoryForAccessoryUID:(id)d andKeyTag:(id)tag;
- (id)_findAccessoryForConnectionID:(unsigned int)d;
- (id)findAccessoryForAccessoryUID:(id)d andKeyTag:(id)tag;
- (id)findAccessoryForConnectionID:(unsigned int)d;
- (id)findAccessoryForConnectionID:(unsigned int)d andKeyTag:(id)tag;
- (id)findClientWithXPCConnection:(id)connection;
- (unsigned)generateClientID;
- (void)_addAccessory:(id)accessory;
- (void)_addDelegate:(id)delegate;
- (void)_attachAccessory:(id)accessory;
- (void)_detachAccessory:(id)accessory;
- (void)_iterateAccessories:(id)accessories;
- (void)_iterateDelegates:(id)delegates;
- (void)_removeAccessory:(id)accessory;
- (void)_removeDelegate:(id)delegate;
- (void)_resetServerState;
- (void)_startServer;
- (void)_stopServer;
- (void)_takeClientAssertionsForAccessoryConnection;
- (void)_takeClientAssertionsForAccessoryDisconnection;
- (void)addAccessory:(id)accessory;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)iterateAccessoriesAsync:(id)async;
- (void)iterateAccessoriesSync:(id)sync;
- (void)iterateDelegatesAsync:(id)async;
- (void)iterateDelegatesSync:(id)sync;
- (void)notifyEAClient:(id)client ofAccessoryEvent:(const char *)event accessory:(id)accessory;
- (void)notifyEAClientsOfAccessoryEvent:(const char *)event accessory:(id)accessory;
- (void)processDetachXPCConnection:(id)connection;
- (void)removeAccessory:(id)accessory;
- (void)removeAllClients;
- (void)removeClientForXPCConnection:(id)connection;
- (void)removeDelegate:(id)delegate;
- (void)sendToClient:(id)client notification:(const char *)notification withPayload:(id)payload;
- (void)sendToInterestedClientsACCBLENotification:(id)notification withPayload:(id)payload;
- (void)startServer;
- (void)stopServer;
@end

@implementation ACCiAP2ShimServer

void __33__ACCiAP2ShimServer__startServer__block_invoke_21(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = v3;
  v6 = v4;
  v7 = MEMORY[0x23EEFB410](v5);
  v8 = +[ACCiAP2ShimServer sharedInstance];
  if (v7 == MEMORY[0x277D86450])
  {
    xpc_connection_set_target_queue(v5, v6);
    *&v17 = MEMORY[0x277D85DD0];
    *(&v17 + 1) = 3221225472;
    v18 = ___xpc_iap2d_handle_incoming_request_block_invoke;
    v19 = &unk_278BF89F0;
    v11 = v5;
    v20 = v11;
    v21 = v8;
    xpc_connection_set_event_handler(v11, &v17);
    xpc_connection_resume(v11);
  }

  else if (v7 == MEMORY[0x277D86480])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      string = xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
      LODWORD(v17) = 136315138;
      *(&v17 + 4) = string;
      _os_log_impl(&dword_23DC47000, v12, OS_LOG_TYPE_INFO, "[#Server] _xpc_iap2d_handle_incoming_request connection error: %s\n", &v17, 0xCu);
    }
  }

  else
  {
    v9 = MEMORY[0x23EEFB340](v5);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(v17) = 136315138;
      *(&v17 + 4) = v9;
      _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_INFO, "[#Server] _xpc_iap2d_handle_incoming_request unexpected event: %s\n", &v17, 0xCu);
    }

    free(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ACCiAP2ShimServer sharedInstance];
  }

  v3 = sharedInstance___sharedIAP2Server;

  return v3;
}

- (unsigned)generateClientID
{
  v3 = 0;
  do
  {
    do
    {
      v4 = v3;
      v5 = arc4random_uniform(0xFFFFFFFF);
      clients = self->_clients;
      v7 = [ACCiAP2ShimServer stringForClientID:v5];
      v3 = [(NSMutableDictionary *)clients objectForKey:v7];
    }

    while (!v5);
  }

  while (v3);
  return v5;
}

- (ACCiAP2ShimServer)init
{
  init_logging();
  v21.receiver = self;
  v21.super_class = ACCiAP2ShimServer;
  v3 = [(ACCiAP2ShimServer *)&v21 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    delegateList = v3->_delegateList;
    v3->_delegateList = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryViaKeyUIDList = v3->_accessoryViaKeyUIDList;
    v3->_accessoryViaKeyUIDList = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryViaConnectionIDList = v3->_accessoryViaConnectionIDList;
    v3->_accessoryViaConnectionIDList = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clients = v3->_clients;
    v3->_clients = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    clientLock = v3->_clientLock;
    v3->_clientLock = v12;

    v3->_iap2AvailableNotifyToken = -1;
    v3->_isShuttingDown = 0;
    if (notify_register_check(MEMORY[0x277D184F8], &v3->_iap2AvailableNotifyToken))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v14 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v14 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ACCiAP2ShimServer init];
      }
    }

    [(ACCiAP2ShimServer *)v3 _resetServerState];
    pthread_mutex_lock(&__sharedIAP2ServerLock);
    v16 = dispatch_queue_create("IAP2ServerListenerQueue", 0);
    internalListenerQueue = v3->_internalListenerQueue;
    v3->_internalListenerQueue = v16;

    v18 = dispatch_queue_create("com.apple.acciap2shimserver.listQ", 0);
    listQueue = v3->_listQueue;
    v3->_listQueue = v18;

    pthread_mutex_unlock(&__sharedIAP2ServerLock);
  }

  return v3;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_delegateList removeAllObjects];
  [(ACCiAP2ShimServer *)self stopServer];
  iap2AvailableNotifyToken = self->_iap2AvailableNotifyToken;
  if (iap2AvailableNotifyToken != -1)
  {
    notify_cancel(iap2AvailableNotifyToken);
    self->_iap2AvailableNotifyToken = -1;
  }

  clients = self->_clients;
  self->_clients = 0;

  clientLock = self->_clientLock;
  self->_clientLock = 0;

  delegateList = self->_delegateList;
  self->_delegateList = 0;

  accessoryViaKeyUIDList = self->_accessoryViaKeyUIDList;
  self->_accessoryViaKeyUIDList = 0;

  accessoryViaConnectionIDList = self->_accessoryViaConnectionIDList;
  self->_accessoryViaConnectionIDList = 0;

  internalListenerQueue = self->_internalListenerQueue;
  self->_internalListenerQueue = 0;

  listQueue = self->_listQueue;
  self->_listQueue = 0;

  v11.receiver = self;
  v11.super_class = ACCiAP2ShimServer;
  [(ACCiAP2ShimServer *)&v11 dealloc];
}

- (void)_startServer
{
  v29 = *MEMORY[0x277D85DE8];
  state64 = 0;
  iap2AvailableNotifyToken = self->_iap2AvailableNotifyToken;
  if (iap2AvailableNotifyToken == -1)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *gLogObjects;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v13 = "[#Server] IAPServer: startServer: invalid notifyToken!";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_38;
  }

  notify_get_state(iap2AvailableNotifyToken, &state64);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v8 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v28 = state64;
    _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#Server] IAPServer: startServer: isIap2dLoaded=%llu", buf, 0xCu);
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (state64 == 1)
  {
    if (v10)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v13 = "[#Server] IAPServer: startServer: Already loaded!";
    v14 = v12;
    v15 = OS_LOG_TYPE_INFO;
LABEL_38:
    _os_log_impl(&dword_23DC47000, v14, v15, v13, buf, 2u);
LABEL_39:

    goto LABEL_62;
  }

  if (v10)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v11 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23DC47000, v11, OS_LOG_TYPE_INFO, "[#Server] IAPServer: startServer: init listener queue and start runloop", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D18508], 0, 0, 1u);
  internalListenerQueue = self->_internalListenerQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __33__ACCiAP2ShimServer__startServer__block_invoke;
  v25[3] = &unk_278BF8188;
  v25[4] = self;
  dispatch_sync(internalListenerQueue, v25);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v28) = 1;
    _os_log_impl(&dword_23DC47000, v20, OS_LOG_TYPE_INFO, "[#Server] IAPServer: startServer: set kIAP2AvailableNotification state: %d", buf, 8u);
  }

  notify_set_state(self->_iap2AvailableNotifyToken, 1uLL);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v22 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23DC47000, v22, OS_LOG_TYPE_INFO, "[#Server] IAPServer: startServer: post kIAP2AvailableNotification notification: ", buf, 2u);
  }

  notify_post(MEMORY[0x277D184F8]);
LABEL_62:
  v24 = *MEMORY[0x277D85DE8];
}

void __33__ACCiAP2ShimServer__startServer__block_invoke(uint64_t a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.iap2d.xpc", *(*(a1 + 32) + 72), 1uLL);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = mach_service;

  v5 = *(a1 + 32);
  if (*(v5 + 56))
  {
    *v14 = 0;
    v15 = v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = *(v5 + 72);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v6 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC47000, v6, OS_LOG_TYPE_INFO, "[#Server] IAPServer: startServer: set_event_handler and resume _listener", buf, 2u);
    }

    v10 = *(*(a1 + 32) + 56);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__ACCiAP2ShimServer__startServer__block_invoke_21;
    handler[3] = &unk_278BF87E8;
    handler[4] = v14;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(*(*(a1 + 32) + 56));
    _Block_object_dispose(v14, 8);
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v11 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *gLogObjects;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_23DC47000, v11, OS_LOG_TYPE_INFO, "[#Server] IAPServer: startServer: _listener is not valid!\n", v14, 2u);
    }
  }
}

- (void)startServer
{
  listQueue = self->_listQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ACCiAP2ShimServer_startServer__block_invoke;
  block[3] = &unk_278BF8188;
  block[4] = self;
  dispatch_async(listQueue, block);
}

- (void)_stopServer
{
  v37 = *MEMORY[0x277D85DE8];
  allValues = [(NSMutableDictionary *)self->_delegateList allValues];
  v4 = [allValues count];

  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v4)
  {
    if (v6)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v8 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#Server] IAPServer: stopServer", buf, 2u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      allValues2 = [(NSMutableDictionary *)self->_delegateList allValues];
      v15 = [allValues2 count];
      *buf = 134217984;
      v36 = v15;
      _os_log_impl(&dword_23DC47000, v12, OS_LOG_TYPE_INFO, "[#Server] IAPServer: stopServer, _delegateList count %lu", buf, 0xCu);
    }

    if (self->_listener)
    {
      internalListenerQueue = self->_internalListenerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__ACCiAP2ShimServer__stopServer__block_invoke;
      block[3] = &unk_278BF8188;
      block[4] = self;
      dispatch_sync(internalListenerQueue, block);
    }

    iap2AvailableNotifyToken = self->_iap2AvailableNotifyToken;
    if (iap2AvailableNotifyToken == -1)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v21 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v21 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v23 = "[#Server] IAPServer: stopServer: invalid notifyToken!";
      v24 = v21;
      v25 = OS_LOG_TYPE_DEFAULT;
      v26 = 2;
    }

    else
    {
      v33 = 0;
      notify_get_state(iap2AvailableNotifyToken, &v33);
      if (gLogObjects)
      {
        v18 = gNumLogObjects <= 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      if (v33 == 1)
      {
        if (v19)
        {
          v20 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
          }

          v20 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v36) = 0;
          _os_log_impl(&dword_23DC47000, v20, OS_LOG_TYPE_INFO, "[#Server] IAPServer: stopServer: set kIAP2AvailableNotification state: %d", buf, 8u);
        }

        notify_set_state(self->_iap2AvailableNotifyToken, 0);
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v28 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
          }

          v28 = MEMORY[0x277D86220];
          v29 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23DC47000, v28, OS_LOG_TYPE_INFO, "[#Server] IAPServer: stopServer: post kIAP2AvailableNotification notification: ", buf, 2u);
        }

        notify_post(MEMORY[0x277D184F8]);
        goto LABEL_74;
      }

      if (v19)
      {
        v21 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v21 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_73:

LABEL_74:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D18500], 0, 0, 1u);
        [(ACCiAP2ShimServer *)self performSelectorOnMainThread:sel__pollForDeathAfterPromptCompletes withObject:0 waitUntilDone:0];
        goto LABEL_75;
      }

      *buf = 134217984;
      v36 = v33;
      v23 = "[#Server] IAPServer: stopServer: kIAP2AvailableNotification state %llu, skip post";
      v24 = v21;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 12;
    }

    _os_log_impl(&dword_23DC47000, v24, v25, v23, buf, v26);
    goto LABEL_73;
  }

  if (v6)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    allValues3 = [(NSMutableDictionary *)self->_delegateList allValues];
    *buf = 134217984;
    v36 = [allValues3 count];
    _os_log_impl(&dword_23DC47000, v7, OS_LOG_TYPE_INFO, "[#Server] IAPServer: Skip stopServer, there are still %lu delegates registered", buf, 0xCu);
  }

LABEL_75:
  v32 = *MEMORY[0x277D85DE8];
}

void __32__ACCiAP2ShimServer__stopServer__block_invoke(uint64_t a1)
{
  xpc_connection_cancel(*(*(a1 + 32) + 56));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

- (void)stopServer
{
  listQueue = self->_listQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ACCiAP2ShimServer_stopServer__block_invoke;
  block[3] = &unk_278BF8188;
  block[4] = self;
  dispatch_async(listQueue, block);
}

- (void)_addDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  getUID = [delegateCopy getUID];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    delegateList = self->_delegateList;
    v15 = 138412546;
    v16 = delegateCopy;
    v17 = 2112;
    v18 = delegateList;
    _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer before addDelegate %@, delegateList=%@", &v15, 0x16u);
  }

  v10 = [(NSMutableDictionary *)self->_delegateList objectForKey:getUID];

  if (!v10)
  {
    [(NSMutableDictionary *)self->_delegateList setObject:delegateCopy forKey:getUID];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = self->_delegateList;
    v15 = 138412546;
    v16 = delegateCopy;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_23DC47000, v11, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer after addDelegate %@, delegateList=%@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ACCiAP2ShimServer_addDelegate___block_invoke;
  v7[3] = &unk_278BF8810;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(listQueue, v7);
}

- (void)_removeDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  getUID = [delegateCopy getUID];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    delegateList = self->_delegateList;
    v15 = 138412546;
    v16 = delegateCopy;
    v17 = 2112;
    v18 = delegateList;
    _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer before removeDelegate %@, delegateList=%@", &v15, 0x16u);
  }

  v10 = [(NSMutableDictionary *)self->_delegateList objectForKey:getUID];

  if (v10)
  {
    [(NSMutableDictionary *)self->_delegateList removeObjectForKey:getUID];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = self->_delegateList;
    v15 = 138412546;
    v16 = delegateCopy;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_23DC47000, v11, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer after removeDelegate %@, delegateList=%@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ACCiAP2ShimServer_removeDelegate___block_invoke;
  v7[3] = &unk_278BF8810;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(listQueue, v7);
}

- (void)_iterateDelegates:(id)delegates
{
  v34 = *MEMORY[0x277D85DE8];
  delegatesCopy = delegates;
  delegateList = self->_delegateList;
  p_delegateList = &self->_delegateList;
  v7 = [(NSMutableDictionary *)delegateList count];
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v7)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACCiAP2ShimServer *)p_delegateList _iterateDelegates:v10, v13, v14, v15, v16, v17, v18];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allValues = [(NSMutableDictionary *)*p_delegateList allValues];
    v19 = [allValues countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
LABEL_19:
      v22 = 0;
      while (1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(allValues);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        buf[0] = 1;
        delegatesCopy[2](delegatesCopy, v23, buf);
        if (buf[0] != 1)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [allValues countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v20)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }
  }

  else
  {
    if (v9)
    {
      allValues = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      allValues = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(allValues, OS_LOG_TYPE_INFO))
    {
      v25 = *p_delegateList;
      *buf = 138412290;
      v32 = v25;
      _os_log_impl(&dword_23DC47000, allValues, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer iterateDelegates, no registered delegate! _delegateList=%@", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)iterateDelegatesAsync:(id)async
{
  asyncCopy = async;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ACCiAP2ShimServer_iterateDelegatesAsync___block_invoke;
  v7[3] = &unk_278BF8838;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(listQueue, v7);
}

- (void)iterateDelegatesSync:(id)sync
{
  syncCopy = sync;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ACCiAP2ShimServer_iterateDelegatesSync___block_invoke;
  v7[3] = &unk_278BF8838;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_sync(listQueue, v7);
}

- (void)_addAccessory:(id)accessory
{
  v18 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = accessoryCopy;
    _os_log_impl(&dword_23DC47000, v7, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer addAccessory %@", &v16, 0xCu);
  }

  keyAccessoryUID = [accessoryCopy keyAccessoryUID];
  keyConnectionID = [accessoryCopy keyConnectionID];
  p_accessoryViaKeyUIDList = &self->_accessoryViaKeyUIDList;
  v11 = [(NSMutableDictionary *)self->_accessoryViaKeyUIDList objectForKey:keyAccessoryUID];

  if (!v11)
  {
    [(NSMutableDictionary *)*p_accessoryViaKeyUIDList setObject:accessoryCopy forKey:keyAccessoryUID];
  }

  v12 = [(NSMutableDictionary *)self->_accessoryViaConnectionIDList objectForKey:keyConnectionID];

  if (!v12)
  {
    [(NSMutableDictionary *)self->_accessoryViaConnectionIDList setObject:accessoryCopy forKey:keyConnectionID];
  }

  [(ACCiAP2ShimServer *)self _attachAccessory:accessoryCopy];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(ACCiAP2ShimServer *)accessoryCopy _addAccessory:?];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addAccessory:(id)accessory
{
  accessoryCopy = accessory;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ACCiAP2ShimServer_addAccessory___block_invoke;
  v7[3] = &unk_278BF8810;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(listQueue, v7);
}

- (void)_removeAccessory:(id)accessory
{
  v17 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = accessoryCopy;
    _os_log_impl(&dword_23DC47000, v7, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer removeAccessory %@", &v15, 0xCu);
  }

  keyAccessoryUID = [accessoryCopy keyAccessoryUID];
  keyConnectionID = [accessoryCopy keyConnectionID];
  if (keyAccessoryUID)
  {
    v10 = [(NSMutableDictionary *)self->_accessoryViaKeyUIDList objectForKey:keyAccessoryUID];

    if (v10)
    {
      [(NSMutableDictionary *)self->_accessoryViaKeyUIDList removeObjectForKey:keyAccessoryUID];
    }
  }

  if (keyConnectionID)
  {
    v11 = [(NSMutableDictionary *)self->_accessoryViaConnectionIDList objectForKey:keyConnectionID];

    if (v11)
    {
      [(NSMutableDictionary *)self->_accessoryViaConnectionIDList removeObjectForKey:keyConnectionID];
    }
  }

  [(ACCiAP2ShimServer *)self _detachAccessory:accessoryCopy];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v12 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ACCiAP2ShimServer *)accessoryCopy _removeAccessory:?];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ACCiAP2ShimServer_removeAccessory___block_invoke;
  v7[3] = &unk_278BF8810;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(listQueue, v7);
}

- (void)_iterateAccessories:(id)accessories
{
  v36 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCiAP2ShimServer *)self _iterateAccessories:v7, v8, v9, v10, v11, v12, v13];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allValues = [(NSMutableDictionary *)self->_accessoryViaKeyUIDList allValues];
  v15 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    v18 = MEMORY[0x277D86220];
LABEL_13:
    v19 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(allValues);
      }

      v20 = *(*(&v27 + 1) + 8 * v19);
      v21 = gLogObjects;
      v22 = gNumLogObjects;
      if (!gLogObjects || gNumLogObjects < 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v33 = v21;
          v34 = 1024;
          v35 = v22;
          _os_log_error_impl(&dword_23DC47000, v18, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v24 = v18;
        v25 = v18;
      }

      else
      {
        v25 = *gLogObjects;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v20;
        _os_log_debug_impl(&dword_23DC47000, v25, OS_LOG_TYPE_DEBUG, "[#Server] ACCiAP2ShimServer iterateAccessories, accessory=%@", buf, 0xCu);
      }

      buf[0] = 1;
      accessoriesCopy[2](accessoriesCopy, v20, buf);
      if (buf[0] != 1)
      {
        break;
      }

      if (v16 == ++v19)
      {
        v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)iterateAccessoriesAsync:(id)async
{
  asyncCopy = async;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ACCiAP2ShimServer_iterateAccessoriesAsync___block_invoke;
  v7[3] = &unk_278BF8838;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(listQueue, v7);
}

- (void)iterateAccessoriesSync:(id)sync
{
  syncCopy = sync;
  listQueue = self->_listQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ACCiAP2ShimServer_iterateAccessoriesSync___block_invoke;
  v7[3] = &unk_278BF8838;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_sync(listQueue, v7);
}

- (id)_findAccessoryForConnectionID:(unsigned int)d
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_accessoryViaConnectionIDList allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 connectionID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)findAccessoryForConnectionID:(unsigned int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  listQueue = self->_listQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ACCiAP2ShimServer_findAccessoryForConnectionID___block_invoke;
  block[3] = &unk_278BF8860;
  block[4] = self;
  block[5] = &v8;
  dCopy = d;
  dispatch_sync(listQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __50__ACCiAP2ShimServer_findAccessoryForConnectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _findAccessoryForConnectionID:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)findAccessoryForConnectionID:(unsigned int)d andKeyTag:(id)tag
{
  tagCopy = tag;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  listQueue = self->_listQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__ACCiAP2ShimServer_findAccessoryForConnectionID_andKeyTag___block_invoke;
  v11[3] = &unk_278BF8888;
  v12 = tagCopy;
  v13 = &v15;
  dCopy = d;
  v11[4] = self;
  v8 = tagCopy;
  dispatch_sync(listQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __60__ACCiAP2ShimServer_findAccessoryForConnectionID_andKeyTag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _findAccessoryForConnectionID:*(a1 + 56) andKeyTag:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_findAccessoryForAccessoryUID:(id)d andKeyTag:(id)tag
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", tag, d];
  v6 = [(NSMutableDictionary *)self->_accessoryViaKeyUIDList objectForKey:v5];

  return v6;
}

- (id)findAccessoryForAccessoryUID:(id)d andKeyTag:(id)tag
{
  dCopy = d;
  tagCopy = tag;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  listQueue = self->_listQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__ACCiAP2ShimServer_findAccessoryForAccessoryUID_andKeyTag___block_invoke;
  v13[3] = &unk_278BF88B0;
  v13[4] = self;
  v14 = dCopy;
  v15 = tagCopy;
  v16 = &v17;
  v9 = tagCopy;
  v10 = dCopy;
  dispatch_sync(listQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __60__ACCiAP2ShimServer_findAccessoryForAccessoryUID_andKeyTag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)processXPCMessage:(id)message connection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  connectionCopy = connection;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  string = xpc_dictionary_get_string(messageCopy, "requestType");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__ACCiAP2ShimServer_processXPCMessage_connection___block_invoke;
  v17[3] = &unk_278BF88D8;
  v9 = messageCopy;
  v18 = v9;
  v10 = connectionCopy;
  v19 = v10;
  selfCopy = self;
  v21 = &v23;
  v22 = string;
  [(ACCiAP2ShimServer *)self iterateDelegatesSync:v17];
  if (v24[3])
  {
    v11 = 1;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = "<nil>";
      *buf = 138412802;
      if (string)
      {
        v16 = string;
      }

      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2080;
      v32 = v16;
      _os_log_debug_impl(&dword_23DC47000, v12, OS_LOG_TYPE_DEBUG, "[#Server] processXPCMessage: %@ connection: %@, None of the delegates processed the message! requestType=%s", buf, 0x20u);
    }

    v11 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __50__ACCiAP2ShimServer_processXPCMessage_connection___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_opt_respondsToSelector();
  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v6)
  {
    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __50__ACCiAP2ShimServer_processXPCMessage_connection___block_invoke_cold_4(a1);
    }

    v12 = [v5 tryProcessXPCMessage:a1[4] connection:a1[5] server:a1[6]];
    *a3 = v12 ^ 1;
    if (((v12 ^ 1) & 1) == 0)
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }

  else
  {
    if (v8)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __50__ACCiAP2ShimServer_processXPCMessage_connection___block_invoke_cold_2(a1);
    }
  }
}

- (void)processDetachXPCConnection:(id)connection
{
  connectionCopy = connection;
  [(ACCiAP2ShimServer *)self removeClientForXPCConnection:connectionCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ACCiAP2ShimServer_processDetachXPCConnection___block_invoke;
  v6[3] = &unk_278BF8900;
  v7 = connectionCopy;
  v5 = connectionCopy;
  [(ACCiAP2ShimServer *)self iterateDelegatesSync:v6];
}

void __48__ACCiAP2ShimServer_processDetachXPCConnection___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    *a3 = [v5 detachXPCConnection:*(a1 + 32)] ^ 1;
  }
}

- (void)_attachAccessory:(id)accessory
{
  v51 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = accessoryCopy;
    _os_log_impl(&dword_23DC47000, v7, OS_LOG_TYPE_DEFAULT, "[#Server] ACCiAP2ShimServer _attachAccessory %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(accessoryCopy, "connectionID")}];
  name = [accessoryCopy name];
  [v8 setObject:name forKey:*MEMORY[0x277D183F0]];

  manufacturer = [accessoryCopy manufacturer];
  [v8 setObject:manufacturer forKey:*MEMORY[0x277D183E0]];

  model = [accessoryCopy model];
  [v8 setObject:model forKey:*MEMORY[0x277D183E8]];

  serialNumber = [accessoryCopy serialNumber];
  [v8 setObject:serialNumber forKey:*MEMORY[0x277D18458]];

  firmwareVersion = [accessoryCopy firmwareVersion];
  [v8 setObject:firmwareVersion forKey:*MEMORY[0x277D183B8]];

  hardwareVersion = [accessoryCopy hardwareVersion];
  [v8 setObject:hardwareVersion forKey:*MEMORY[0x277D183C8]];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v16 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [accessoryCopy name];
    [accessoryCopy manufacturer];
    v35 = v9;
    v20 = v19 = self;
    model2 = [accessoryCopy model];
    serialNumber2 = [accessoryCopy serialNumber];
    firmwareVersion2 = [accessoryCopy firmwareVersion];
    hardwareVersion2 = [accessoryCopy hardwareVersion];
    *buf = 138413826;
    v38 = name2;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = model2;
    v43 = 2112;
    v44 = serialNumber2;
    v45 = 2112;
    v46 = firmwareVersion2;
    v47 = 2112;
    v48 = hardwareVersion2;
    v49 = 2112;
    v50 = @"---";
    _os_log_impl(&dword_23DC47000, v16, OS_LOG_TYPE_DEFAULT, "[#Server] ACCiAP2ShimServer _attachAccessory: AccName=%@, AccManufacturer=%@, AccModel=%@, AccSerialNumber=%@, AccFWVersion=%@, AccHWVersion=%@, AccDockType=%@", buf, 0x48u);

    self = v19;
    v9 = v35;
  }

  [v8 setObject:v9 forKey:*MEMORY[0x277D18480]];
  model3 = [accessoryCopy model];
  shouldHideAccessoryWithModelNumber = acc_policies_shouldHideAccessoryWithModelNumber(model3);

  if (shouldHideAccessoryWithModelNumber)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v27 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v27 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC47000, v27, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer _attachAccessory: should be hiding accessory from settings", buf, 2u);
    }

    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
  [v8 setObject:v30 forKey:*MEMORY[0x277D18380]];

  [(ACCiAP2ShimServer *)self _takeClientAssertionsForAccessoryConnection];
  v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v36.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v36, 0);
  v31 = [MEMORY[0x277CCABB0] numberWithLong:v36.tv_sec];
  [v8 setObject:v31 forKey:*MEMORY[0x277D18398]];

  if ([accessoryCopy dontPublish])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v32 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v32 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v38 = accessoryCopy;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_23DC47000, v32, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer _attachAccessory: %@, dontPublish set! accessoryDict=%@", buf, 0x16u);
    }
  }

  else
  {
    [(ACCiAP2ShimServer *)self notifyEAClientsOfAccessoryConnection:v8];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_detachAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  accessoryInfoDict = [accessoryCopy accessoryInfoDict];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = accessoryCopy;
    v20 = 2112;
    v21 = accessoryInfoDict;
    _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#Server] ACCiAP2ShimServer _detachAccessory: %@, accessoryDict=%@", &v18, 0x16u);
  }

  if ([accessoryInfoDict count])
  {
    if ([accessoryCopy dontPublish])
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      connectionID = [accessoryCopy connectionID];
      v18 = 138412546;
      v19 = accessoryCopy;
      v20 = 1024;
      LODWORD(v21) = connectionID;
      v12 = "[#Server] ACCiAP2ShimServer _detachAccessory: %@, dontPublish set! connectionID=%d";
      v13 = v9;
      v14 = 18;
    }

    else
    {
      [(ACCiAP2ShimServer *)self _takeClientAssertionsForAccessoryDisconnection];
      [(ACCiAP2ShimServer *)self notifyEAClientsOfAccessoryDisconnection:accessoryInfoDict];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v9 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      connectionID2 = [accessoryCopy connectionID];
      v18 = 67109120;
      LODWORD(v19) = connectionID2;
      v12 = "[#Server] ACCiAP2ShimServer _detachAccessory: accessory with connectionID=%d detached";
      v13 = v9;
      v14 = 8;
    }

    _os_log_impl(&dword_23DC47000, v13, OS_LOG_TYPE_INFO, v12, &v18, v14);
LABEL_30:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_takeClientAssertionsForAccessoryDisconnection
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_clients objectForKey:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 takeProcessAssertion:@"external-accessory.disconnect"];
        [v8 setClientRequiresAccReset:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __148__ACCiAP2ShimServer_addClientWithCapabilities_auditToken_currentClientID_xpcConnection_eaProtocols_notifyOfAlreadyConnectedAccessories_andBundleId___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v3 accessoryInfoDict];
    v14 = 138412802;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23DC47000, v6, OS_LOG_TYPE_DEFAULT, "[#Server] addClientWithCapabilities: notify connected: client=%@ accessory=%@ accessoryInfoDict=%@", &v14, 0x20u);
  }

  v11 = a1 + 32;
  v9 = *(a1 + 32);
  v10 = *(v11 + 8);
  v12 = [v3 accessoryInfoDict];
  [v10 notifyEAClient:v9 ofAccessoryEvent:"EAProtocolAccessoryConnected" accessory:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)findClientWithXPCConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  [(NSLock *)self->_clientLock lock];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCiAP2ShimServer *)connectionCopy findClientWithXPCConnection:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_clients allValues];
  v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        xpcConnection = [v12 xpcConnection];

        if (xpcConnection == connectionCopy)
        {
          v9 = v12;
          goto LABEL_21;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACCiAP2ShimServer findClientWithID:];
  }

  [(NSLock *)self->_clientLock unlock];
  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)removeClientForXPCConnection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  [(NSLock *)self->_clientLock lock];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clients = self->_clients;
    *buf = 138412546;
    v32 = connectionCopy;
    v33 = 2112;
    v34 = clients;
    _os_log_impl(&dword_23DC47000, v7, OS_LOG_TYPE_DEFAULT, "[#Server] removeClientForXPCConnection: clientConnection=%@ _clients=%@", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [(NSMutableDictionary *)self->_clients allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
LABEL_13:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(allKeys);
      }

      v14 = [(NSMutableDictionary *)self->_clients objectForKey:*(*(&v26 + 1) + 8 * v13)];
      xpcConnection = [v14 xpcConnection];

      if (xpcConnection == connectionCopy)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v16 = v14;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v17 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      bundleId = [v16 bundleId];
      *buf = 138412290;
      v32 = bundleId;
      _os_log_impl(&dword_23DC47000, v17, OS_LOG_TYPE_INFO, "[#Server] Found client to remove, client bundleID is %@", buf, 0xCu);
    }

    if (!v16)
    {
      goto LABEL_31;
    }

    clientID = [v16 clientID];
    v21 = self->_clients;
    v22 = [ACCiAP2ShimServer stringForClientID:clientID];
    [(NSMutableDictionary *)v21 removeObjectForKey:v22];

    if ([(NSMutableDictionary *)self->_clients count])
    {
      goto LABEL_41;
    }

    v23 = self->_clients;
    self->_clients = 0;
  }

  else
  {
LABEL_19:

LABEL_31:
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v23 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(&v23->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = connectionCopy;
      _os_log_impl(&dword_23DC47000, &v23->super.super, OS_LOG_TYPE_DEFAULT, "[#Server] ERROR - couldn't find client for xpc client %@", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_41:
  [(NSLock *)self->_clientLock unlock];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)removeAllClients
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_clientLock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_clients;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [(NSMutableDictionary *)self->_clients objectForKey:*(*(&v15 + 1) + 8 * v7)];

        clientID = [v5 clientID];
        v10 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__ACCiAP2ShimServer_removeAllClients__block_invoke;
        block[3] = &unk_278BF8950;
        block[4] = self;
        v14 = clientID;
        dispatch_async(v10, block);

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [(NSLock *)self->_clientLock unlock];
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ACCiAP2ShimServer_removeAllClients__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) lock];
  v2 = *(*(a1 + 32) + 80);
  v3 = [ACCiAP2ShimServer stringForClientID:*(a1 + 40)];
  [v2 removeObjectForKey:v3];

  if (![*(*(a1 + 32) + 80) count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;
  }

  v6 = *(*(a1 + 32) + 88);

  return [v6 unlock];
}

- (void)_takeClientAssertionsForAccessoryConnection
{
  v28 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_clientLock lock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_clients;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v6 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects)
        {
          v11 = gNumLogObjects < 1;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v25 = v9;
            v26 = 1024;
            v27 = v10;
            _os_log_error_impl(&dword_23DC47000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v12 = v6;
          v13 = v6;
        }

        else
        {
          v13 = *gLogObjects;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [(NSMutableDictionary *)self->_clients objectForKey:v8];
          bundleId = [v14 bundleId];
          *buf = 138412290;
          v25 = bundleId;
          _os_log_impl(&dword_23DC47000, v13, OS_LOG_TYPE_INFO, "[#Server] client %@\n", buf, 0xCu);
        }

        v16 = [(NSMutableDictionary *)self->_clients objectForKey:v8];
        [v16 takeProcessAssertion:@"external-accessory.connect"];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  [(NSLock *)self->_clientLock unlock];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)notifyEAClient:(id)client ofAccessoryEvent:(const char *)event accessory:(id)accessory
{
  v26 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  accessoryCopy = accessory;
  v9 = [clientCopy canSendConnectionEventForAccessory:accessoryCopy];
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    bundleId = [clientCopy bundleId];
    v18 = 138413058;
    v19 = bundleId;
    v20 = 2080;
    eventCopy = event;
    v22 = 1024;
    v23 = v9;
    v24 = 2112;
    v25 = accessoryCopy;
    _os_log_impl(&dword_23DC47000, v12, OS_LOG_TYPE_INFO, "[#Server] clientToNotify bundle = %@, request = %s, canSendConnectionEvent = %d, accessory=%@", &v18, 0x26u);
  }

  if (v9)
  {
    v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:accessoryCopy format:200 options:0 error:0];
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "requestType", event);
    xpc_dictionary_set_data(v15, "EAProtocolAccessoryPlistData", [v14 bytes], objc_msgSend(v14, "length"));
    xpcConnection = [clientCopy xpcConnection];
    xpc_connection_send_message(xpcConnection, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendToClient:(id)client notification:(const char *)notification withPayload:(id)payload
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  payloadCopy = payload;
  v9 = payloadCopy;
  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (clientCopy && notification && payloadCopy)
  {
    if (v11)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bundleId = [clientCopy bundleId];
      v20 = 138413058;
      v21 = bundleId;
      v22 = 2080;
      v23 = "kXPCACCNotificationKey";
      v24 = 2080;
      notificationCopy2 = notification;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_23DC47000, v12, OS_LOG_TYPE_DEFAULT, "[#Server] clientToNotify bundle = %@, request = %s, notificationName = %s, notificationPayload=%@", &v20, 0x2Au);
    }

    v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:200 options:0 error:0];
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v17, "requestType", "kXPCACCNotificationKey");
    xpc_dictionary_set_string(v17, "kXPCACCNotificationNameKey", notification);
    xpc_dictionary_set_data(v17, "kXPCACCNotificationPlistData", [v13 bytes], [v13 length]);
    xpcConnection = [clientCopy xpcConnection];
    xpc_connection_send_message(xpcConnection, v17);
  }

  else
  {
    if (v11)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "[ACCiAP2ShimServer sendToClient:notification:withPayload:]";
      v22 = 2112;
      v23 = clientCopy;
      v24 = 2080;
      notificationCopy2 = notification;
      v26 = 2112;
      v27 = v9;
      _os_log_error_impl(&dword_23DC47000, v13, OS_LOG_TYPE_ERROR, "[#Server] %s: Received nil param. clientToNotify %@ notificationName %s notificationPayload %@", &v20, 0x2Au);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyEAClientsOfAccessoryEvent:(const char *)event accessory:(id)accessory
{
  accessoryCopy = accessory;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ACCiAP2ShimServer_notifyEAClientsOfAccessoryEvent_accessory___block_invoke;
  block[3] = &unk_278BF8978;
  v10 = accessoryCopy;
  eventCopy = event;
  block[4] = self;
  v8 = accessoryCopy;
  dispatch_async(v7, block);
}

uint64_t __63__ACCiAP2ShimServer_notifyEAClientsOfAccessoryEvent_accessory___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 88) lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 80) objectForKey:{*(*(&v10 + 1) + 8 * v6), v10}];
        [*(a1 + 32) notifyEAClient:v7 ofAccessoryEvent:*(a1 + 48) accessory:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 88) unlock];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendToInterestedClientsACCBLENotification:(id)notification withPayload:(id)payload
{
  notificationCopy = notification;
  payloadCopy = payload;
  v8 = payloadCopy;
  if (notificationCopy && payloadCopy)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__ACCiAP2ShimServer_sendToInterestedClientsACCBLENotification_withPayload___block_invoke;
    block[3] = &unk_278BF89A0;
    block[4] = self;
    v14 = notificationCopy;
    v15 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *gLogObjects;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServer sendToInterestedClientsACCBLENotification:withPayload:];
    }
  }
}

uint64_t __75__ACCiAP2ShimServer_sendToInterestedClientsACCBLENotification_withPayload___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 88) lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 80) objectForKey:{*(*(&v10 + 1) + 8 * v6), v10}];
        if ([v7 interestedInBLENotifications])
        {
          [*(a1 + 32) sendToClient:v7 notification:objc_msgSend(*(a1 + 40) withPayload:{"cStringUsingEncoding:", 4), *(a1 + 48)}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 88) unlock];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)notifyInterestedClientsOfACCBLEAccessoryEvent:(id)event withPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  v7 = payloadCopy;
  if (eventCopy && payloadCopy)
  {
    v8 = +[ACCiAP2ShimServer sharedInstance];
    [v8 sendToInterestedClientsACCBLENotification:eventCopy withPayload:v7];
  }

  else
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ACCiAP2ShimServer notifyInterestedClientsOfACCBLEAccessoryEvent:withPayload:];
    }
  }
}

- (void)_resetServerState
{
  v23 = *MEMORY[0x277D85DE8];
  iap2AvailableNotifyToken = self->_iap2AvailableNotifyToken;
  if (iap2AvailableNotifyToken == -1)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "[#Server] IAPServer: resetServerState: invalid notifyToken!";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_51:
      _os_log_impl(&dword_23DC47000, v12, v13, v11, buf, 2u);
    }
  }

  else
  {
    state64 = 0;
    notify_get_state(iap2AvailableNotifyToken, &state64);
    if (gLogObjects)
    {
      v4 = gNumLogObjects <= 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    if (state64 == 1)
    {
      if (v5)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v6 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v22) = 0;
        _os_log_impl(&dword_23DC47000, v6, OS_LOG_TYPE_INFO, "[#Server] IAPServer: resetServerState: set kIAP2AvailableNotification state: %d", buf, 8u);
      }

      notify_set_state(self->_iap2AvailableNotifyToken, 0);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v15 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23DC47000, v15, OS_LOG_TYPE_INFO, "[#Server] IAPServer: resetServerState: post kIAP2AvailableNotification notification: ", buf, 2u);
      }

      notify_post(MEMORY[0x277D184F8]);
    }

    else
    {
      if (v5)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v9 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v22 = state64;
        _os_log_impl(&dword_23DC47000, v9, OS_LOG_TYPE_INFO, "[#Server] IAPServer: resetServerState: kIAP2AvailableNotification state %llu, skip post", buf, 0xCu);
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "[#Server] IAPServer: resetServerState: cancel notify token";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_51;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)postNotifydNotificationType:(id)type
{
  v10 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = typeCopy;
    _os_log_impl(&dword_23DC47000, v6, OS_LOG_TYPE_INFO, "[#Server] post darwin notification %@", &v8, 0xCu);
  }

  notify_post([typeCopy cStringUsingEncoding:4]);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)postNSDistributeNotificationType:(id)type notifyDict:(id)dict
{
  v17 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dictCopy = dict;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = typeCopy;
    v15 = 2112;
    v16 = dictCopy;
    _os_log_impl(&dword_23DC47000, v9, OS_LOG_TYPE_INFO, "[#Server] post distributed notification %@, userInfo %@", &v13, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v11 = defaultCenter;
  if (dictCopy)
  {
    [defaultCenter postNotificationName:typeCopy object:0 userInfo:dictCopy];
  }

  else
  {
    [defaultCenter postNotificationName:typeCopy object:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __35__ACCiAP2ShimServer_sharedInstance__block_invoke()
{
  sharedInstance___sharedIAP2Server = objc_alloc_init(ACCiAP2ShimServer);

  return MEMORY[0x2821F96F8]();
}

+ (void)markClientAsInterestedInBleNotifications:(id)notifications
{
  v52 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  object2 = notificationsCopy;
  if (notificationsCopy)
  {
    if (v5)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v51 = "+[ACCiAP2ShimServer markClientAsInterestedInBleNotifications:]";
      _os_log_impl(&dword_23DC47000, v6, OS_LOG_TYPE_DEFAULT, "[#Server] %s: iterating clients to find matching xpc_connection object", buf, 0xCu);
    }

    v7 = +[ACCiAP2ShimServer sharedInstance];
    clientLock = [v7 clientLock];
    [clientLock lock];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v7 clients];
    v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v46;
      v14 = MEMORY[0x277D86220];
      *&v11 = 134218240;
      v42 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          clients = [v7 clients];
          v18 = [clients objectForKey:v16];

          xpcConnection = [v18 xpcConnection];
          LODWORD(clients) = xpc_equal(xpcConnection, object2);

          if (clients)
          {
            v20 = gLogObjects;
            v21 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v22 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = v42;
                *v51 = v20;
                *&v51[8] = 1024;
                *&v51[10] = v21;
                _os_log_error_impl(&dword_23DC47000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = v14;
              v22 = v14;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              clientID = [v18 clientID];
              bundleId = [v18 bundleId];
              *buf = 67109378;
              *v51 = clientID;
              *&v51[4] = 2112;
              *&v51[6] = bundleId;
              _os_log_impl(&dword_23DC47000, v22, OS_LOG_TYPE_DEFAULT, "[#Server] xpc_connection object interested in BLE notifications matches the one for clientID = %u, bundleID = %@", buf, 0x12u);
            }

            hasEntitlementForAllAccessories = [v18 hasEntitlementForAllAccessories];
            v27 = hasEntitlementForAllAccessories;
            v28 = gLogObjects;
            v29 = gNumLogObjects;
            if (gLogObjects)
            {
              v30 = gNumLogObjects <= 0;
            }

            else
            {
              v30 = 1;
            }

            v31 = !v30;
            if (hasEntitlementForAllAccessories)
            {
              if (v31)
              {
                v32 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  *buf = v42;
                  *v51 = v28;
                  *&v51[8] = 1024;
                  *&v51[10] = v29;
                  _os_log_error_impl(&dword_23DC47000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v33 = v14;
                v32 = v14;
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                clientID2 = [v18 clientID];
                bundleId2 = [v18 bundleId];
                *buf = 67109378;
                *v51 = clientID2;
                *&v51[4] = 2112;
                *&v51[6] = bundleId2;
                _os_log_impl(&dword_23DC47000, v32, OS_LOG_TYPE_DEFAULT, "[#Server] client has required entitlement. marking as interested for BLE notifications. clientID = %u, bundleID = %@", buf, 0x12u);
              }
            }

            else
            {
              if (v31)
              {
                v32 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  *buf = v42;
                  *v51 = v28;
                  *&v51[8] = 1024;
                  *&v51[10] = v29;
                  _os_log_error_impl(&dword_23DC47000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v36 = v14;
                v32 = v14;
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                clientID3 = [v18 clientID];
                bundleId3 = [v18 bundleId];
                *buf = 67109378;
                *v51 = clientID3;
                *&v51[4] = 2112;
                *&v51[6] = bundleId3;
                _os_log_error_impl(&dword_23DC47000, v32, OS_LOG_TYPE_ERROR, "[#Server] interested client does not have entitlement! not marking as interested for BLE notifications. clientID = %u, bundleID = %@", buf, 0x12u);
              }
            }

            [v18 setInterestedInBLENotifications:v27];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v12);
    }

    clientLock2 = [v7 clientLock];
    [clientLock2 unlock];
  }

  else
  {
    if (v5)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v7 = MEMORY[0x277D86220];
      v40 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ACCiAP2ShimServer markClientAsInterestedInBleNotifications:];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_iterateDelegates:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_6(&dword_23DC47000, a2, a3, "[#Server] ACCiAP2ShimServer iterateDelegates, _delegateList=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessory:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeAccessory:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_iterateAccessories:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_6(&dword_23DC47000, a2, a3, "[#Server] ACCiAP2ShimServer iterateAccessories, _accessoryViaKeyUIDList=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__ACCiAP2ShimServer_processXPCMessage_connection___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  a1[8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__ACCiAP2ShimServer_processXPCMessage_connection___block_invoke_cold_4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  a1[8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)findClientWithID:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 80);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)findClientWithID:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_23DC47000, v0, v1, "[#Server] findClientWithID: client=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)findClientWithXPCConnection:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendToInterestedClientsACCBLENotification:withPayload:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(&dword_23DC47000, v0, v1, "[#Server] %s: Received nil param. notificationName %@ notificationPayload %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)notifyInterestedClientsOfACCBLEAccessoryEvent:withPayload:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(&dword_23DC47000, v0, v1, "[#Server] %s: Received nil param. notificationName %@ notificationPayload %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)markClientAsInterestedInBleNotifications:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end