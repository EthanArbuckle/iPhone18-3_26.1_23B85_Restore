@interface TKTokenServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)waitForRegistry;
- (TKCTKDConnection)ctkdConnection;
- (TKTokenServer)initWithTokenServer:(id)a3;
- (id)tokenAccessManager;
- (void)cleanupInvalidTokenAccessRecords;
- (void)dealloc;
- (void)getEndpoint:(id)a3;
- (void)hostTokenRegistry:(id)a3 addedToken:(id)a4 persistent:(BOOL)a5;
- (void)hostTokenRegistry:(id)a3 removedToken:(id)a4 persistent:(BOOL)a5;
- (void)setTokenRegistry:(id)a3;
- (void)start;
- (void)startWatchingWithReply:(id)a3;
- (void)stop;
@end

@implementation TKTokenServer

- (TKCTKDConnection)ctkdConnection
{
  v3 = [TKCTKDConnection alloc];
  v4 = [(TKTokenServer *)self tokenServerListener];
  v5 = [v4 endpoint];
  v6 = [v3 initWithCTKDEndpoint:v5 targetUID:0];

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TKTokenServer *)self tokenServerListener];

  if (v8 == v7)
  {
    objc_opt_class();
    v9 = [[TKTokenClientConnection alloc] initWithConnection:v6 server:self];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKClientTokenServerProtocol];
    [v6 setExportedInterface:v10];

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolTokenWatcherHost];
    [v6 setRemoteObjectInterface:v11];

    [v6 setExportedObject:v9];
    [v6 resume];
  }

  return v8 == v7;
}

- (void)startWatchingWithReply:(id)a3
{
  v32 = a3;
  v4 = self->_watcherConnections;
  objc_sync_enter(v4);
  v5 = +[NSXPCConnection currentConnection];
  [(NSHashTable *)self->_watcherConnections addObject:v5];
  v35 = self;

  objc_sync_exit(v4);
  v6 = [&__NSArray0__struct mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = +[TKClientToken builtinTokenIDs];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = *v41;
    do
    {
      v10 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v46 = *(*(&v40 + 1) + 8 * v10);
        v11 = [NSArray arrayWithObjects:&v46 count:1, v32];
        [v6 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [(TKTokenServer *)v35 tokenRegistry];
  obj = [v12 tokens];

  v13 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v13)
  {
    v34 = *v37;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        v16 = [(TKTokenServer *)v35 tokenRegistry];
        v17 = [v16 tokenWithTokenID:v15];

        v18 = [v17 driver];
        if (!v18)
        {
          v19 = [v17 registry];
          v20 = [v19 driverCache];
          v21 = [v17 tokenID];
          v22 = [v21 classID];
          v18 = [v20 hostTokenDriverWithClassID:v22 error:0];
        }

        v23 = [v15 stringRepresentation];
        v44[0] = v23;
        v24 = [v18 extension];
        v25 = [v24 _localizedName];
        v26 = v25;
        v27 = &stru_1000392E8;
        if (v25)
        {
          v27 = v25;
        }

        v44[1] = v27;
        v28 = [v17 slotName];
        v29 = v28;
        v30 = &stru_1000392E8;
        if (v28)
        {
          v30 = v28;
        }

        v44[2] = v30;
        v31 = [NSArray arrayWithObjects:v44 count:3];
        [v6 addObject:v31];

        v14 = v14 + 1;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v13);
  }

  v32[2](v32, v6);
}

- (void)getEndpoint:(id)a3
{
  tokenWatcherListener = self->_tokenWatcherListener;
  v5 = a3;
  v6 = [(NSXPCListener *)tokenWatcherListener endpoint];
  (*(a3 + 2))(v5, v6);
}

- (void)hostTokenRegistry:(id)a3 addedToken:(id)a4 persistent:(BOOL)a5
{
  v36 = a3;
  v39 = a4;
  v8 = [(TKTokenServer *)self tokenRegistry];
  v41 = [v8 tokenWithTokenID:v39];

  v40 = [v41 driver];
  if (!v40)
  {
    v9 = [v41 registry];
    v10 = [v9 driverCache];
    v11 = [v41 tokenID];
    v12 = [v11 classID];
    v40 = [v10 hostTokenDriverWithClassID:v12 error:0];
  }

  if (!a5)
  {
    v46 = 0;
    v13 = [(TKTokenServer *)self pairingNotification:&v46];
    v14 = v46;
    v15 = [v41 slotName];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1000392E8;
    }

    v18 = [v40 extension];
    v19 = [v18 _localizedName];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1000392E8;
    }

    v22 = [v39 stringRepresentation];
    [v13 tokenInserted:v17 driverName:v21 tokenID:v22 reply:&stru_100039058];

    [v14 invalidate];
  }

  v37 = self->_watcherConnections;
  objc_sync_enter(v37);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_watcherConnections;
  v23 = [(NSHashTable *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v23)
  {
    v24 = *v43;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = [*(*(&v42 + 1) + 8 * i) remoteObjectProxy];
        v27 = [v39 stringRepresentation];
        v47[0] = v27;
        v28 = [v40 extension];
        v29 = [v28 _localizedName];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &stru_1000392E8;
        }

        v47[1] = v31;
        v32 = [v41 slotName];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = &stru_1000392E8;
        }

        v47[2] = v34;
        v35 = [NSArray arrayWithObjects:v47 count:3];
        [v26 insertedToken:v35];
      }

      v23 = [(NSHashTable *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v23);
  }

  objc_sync_exit(v37);
}

- (void)hostTokenRegistry:(id)a3 removedToken:(id)a4 persistent:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = 0;
  }

  else
  {
    v24 = 0;
    v11 = [(TKTokenServer *)self pairingNotification:&v24];
    v10 = v24;
    v12 = [v9 stringRepresentation];
    [v11 tokenRemoved:v12 reply:&stru_100039078];

    [v10 invalidate];
  }

  v13 = self->_watcherConnections;
  objc_sync_enter(v13);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_watcherConnections;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) remoteObjectProxy];
        v19 = [v9 stringRepresentation];
        [v18 removedToken:v19];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v13);
}

- (TKTokenServer)initWithTokenServer:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TKTokenServer;
  v5 = [(TKTokenServer *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSCondition);
    tokenRegistrySetCondition = v5->_tokenRegistrySetCondition;
    v5->_tokenRegistrySetCondition = v6;

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = +[NSXPCListener anonymousListener];
    }

    tokenServerListener = v5->_tokenServerListener;
    v5->_tokenServerListener = v8;

    [(NSXPCListener *)v5->_tokenServerListener setDelegate:v5];
    v10 = +[NSHashTable weakObjectsHashTable];
    watcherConnections = v5->_watcherConnections;
    v5->_watcherConnections = v10;

    v12 = objc_alloc_init(TKSEPKeyServer);
    SEPKeyServer = v5->_SEPKeyServer;
    v5->_SEPKeyServer = v12;
  }

  return v5;
}

- (void)setTokenRegistry:(id)a3
{
  v5 = a3;
  v6 = sub_1000164FC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100020B08(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  if (!self->_tokenRegistrySet)
  {
    [(NSCondition *)self->_tokenRegistrySetCondition lock];
    self->_tokenRegistrySet = 1;
    objc_storeStrong(&self->_tokenRegistry, a3);
    [(TKHostTokenRegistry *)self->_tokenRegistry setDelegate:self];
    [(NSCondition *)self->_tokenRegistrySetCondition broadcast];
    [(NSCondition *)self->_tokenRegistrySetCondition unlock];
  }
}

- (BOOL)waitForRegistry
{
  [(NSCondition *)self->_tokenRegistrySetCondition lock];
  while (!self->_tokenRegistrySet)
  {
    v6 = sub_1000164FC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100020B40(&buf, v11, v6);
    }

    [(NSCondition *)self->_tokenRegistrySetCondition wait];
    v7 = sub_1000164FC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100020B80(&v8, v9, v7);
    }
  }

  [(NSCondition *)self->_tokenRegistrySetCondition unlock];
  v3 = [(TKTokenServer *)self tokenRegistry];
  v4 = v3 != 0;

  return v4;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_tokenServerListener invalidate];
  v3.receiver = self;
  v3.super_class = TKTokenServer;
  [(TKTokenServer *)&v3 dealloc];
}

- (void)start
{
  v3 = [(TKTokenServer *)self tokenServerListener];
  [v3 resume];

  if (notify_post([TKTokenWatcherServerStartedNotification UTF8String]))
  {
    v4 = sub_1000164FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100020BC0();
    }
  }

  v5 = [(TKTokenServer *)self tokenAccessManager];
  [v5 startAppsUninstallObservation];

  [(TKTokenServer *)self cleanupInvalidTokenAccessRecords];
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(TKTokenServer *)obj tokenServerListener];
  [v2 invalidate];

  tokenServerListener = obj->_tokenServerListener;
  obj->_tokenServerListener = 0;

  [(NSCondition *)obj->_tokenRegistrySetCondition lock];
  if (!obj->_tokenRegistrySet)
  {
    obj->_tokenRegistrySet = 1;
    [(NSCondition *)obj->_tokenRegistrySetCondition broadcast];
  }

  [(NSCondition *)obj->_tokenRegistrySetCondition unlock];
  v4 = [(TKTokenServer *)obj tokenRegistry];
  v5 = [v4 driverCache];
  [v5 invalidate];

  objc_sync_exit(obj);
}

- (id)tokenAccessManager
{
  tokenAccessManager = self->_tokenAccessManager;
  if (!tokenAccessManager)
  {
    v4 = objc_alloc_init(TKTokenAccessRegistry);
    v5 = [TKTokenAccessManager alloc];
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = [(TKTokenAccessManager *)v5 initWithTokenAccessRegistry:v4 applicationWorkSpace:v6];
    v8 = self->_tokenAccessManager;
    self->_tokenAccessManager = v7;

    tokenAccessManager = self->_tokenAccessManager;
  }

  return tokenAccessManager;
}

- (void)cleanupInvalidTokenAccessRecords
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018880;
  block[3] = &unk_100038710;
  block[4] = self;
  dispatch_async(v3, block);
}

@end