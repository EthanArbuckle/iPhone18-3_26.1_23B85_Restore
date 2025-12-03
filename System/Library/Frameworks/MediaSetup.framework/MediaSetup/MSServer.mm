@interface MSServer
- (BOOL)_isConnectionEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSServer)initWithMediator:(id)mediator;
- (void)_addConnection:(id)connection;
- (void)_initializeServer;
- (void)_removeConnection:(id)connection;
- (void)openConnection;
- (void)serviceSettingDidUpdate:(id)update homeUserID:(id)d;
- (void)userDidRemoveService:(id)service homeUserID:(id)d;
- (void)userDidUpdateDefaultService:(id)service homeUserID:(id)d;
@end

@implementation MSServer

- (MSServer)initWithMediator:(id)mediator
{
  v14 = *MEMORY[0x277D85DE8];
  mediatorCopy = mediator;
  v11.receiver = self;
  v11.super_class = MSServer;
  v6 = [(MSServer *)&v11 init];
  if (v6)
  {
    v7 = _MSLogingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[MSServer initWithMediator:]";
      _os_log_impl(&dword_23986C000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeStrong(&v6->_mediator, mediator);
    [(MSServerMediator *)v6->_mediator setConnectionDelegate:v6];
    v8 = +[MSServiceUpdatedHandler shared];
    [v8 setDelegate:v6];

    [(MSServer *)v6 _initializeServer];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_initializeServer
{
  v3 = objc_opt_new();
  connections = self->_connections;
  self->_connections = v3;

  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.mediasetupd.server"];
  serverListener = self->_serverListener;
  self->_serverListener = v5;

  [(NSXPCListener *)self->_serverListener setDelegate:self];
  v7 = self->_serverListener;

  [(NSXPCListener *)v7 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [(MSServer *)self _isConnectionEntitled:connectionCopy];
  v9 = v8;
  if (v8)
  {
    v57 = v8;
    v58 = listenerCopy;
    [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284C68FC0];
    v10 = v59 = self;
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    [v10 setClasses:v13 forSelector:sel_addMediaService_usingSetupBundles_completion_ argumentIndex:1 ofReply:0];

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v56 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [NSObject setClasses:v10 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v55 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    [NSObject setClasses:v10 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    [v10 setClasses:v25 forSelector:sel_getResolvedServiceInfo_sharedUserID_completion_ argumentIndex:0 ofReply:1];
    v54 = v25;
    [v10 setClasses:v25 forSelector:sel_getResolvedServiceInfo_completion_ argumentIndex:0 ofReply:1];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v26 setWithObjects:{v27, v28, v29, v30, objc_opt_class(), 0}];
    [v10 setClasses:v31 forSelector:sel_getServiceConfigurationInfo_serviceID_completion_ argumentIndex:0 ofReply:1];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    [v10 setClasses:v34 forSelector:sel_getServiceConfigurationInfo_serviceID_completion_ argumentIndex:0 ofReply:0];

    [v10 setClasses:v31 forSelector:sel_getDefaultMediaServiceForAllUsers_ argumentIndex:0 ofReply:1];
    [v10 setClass:objc_opt_class() forSelector:sel_getCachedServiceInfo_homeUserID_endpointID_completion_ argumentIndex:0 ofReply:1];
    [v10 setClass:objc_opt_class() forSelector:sel_getDefaultMediaService_homeUserID_completion_ argumentIndex:0 ofReply:1];
    [v10 setClass:objc_opt_class() forSelector:sel_requestAuthRenewalForMediaService_homeUserID_parentNetworkActivity_completion_ argumentIndex:0 ofReply:1];
    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    [v10 setClasses:v38 forSelector:sel_getPublicInfoForBundleID_completion_ argumentIndex:0 ofReply:1];

    v39 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v39 setWithObjects:{v40, v41, v42, v43, objc_opt_class(), 0}];
    [v10 setClasses:v44 forSelector:sel_activeServiceApplicationInformationForSharedUserID_completionHandler_ argumentIndex:0 ofReply:1];

    v45 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    [v10 setClasses:v47 forSelector:sel_getSupportedThirdPartyMediaServices_ argumentIndex:0 ofReply:1];

    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    [v10 setClasses:v50 forSelector:sel_getMediaServiceChoicesForSharedUser_completion_ argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v10];
    [connectionCopy setExportedObject:v59->_mediator];
    v51 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284C54538];
    [connectionCopy setRemoteObjectInterface:v51];

    objc_initWeak(location, connectionCopy);
    objc_initWeak(&from, v59);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __47__MSServer_listener_shouldAcceptNewConnection___block_invoke;
    v64[3] = &unk_278AA2C60;
    objc_copyWeak(&v65, &from);
    objc_copyWeak(&v66, location);
    [connectionCopy setInterruptionHandler:v64];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __47__MSServer_listener_shouldAcceptNewConnection___block_invoke_130;
    v61[3] = &unk_278AA2C60;
    objc_copyWeak(&v62, &from);
    objc_copyWeak(&v63, location);
    [connectionCopy setInvalidationHandler:v61];
    [connectionCopy resume];
    v52 = _MSLogingFacility();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23986C000, v52, OS_LOG_TYPE_DEFAULT, "Connection accepted", buf, 2u);
    }

    objc_destroyWeak(&v63);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&v65);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);

    listenerCopy = v58;
    v9 = v57;
  }

  else
  {
    v10 = _MSLogingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MSServer listener:v10 shouldAcceptNewConnection:?];
    }
  }

  return v9;
}

void __47__MSServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _MSLogingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23986C000, v2, OS_LOG_TYPE_DEFAULT, "MSD Server Connection interrupted", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeConnection:v4];
}

void __47__MSServer_listener_shouldAcceptNewConnection___block_invoke_130(uint64_t a1)
{
  v2 = _MSLogingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23986C000, v2, OS_LOG_TYPE_DEFAULT, "MSD Server Connection invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeConnection:v4];
}

- (void)openConnection
{
  v8 = *MEMORY[0x277D85DE8];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v4 = _MSLogingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = currentConnection;
    _os_log_impl(&dword_23986C000, v4, OS_LOG_TYPE_DEFAULT, "Registering client connection, %@", &v6, 0xCu);
  }

  [(MSServer *)self _addConnection:currentConnection];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)serviceSettingDidUpdate:(id)update homeUserID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dCopy = d;
  connections = [(MSServer *)self connections];
  objc_sync_enter(connections);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  connections2 = [(MSServer *)self connections];
  v10 = [connections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(connections2);
        }

        remoteObjectProxy = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [remoteObjectProxy serviceSettingDidUpdate:updateCopy homeUserID:dCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [connections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(connections);
  ICSiriPostDynamiteClientStateChangedNotification();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userDidRemoveService:(id)service homeUserID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  connections = [(MSServer *)self connections];
  objc_sync_enter(connections);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  connections2 = [(MSServer *)self connections];
  v10 = [connections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(connections2);
        }

        remoteObjectProxy = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [remoteObjectProxy userDidRemoveService:serviceCopy homeUserID:dCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [connections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(connections);
  ICSiriPostDynamiteClientStateChangedNotification();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userDidUpdateDefaultService:(id)service homeUserID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  connections = [(MSServer *)self connections];
  objc_sync_enter(connections);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  connections2 = [(MSServer *)self connections];
  v10 = [connections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(connections2);
        }

        remoteObjectProxy = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [remoteObjectProxy userDidUpdateDefaultService:serviceCopy homeUserID:dCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [connections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(connections);
  ICSiriPostDynamiteClientStateChangedNotification();

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isConnectionEntitled:(id)entitled
{
  entitledCopy = entitled;
  v4 = [entitledCopy valueForEntitlement:@"com.apple.mediasetupd.client"];
  bOOLValue = [v4 BOOLValue];

  v6 = [entitledCopy valueForEntitlement:@"com.apple.developer.mediasetup"];

  LOBYTE(entitledCopy) = [v6 BOOLValue];
  return (bOOLValue | entitledCopy) & 1;
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(MSServer *)self connections];
  objc_sync_enter(connections);
  connections2 = [(MSServer *)self connections];
  [connections2 addObject:connectionCopy];

  objc_sync_exit(connections);
}

- (void)_removeConnection:(id)connection
{
  v11 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connections = [(MSServer *)self connections];
  objc_sync_enter(connections);
  connections2 = [(MSServer *)self connections];
  [connections2 removeObject:connectionCopy];

  v7 = _MSLogingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&dword_23986C000, v7, OS_LOG_TYPE_DEFAULT, "Removed Connection: (%@)", &v9, 0xCu);
  }

  objc_sync_exit(connections);
  v8 = *MEMORY[0x277D85DE8];
}

@end