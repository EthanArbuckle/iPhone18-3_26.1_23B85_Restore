@interface MCNearbyServiceBrowser
- (MCNearbyServiceBrowser)init;
- (MCNearbyServiceBrowser)initWithPeer:(MCPeerID *)myPeerID serviceType:(NSString *)serviceType;
- (NSString)description;
- (id)rebuildUserDiscoveryInfoFromTXTRecordDictionary:(id)dictionary;
- (int64_t)syncNextOutgoingInviteID;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)applicationWillEnterForegroundNotification:(id)notification;
- (void)dealloc;
- (void)invitePeer:(MCPeerID *)peerID toSession:(MCSession *)session withContext:(NSData *)context timeout:(NSTimeInterval)timeout;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceBrowser:(id)browser didFindDomain:(id)domain moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowserDidStopSearch:(id)search;
- (void)netServiceBrowserWillSearch:(id)search;
- (void)parseIDString:(id *)string displayName:(id *)name fromIdentifier:(id)identifier;
- (void)startBrowsingForPeers;
- (void)stopBrowsingForPeers;
- (void)syncAttachConnection:(id)connection toPeer:(id)peer;
- (void)syncCloseConnectionForPeer:(id)peer;
- (void)syncHandleDeclinedInviteWithInfo:(id)info;
- (void)syncHandleInviteResponse:(id)response fromPeer:(id)peer;
- (void)syncHandleInviteTimeout:(id)timeout forPeer:(id)peer;
- (void)syncInitiateConnectionToPeer:(id)peer;
- (void)syncInvitePeer:(id)peer toSession:(id)session withContext:(id)context timeout:(double)timeout;
- (void)syncReceivedData:(id)data fromPeer:(id)peer;
- (void)syncSendData:(id)data toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)syncSendDictionary:(id)dictionary toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)syncStartBrowsingForPeers;
- (void)syncStopBrowsingForPeers;
@end

@implementation MCNearbyServiceBrowser

- (MCNearbyServiceBrowser)init
{
  v3.receiver = self;
  v3.super_class = MCNearbyServiceBrowser;
  [(MCNearbyServiceBrowser *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCNearbyServiceBrowser)initWithPeer:(MCPeerID *)myPeerID serviceType:(NSString *)serviceType
{
  v17.receiver = self;
  v17.super_class = MCNearbyServiceBrowser;
  v6 = [(MCNearbyServiceBrowser *)&v17 init];
  if (v6)
  {
    v6->_peers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_invites = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_netServices = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!myPeerID)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE660];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      [v7 raise:v8 format:{@"A nil %@ object passed to %@", v10, NSStringFromClass(v11)}];
    }

    v6->_myPeerID = [(MCPeerID *)myPeerID copy];
    if (![MCNearbyServiceUtils isServiceTypeValid:serviceType])
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = *MEMORY[0x277CBE660];
      v14 = objc_opt_class();
      [v12 raise:v13 format:{@"Invalid serviceType passed to %@", NSStringFromClass(v14)}];
    }

    v6->_serviceType = [(NSString *)serviceType copy];
    v6->_formattedServiceType = [+[MCNearbyServiceUtils formattedServiceType:](MCNearbyServiceUtils formattedServiceType:{serviceType), "copy"}];
    v6->_syncQueue = dispatch_queue_create("com.apple.MCNearbyServiceBrowser.syncQueue", 0);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v6 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
    [defaultCenter addObserver:v6 selector:sel_applicationWillTerminateNotification_ name:*MEMORY[0x277D76770] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] allValues];
  v4 = [allValues countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = mcbrowser_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          name = [v9 name];
          *buf = v15;
          v22 = name;
          _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Removing netservice [%@] from net services dictionary.", buf, 0xCu);
        }

        [v9 stopMonitoring];
        [v9 setDelegate:0];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  [(NSNetServiceBrowser *)self->_networkBrowser setDelegate:0];
  [(NSNetServiceBrowser *)self->_networkBrowser stop];
  networkBrowser = self->_networkBrowser;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(NSNetServiceBrowser *)networkBrowser removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_syncQueue);
  v16.receiver = self;
  v16.super_class = MCNearbyServiceBrowser;
  [(MCNearbyServiceBrowser *)&v16 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  myPeerID = [(MCNearbyServiceBrowser *)self myPeerID];
  serviceType = [(MCNearbyServiceBrowser *)self serviceType];
  [(MCNearbyServiceBrowser *)self delegate];
  v8 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p MyPeerID = %@ ServiceType = %@ Delegate = <%@: %p>>", v5, self, myPeerID, serviceType, NSStringFromClass(v8), -[MCNearbyServiceBrowser delegate](self, "delegate")];
}

- (int64_t)syncNextOutgoingInviteID
{
  outgoingInviteID = self->_outgoingInviteID;
  self->_outgoingInviteID = outgoingInviteID + 1;
  return outgoingInviteID;
}

- (void)parseIDString:(id *)string displayName:(id *)name fromIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCAC80] scannerWithString:identifier];
  if ([v8 scanUpToString:@"+" intoString:string])
  {
    if ([v8 scanString:@"+" intoString:0])
    {
      if ([v8 scanUpToString:@"+" intoString:name])
      {
        goto LABEL_9;
      }

      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = mcbrowser_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    identifierCopy = identifier;
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Identifier [%@] failed to parse @%d.", &v12, 0x12u);
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncStartBrowsingForPeers
{
  v47 = *MEMORY[0x277D85DE8];
  if (![(MCNearbyServiceBrowser *)self isBrowsing])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    allValues = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self invites] allValues];
    v4 = [allValues countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v39;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [(MCNearbyServiceBrowser *)self syncHandleDeclinedInviteWithInfo:*(*(&v38 + 1) + 8 * i)];
        }

        v5 = [allValues countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_invites removeAllObjects];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_peers allValues];
    v9 = [allValues2 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(allValues2);
          }

          v13 = *(*(&v34 + 1) + 8 * j);
          [objc_msgSend(v13 "netService")];
          [objc_msgSend(v13 "netService")];
          [v13 setNetService:0];
          [v13 invalidate];
        }

        v10 = [allValues2 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v10);
    }

    [(NSMutableDictionary *)self->_peers removeAllObjects];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allValues3 = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] allValues];
    v15 = [allValues3 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v31;
      *&v16 = 138412290;
      v29 = v16;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(allValues3);
          }

          v20 = *(*(&v30 + 1) + 8 * k);
          v21 = mcbrowser_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            name = [v20 name];
            *buf = v29;
            v43 = name;
            _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Removing netservice [%@] from net services dictionary.", buf, 0xCu);
          }

          [v20 stopMonitoring];
          [v20 setDelegate:0];
        }

        v17 = [allValues3 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v17);
    }

    [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] removeAllObjects];
    if (![(MCNearbyServiceBrowser *)self networkBrowser])
    {
      v23 = objc_alloc_init(MEMORY[0x277CBAB68]);
      if (![(MCNearbyServiceBrowser *)self isAWDLDisabled])
      {
        [v23 setIncludesPeerToPeer:1];
      }

      [(MCNearbyServiceBrowser *)self setNetworkBrowser:v23];
    }

    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] setDelegate:self];
    networkBrowser = [(MCNearbyServiceBrowser *)self networkBrowser];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(NSNetServiceBrowser *)networkBrowser scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] searchForServicesOfType:[(MCNearbyServiceBrowser *)self formattedServiceType] inDomain:@"local."];
    [(MCNearbyServiceBrowser *)self setIsBrowsing:1];
    v26 = mcbrowser_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      formattedServiceType = [(MCNearbyServiceBrowser *)self formattedServiceType];
      *buf = 138412290;
      v43 = formattedServiceType;
      _os_log_impl(&dword_239FB7000, v26, OS_LOG_TYPE_DEFAULT, "Start discovering services of type [%@].", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)startBrowsingForPeers
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MCNearbyServiceBrowser_startBrowsingForPeers__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)syncStopBrowsingForPeers
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(MCNearbyServiceBrowser *)self isBrowsing])
  {
    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] setDelegate:0];
    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] stop];
    networkBrowser = [(MCNearbyServiceBrowser *)self networkBrowser];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(NSNetServiceBrowser *)networkBrowser removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
    [(MCNearbyServiceBrowser *)self setIsBrowsing:0];
    v5 = mcbrowser_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      formattedServiceType = [(MCNearbyServiceBrowser *)self formattedServiceType];
      _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Stop discovering services of type [%@].", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopBrowsingForPeers
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MCNearbyServiceBrowser_stopBrowsingForPeers__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCNearbyServiceBrowser_applicationDidEnterBackgroundNotification___block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __68__MCNearbyServiceBrowser_applicationDidEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isBrowsing];
  if (result)
  {
    [*(a1 + 32) setWasBrowsing:1];
    v3 = *(a1 + 32);

    return [v3 syncStopBrowsingForPeers];
  }

  return result;
}

- (void)applicationWillEnterForegroundNotification:(id)notification
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MCNearbyServiceBrowser_applicationWillEnterForegroundNotification___block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __69__MCNearbyServiceBrowser_applicationWillEnterForegroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wasBrowsing];
  if (result)
  {
    [*(a1 + 32) setWasBrowsing:0];
    v3 = *(a1 + 32);

    return [v3 syncStartBrowsingForPeers];
  }

  return result;
}

- (void)syncInitiateConnectionToPeer:(id)peer
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@", -[MCPeerID idString](-[MCNearbyServiceBrowser myPeerID](self, "myPeerID"), "idString"), -[MCPeerID displayName](-[MCNearbyServiceBrowser myPeerID](self, "myPeerID"), "displayName")];
  v6 = [[MCNearbyDiscoveryPeerConnection alloc] initWithLocalServiceName:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke;
  v7[3] = &unk_278B44738;
  v7[4] = peer;
  v7[5] = self;
  v7[6] = v5;
  v7[7] = v6;
  [(MCNearbyDiscoveryPeerConnection *)v6 setConnectedHandler:v7];
  -[MCNearbyDiscoveryPeerConnection connectToNetService:](v6, "connectToNetService:", [peer netService]);
  [peer setTrialConnection:v6];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = mcbrowser_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = a2;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "PeerConnection connectedHandler (browser side), remote identifier [%@].", buf, 0xCu);
  }

  v11 = [a4 copy];
  if (a5)
  {
    v12 = mcbrowser_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_1(a1, a5);
    }

    v13 = *(*(a1 + 40) + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_37;
    block[3] = &unk_278B43DF0;
    block[4] = *(a1 + 32);
    dispatch_async(v13, block);
LABEL_7:
    if (v11)
    {
      v11[2](v11, 0);
    }

    goto LABEL_25;
  }

  v34 = 0;
  v35 = 0;
  [*(a1 + 40) parseIDString:&v35 displayName:&v34 fromIdentifier:a2];
  if (v35 && v34)
  {
    v14 = [MCPeerID alloc];
    if (!-[MCPeerID isEqual:](-[MCPeerID initWithIDString:displayName:](v14, "initWithIDString:displayName:", v35, v34), "isEqual:", [*(a1 + 32) peerID]))
    {
      v25 = mcbrowser_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_3(a1, (a1 + 32));
      }

      goto LABEL_7;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_38;
    v32[3] = &unk_278B446C0;
    v33 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v15 = mcbrowser_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      if (a3)
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      v18 = *(a1 + 56);
      v19 = [v16 stringForState:{objc_msgSend(*(a1 + 32), "state")}];
      *buf = 138413058;
      v38 = v16;
      v39 = 2080;
      v40 = v17;
      v41 = 2048;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "ConnectionHandler [%@] (browser side) shouldForceConnect [%s]; peer.connection [%p] state [%@].", buf, 0x2Au);
    }

    if (a3)
    {
      [*(a1 + 56) setReceiveDataHandler:v32];
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(v21 + 80);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_44;
      v31[3] = &unk_278B43C88;
      v23 = *(a1 + 56);
      v31[4] = v21;
      v31[5] = v23;
      v31[6] = v20;
      dispatch_async(v22, v31);
      if (v11)
      {
        v11[2](v11, 1);
      }
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = *(v26 + 80);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2_45;
      v30[3] = &unk_278B44710;
      v28 = *(a1 + 56);
      v30[4] = *(a1 + 32);
      v30[5] = v28;
      v30[6] = v26;
      v30[7] = v32;
      v30[8] = v11;
      dispatch_async(v27, v30);
    }
  }

  else
  {
    v24 = mcbrowser_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63_cold_1();
    }
  }

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_37(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "trialConnection")];
  v2 = *(a1 + 32);

  return [v2 setTrialConnection:0];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_38(int8x16_t *a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a1[2].i64[0];
    v5 = *(v4 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2;
    v20[3] = &unk_278B43C88;
    v20[4] = a1[2].i64[1];
    v20[5] = a3;
    v20[6] = v4;
    v6 = v20;
  }

  else
  {
    if (!a2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v8 = vextq_s8(a1[2], a1[2], 8uLL);
      v9 = a1[2].i64[0];
      block[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_39;
      block[3] = &unk_278B43C60;
      v10 = *(v9 + 80);
      v19 = v8;
      dispatch_async(v10, block);
    }

    v11 = mcbrowser_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[2].i64[1];
      v13 = [a2 length];
      *buf = 138412546;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Peer [%@] passing data (length=%u) to the app.", buf, 0x12u);
    }

    v15 = a1[2].i64[0];
    v14 = a1[2].i64[1];
    v5 = *(v15 + 80);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_40;
    v17[3] = &unk_278B43C88;
    v17[4] = v15;
    v17[5] = a2;
    v17[6] = v14;
    v6 = v17;
  }

  dispatch_async(v5, v6);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = mcbrowser_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) localizedDescription];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Peer [%@] data received with error %@.", &v7, 0x16u);
  }

  result = [*(a1 + 48) syncCloseConnectionForPeer:*(a1 + 32)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_39(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = mcbrowser_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Peer [%@] connection closed.", &v6, 0xCu);
  }

  result = [*(a1 + 40) syncCloseConnectionForPeer:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2_45(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if (v2 == 2)
  {
    v3 = mcbrowser_log();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 32);
    v11 = 138412290;
    v12 = v6;
    v5 = "Peer [%@] (browser side) decision == NO.";
  }

  else
  {
    [*(a1 + 40) setReceiveDataHandler:*(a1 + 56)];
    [*(a1 + 48) syncAttachConnection:*(a1 + 40) toPeer:*(a1 + 32)];
    v3 = mcbrowser_log();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v4 = *(a1 + 32);
    v11 = 138412290;
    v12 = v4;
    v5 = "Peer [%@] (browser side) connected successfully.";
  }

  _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, v5, &v11, 0xCu);
LABEL_7:
  v7 = mcbrowser_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412546;
    v12 = v8;
    v13 = 1024;
    v14 = v2 != 2;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Peer [%@] (browser side) about to return decision == %d.", &v11, 0x12u);
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))(result, v2 != 2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)syncAttachConnection:(id)connection toPeer:(id)peer
{
  [peer attachConnection:connection];
  [peer setState:2];

  [peer flushDataBuffer];
}

- (void)syncCloseConnectionForPeer:(id)peer
{
  v8 = *MEMORY[0x277D85DE8];
  [peer closeConnection];
  v4 = mcbrowser_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = [objc_msgSend(peer "peerID")];
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Setting peer [%@] state to Not Connected.", &v6, 0xCu);
  }

  [peer setState:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncSendDictionary:(id)dictionary toPeer:(id)peer withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v8 = [handler copy];
  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v13];
  if (v9)
  {
    v10 = v9;
    v11 = mcbrowser_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      dictionaryCopy = dictionary;
      v16 = 2112;
      peerCopy = peer;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Sending dictionary %@ to peer %@.", buf, 0x16u);
    }

    [(MCNearbyServiceBrowser *)self syncSendData:v10 toPeer:peer withCompletionHandler:v8];
  }

  else if (v8)
  {
    v8[2](v8, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncInvitePeer:(id)peer toSession:(id)session withContext:(id)context timeout:(double)timeout
{
  v30[5] = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MCNearbyServiceBrowser syncNextOutgoingInviteID](self, "syncNextOutgoingInviteID")}];
  v12 = [objc_msgSend(peer "peerID")];
  serializedRepresentation = [(MCPeerID *)[(MCNearbyServiceBrowser *)self myPeerID] serializedRepresentation];
  if (context)
  {
    v29[0] = @"MCNearbyServiceMessageIDKey";
    v30[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v30[1] = serializedRepresentation;
    v29[1] = @"MCNearbyServiceSenderPeerIDKey";
    v29[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v30[2] = v12;
    v30[3] = v11;
    v29[3] = @"MCNearbyServiceInviteIDKey";
    v29[4] = @"MCNearbyServiceInviteContextKey";
    v30[4] = context;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v30;
    v16 = v29;
    v17 = 5;
  }

  else
  {
    v27[0] = @"MCNearbyServiceMessageIDKey";
    v28[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v28[1] = serializedRepresentation;
    v27[1] = @"MCNearbyServiceSenderPeerIDKey";
    v27[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v27[3] = @"MCNearbyServiceInviteIDKey";
    v28[2] = v12;
    v28[3] = v11;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v28;
    v16 = v27;
    v17 = 4;
  }

  v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v25[0] = @"MCNearbyServiceRecipientPeerIDKey";
  v25[1] = @"MCNearbyServiceSessionKey";
  v26[0] = [peer peerID];
  v26[1] = session;
  -[NSMutableDictionary setObject:forKey:](self->_invites, "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2], v11);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__MCNearbyServiceBrowser_syncInvitePeer_toSession_withContext_timeout___block_invoke;
  v24[3] = &unk_278B44620;
  v24[4] = v18;
  v24[5] = peer;
  [(MCNearbyServiceBrowser *)self syncSendDictionary:v18 toPeer:peer withCompletionHandler:v24];
  v19 = timeout * 1000000000.0;
  if (timeout <= 0.0)
  {
    v19 = 3.0e10;
  }

  v20 = dispatch_time(0, v19);
  syncQueue = self->_syncQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__MCNearbyServiceBrowser_syncInvitePeer_toSession_withContext_timeout___block_invoke_51;
  v23[3] = &unk_278B43C88;
  v23[4] = self;
  v23[5] = v18;
  v23[6] = peer;
  dispatch_after(v20, syncQueue, v23);
  v22 = *MEMORY[0x277D85DE8];
}

void __71__MCNearbyServiceBrowser_syncInvitePeer_toSession_withContext_timeout___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = mcbrowser_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53_cold_1(a1);
    }
  }
}

- (void)syncHandleInviteResponse:(id)response fromPeer:(id)peer
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(response objectForKey:{@"MCNearbyServiceAcceptInviteKey", "BOOLValue"}];
  v8 = mcbrowser_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    responseCopy = response;
    v29 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Got invite response [%@] from peer [%@].", buf, 0x16u);
  }

  v9 = [response objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
  v10 = [[MCPeerID alloc] initWithSerializedRepresentation:v9];
  if ([(MCPeerID *)[(MCNearbyServiceBrowser *)self myPeerID] isEqual:v10])
  {
    v11 = [response objectForKey:@"MCNearbyServiceSenderPeerIDKey"];
    v12 = [[MCPeerID alloc] initWithSerializedRepresentation:v11];
    if ([objc_msgSend(peer "peerID")])
    {
      v25 = v7;
      p_invites = &self->_invites;
      v24 = [response objectForKey:@"MCNearbyServiceInviteIDKey"];
      v14 = [(NSMutableDictionary *)self->_invites objectForKey:?];
      v15 = [v14 objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
      v16 = [v14 objectForKey:@"MCNearbyServiceSessionKey"];
      if ([(MCPeerID *)v12 isEqual:v15])
      {
        if (v16)
        {
          peerID = [peer peerID];
          if (v25)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke;
            v26[3] = &unk_278B44788;
            v26[4] = v9;
            v26[5] = v11;
            v18 = v24;
            v26[6] = v24;
            v26[7] = self;
            v26[8] = peer;
            v26[9] = response;
            v26[10] = v12;
            v26[11] = v16;
            [v16 nearbyConnectionDataForPeer:peerID withCompletionHandler:v26];
          }

          else
          {
            [v16 peerDidDeclineInvitation:peerID];
            [(MCNearbyServiceBrowser *)self syncCloseConnectionForPeer:peer];
            v18 = v24;
          }

          [(NSMutableDictionary *)*p_invites removeObjectForKey:v18];
        }

        else
        {
          v22 = mcbrowser_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(MCNearbyServiceBrowser *)peer syncHandleInviteResponse:v22 fromPeer:?];
          }
        }
      }

      else
      {
        v21 = mcbrowser_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyServiceBrowser syncHandleInviteResponse:v12 fromPeer:?];
        }
      }
    }

    else
    {
      v20 = mcbrowser_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyServiceBrowser syncHandleInviteResponse:peer fromPeer:v12];
      }
    }
  }

  else
  {
    v19 = mcbrowser_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceBrowser syncHandleInviteResponse:v10 fromPeer:?];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v13[0] = @"MCNearbyServiceMessageIDKey";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    v13[1] = @"MCNearbyServiceSenderPeerIDKey";
    v13[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v15 = *(a1 + 32);
    v13[3] = @"MCNearbyServiceInviteIDKey";
    v13[4] = @"MCNearbyServiceConnectionDataKey";
    v16 = *(a1 + 48);
    v17 = a2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:v13 count:5];
    v5 = *(a1 + 56);
    v6 = *(v5 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_52;
    block[3] = &unk_278B44698;
    block[4] = v5;
    block[5] = v4;
    v7 = *(a1 + 80);
    v11 = *(a1 + 64);
    v12 = v7;
    dispatch_async(v6, block);
  }

  else
  {
    v8 = mcbrowser_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_cold_1();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_52(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2;
  v8 = &unk_278B44760;
  v9 = *(a1 + 56);
  return [v2 syncSendDictionary:v1 toPeer:MEMORY[0x277D85DD0] withCompletionHandler:{3221225472, __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2, &unk_278B44760, v9, *(a1 + 72), v3}];
}

void __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = mcbrowser_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v4 = [*(a1 + 32) objectForKey:@"MCNearbyServiceConnectionDataKey"];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) peerID];

    [v5 connectPeer:v6 withNearbyConnectionData:v4];
  }
}

- (void)syncHandleDeclinedInviteWithInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  if (info)
  {
    v5 = [info objectForKey:@"MCNearbyServiceSessionKey"];
    v6 = [info objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
    v7 = mcbrowser_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Handle declined invitation from peer with peerID [%@].", buf, 0xCu);
    }

    [v5 peerDidDeclineInvitation:v6];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self peers] allValues];
    v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if ([objc_msgSend(v13 "peerID")])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v13 = 0;
    }

    if (v6)
    {
      [(MCNearbyServiceBrowser *)self syncCloseConnectionForPeer:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInviteTimeout:(id)timeout forPeer:(id)peer
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [timeout objectForKey:@"MCNearbyServiceInviteIDKey"];
  v7 = mcbrowser_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Invite timeout for peer [%@] fired.", &v10, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_invites objectForKey:v6];
  if (v8)
  {
    [(MCNearbyServiceBrowser *)self syncHandleDeclinedInviteWithInfo:v8];
    [(NSMutableDictionary *)self->_invites removeObjectForKey:v6];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncSendData:(id)data toPeer:(id)peer withCompletionHandler:(id)handler
{
  if (![peer state])
  {
    [(MCNearbyServiceBrowser *)self syncInitiateConnectionToPeer:peer];
  }

  [peer sendData:data withCompletionHandler:handler];
}

- (void)syncReceivedData:(id)data fromPeer:(id)peer
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v7 = mcbrowser_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Received dictionary [%@] from peer [%@].", &v12, 0x16u);
  }

  if (v6)
  {
    v8 = [objc_msgSend(v6 objectForKey:{@"MCNearbyServiceMessageIDKey", "unsignedIntegerValue"}];
    if (v8 == 2)
    {
      [(MCNearbyServiceBrowser *)self syncHandleInviteResponse:v6 fromPeer:peer];
    }

    else
    {
      v9 = v8;
      v10 = mcbrowser_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        LODWORD(v13) = v9;
        _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Unknown or invalid nearby message type for the browser: %d.", &v12, 8u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invitePeer:(MCPeerID *)peerID toSession:(MCSession *)session withContext:(NSData *)context timeout:(NSTimeInterval)timeout
{
  if (!peerID)
  {
    v13 = mcbrowser_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "Bad argument peerID=nil";
    goto LABEL_8;
  }

  if (session)
  {
    v10 = [(MCPeerID *)peerID copy];
    v11 = [(NSData *)context copy];
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke;
    block[3] = &unk_278B447B0;
    block[4] = self;
    block[5] = v10;
    block[6] = session;
    block[7] = v11;
    *&block[8] = timeout;
    dispatch_async(syncQueue, block);

    return;
  }

  v13 = mcbrowser_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "Bad argument session=nil";
LABEL_8:
    _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
  }
}

void __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *MEMORY[0x277D85DE8];

    [v4 syncInvitePeer:v3 toSession:v5 withContext:v6 timeout:v7];
  }

  else
  {
    v9 = mcbrowser_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) displayNameAndPID];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Peer [%@] not in peers dictionary anymore.", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke_53;
    v12[3] = &unk_278B43C60;
    v13 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v12);
    v11 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 browser:v3 lostPeer:v4];
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  v24 = *MEMORY[0x277D85DE8];
  if (service)
  {
    comingCopy = coming;
    name = [objc_msgSend(service name];
    v9 = mcbrowser_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (name)
    {
      if (v10)
      {
        v20 = 138412546;
        v21 = name;
        v22 = 1024;
        v23 = comingCopy;
        _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "NetService found [%@] moreComing [%d].", &v20, 0x12u);
      }

      v11 = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] objectForKey:name];
      if (v11)
      {
        v12 = v11;
        if ([service isEqual:v11])
        {
LABEL_18:
          [service setDelegate:self];
          mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
          [service scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
          [service startMonitoring];
          goto LABEL_19;
        }

        v13 = mcbrowser_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = name;
          _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "NetService replacing [%@] in net services dictionary.", &v20, 0xCu);
        }

        [v12 stopMonitoring];
      }

      else
      {
        v17 = mcbrowser_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = name;
          _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "NetService adding [%@] to net services dictionary.", &v20, 0xCu);
        }
      }

      [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] setObject:service forKey:name];
      goto LABEL_18;
    }

    if (v10)
    {
      LOWORD(v20) = 0;
      v15 = "NetService with an invalid name found - skipping.";
      v16 = v9;
      goto LABEL_14;
    }
  }

  else
  {
    v14 = mcbrowser_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v15 = "An invalid NSNetService object found - skipping.";
      v16 = v14;
LABEL_14:
      _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, 2u);
    }
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:(id)browser didFindDomain:(id)domain moreComing:(BOOL)coming
{
  comingCopy = coming;
  v13 = *MEMORY[0x277D85DE8];
  v7 = mcbrowser_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    domainCopy = domain;
    v11 = 1024;
    v12 = comingCopy;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Did find domain [%@] moreComing [%d].", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  v5 = mcbrowser_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MCNearbyServiceBrowser netServiceBrowser:didNotSearch:];
  }

  v6 = *MEMORY[0x277CBAAB8];
  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    v8 = Int64;
  }

  else
  {
    v8 = -72000;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBAAC0] code:v8 userInfo:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__MCNearbyServiceBrowser_netServiceBrowser_didNotSearch___block_invoke;
  v10[3] = &unk_278B43C60;
  v10[4] = self;
  v10[5] = v9;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __57__MCNearbyServiceBrowser_netServiceBrowser_didNotSearch___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 browser:v4 didNotStartBrowsingForPeers:v5];
  }

  return result;
}

- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming
{
  comingCopy = coming;
  v13 = *MEMORY[0x277D85DE8];
  v7 = mcbrowser_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    domainCopy = domain;
    v11 = 1024;
    v12 = comingCopy;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Did remove domain [%@] moreComing [%d].", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  comingCopy = coming;
  v16 = *MEMORY[0x277D85DE8];
  name = [service name];
  v8 = mcbrowser_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = name;
    v14 = 1024;
    v15 = comingCopy;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Peer lost: idString [%@] moreComing [%d].", buf, 0x12u);
  }

  syncQueue = self->_syncQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke;
  v11[3] = &unk_278B43C60;
  v11[4] = self;
  v11[5] = name;
  dispatch_async(syncQueue, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [objc_msgSend(*(a1 + 32) "peers")];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v16;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v15 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "netService")])
      {
        v5 = v8;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  }

  while (v4);
  if (v5)
  {
    v9 = [v5 peerID];
    v10 = mcbrowser_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 displayNameAndPID];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Removing a peer [%@] from peers dictionary.", buf, 0xCu);
    }

    [objc_msgSend(*(a1 + 32) "peers")];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_57;
    v14[3] = &unk_278B43C60;
    v14[4] = *(a1 + 32);
    v14[5] = v9;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  else
  {
LABEL_14:
    v12 = mcbrowser_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_cold_1(a1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_57(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 browser:v3 lostPeer:v4];
}

- (void)netServiceBrowserDidStopSearch:(id)search
{
  v3 = mcbrowser_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, &unk_239FF4DDD, v4, 2u);
  }
}

- (void)netServiceBrowserWillSearch:(id)search
{
  v3 = mcbrowser_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, &unk_239FF4DDD, v4, 2u);
  }
}

- (id)rebuildUserDiscoveryInfoFromTXTRecordDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(dictionary "allValues")];
  if (v4 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v4 - 1];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [dictionaryCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = v5;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (([v11 isEqualToString:@"_d"] & 1) == 0)
          {
            v12 = dictionaryCopy;
            v13 = [dictionaryCopy objectForKey:v11];
            v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
            if ([v11 hasPrefix:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"_", @"_"}])
            {
              v11 = [v11 substringFromIndex:1];
            }

            [v17 setObject:v14 forKey:v11];
            dictionaryCopy = v12;
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
      v5 = v17;
    }
  }

  result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  name = [service name];
  v8 = [MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:data];
  v9 = [v8 objectForKey:@"_d"];
  if (!v9 || ((v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4], v11 = -[MCNearbyServiceBrowser rebuildUserDiscoveryInfoFromTXTRecordDictionary:](self, "rebuildUserDiscoveryInfoFromTXTRecordDictionary:", v8), v10) ? (v12 = name == 0) : (v12 = 1), v12))
  {
    v13 = mcbrowser_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceBrowser netService:didUpdateTXTRecordData:];
    }
  }

  else
  {
    v15 = v11;
    v16 = [[MCPeerID alloc] initWithIDString:name displayName:v10];
    v17 = mcbrowser_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v27 = name;
      v28 = 2112;
      displayNameAndPID = [(MCPeerID *)v16 displayNameAndPID];
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Peer found: idString [%@], displayNameAndPID [%@], discoveryInfo [%@].", buf, 0x20u);
    }

    if ([(MCPeerID *)v16 isEqual:[(MCNearbyServiceBrowser *)self myPeerID]])
    {
      v19 = mcbrowser_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring self for now.", buf, 2u);
      }
    }

    else
    {
      syncQueue = self->_syncQueue;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke;
      v25[3] = &unk_278B43DC8;
      v25[4] = self;
      v25[5] = v16;
      v25[6] = service;
      v25[7] = v15;
      dispatch_async(syncQueue, v25);
      v21 = -[NSMutableDictionary objectForKey:](-[MCNearbyServiceBrowser netServices](self, "netServices"), "objectForKey:", [service name]);
      if (v21)
      {
        v22 = v21;
        [v21 stopMonitoring];
        [v22 setDelegate:0];
        -[NSMutableDictionary removeObjectForKey:](-[MCNearbyServiceBrowser netServices](self, "netServices"), "removeObjectForKey:", [service name]);
      }

      else
      {
        v23 = mcbrowser_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [service name];
          *buf = 138412290;
          v27 = name2;
          _os_log_impl(&dword_239FB7000, v23, OS_LOG_TYPE_DEFAULT, "NetService not found [%@] in net services dictionary.", buf, 0xCu);
        }

        [service stopMonitoring];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "peers")];
  if (!v2)
  {
LABEL_6:
    v5 = [[MCNearbyDiscoveryPeer alloc] initWithPeerID:*(a1 + 40)];
    [(MCNearbyDiscoveryPeer *)v5 setNetService:*(a1 + 48)];
    [objc_msgSend(*(a1 + 32) "peers")];

    goto LABEL_7;
  }

  v3 = v2;
  if (([*(a1 + 48) isEqual:{objc_msgSend(v2, "netService")}] & 1) == 0)
  {
    v4 = mcbrowser_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Peer already in the dictionary, but has a different NSNetService object. will replace it with the newly found peer.", buf, 2u);
    }

    [v3 invalidate];
    goto LABEL_6;
  }

LABEL_7:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke_63;
  block[3] = &unk_278B43C88;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v2 browser:v3 foundPeer:v4 withDiscoveryInfo:v5];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [a2 localizedDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_3(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *a2;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0(&dword_239FB7000, v4, v5, "Unexpected (possibly stale) identifier [%@] advertised (expected peer [%@]).Closing connection.");
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInviteResponse:(void *)a1 fromPeer:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [objc_msgSend(a1 "myPeerID")];
  [a2 displayNameAndPID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInviteResponse:(void *)a1 fromPeer:(void *)a2 .cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [objc_msgSend(a1 "peerID")];
  [a2 displayNameAndPID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInviteResponse:(void *)a1 fromPeer:.cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 displayNameAndPID];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncHandleInviteResponse:(NSObject *)a3 fromPeer:.cold.4(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_4_0(&dword_239FB7000, a2, a3, "No session for peer [%@]. invites=[%@].", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  [*(a1 + 40) displayNameAndPID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:didNotSearch:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end