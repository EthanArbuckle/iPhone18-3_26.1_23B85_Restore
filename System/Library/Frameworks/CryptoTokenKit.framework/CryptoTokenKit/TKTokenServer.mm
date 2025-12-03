@interface TKTokenServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)waitForRegistry;
- (TKCTKDConnection)ctkdConnection;
- (TKTokenServer)initWithTokenServer:(id)server;
- (id)tokenAccessManager;
- (void)cleanupInvalidTokenAccessRecords;
- (void)dealloc;
- (void)getEndpoint:(id)endpoint;
- (void)hostTokenRegistry:(id)registry addedToken:(id)token persistent:(BOOL)persistent;
- (void)hostTokenRegistry:(id)registry removedToken:(id)token persistent:(BOOL)persistent;
- (void)setTokenRegistry:(id)registry;
- (void)start;
- (void)startWatchingWithReply:(id)reply;
- (void)stop;
@end

@implementation TKTokenServer

- (TKCTKDConnection)ctkdConnection
{
  v3 = [TKCTKDConnection alloc];
  tokenServerListener = [(TKTokenServer *)self tokenServerListener];
  endpoint = [tokenServerListener endpoint];
  v6 = [v3 initWithCTKDEndpoint:endpoint targetUID:0];

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listenerCopy = listener;
  tokenServerListener = [(TKTokenServer *)self tokenServerListener];

  if (tokenServerListener == listenerCopy)
  {
    objc_opt_class();
    v9 = [[TKTokenClientConnection alloc] initWithConnection:connectionCopy server:self];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKClientTokenServerProtocol];
    [connectionCopy setExportedInterface:v10];

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolTokenWatcherHost];
    [connectionCopy setRemoteObjectInterface:v11];

    [connectionCopy setExportedObject:v9];
    [connectionCopy resume];
  }

  return tokenServerListener == listenerCopy;
}

- (void)startWatchingWithReply:(id)reply
{
  replyCopy = reply;
  v4 = self->_watcherConnections;
  objc_sync_enter(v4);
  v5 = +[NSXPCConnection currentConnection];
  [(NSHashTable *)self->_watcherConnections addObject:v5];
  selfCopy = self;

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
        replyCopy = [NSArray arrayWithObjects:&v46 count:1, replyCopy];
        [v6 addObject:replyCopy];

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
  tokenRegistry = [(TKTokenServer *)selfCopy tokenRegistry];
  obj = [tokenRegistry tokens];

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
        tokenRegistry2 = [(TKTokenServer *)selfCopy tokenRegistry];
        v17 = [tokenRegistry2 tokenWithTokenID:v15];

        driver = [v17 driver];
        if (!driver)
        {
          registry = [v17 registry];
          driverCache = [registry driverCache];
          tokenID = [v17 tokenID];
          classID = [tokenID classID];
          driver = [driverCache hostTokenDriverWithClassID:classID error:0];
        }

        stringRepresentation = [v15 stringRepresentation];
        v44[0] = stringRepresentation;
        extension = [driver extension];
        _localizedName = [extension _localizedName];
        v26 = _localizedName;
        v27 = &stru_1000392E8;
        if (_localizedName)
        {
          v27 = _localizedName;
        }

        v44[1] = v27;
        slotName = [v17 slotName];
        v29 = slotName;
        v30 = &stru_1000392E8;
        if (slotName)
        {
          v30 = slotName;
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

  replyCopy[2](replyCopy, v6);
}

- (void)getEndpoint:(id)endpoint
{
  tokenWatcherListener = self->_tokenWatcherListener;
  endpointCopy = endpoint;
  endpoint = [(NSXPCListener *)tokenWatcherListener endpoint];
  (*(endpoint + 2))(endpointCopy, endpoint);
}

- (void)hostTokenRegistry:(id)registry addedToken:(id)token persistent:(BOOL)persistent
{
  registryCopy = registry;
  tokenCopy = token;
  tokenRegistry = [(TKTokenServer *)self tokenRegistry];
  v41 = [tokenRegistry tokenWithTokenID:tokenCopy];

  driver = [v41 driver];
  if (!driver)
  {
    registry = [v41 registry];
    driverCache = [registry driverCache];
    tokenID = [v41 tokenID];
    classID = [tokenID classID];
    driver = [driverCache hostTokenDriverWithClassID:classID error:0];
  }

  if (!persistent)
  {
    v46 = 0;
    v13 = [(TKTokenServer *)self pairingNotification:&v46];
    v14 = v46;
    slotName = [v41 slotName];
    v16 = slotName;
    if (slotName)
    {
      v17 = slotName;
    }

    else
    {
      v17 = &stru_1000392E8;
    }

    extension = [driver extension];
    _localizedName = [extension _localizedName];
    v20 = _localizedName;
    if (_localizedName)
    {
      v21 = _localizedName;
    }

    else
    {
      v21 = &stru_1000392E8;
    }

    stringRepresentation = [tokenCopy stringRepresentation];
    [v13 tokenInserted:v17 driverName:v21 tokenID:stringRepresentation reply:&stru_100039058];

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

        remoteObjectProxy = [*(*(&v42 + 1) + 8 * i) remoteObjectProxy];
        stringRepresentation2 = [tokenCopy stringRepresentation];
        v47[0] = stringRepresentation2;
        extension2 = [driver extension];
        _localizedName2 = [extension2 _localizedName];
        v30 = _localizedName2;
        if (_localizedName2)
        {
          v31 = _localizedName2;
        }

        else
        {
          v31 = &stru_1000392E8;
        }

        v47[1] = v31;
        slotName2 = [v41 slotName];
        v33 = slotName2;
        if (slotName2)
        {
          v34 = slotName2;
        }

        else
        {
          v34 = &stru_1000392E8;
        }

        v47[2] = v34;
        v35 = [NSArray arrayWithObjects:v47 count:3];
        [remoteObjectProxy insertedToken:v35];
      }

      v23 = [(NSHashTable *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v23);
  }

  objc_sync_exit(v37);
}

- (void)hostTokenRegistry:(id)registry removedToken:(id)token persistent:(BOOL)persistent
{
  registryCopy = registry;
  tokenCopy = token;
  if (persistent)
  {
    v10 = 0;
  }

  else
  {
    v24 = 0;
    v11 = [(TKTokenServer *)self pairingNotification:&v24];
    v10 = v24;
    stringRepresentation = [tokenCopy stringRepresentation];
    [v11 tokenRemoved:stringRepresentation reply:&stru_100039078];

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

        remoteObjectProxy = [*(*(&v20 + 1) + 8 * v17) remoteObjectProxy];
        stringRepresentation2 = [tokenCopy stringRepresentation];
        [remoteObjectProxy removedToken:stringRepresentation2];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v13);
}

- (TKTokenServer)initWithTokenServer:(id)server
{
  serverCopy = server;
  v15.receiver = self;
  v15.super_class = TKTokenServer;
  v5 = [(TKTokenServer *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSCondition);
    tokenRegistrySetCondition = v5->_tokenRegistrySetCondition;
    v5->_tokenRegistrySetCondition = v6;

    if (serverCopy)
    {
      v8 = serverCopy;
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

- (void)setTokenRegistry:(id)registry
{
  registryCopy = registry;
  v6 = sub_1000164FC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100020B08(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  if (!self->_tokenRegistrySet)
  {
    [(NSCondition *)self->_tokenRegistrySetCondition lock];
    self->_tokenRegistrySet = 1;
    objc_storeStrong(&self->_tokenRegistry, registry);
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
  tokenRegistry = [(TKTokenServer *)self tokenRegistry];
  v4 = tokenRegistry != 0;

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
  tokenServerListener = [(TKTokenServer *)self tokenServerListener];
  [tokenServerListener resume];

  if (notify_post([TKTokenWatcherServerStartedNotification UTF8String]))
  {
    v4 = sub_1000164FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100020BC0();
    }
  }

  tokenAccessManager = [(TKTokenServer *)self tokenAccessManager];
  [tokenAccessManager startAppsUninstallObservation];

  [(TKTokenServer *)self cleanupInvalidTokenAccessRecords];
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  tokenServerListener = [(TKTokenServer *)obj tokenServerListener];
  [tokenServerListener invalidate];

  tokenServerListener = obj->_tokenServerListener;
  obj->_tokenServerListener = 0;

  [(NSCondition *)obj->_tokenRegistrySetCondition lock];
  if (!obj->_tokenRegistrySet)
  {
    obj->_tokenRegistrySet = 1;
    [(NSCondition *)obj->_tokenRegistrySetCondition broadcast];
  }

  [(NSCondition *)obj->_tokenRegistrySetCondition unlock];
  tokenRegistry = [(TKTokenServer *)obj tokenRegistry];
  driverCache = [tokenRegistry driverCache];
  [driverCache invalidate];

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