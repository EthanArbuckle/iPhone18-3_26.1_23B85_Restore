@interface TKSlotServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)validateNFCSlotAccessWithSlotName:(id)name connectionPID:(int)d error:(id *)error;
- (TKSlotServer)initWithRegistryListener:(id)listener clientListener:(id)clientListener;
- (TKSlotServer)initWithRegistryListener:(id)listener clientListener:(id)clientListener nfcSlotFactory:(id)factory;
- (void)addClient:(id)client reply:(id)reply;
- (void)addSlotRegistration:(id)registration name:(id)name;
- (void)dealloc;
- (void)ensureSlotWatchersRunning;
- (void)handleExistingNFCSlot:(id)slot connectionPID:(int)d reply:(id)reply;
- (void)isNFCSupportedWithReply:(id)reply;
- (void)notifyDesktopUp;
- (void)removeClient:(id)client;
- (void)removeSlotRegistration:(id)registration;
- (void)setupReaderDisconnectHandler:(id)handler slotName:(id)name;
- (void)start;
- (void)startPollingWithNewSlot:(id)slot slotName:(id)name reply:(id)reply;
- (void)stop;
- (void)verifyNFCSlotInvalidationWithRemovedClientPID:(int)d;
@end

@implementation TKSlotServer

- (TKSlotServer)initWithRegistryListener:(id)listener clientListener:(id)clientListener
{
  listenerCopy = listener;
  clientListenerCopy = clientListener;
  v17.receiver = self;
  v17.super_class = TKSlotServer;
  v9 = [(TKSlotServer *)&v17 init];
  if (v9)
  {
    v10 = +[NSMutableArray array];
    clients = v9->_clients;
    v9->_clients = v10;

    v12 = +[NSMutableArray array];
    registrations = v9->_registrations;
    v9->_registrations = v12;

    objc_storeStrong(&v9->_registryListener, listener);
    [(NSXPCListener *)v9->_registryListener setDelegate:v9];
    objc_storeStrong(&v9->_clientListener, clientListener);
    [(NSXPCListener *)v9->_clientListener setDelegate:v9];
    v14 = objc_alloc_init(NSObject);
    nfcSlotLock = v9->_nfcSlotLock;
    v9->_nfcSlotLock = v14;
  }

  return v9;
}

- (TKSlotServer)initWithRegistryListener:(id)listener clientListener:(id)clientListener nfcSlotFactory:(id)factory
{
  factoryCopy = factory;
  v10 = [(TKSlotServer *)self initWithRegistryListener:listener clientListener:clientListener];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_nfcSlotFactory, factory);
  }

  return v11;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_registryListener invalidate];
  [(NSXPCListener *)self->_clientListener invalidate];
  v3.receiver = self;
  v3.super_class = TKSlotServer;
  [(TKSlotServer *)&v3 dealloc];
}

- (void)start
{
  [(NSXPCListener *)self->_registryListener resume];
  clientListener = self->_clientListener;

  [(NSXPCListener *)clientListener resume];
}

- (void)stop
{
  [(NSXPCListener *)self->_registryListener invalidate];
  [(NSXPCListener *)self->_clientListener invalidate];
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_clients removeAllObjects];
  [(NSMutableArray *)obj->_registrations removeAllObjects];
  objc_sync_exit(obj);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_registryListener != listenerCopy)
  {
    if (self->_clientListener != listenerCopy || ![TKSlotClient handleConnection:connectionCopy server:self])
    {
      goto LABEL_4;
    }

LABEL_6:
    [connectionCopy resume];
    v8 = 1;
    goto LABEL_7;
  }

  if ([TKSlotRegistration handleConnection:connectionCopy server:self])
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (void)addSlotRegistration:(id)registration name:(id)name
{
  registrationCopy = registration;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = &selfCopy->super.isa;
  if (![(NSMutableArray *)selfCopy->_registrations count])
  {
    [(TKSlotServer *)selfCopy ensureSlotWatchersRunning];
  }

  LODWORD(v8) = 0;
LABEL_5:
  [registrationCopy setSlotName:nameCopy];
LABEL_6:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = obj[1];
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v11)
  {
    v12 = *v43;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v10);
        }

        slotName = [*(*(&v42 + 1) + 8 * i) slotName];
        slotName2 = [registrationCopy slotName];
        v16 = [slotName isEqualToString:slotName2];

        if (v16)
        {

          v8 = (v8 + 1);
          if (v8)
          {
            v9 = [NSString stringWithFormat:@"%@ %02d", nameCopy, v8];
            [registrationCopy setSlotName:v9];

            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [obj[1] addObject:registrationCopy];
  slotName3 = [registrationCopy slotName];
  v18 = [NSString stringWithFormat:@"slot server registration:%@", slotName3];
  v19 = v18;
  [v18 UTF8String];
  v20 = os_transaction_create();
  [registrationCopy setTransaction:v20];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = obj[2];
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v22)
  {
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v38 + 1) + 8 * j);
        slotType = [v25 slotType];
        if (!slotType)
        {
          goto LABEL_24;
        }

        slotType2 = [v25 slotType];
        slotType3 = [registrationCopy slotType];
        v29 = [slotType2 isEqualToString:slotType3];

        if (v29)
        {
LABEL_24:
          notification = [v25 notification];
          slotName4 = [registrationCopy slotName];
          endpoint = [registrationCopy endpoint];
          slotType4 = [registrationCopy slotType];
          [notification setSlotWithName:slotName4 endpoint:endpoint type:slotType4 reply:&stru_100038C98];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v22);
  }

  v34 = sub_10000EE10();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    slotName5 = [registrationCopy slotName];
    sub_10001F5F4(slotName5, buf, v34);
  }

  objc_sync_exit(obj);
}

- (void)notifyDesktopUp
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSMutableArray *)obj->_registrations count])
  {
    [(TKSlotServer *)obj ensureSlotWatchersRunning];
  }

  objc_sync_exit(obj);
}

- (void)ensureSlotWatchersRunning
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &stru_100038CB8);
}

- (void)removeSlotRegistration:(id)registration
{
  registrationCopy = registration;
  obj = self;
  objc_sync_enter(obj);
  v5 = sub_10000EE10();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    slotName = [registrationCopy slotName];
    sub_10001F800(slotName, buf, v5);
  }

  [(NSMutableArray *)obj->_registrations removeObject:registrationCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = obj->_clients;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        slotType = [v11 slotType];
        if (!slotType)
        {
          goto LABEL_10;
        }

        slotType2 = [v11 slotType];
        slotType3 = [registrationCopy slotType];
        v15 = [slotType2 isEqualToString:slotType3];

        if (v15)
        {
LABEL_10:
          notification = [v11 notification];
          slotName2 = [registrationCopy slotName];
          slotType4 = [registrationCopy slotType];
          [notification setSlotWithName:slotName2 endpoint:0 type:slotType4 reply:&stru_100038D00];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
}

- (void)addClient:(id)client reply:(id)reply
{
  clientCopy = client;
  block = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = selfCopy;
  [(NSMutableArray *)selfCopy->_clients addObject:clientCopy];
  v8 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = selfCopy->_registrations;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        slotType = [clientCopy slotType];
        if (!slotType)
        {
          goto LABEL_8;
        }

        slotType2 = [clientCopy slotType];
        slotType3 = [v12 slotType];
        v16 = [slotType2 isEqualToString:slotType3];

        if (v16)
        {
LABEL_8:
          dispatch_group_enter(v8);
          notification = [clientCopy notification];
          slotName = [v12 slotName];
          endpoint = [v12 endpoint];
          slotType4 = [v12 slotType];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100010378;
          v25[3] = &unk_100038710;
          v26 = v8;
          [notification setSlotWithName:slotName endpoint:endpoint type:slotType4 reply:v25];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v21 = dispatch_get_global_queue(25, 0);
  dispatch_group_notify(v8, v21, block);

  objc_sync_exit(v22);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_clients removeObject:clientCopy];
  objc_sync_exit(selfCopy);
}

- (void)isNFCSupportedWithReply:(id)reply
{
  replyCopy = reply;
  v4 = objc_alloc_init(TKNFCHardwareManager);
  v7 = 0;
  v5 = [(TKNFCHardwareManager *)v4 isNFCSupportedWithError:&v7];
  v6 = v7;
  replyCopy[2](replyCopy, v5, v6);
}

- (void)startPollingWithNewSlot:(id)slot slotName:(id)name reply:(id)reply
{
  slotCopy = slot;
  nameCopy = name;
  replyCopy = reply;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100010950;
  v14[3] = &unk_100038D28;
  objc_copyWeak(&v18, &location);
  v11 = replyCopy;
  v17 = v11;
  v12 = nameCopy;
  v15 = v12;
  v13 = slotCopy;
  v16 = v13;
  [v13 startPollingWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)setupReaderDisconnectHandler:(id)handler slotName:(id)name
{
  handlerCopy = handler;
  nameCopy = name;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010C08;
  v9[3] = &unk_100038D50;
  objc_copyWeak(&v11, &location);
  v8 = nameCopy;
  v10 = v8;
  [handlerCopy setOnReaderDisconnect:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)handleExistingNFCSlot:(id)slot connectionPID:(int)d reply:(id)reply
{
  slotCopy = slot;
  replyCopy = reply;
  objc_initWeak(&location, self);
  nfcSlot = self->_nfcSlot;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010E1C;
  v13[3] = &unk_100038D78;
  objc_copyWeak(&v16, &location);
  v11 = replyCopy;
  v15 = v11;
  v12 = slotCopy;
  v14 = v12;
  dCopy = d;
  [(TKNFCSlot *)nfcSlot startPollingWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)verifyNFCSlotInvalidationWithRemovedClientPID:(int)d
{
  v5 = self->_nfcSlotLock;
  objc_sync_enter(v5);
  nfcSlot = self->_nfcSlot;
  if (nfcSlot && [(TKNFCSlot *)nfcSlot creatorPID]== d)
  {
    v7 = self->_nfcSlot;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011258;
    v8[3] = &unk_100038710;
    v8[4] = self;
    [(TKNFCSlot *)v7 endSessionWithCompletion:v8];
  }

  objc_sync_exit(v5);
}

- (BOOL)validateNFCSlotAccessWithSlotName:(id)name connectionPID:(int)d error:(id *)error
{
  nameCopy = name;
  nfcSlot = self->_nfcSlot;
  if (!nfcSlot || (-[TKNFCSlot name](nfcSlot, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:nameCopy], v10, (v11 & 1) == 0))
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v12 = TKErrorDomain;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"NFC slot not found";
    v13 = &v20;
    v14 = &v19;
LABEL_7:
    v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
    *error = [NSError errorWithDomain:v12 code:-6 userInfo:v15];

    LOBYTE(error) = 0;
    goto LABEL_8;
  }

  if ([(TKNFCSlot *)self->_nfcSlot creatorPID]!= d)
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v12 = TKErrorDomain;
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Not authorized to remove the NFC slot";
    v13 = &v18;
    v14 = &v17;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

@end