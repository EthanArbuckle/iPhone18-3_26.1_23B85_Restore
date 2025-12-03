@interface ANPlaybackSessionServiceListener
- (ANPlaybackSessionServiceListener)init;
- (BOOL)_endSessionForConnection:(id)connection;
- (BOOL)isExternalPlaybackActiveForEndpointID:(id)d;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)remoteSessionsActive;
- (id)_clientForConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)_setTimersActive:(BOOL)active forEndPointID:(id)d;
- (void)_updateConnectionForReceivedAnnouncement:(id)announcement groupID:(id)d endpointID:(id)iD;
- (void)cleanForExit;
- (void)coordinator:(id)coordinator didReceiveAnnouncement:(id)announcement forGroupID:(id)d forEndpointID:(id)iD;
- (void)coordinator:(id)coordinator didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)time forEndpointID:(id)d;
- (void)coordinator:(id)coordinator didUpdateAnnouncements:(id)announcements forGroupID:(id)d forEndpointID:(id)iD;
- (void)coordinator:(id)coordinator didUpdatePlaybackInfo:(id)info forEndpointID:(id)d;
- (void)coordinator:(id)coordinator didUpdatePlaybackState:(unint64_t)state forEndpointID:(id)d;
- (void)endSessionWithReply:(id)reply;
- (void)lastPlayedAnnouncementInfoForEndpointID:(id)d completionHandler:(id)handler;
- (void)playbackStateForEndpointID:(id)d completionHandler:(id)handler;
- (void)resumeWithEndpointID:(id)d completionHandler:(id)handler;
- (void)sendPlaybackCommand:(id)command forEndpointID:(id)d completionHandler:(id)handler;
- (void)setPlaybackStartedForAnnouncement:(id)announcement;
- (void)setPlaybackStoppedForAnnouncement:(id)announcement;
- (void)startSessionForGroupID:(id)d reply:(id)reply;
@end

@implementation ANPlaybackSessionServiceListener

- (ANPlaybackSessionServiceListener)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ANPlaybackSessionServiceListener;
  v2 = [(ANPlaybackSessionServiceListener *)&v22 init];
  if (v2)
  {
    if ([MEMORY[0x277CEAB38] isAnnounceEnabled])
    {
      v3 = objc_opt_new();
      remotePlaybackClients = v2->_remotePlaybackClients;
      v2->_remotePlaybackClients = v3;

      v5 = objc_opt_new();
      localPlaybackClients = v2->_localPlaybackClients;
      v2->_localPlaybackClients = v5;

      v7 = dispatch_queue_create("com.apple.Announce.playbackClientsSerialQueue", 0);
      playbackClientsSerialQueue = v2->_playbackClientsSerialQueue;
      v2->_playbackClientsSerialQueue = v7;

      v9 = +[ANAnnouncementCoordinator sharedCoordinator];
      [v9 addDelegate:v2 queue:0];

      v10 = +[ANAnnouncementCoordinator sharedCoordinator];
      [v10 setRemotePlaybackStatusProvider:v2];
    }

    v11 = objc_alloc(MEMORY[0x277CCAE98]);
    v12 = [v11 initWithMachServiceName:*MEMORY[0x277CEAA48]];
    localPlaybackSessionListener = v2->_localPlaybackSessionListener;
    v2->_localPlaybackSessionListener = v12;

    [(NSXPCListener *)v2->_localPlaybackSessionListener setDelegate:v2];
    [(NSXPCListener *)v2->_localPlaybackSessionListener resume];
    v14 = objc_alloc(MEMORY[0x277CCAE98]);
    v15 = [v14 initWithMachServiceName:*MEMORY[0x277CEAA50]];
    remotePlaybackSessionListener = v2->_remotePlaybackSessionListener;
    v2->_remotePlaybackSessionListener = v15;

    [(NSXPCListener *)v2->_remotePlaybackSessionListener setDelegate:v2];
    [(NSXPCListener *)v2->_remotePlaybackSessionListener resume];
    v17 = objc_opt_new();
    appIntentConnectionListener = v2->_appIntentConnectionListener;
    v2->_appIntentConnectionListener = v17;

    v19 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Playback Session Service Listeners Up!", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)cleanForExit
{
  localPlaybackSessionListener = [(ANPlaybackSessionServiceListener *)self localPlaybackSessionListener];
  [localPlaybackSessionListener invalidate];

  remotePlaybackSessionListener = [(ANPlaybackSessionServiceListener *)self remotePlaybackSessionListener];
  [remotePlaybackSessionListener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v59 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v54 = &stru_2851BDB18;
    v55 = 2112;
    v56 = v9;
    v57 = 2112;
    v58 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Playback Session Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  if ([MEMORY[0x277CEAB38] isAnnounceEnabled])
  {
    if ([connectionCopy hasAnnounceEntitlement])
    {
      v11 = [ANPlaybackSessionClient clientWithXPCConnection:connectionCopy];
      serviceName2 = [listenerCopy serviceName];
      v38 = *MEMORY[0x277CEAA50];
      v13 = [serviceName2 isEqualToString:?];

      if (v13)
      {
        log = [MEMORY[0x277CCAE90] an_remotePlaybackSessionServiceInterface];
        an_remotePlaybackSessionServiceDelegateInterface = [MEMORY[0x277CCAE90] an_remotePlaybackSessionServiceDelegateInterface];
      }

      else
      {
        serviceName3 = [listenerCopy serviceName];
        v20 = [serviceName3 isEqualToString:*MEMORY[0x277CEAA48]];

        if (!v20)
        {
          log = ANLogHandlePlaybackSessionServiceListener();
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            serviceName4 = [listenerCopy serviceName];
            *buf = 138412802;
            v54 = &stru_2851BDB18;
            v55 = 2112;
            v56 = serviceName4;
            v57 = 2112;
            v58 = connectionCopy;
            _os_log_impl(&dword_23F525000, log, OS_LOG_TYPE_ERROR, "%@Unsupported Service. serviceName=%@, connection=%@", buf, 0x20u);
          }

          v18 = 0;
          goto LABEL_26;
        }

        log = [MEMORY[0x277CCAE90] an_localPlaybackSessionServiceInterface];
        an_remotePlaybackSessionServiceDelegateInterface = [MEMORY[0x277CCAE90] an_localPlaybackSessionServiceDelegateInterface];
        [log setClass:objc_opt_class() forSelector:sel_sendPlaybackCommand_forEndpointID_completionHandler_ argumentIndex:0 ofReply:0];
        v21 = MEMORY[0x277CBEB98];
        v22 = objc_opt_class();
        v23 = objc_opt_class();
        v24 = objc_opt_class();
        v25 = objc_opt_class();
        v26 = [v21 setWithObjects:{v22, v23, v24, v25, objc_opt_class(), 0}];
        [log setClasses:v26 forSelector:sel_lastPlayedAnnouncementInfoForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
      }

      [an_remotePlaybackSessionServiceDelegateInterface setClass:objc_opt_class() forSelector:sel_didReceiveAnnouncement_forGroupID_ argumentIndex:0 ofReply:0];
      [connectionCopy setExportedInterface:log];
      [connectionCopy setExportedObject:self];
      [connectionCopy setRemoteObjectInterface:an_remotePlaybackSessionServiceDelegateInterface];
      objc_initWeak(&location, self);
      objc_initWeak(&from, connectionCopy);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke;
      v48[3] = &unk_278C865F0;
      objc_copyWeak(&v49, &from);
      objc_copyWeak(&v50, &location);
      [connectionCopy setInterruptionHandler:v48];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_23;
      v45[3] = &unk_278C865F0;
      objc_copyWeak(&v46, &from);
      objc_copyWeak(&v47, &location);
      [connectionCopy setInvalidationHandler:v45];
      [connectionCopy resume];
      v27 = ANLogHandlePlaybackSessionServiceListener();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v54 = &stru_2851BDB18;
        v55 = 2112;
        v56 = connectionCopy;
        _os_log_impl(&dword_23F525000, v27, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
      }

      serviceName5 = [listenerCopy serviceName];
      v29 = [serviceName5 isEqualToString:v38];

      if (v29)
      {
        playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_24;
        v43[3] = &unk_278C86378;
        v43[4] = self;
        v31 = &v44;
        v44 = v11;
        v32 = v43;
      }

      else
      {
        serviceName6 = [listenerCopy serviceName];
        v34 = [serviceName6 isEqualToString:*MEMORY[0x277CEAA48]];

        if (!v34)
        {
LABEL_22:
          objc_destroyWeak(&v47);
          objc_destroyWeak(&v46);
          objc_destroyWeak(&v50);
          objc_destroyWeak(&v49);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);

          v18 = 1;
LABEL_26:

          goto LABEL_27;
        }

        playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
        block[3] = &unk_278C86378;
        block[4] = self;
        v31 = &v42;
        v42 = v11;
        v32 = block;
      }

      dispatch_sync(playbackClientsSerialQueue, v32);

      goto LABEL_22;
    }

    v11 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v54 = &stru_2851BDB18;
      v55 = 2112;
      v56 = v17;
      v14 = "%@Missing Announce Entitlement: %@";
      v15 = v11;
      v16 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = &stru_2851BDB18;
      v14 = "%@Rejecting connection. Announce not enabled.";
      v15 = v11;
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    }
  }

  v18 = 0;
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandlePlaybackSessionServiceListener();
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

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_23(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandlePlaybackSessionServiceListener();
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

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_24(uint64_t a1)
{
  v2 = [*(a1 + 32) remotePlaybackClients];
  [v2 addObject:*(a1 + 40)];
}

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) localPlaybackClients];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)remoteSessionsActive
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ANPlaybackSessionServiceListener_remoteSessionsActive__block_invoke;
  v5[3] = &unk_278C86618;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(playbackClientsSerialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __56__ANPlaybackSessionServiceListener_remoteSessionsActive__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 count];

  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [*(a1 + 32) remotePlaybackClients];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) groupID];

          if (v9)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  [(ANPlaybackSessionServiceListener *)self _endSessionForConnection:connectionCopy];
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ANPlaybackSessionServiceListener__removeConnection___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(playbackClientsSerialQueue, v7);
}

void __54__ANPlaybackSessionServiceListener__removeConnection___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v36;
    *&v5 = 138412546;
    v29 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 connection];

        if (v10 == v11)
        {
          v12 = [*(a1 + 32) remotePlaybackClients];
          [v12 removeObject:v9];

          v13 = ANLogHandlePlaybackSessionServiceListener();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 40);
            *buf = v29;
            v41 = &stru_2851BDB18;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Removed Playback Info for Connection: (%@)", buf, 0x16u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [*(a1 + 32) localPlaybackClients];
  v16 = [v15 copy];

  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v32;
    *&v18 = 138412546;
    v30 = v18;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = *(a1 + 40);
        v24 = [v22 connection];

        if (v23 == v24)
        {
          v25 = [*(a1 + 32) localPlaybackClients];
          [v25 removeObject:v22];

          v26 = ANLogHandlePlaybackSessionServiceListener();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 40);
            *buf = v30;
            v41 = &stru_2851BDB18;
            v42 = 2112;
            v43 = v27;
            _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Removed Other Playback for Connection: (%@)", buf, 0x16u);
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v19);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_clientForConnection:(id)connection
{
  connectionCopy = connection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ANPlaybackSessionServiceListener__clientForConnection___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = connectionCopy;
  v11 = &v12;
  v6 = connectionCopy;
  dispatch_sync(playbackClientsSerialQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__ANPlaybackSessionServiceListener__clientForConnection___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 connection];

        if (v8 == v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [*(a1 + 32) localPlaybackClients];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * j);
          v16 = *(a1 + 40);
          v17 = [v15 connection];

          if (v16 == v17)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
            goto LABEL_22;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_endSessionForConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [(ANPlaybackSessionServiceListener *)self _clientForConnection:connectionCopy];
  if (v5)
  {
    v6 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = &stru_2851BDB18;
      v12 = 2112;
      v13 = connectionCopy;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Ended Session For Connection: %@", &v10, 0x16u);
    }

    [v5 setGroupID:0];
  }

  v7 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [(ANPlaybackSessionServiceListener *)self _setTimersActive:1 forEndPointID:v7];

  v8 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (void)_setTimersActive:(BOOL)active forEndPointID:(id)d
{
  activeCopy = active;
  *&v18[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"IN";
    if (activeCopy)
    {
      v8 = &stru_2851BDB18;
    }

    v15 = 138412546;
    v16 = &stru_2851BDB18;
    v17 = 2112;
    *v18 = v8;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Request to set timers %@ACTIVE", &v15, 0x16u);
  }

  if (activeCopy)
  {
    if ([dCopy an_isLocalDevice])
    {
      remoteSessionsActive = [(ANPlaybackSessionServiceListener *)self remoteSessionsActive];
    }

    else
    {
      remoteSessionsActive = 0;
    }

    v11 = +[ANAnnouncementCoordinator sharedCoordinator];
    v12 = [v11 playbackStateForEndpointID:dCopy];

    v10 = ANLogHandlePlaybackSessionServiceListener();
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (remoteSessionsActive || v12 == 1)
    {
      if (v13)
      {
        v15 = 138412802;
        v16 = &stru_2851BDB18;
        v17 = 1024;
        *v18 = remoteSessionsActive;
        v18[2] = 1024;
        *&v18[3] = v12 == 1;
        _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Unable to activate timers. Remote Session Active = %d, Local Session Active = %d", &v15, 0x18u);
      }
    }

    else
    {
      if (v13)
      {
        v15 = 138412290;
        v16 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@No Active Sessions. Resuming All Timers.", &v15, 0xCu);
      }

      v10 = +[ANAnnouncementCoordinator sharedCoordinator];
      [v10 resumeAllTimersForEndpointID:dCopy];
    }
  }

  else
  {
    v10 = +[ANAnnouncementCoordinator sharedCoordinator];
    [v10 pauseAllTimersForEndpointID:dCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startSessionForGroupID:(id)d reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v8 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [(ANPlaybackSessionServiceListener *)self _setTimersActive:0 forEndPointID:v8];

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [(ANPlaybackSessionServiceListener *)self _clientForConnection:currentConnection];

  if (v10)
  {
    [v10 setGroupID:dCopy];
    v11 = +[ANAnnouncementCoordinator sharedCoordinator];
    v12 = +[ANAnnouncementCoordinator localDeviceIdentifier];
    v13 = [v11 announcementsForGroupID:dCopy endpointID:v12];

    v14 = [MEMORY[0x277CEAB48] contextsFrom:v13];
    connection = [v10 connection];
    remoteObjectProxy = [connection remoteObjectProxy];

    if ([remoteObjectProxy conformsToProtocol:&unk_2851E1B88])
    {
      [remoteObjectProxy didUpdateAnnouncements:v14 forGroupID:dCopy];
    }

    v17 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      currentConnection2 = [MEMORY[0x277CCAE80] currentConnection];
      v22 = 138412802;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = currentConnection2;
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@Started remote playback session. GroupID = %@, connection = %@)", &v22, 0x20u);
    }

    replyCopy[2](replyCopy, 1);
  }

  else
  {
    v19 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      currentConnection3 = [MEMORY[0x277CCAE80] currentConnection];
      v22 = 138412546;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = currentConnection3;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Failed to start remote playback session. Connection = %@", &v22, 0x16u);
    }

    replyCopy[2](replyCopy, 0);
    v13 = +[ANAnalytics shared];
    [v13 error:5001];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)endSessionWithReply:(id)reply
{
  v4 = MEMORY[0x277CCAE80];
  replyCopy = reply;
  currentConnection = [v4 currentConnection];
  v6 = [(ANPlaybackSessionServiceListener *)self _endSessionForConnection:currentConnection];

  replyCopy[2](replyCopy, v6);
}

- (void)setPlaybackStartedForAnnouncement:(id)announcement
{
  v10 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  v4 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Set Remote Playback Started", &v8, 0xCu);
  }

  v5 = +[ANAnnouncementCoordinator sharedCoordinator];
  v6 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [v5 setPlaybackStartedForAnnouncement:announcementCopy endpointID:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPlaybackStoppedForAnnouncement:(id)announcement
{
  v10 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  v4 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Set Remote Playback Stopped", &v8, 0xCu);
  }

  v5 = +[ANAnnouncementCoordinator sharedCoordinator];
  v6 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [v5 setPlaybackStoppedForAnnouncement:announcementCopy endpointID:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendPlaybackCommand:(id)command forEndpointID:(id)d completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  handlerCopy = handler;
  v10 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = &stru_2851BDB18;
    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = commandCopy;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Received Playback Command. Endpoint ID = %@, Command = %@", &v19, 0x20u);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  clientID = [currentConnection clientID];

  [commandCopy setClientIdentifier:clientID];
  v13 = +[ANAnnouncementCoordinator sharedCoordinator];
  [v13 performPlaybackCommand:commandCopy endpointID:dCopy completionHandler:handlerCopy];

  v14 = +[ANAnalytics shared];
  operation = [commandCopy operation];
  v16 = [MEMORY[0x277CEAB48] sourceFromString:clientID];
  v17 = [ANAnalyticsContext contextWithEndpointID:dCopy];
  [v14 playbackAction:operation fromSource:v16 context:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)resumeWithEndpointID:(id)d completionHandler:(id)handler
{
  v6 = MEMORY[0x277CCAE80];
  handlerCopy = handler;
  dCopy = d;
  currentConnection = [v6 currentConnection];
  v10 = [(ANPlaybackSessionServiceListener *)self _clientForConnection:currentConnection];

  [v10 setEndpointID:dCopy];
  handlerCopy[2](handlerCopy);
}

- (void)lastPlayedAnnouncementInfoForEndpointID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v9 = +[ANAnnouncementCoordinator sharedCoordinator];
  v8 = [v9 lastPlayedAnnouncementInfoForEndpointID:dCopy];

  (*(handler + 2))(handlerCopy, v8);
}

- (void)playbackStateForEndpointID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v9 = +[ANAnnouncementCoordinator sharedCoordinator];
  v8 = [v9 playbackStateForEndpointID:dCopy];

  (*(handler + 2))(handlerCopy, v8);
}

- (BOOL)isExternalPlaybackActiveForEndpointID:(id)d
{
  an_isLocalDevice = [d an_isLocalDevice];
  if (an_isLocalDevice)
  {

    LOBYTE(an_isLocalDevice) = [(ANPlaybackSessionServiceListener *)self remoteSessionsActive];
  }

  return an_isLocalDevice;
}

- (void)coordinator:(id)coordinator didUpdateAnnouncements:(id)announcements forGroupID:(id)d forEndpointID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  announcementsCopy = announcements;
  dCopy = d;
  iDCopy = iD;
  v12 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = &stru_2851BDB18;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Did Update Announcements for Group ID: %@", buf, 0x16u);
  }

  an_isLocalDevice = [iDCopy an_isLocalDevice];
  if (an_isLocalDevice)
  {
    v14 = [MEMORY[0x277CEAB48] contextsFrom:announcementsCopy];
    playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__ANPlaybackSessionServiceListener_coordinator_didUpdateAnnouncements_forGroupID_forEndpointID___block_invoke;
    block[3] = &unk_278C86668;
    block[4] = self;
    v19 = dCopy;
    v20 = v14;
    v16 = v14;
    dispatch_async(playbackClientsSerialQueue, block);
  }

  else
  {
    v16 = ANLogHandlePlaybackSessionServiceListener();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Skipping updates not for local device", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __96__ANPlaybackSessionServiceListener_coordinator_didUpdateAnnouncements_forGroupID_forEndpointID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 connection];
        v10 = [v9 remoteObjectProxy];

        v11 = [v8 groupID];
        if ([v11 isEqualToString:*(a1 + 40)])
        {
          v12 = [v10 conformsToProtocol:&unk_2851E1B88];

          if (v12)
          {
            v13 = ANLogHandlePlaybackSessionServiceListener();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = &stru_2851BDB18;
              v22 = 2112;
              v23 = v8;
              _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Notifying Connection Announcements Changed: %@", buf, 0x16u);
            }

            [v10 didUpdateAnnouncements:*(a1 + 48) forGroupID:*(a1 + 40)];
          }
        }

        else
        {
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)coordinator didReceiveAnnouncement:(id)announcement forGroupID:(id)d forEndpointID:(id)iD
{
  v21 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  dCopy = d;
  iDCopy = iD;
  v12 = ANLogHandlePlaybackSessionServiceListener();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [announcementCopy identifier];
    v15 = 138412802;
    v16 = &stru_2851BDB18;
    v17 = 2112;
    v18 = identifier;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Did Receive Announcement ID: %@, for Group ID: %@", &v15, 0x20u);
  }

  [(ANPlaybackSessionServiceListener *)self _updateConnectionForReceivedAnnouncement:announcementCopy groupID:dCopy endpointID:iDCopy];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateConnectionForReceivedAnnouncement:(id)announcement groupID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v10 = MEMORY[0x277CEAB58];
  remoteSessionDictionary = [announcement remoteSessionDictionary];
  v12 = [v10 contextFromDictionary:remoteSessionDictionary];

  if ([iDCopy an_isLocalDevice])
  {
    playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke;
    block[3] = &unk_278C86668;
    block[4] = self;
    v23 = dCopy;
    v24 = v12;
    dispatch_async(playbackClientsSerialQueue, block);
  }

  playbackClientsSerialQueue2 = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke_78;
  v18[3] = &unk_278C86690;
  v18[4] = self;
  v19 = iDCopy;
  v20 = v12;
  v21 = dCopy;
  v15 = dCopy;
  v16 = v12;
  v17 = iDCopy;
  dispatch_async(playbackClientsSerialQueue2, v18);
}

void __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 connection];
        v10 = [v9 remoteObjectProxy];

        v11 = [v8 groupID];
        if ([v11 isEqualToString:*(a1 + 40)])
        {
          v12 = [v10 conformsToProtocol:&unk_2851DEFF8];

          if (v12)
          {
            v13 = ANLogHandlePlaybackSessionServiceListener();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = &stru_2851BDB18;
              v22 = 2112;
              v23 = v8;
              _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Notifying Remote Playback Client Announcement Received: %@", buf, 0x16u);
            }

            [v10 didReceiveAnnouncement:*(a1 + 48) forGroupID:*(a1 + 40)];
          }
        }

        else
        {
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke_78(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 endpointID];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = +[ANAnnouncementCoordinator localDeviceIdentifier];
        }

        v12 = v11;

        v13 = [v8 connection];
        v14 = [v13 remoteObjectProxy];

        if ([v12 isEqual:*(a1 + 40)] && objc_msgSend(v14, "conformsToProtocol:", &unk_2851DEFF8))
        {
          v15 = ANLogHandlePlaybackSessionServiceListener();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = &stru_2851BDB18;
            v24 = 2112;
            v25 = v8;
            _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@Notifying Local Playback Client Announcement Received: %@", buf, 0x16u);
          }

          [v14 didReceiveAnnouncement:*(a1 + 48) forGroupID:*(a1 + 56)];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)coordinator didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)time forEndpointID:(id)d
{
  dCopy = d;
  [(ANPlaybackSessionServiceListener *)self _setTimersActive:0 forEndPointID:dCopy];
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__ANPlaybackSessionServiceListener_coordinator_didStartPlayingAnnouncementsAtMachAbsoluteTime_forEndpointID___block_invoke;
  block[3] = &unk_278C866B8;
  block[4] = self;
  v11 = dCopy;
  timeCopy = time;
  v9 = dCopy;
  dispatch_async(playbackClientsSerialQueue, block);
}

void __109__ANPlaybackSessionServiceListener_coordinator_didStartPlayingAnnouncementsAtMachAbsoluteTime_forEndpointID___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v27 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v27)
  {
    v4 = *v29;
    v5 = 0x278C85000uLL;
    v6 = &selRef_type;
    *&v3 = 138413058;
    v24 = v3;
    v25 = v2;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 endpointID];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [*(v5 + 2504) localDeviceIdentifier];
        }

        v12 = v11;

        v13 = [v8 connection];
        v14 = [v13 remoteObjectProxy];

        if ([v12 isEqual:*(a1 + 40)] && objc_msgSend(v14, "conformsToProtocol:", v6[328]))
        {
          v15 = ANLogHandlePlaybackSessionServiceListener();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = MEMORY[0x277CCABB0];
            v26 = [v8 connection];
            v17 = [v16 numberWithInt:{objc_msgSend(v26, "processIdentifier")}];
            v18 = [v8 connection];
            [v18 clientID];
            v19 = v5;
            v21 = v20 = v4;
            v22 = *(a1 + 48);
            *buf = v24;
            v33 = &stru_2851BDB18;
            v34 = 2112;
            v35 = v17;
            v36 = 2112;
            v37 = v21;
            v38 = 2048;
            v39 = v22;
            _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@Notifying Local Playback Client (%@, %@) Announcement playback starting at time: %lld", buf, 0x2Au);

            v4 = v20;
            v5 = v19;
            v6 = &selRef_type;

            v2 = v25;
          }

          [v14 announcementsWillStartPlaying:*(a1 + 48)];
        }
      }

      v27 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v27);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)coordinator didUpdatePlaybackState:(unint64_t)state forEndpointID:(id)d
{
  dCopy = d;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackState_forEndpointID___block_invoke;
  block[3] = &unk_278C866B8;
  block[4] = self;
  v11 = dCopy;
  stateCopy = state;
  v9 = dCopy;
  dispatch_async(playbackClientsSerialQueue, block);
}

void __85__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackState_forEndpointID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 endpointID];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = +[ANAnnouncementCoordinator localDeviceIdentifier];
        }

        v11 = v10;

        v12 = [v7 connection];
        v13 = [v12 remoteObjectProxy];

        if ([v11 isEqual:*(a1 + 40)] && objc_msgSend(v13, "conformsToProtocol:", &unk_2851E1C68))
        {
          [v13 announcementsStateUpdate:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)coordinator didUpdatePlaybackInfo:(id)info forEndpointID:(id)d
{
  infoCopy = info;
  dCopy = d;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackInfo_forEndpointID___block_invoke;
  block[3] = &unk_278C86668;
  block[4] = self;
  v13 = dCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = dCopy;
  dispatch_async(playbackClientsSerialQueue, block);
}

void __84__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackInfo_forEndpointID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 endpointID];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = +[ANAnnouncementCoordinator localDeviceIdentifier];
        }

        v11 = v10;

        v12 = [v7 connection];
        v13 = [v12 remoteObjectProxy];

        if ([v11 isEqual:*(a1 + 40)] && objc_msgSend(v13, "conformsToProtocol:", &unk_2851E1C68))
        {
          [v13 didUpdatePlaybackInfo:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end