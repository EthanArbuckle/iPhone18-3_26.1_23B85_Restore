@interface TKSlotServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateNFCSlotAccessWithSlotName:(id)a3 connectionPID:(int)a4 error:(id *)a5;
- (TKSlotServer)initWithRegistryListener:(id)a3 clientListener:(id)a4;
- (TKSlotServer)initWithRegistryListener:(id)a3 clientListener:(id)a4 nfcSlotFactory:(id)a5;
- (void)addClient:(id)a3 reply:(id)a4;
- (void)addSlotRegistration:(id)a3 name:(id)a4;
- (void)dealloc;
- (void)ensureSlotWatchersRunning;
- (void)handleExistingNFCSlot:(id)a3 connectionPID:(int)a4 reply:(id)a5;
- (void)isNFCSupportedWithReply:(id)a3;
- (void)notifyDesktopUp;
- (void)removeClient:(id)a3;
- (void)removeSlotRegistration:(id)a3;
- (void)setupReaderDisconnectHandler:(id)a3 slotName:(id)a4;
- (void)start;
- (void)startPollingWithNewSlot:(id)a3 slotName:(id)a4 reply:(id)a5;
- (void)stop;
- (void)verifyNFCSlotInvalidationWithRemovedClientPID:(int)a3;
@end

@implementation TKSlotServer

- (TKSlotServer)initWithRegistryListener:(id)a3 clientListener:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_registryListener, a3);
    [(NSXPCListener *)v9->_registryListener setDelegate:v9];
    objc_storeStrong(&v9->_clientListener, a4);
    [(NSXPCListener *)v9->_clientListener setDelegate:v9];
    v14 = objc_alloc_init(NSObject);
    nfcSlotLock = v9->_nfcSlotLock;
    v9->_nfcSlotLock = v14;
  }

  return v9;
}

- (TKSlotServer)initWithRegistryListener:(id)a3 clientListener:(id)a4 nfcSlotFactory:(id)a5
{
  v9 = a5;
  v10 = [(TKSlotServer *)self initWithRegistryListener:a3 clientListener:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_nfcSlotFactory, a5);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_registryListener != v6)
  {
    if (self->_clientListener != v6 || ![TKSlotClient handleConnection:v7 server:self])
    {
      goto LABEL_4;
    }

LABEL_6:
    [v7 resume];
    v8 = 1;
    goto LABEL_7;
  }

  if ([TKSlotRegistration handleConnection:v7 server:self])
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (void)addSlotRegistration:(id)a3 name:(id)a4
{
  v6 = a3;
  v36 = a4;
  v7 = self;
  objc_sync_enter(v7);
  obj = &v7->super.isa;
  if (![(NSMutableArray *)v7->_registrations count])
  {
    [(TKSlotServer *)v7 ensureSlotWatchersRunning];
  }

  LODWORD(v8) = 0;
LABEL_5:
  [v6 setSlotName:v36];
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

        v14 = [*(*(&v42 + 1) + 8 * i) slotName];
        v15 = [v6 slotName];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {

          v8 = (v8 + 1);
          if (v8)
          {
            v9 = [NSString stringWithFormat:@"%@ %02d", v36, v8];
            [v6 setSlotName:v9];

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

  [obj[1] addObject:v6];
  v17 = [v6 slotName];
  v18 = [NSString stringWithFormat:@"slot server registration:%@", v17];
  v19 = v18;
  [v18 UTF8String];
  v20 = os_transaction_create();
  [v6 setTransaction:v20];

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
        v26 = [v25 slotType];
        if (!v26)
        {
          goto LABEL_24;
        }

        v27 = [v25 slotType];
        v28 = [v6 slotType];
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {
LABEL_24:
          v30 = [v25 notification];
          v31 = [v6 slotName];
          v32 = [v6 endpoint];
          v33 = [v6 slotType];
          [v30 setSlotWithName:v31 endpoint:v32 type:v33 reply:&stru_100038C98];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v22);
  }

  v34 = sub_10000EE10();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = [v6 slotName];
    sub_10001F5F4(v35, buf, v34);
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

- (void)removeSlotRegistration:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  v5 = sub_10000EE10();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 slotName];
    sub_10001F800(v6, buf, v5);
  }

  [(NSMutableArray *)obj->_registrations removeObject:v4];
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
        v12 = [v11 slotType];
        if (!v12)
        {
          goto LABEL_10;
        }

        v13 = [v11 slotType];
        v14 = [v4 slotType];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
LABEL_10:
          v16 = [v11 notification];
          v17 = [v4 slotName];
          v18 = [v4 slotType];
          [v16 setSlotWithName:v17 endpoint:0 type:v18 reply:&stru_100038D00];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
}

- (void)addClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  block = a4;
  v7 = self;
  objc_sync_enter(v7);
  v22 = v7;
  [(NSMutableArray *)v7->_clients addObject:v6];
  v8 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7->_registrations;
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
        v13 = [v6 slotType];
        if (!v13)
        {
          goto LABEL_8;
        }

        v14 = [v6 slotType];
        v15 = [v12 slotType];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
LABEL_8:
          dispatch_group_enter(v8);
          v17 = [v6 notification];
          v18 = [v12 slotName];
          v19 = [v12 endpoint];
          v20 = [v12 slotType];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100010378;
          v25[3] = &unk_100038710;
          v26 = v8;
          [v17 setSlotWithName:v18 endpoint:v19 type:v20 reply:v25];
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

- (void)removeClient:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_clients removeObject:v5];
  objc_sync_exit(v4);
}

- (void)isNFCSupportedWithReply:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TKNFCHardwareManager);
  v7 = 0;
  v5 = [(TKNFCHardwareManager *)v4 isNFCSupportedWithError:&v7];
  v6 = v7;
  v3[2](v3, v5, v6);
}

- (void)startPollingWithNewSlot:(id)a3 slotName:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100010950;
  v14[3] = &unk_100038D28;
  objc_copyWeak(&v18, &location);
  v11 = v10;
  v17 = v11;
  v12 = v9;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  [v13 startPollingWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)setupReaderDisconnectHandler:(id)a3 slotName:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010C08;
  v9[3] = &unk_100038D50;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [v6 setOnReaderDisconnect:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)handleExistingNFCSlot:(id)a3 connectionPID:(int)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  nfcSlot = self->_nfcSlot;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010E1C;
  v13[3] = &unk_100038D78;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  v17 = a4;
  [(TKNFCSlot *)nfcSlot startPollingWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)verifyNFCSlotInvalidationWithRemovedClientPID:(int)a3
{
  v5 = self->_nfcSlotLock;
  objc_sync_enter(v5);
  nfcSlot = self->_nfcSlot;
  if (nfcSlot && [(TKNFCSlot *)nfcSlot creatorPID]== a3)
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

- (BOOL)validateNFCSlotAccessWithSlotName:(id)a3 connectionPID:(int)a4 error:(id *)a5
{
  v8 = a3;
  nfcSlot = self->_nfcSlot;
  if (!nfcSlot || (-[TKNFCSlot name](nfcSlot, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:v8], v10, (v11 & 1) == 0))
  {
    if (!a5)
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
    *a5 = [NSError errorWithDomain:v12 code:-6 userInfo:v15];

    LOBYTE(a5) = 0;
    goto LABEL_8;
  }

  if ([(TKNFCSlot *)self->_nfcSlot creatorPID]!= a4)
  {
    if (!a5)
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

  LOBYTE(a5) = 1;
LABEL_8:

  return a5;
}

@end