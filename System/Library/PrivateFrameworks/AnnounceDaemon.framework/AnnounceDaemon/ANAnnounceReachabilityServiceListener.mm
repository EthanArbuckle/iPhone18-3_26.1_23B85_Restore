@interface ANAnnounceReachabilityServiceListener
- (ANAnnounceReachabilityServiceListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)_sendCurrentReachabilityToConnection:(id)connection;
- (void)announceReachabilityForHomeName:(id)name reply:(id)reply;
- (void)announceReachabilityForHomeUUID:(id)d reply:(id)reply;
- (void)announceReachabilityForRoomName:(id)name inHomeName:(id)homeName reply:(id)reply;
- (void)announceReachabilityForRoomUUID:(id)d inHomeUUID:(id)iD reply:(id)reply;
- (void)cleanForExit;
- (void)reachabilityLevel:(unint64_t)level didChangeForHome:(id)home;
- (void)reachabilityLevel:(unint64_t)level didChangeForRoom:(id)room inHome:(id)home;
- (void)resumeWithCompletionHandler:(id)handler;
@end

@implementation ANAnnounceReachabilityServiceListener

- (ANAnnounceReachabilityServiceListener)init
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = ANAnnounceReachabilityServiceListener;
  v2 = [(ANAnnounceReachabilityServiceListener *)&v11 init];
  if (v2)
  {
    if ([MEMORY[0x277CEAB38] isAnnounceEnabled])
    {
      v3 = objc_opt_new();
      connections = v2->_connections;
      v2->_connections = v3;
    }

    v5 = objc_alloc(MEMORY[0x277CCAE98]);
    v6 = [v5 initWithMachServiceName:*MEMORY[0x277CEAA40]];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v8 = ANLogHandleAnnounceReachabilityServiceListener();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Announce Reachability Service Listener Up!", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)cleanForExit
{
  listener = [(ANAnnounceReachabilityServiceListener *)self listener];
  [listener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v38 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  if (([MEMORY[0x277CEAB38] isAnnounceEnabled] & 1) == 0)
  {
    v11 = ANLogHandleAnnounceReachabilityServiceListener();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = &stru_2851BDB18;
      v15 = "%@Rejecting connection. Announce not enabled.";
      v16 = v11;
      v17 = 12;
LABEL_12:
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (([connectionCopy hasAnnounceEntitlement] & 1) == 0)
  {
    v11 = ANLogHandleAnnounceReachabilityServiceListener();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v33 = &stru_2851BDB18;
      v34 = 2112;
      v35 = v18;
      v15 = "%@Missing Announce Entitlement: %@";
      v16 = v11;
      v17 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851C8D28];
  [connectionCopy setExportedInterface:v11];
  [connectionCopy setExportedObject:self];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851E1D68];
  [connectionCopy setRemoteObjectInterface:v12];

  [(ANAnnounceReachabilityServiceListener *)self _addConnection:connectionCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v27[3] = &unk_278C865F0;
  objc_copyWeak(&v28, &from);
  objc_copyWeak(&v29, &location);
  [connectionCopy setInterruptionHandler:v27];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke_71;
  v24 = &unk_278C865F0;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [connectionCopy setInvalidationHandler:&v21];
  [connectionCopy resume];
  v13 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = connectionCopy;
    _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  v14 = 1;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

void __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 138412546;
    v8 = &stru_2851BDB18;
    v9 = 2112;
    v10 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Interrupted: (%@)", &v7, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 _removeConnection:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke_71(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 138412546;
    v8 = &stru_2851BDB18;
    v9 = 2112;
    v10 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Invalidated: (%@)", &v7, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 _removeConnection:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resumeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ANAnnounceReachabilityServiceListener_resumeWithCompletionHandler___block_invoke;
  v9[3] = &unk_278C869B0;
  v7 = handlerCopy;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = currentConnection;
  v10 = v8;
  [reachabilityManager startWithCompletionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__ANAnnounceReachabilityServiceListener_resumeWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendCurrentReachabilityToConnection:*(a1 + 32)];
}

- (void)announceReachabilityForHomeName:(id)name reply:(id)reply
{
  replyCopy = reply;
  nameCopy = name;
  v7 = +[ANHomeManager shared];
  v8 = [v7 homeWithName:nameCopy];

  if (v8)
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForHome:v8]);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)announceReachabilityForRoomName:(id)name inHomeName:(id)homeName reply:(id)reply
{
  replyCopy = reply;
  homeNameCopy = homeName;
  nameCopy = name;
  v10 = +[ANHomeManager shared];
  v11 = [v10 homeWithName:homeNameCopy];

  v12 = [v11 hmu_roomWithName:nameCopy];

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForRoom:v12 inHome:v11]);
  }
}

- (void)announceReachabilityForHomeUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v7 = +[ANHomeManager shared];
  v8 = [v7 homeForID:dCopy];

  if (v8)
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForHome:v8]);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)announceReachabilityForRoomUUID:(id)d inHomeUUID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  iDCopy = iD;
  dCopy = d;
  v10 = +[ANHomeManager shared];
  v11 = [v10 homeForID:iDCopy];

  v12 = [v11 hmu_roomWithUniqueIdentifier:dCopy];

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForRoom:v12 inHome:v11]);
  }
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(connections);
  connections2 = [(ANAnnounceReachabilityServiceListener *)self connections];
  [connections2 addObject:connectionCopy];

  reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];

  if (!reachabilityManager)
  {
    v7 = objc_opt_new();
    [(ANAnnounceReachabilityServiceListener *)self setReachabilityManager:v7];

    reachabilityManager2 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [reachabilityManager2 setDelegate:self];
  }

  objc_sync_exit(connections);
}

- (void)_removeConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(connections);
  connections2 = [(ANAnnounceReachabilityServiceListener *)self connections];
  [connections2 removeObject:connectionCopy];

  v7 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = &stru_2851BDB18;
    v16 = 2112;
    v17 = connectionCopy;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Removed Connection: (%@)", &v14, 0x16u);
  }

  connections3 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v9 = [connections3 count] == 0;

  if (v9)
  {
    v10 = ANLogHandleAnnounceReachabilityServiceListener();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@All Reachability Connections Removed. Stopping Reachability Manager.", &v14, 0xCu);
    }

    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [reachabilityManager stop];

    reachabilityManager2 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [reachabilityManager2 setDelegate:0];

    [(ANAnnounceReachabilityServiceListener *)self setReachabilityManager:0];
  }

  objc_sync_exit(connections);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendCurrentReachabilityToConnection:(id)connection
{
  v68 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
  monitoredHomes = [reachabilityManager monitoredHomes];

  v42 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = monitoredHomes;
  v43 = [obj countByEnumeratingWithState:&v52 objects:v67 count:16];
  if (v43)
  {
    v41 = *v53;
    *&v6 = 138413058;
    v39 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v7;
        v8 = *(*(&v52 + 1) + 8 * v7);
        reachabilityManager2 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
        v10 = [reachabilityManager2 reachabilityForHome:v8];

        v11 = ANLogHandleAnnounceReachabilityServiceListener();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          name = [v8 name];
          v13 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v10];
          *buf = v39;
          v57 = &stru_2851BDB18;
          v58 = 2112;
          v59 = name;
          v60 = 2112;
          v61 = v13;
          v62 = 2112;
          v63 = connectionCopy;
          _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Sending Current Home Reachability: Home = %@, Reachability = %@, Connection = %@", buf, 0x2Au);
        }

        remoteObjectProxy = [connectionCopy remoteObjectProxy];
        name2 = [v8 name];
        [remoteObjectProxy reachabilityLevel:v10 didChangeForHomeName:name2];

        remoteObjectProxy2 = [connectionCopy remoteObjectProxy];
        uniqueIdentifier = [v8 uniqueIdentifier];
        [remoteObjectProxy2 reachabilityLevel:v10 didChangeForHomeUUID:uniqueIdentifier];

        reachabilityManager3 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
        v19 = [reachabilityManager3 monitoredRoomsForHome:v8];

        [v42 append:{objc_msgSend(v19, "count")}];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v45 = v19;
        v20 = [v45 countByEnumeratingWithState:&v48 objects:v66 count:16];
        if (v20)
        {
          v21 = v20;
          v46 = *v49;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v49 != v46)
              {
                objc_enumerationMutation(v45);
              }

              v23 = *(*(&v48 + 1) + 8 * i);
              reachabilityManager4 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
              v25 = [reachabilityManager4 reachabilityForRoom:v23 inHome:v8];

              v26 = ANLogHandleAnnounceReachabilityServiceListener();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                name3 = [v8 name];
                [v23 name];
                v29 = v28 = self;
                v30 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v25];
                *buf = 138413314;
                v57 = &stru_2851BDB18;
                v58 = 2112;
                v59 = name3;
                v60 = 2112;
                v61 = v29;
                v62 = 2112;
                v63 = v30;
                v64 = 2112;
                v65 = connectionCopy;
                _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Sending Current Room Reachability: Home = %@, Room = %@, Reachability = %@, Connection = %@", buf, 0x34u);

                self = v28;
              }

              remoteObjectProxy3 = [connectionCopy remoteObjectProxy];
              name4 = [v23 name];
              name5 = [v8 name];
              [remoteObjectProxy3 reachabilityLevel:v25 didChangeForRoomName:name4 inHomeName:name5];

              remoteObjectProxy4 = [connectionCopy remoteObjectProxy];
              uniqueIdentifier2 = [v23 uniqueIdentifier];
              uniqueIdentifier3 = [v8 uniqueIdentifier];
              [remoteObjectProxy4 reachabilityLevel:v25 didChangeForRoomUUID:uniqueIdentifier2 inHomeUUID:uniqueIdentifier3];
            }

            v21 = [v45 countByEnumeratingWithState:&v48 objects:v66 count:16];
          }

          while (v21);
        }

        v7 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v52 objects:v67 count:16];
    }

    while (v43);
  }

  v37 = +[ANAnalytics shared];
  [v37 recordReachableHomes:v42];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForHome:(id)home
{
  v32 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    v9 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:level];
    *buf = 138412802;
    v27 = &stru_2851BDB18;
    v28 = 2112;
    v29 = name;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Reachability Changed For [Home = %@]: %@", buf, 0x20u);
  }

  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(connections);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  connections2 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v12 = [connections2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(connections2);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        remoteObjectProxy = [v15 remoteObjectProxy];
        name2 = [homeCopy name];
        [remoteObjectProxy reachabilityLevel:level didChangeForHomeName:name2];

        remoteObjectProxy2 = [v15 remoteObjectProxy];
        uniqueIdentifier = [homeCopy uniqueIdentifier];
        [remoteObjectProxy2 reachabilityLevel:level didChangeForHomeUUID:uniqueIdentifier];
      }

      v12 = [connections2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  objc_sync_exit(connections);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForRoom:(id)room inHome:(id)home
{
  v41 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  homeCopy = home;
  v10 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    name2 = [roomCopy name];
    v13 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:level];
    *buf = 138413058;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = name;
    v37 = 2112;
    v38 = name2;
    v39 = 2112;
    v40 = v13;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Reachability Changed For [Home = %@, Room = %@]: %@", buf, 0x2Au);
  }

  obj = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(obj);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  v15 = [connections countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = *v29;
    v27 = connections;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v27);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        remoteObjectProxy = [v18 remoteObjectProxy];
        name3 = [roomCopy name];
        name4 = [homeCopy name];
        [remoteObjectProxy reachabilityLevel:level didChangeForRoomName:name3 inHomeName:name4];

        remoteObjectProxy2 = [v18 remoteObjectProxy];
        uniqueIdentifier = [roomCopy uniqueIdentifier];
        uniqueIdentifier2 = [homeCopy uniqueIdentifier];
        [remoteObjectProxy2 reachabilityLevel:level didChangeForRoomUUID:uniqueIdentifier inHomeUUID:uniqueIdentifier2];
      }

      connections = v27;
      v15 = [v27 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
  v25 = *MEMORY[0x277D85DE8];
}

@end