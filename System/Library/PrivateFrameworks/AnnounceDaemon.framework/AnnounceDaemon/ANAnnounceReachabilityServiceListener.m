@interface ANAnnounceReachabilityServiceListener
- (ANAnnounceReachabilityServiceListener)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_addConnection:(id)a3;
- (void)_removeConnection:(id)a3;
- (void)_sendCurrentReachabilityToConnection:(id)a3;
- (void)announceReachabilityForHomeName:(id)a3 reply:(id)a4;
- (void)announceReachabilityForHomeUUID:(id)a3 reply:(id)a4;
- (void)announceReachabilityForRoomName:(id)a3 inHomeName:(id)a4 reply:(id)a5;
- (void)announceReachabilityForRoomUUID:(id)a3 inHomeUUID:(id)a4 reply:(id)a5;
- (void)cleanForExit;
- (void)reachabilityLevel:(unint64_t)a3 didChangeForHome:(id)a4;
- (void)reachabilityLevel:(unint64_t)a3 didChangeForRoom:(id)a4 inHome:(id)a5;
- (void)resumeWithCompletionHandler:(id)a3;
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
  v2 = [(ANAnnounceReachabilityServiceListener *)self listener];
  [v2 invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
    v10 = [v7 serviceName];
    *buf = 138412802;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
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

  if (([v7 hasAnnounceEntitlement] & 1) == 0)
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
  [v7 setExportedInterface:v11];
  [v7 setExportedObject:self];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851E1D68];
  [v7 setRemoteObjectInterface:v12];

  [(ANAnnounceReachabilityServiceListener *)self _addConnection:v7];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v27[3] = &unk_278C865F0;
  objc_copyWeak(&v28, &from);
  objc_copyWeak(&v29, &location);
  [v7 setInterruptionHandler:v27];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke_71;
  v24 = &unk_278C865F0;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [v7 setInvalidationHandler:&v21];
  [v7 resume];
  v13 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = v7;
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

- (void)resumeWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ANAnnounceReachabilityServiceListener_resumeWithCompletionHandler___block_invoke;
  v9[3] = &unk_278C869B0;
  v7 = v4;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = v5;
  v10 = v8;
  [v6 startWithCompletionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__ANAnnounceReachabilityServiceListener_resumeWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendCurrentReachabilityToConnection:*(a1 + 32)];
}

- (void)announceReachabilityForHomeName:(id)a3 reply:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = +[ANHomeManager shared];
  v8 = [v7 homeWithName:v6];

  if (v8)
  {
    v9 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    v10[2](v10, [v9 reachabilityForHome:v8]);
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)announceReachabilityForRoomName:(id)a3 inHomeName:(id)a4 reply:(id)a5
{
  v15 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ANHomeManager shared];
  v11 = [v10 homeWithName:v8];

  v12 = [v11 hmu_roomWithName:v9];

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
    v15[2](v15, 0);
  }

  else
  {
    v14 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    v15[2](v15, [v14 reachabilityForRoom:v12 inHome:v11]);
  }
}

- (void)announceReachabilityForHomeUUID:(id)a3 reply:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = +[ANHomeManager shared];
  v8 = [v7 homeForID:v6];

  if (v8)
  {
    v9 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    v10[2](v10, [v9 reachabilityForHome:v8]);
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)announceReachabilityForRoomUUID:(id)a3 inHomeUUID:(id)a4 reply:(id)a5
{
  v15 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ANHomeManager shared];
  v11 = [v10 homeForID:v8];

  v12 = [v11 hmu_roomWithUniqueIdentifier:v9];

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
    v15[2](v15, 0);
  }

  else
  {
    v14 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    v15[2](v15, [v14 reachabilityForRoom:v12 inHome:v11]);
  }
}

- (void)_addConnection:(id)a3
{
  v9 = a3;
  v4 = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(v4);
  v5 = [(ANAnnounceReachabilityServiceListener *)self connections];
  [v5 addObject:v9];

  v6 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];

  if (!v6)
  {
    v7 = objc_opt_new();
    [(ANAnnounceReachabilityServiceListener *)self setReachabilityManager:v7];

    v8 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [v8 setDelegate:self];
  }

  objc_sync_exit(v4);
}

- (void)_removeConnection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(v5);
  v6 = [(ANAnnounceReachabilityServiceListener *)self connections];
  [v6 removeObject:v4];

  v7 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = &stru_2851BDB18;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Removed Connection: (%@)", &v14, 0x16u);
  }

  v8 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v9 = [v8 count] == 0;

  if (v9)
  {
    v10 = ANLogHandleAnnounceReachabilityServiceListener();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@All Reachability Connections Removed. Stopping Reachability Manager.", &v14, 0xCu);
    }

    v11 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [v11 stop];

    v12 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [v12 setDelegate:0];

    [(ANAnnounceReachabilityServiceListener *)self setReachabilityManager:0];
  }

  objc_sync_exit(v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendCurrentReachabilityToConnection:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v4 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
  v5 = [v4 monitoredHomes];

  v42 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v5;
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
        v9 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
        v10 = [v9 reachabilityForHome:v8];

        v11 = ANLogHandleAnnounceReachabilityServiceListener();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v8 name];
          v13 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v10];
          *buf = v39;
          v57 = &stru_2851BDB18;
          v58 = 2112;
          v59 = v12;
          v60 = 2112;
          v61 = v13;
          v62 = 2112;
          v63 = v47;
          _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Sending Current Home Reachability: Home = %@, Reachability = %@, Connection = %@", buf, 0x2Au);
        }

        v14 = [v47 remoteObjectProxy];
        v15 = [v8 name];
        [v14 reachabilityLevel:v10 didChangeForHomeName:v15];

        v16 = [v47 remoteObjectProxy];
        v17 = [v8 uniqueIdentifier];
        [v16 reachabilityLevel:v10 didChangeForHomeUUID:v17];

        v18 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
        v19 = [v18 monitoredRoomsForHome:v8];

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
              v24 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
              v25 = [v24 reachabilityForRoom:v23 inHome:v8];

              v26 = ANLogHandleAnnounceReachabilityServiceListener();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v8 name];
                [v23 name];
                v29 = v28 = self;
                v30 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v25];
                *buf = 138413314;
                v57 = &stru_2851BDB18;
                v58 = 2112;
                v59 = v27;
                v60 = 2112;
                v61 = v29;
                v62 = 2112;
                v63 = v30;
                v64 = 2112;
                v65 = v47;
                _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Sending Current Room Reachability: Home = %@, Room = %@, Reachability = %@, Connection = %@", buf, 0x34u);

                self = v28;
              }

              v31 = [v47 remoteObjectProxy];
              v32 = [v23 name];
              v33 = [v8 name];
              [v31 reachabilityLevel:v25 didChangeForRoomName:v32 inHomeName:v33];

              v34 = [v47 remoteObjectProxy];
              v35 = [v23 uniqueIdentifier];
              v36 = [v8 uniqueIdentifier];
              [v34 reachabilityLevel:v25 didChangeForRoomUUID:v35 inHomeUUID:v36];
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

- (void)reachabilityLevel:(unint64_t)a3 didChangeForHome:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 name];
    v9 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:a3];
    *buf = 138412802;
    v27 = &stru_2851BDB18;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Reachability Changed For [Home = %@]: %@", buf, 0x20u);
  }

  v10 = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(v10);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 remoteObjectProxy];
        v17 = [v6 name];
        [v16 reachabilityLevel:a3 didChangeForHomeName:v17];

        v18 = [v15 remoteObjectProxy];
        v19 = [v6 uniqueIdentifier];
        [v18 reachabilityLevel:a3 didChangeForHomeUUID:v19];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  objc_sync_exit(v10);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)reachabilityLevel:(unint64_t)a3 didChangeForRoom:(id)a4 inHome:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = ANLogHandleAnnounceReachabilityServiceListener();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 name];
    v12 = [v8 name];
    v13 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:a3];
    *buf = 138413058;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
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
  v14 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = *v29;
    v27 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v27);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v18 remoteObjectProxy];
        v20 = [v8 name];
        v21 = [v9 name];
        [v19 reachabilityLevel:a3 didChangeForRoomName:v20 inHomeName:v21];

        v22 = [v18 remoteObjectProxy];
        v23 = [v8 uniqueIdentifier];
        v24 = [v9 uniqueIdentifier];
        [v22 reachabilityLevel:a3 didChangeForRoomUUID:v23 inHomeUUID:v24];
      }

      v14 = v27;
      v15 = [v27 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
  v25 = *MEMORY[0x277D85DE8];
}

@end