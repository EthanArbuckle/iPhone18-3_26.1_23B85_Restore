@interface ANRemotePlaybackSession
- (ANRemotePlaybackSession)init;
- (ANRemotePlaybackSessionDelegate)delegate;
- (BOOL)endSession;
- (BOOL)startSessionForGroupID:(id)a3 announcementsHandler:(id)a4;
- (OS_dispatch_queue)handlerQueue;
- (void)_callHandler:(id)a3;
- (void)checkInWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)didReceiveAnnouncement:(id)a3 forGroupID:(id)a4;
- (void)invalidate;
- (void)lastPlayedAnnouncementInfoWithCompletion:(id)a3;
- (void)managerDidInterruptConnection:(id)a3;
- (void)managerDidInvalidateConnection:(id)a3;
- (void)setPlaybackStartedForAnnouncement:(id)a3;
- (void)setPlaybackStoppedForAnnouncement:(id)a3;
@end

@implementation ANRemotePlaybackSession

- (ANRemotePlaybackSession)init
{
  v26 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = ANRemotePlaybackSession;
  v2 = [(ANRemotePlaybackSession *)&v21 init];
  if (v2)
  {
    v3 = ANLogHandleRemotePlaybackSession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = &stru_2836DAA20;
      v24 = 2112;
      v25 = @"com.apple.announced.remoteplaybacksession";
      _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "%@Creating Connection to Service: %@", buf, 0x16u);
    }

    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E9448];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    [v4 setClasses:v10 forSelector:sel_lastPlayedAnnouncementInfoForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E5108];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v11 setClasses:v14 forSelector:sel_didUpdateAnnouncements_forGroupID_ argumentIndex:0 ofReply:0];
    [v11 setClass:objc_opt_class() forSelector:sel_didReceiveAnnouncement_forGroupID_ argumentIndex:0 ofReply:0];
    v15 = objc_opt_new();
    delegateProxy = v2->_delegateProxy;
    v2->_delegateProxy = v15;

    [(ANRemotePlaybackSessionServiceClientInterfaceProxy *)v2->_delegateProxy setDelegate:v2];
    v17 = [[ANXPCManager alloc] initWithMachServiceName:@"com.apple.announced.remoteplaybacksession" remoteObjectInterface:v4 exportedInterface:v11 exportedObject:v2->_delegateProxy];
    xpcManager = v2->_xpcManager;
    v2->_xpcManager = v17;

    [(ANXPCManager *)v2->_xpcManager setDelegate:v2];
    [(ANXPCManager *)v2->_xpcManager setCheckInProvider:v2];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(ANRemotePlaybackSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = ANRemotePlaybackSession;
  [(ANRemotePlaybackSession *)&v3 dealloc];
}

- (void)invalidate
{
  [(ANRemotePlaybackSession *)self setDelegate:0];
  [(ANRemotePlaybackSession *)self setHandler:0];
  [(ANRemotePlaybackSession *)self setHandlerQueue:0];
  v4 = [(ANRemotePlaybackSession *)self xpcManager];
  v3 = [v4 connection];
  [v3 invalidate];
}

- (void)setPlaybackStartedForAnnouncement:(id)a3
{
  v4 = a3;
  v7 = [(ANRemotePlaybackSession *)self xpcManager];
  v5 = [v7 connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [v6 setPlaybackStartedForAnnouncement:v4];
}

void __61__ANRemotePlaybackSession_setPlaybackStartedForAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleRemotePlaybackSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANRemotePlaybackSession setPlaybackStartedForAnnouncement:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setPlaybackStoppedForAnnouncement:(id)a3
{
  v4 = a3;
  v7 = [(ANRemotePlaybackSession *)self xpcManager];
  v5 = [v7 connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_94];
  [v6 setPlaybackStoppedForAnnouncement:v4];
}

void __61__ANRemotePlaybackSession_setPlaybackStoppedForAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleRemotePlaybackSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANRemotePlaybackSession setPlaybackStoppedForAnnouncement:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)lastPlayedAnnouncementInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ANRemotePlaybackSession *)self xpcManager];
  v6 = [v5 connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ANRemotePlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke;
  v9[3] = &unk_2784E1F20;
  v10 = v4;
  v7 = v4;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v9];
  [v8 lastPlayedAnnouncementInfoForEndpointID:0 completionHandler:v7];
}

void __68__ANRemotePlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRemotePlaybackSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANRemotePlaybackSession lastPlayedAnnouncementInfoWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)startSessionForGroupID:(id)a3 announcementsHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ANRemotePlaybackSession *)self setHandler:v7];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = [(ANRemotePlaybackSession *)self xpcManager];
  v10 = [v9 connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__ANRemotePlaybackSession_startSessionForGroupID_announcementsHandler___block_invoke;
  v19[3] = &unk_2784E23F8;
  v11 = v8;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ANRemotePlaybackSession_startSessionForGroupID_announcementsHandler___block_invoke_95;
  v16[3] = &unk_2784E2420;
  v18 = &v21;
  v13 = v11;
  v17 = v13;
  [v12 startSessionForGroupID:v6 reply:v16];

  v14 = dispatch_time(0, 2000000000);
  dispatch_group_wait(v13, v14);
  LOBYTE(v9) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __71__ANRemotePlaybackSession_startSessionForGroupID_announcementsHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRemotePlaybackSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANRemotePlaybackSession startSessionForGroupID:announcementsHandler:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)endSession
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(ANRemotePlaybackSession *)self xpcManager];
  v5 = [v4 connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__ANRemotePlaybackSession_endSession__block_invoke;
  v14[3] = &unk_2784E23F8;
  v6 = v3;
  v15 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__ANRemotePlaybackSession_endSession__block_invoke_97;
  v11[3] = &unk_2784E2420;
  v13 = &v16;
  v8 = v6;
  v12 = v8;
  [v7 endSessionWithReply:v11];

  v9 = dispatch_time(0, 2000000000);
  dispatch_group_wait(v8, v9);
  LOBYTE(v4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v4;
}

void __37__ANRemotePlaybackSession_endSession__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRemotePlaybackSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANRemotePlaybackSession endSession]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_callHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANRemotePlaybackSession *)self handlerQueue];

  if (v5)
  {
    v6 = [(ANRemotePlaybackSession *)self handlerQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ANRemotePlaybackSession__callHandler___block_invoke;
    v8[3] = &unk_2784E2010;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = [(ANRemotePlaybackSession *)self handler];
    (v7)[2](v7, v4);
  }
}

void __40__ANRemotePlaybackSession__callHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

- (void)didReceiveAnnouncement:(id)a3 forGroupID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ANLogHandleRemotePlaybackSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = &stru_2836DAA20;
    v18 = 2080;
    v19 = "[ANRemotePlaybackSession didReceiveAnnouncement:forGroupID:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@%s, did receive announcement: %@", buf, 0x20u);
  }

  v9 = [(ANRemotePlaybackSession *)self delegate];
  if ([v9 conformsToProtocol:&unk_2836E94A8])
  {
    v10 = [(ANRemotePlaybackSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __61__ANRemotePlaybackSession_didReceiveAnnouncement_forGroupID___block_invoke;
      v13[3] = &unk_2784E2038;
      objc_copyWeak(&v15, buf);
      v14 = v6;
      [ANUtils asyncDispatchOnGlobalQueue:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __61__ANRemotePlaybackSession_didReceiveAnnouncement_forGroupID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didReceiveAnnouncement:*(a1 + 32)];
}

- (void)managerDidInterruptConnection:(id)a3
{
  v4 = a3;
  v5 = [(ANRemotePlaybackSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke;
    v11[3] = &unk_2784E2060;
    objc_copyWeak(&v12, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v7 = [(ANRemotePlaybackSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke_2;
    v9[3] = &unk_2784E2060;
    objc_copyWeak(&v10, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInterrupted];
}

void __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionInterrupted:WeakRetained];
}

- (void)managerDidInvalidateConnection:(id)a3
{
  v4 = a3;
  v5 = [(ANRemotePlaybackSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke;
    v11[3] = &unk_2784E2060;
    objc_copyWeak(&v12, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v7 = [(ANRemotePlaybackSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke_2;
    v9[3] = &unk_2784E2060;
    objc_copyWeak(&v10, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInvalidated];
}

void __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionInvalidated:WeakRetained];
}

- (void)checkInWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANRemotePlaybackSession *)self xpcManager];
  v6 = [v5 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ANRemotePlaybackSession_checkInWithCompletionHandler___block_invoke;
  v12[3] = &unk_2784E1F20;
  v7 = v4;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ANRemotePlaybackSession_checkInWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2784E2088;
  v11 = v7;
  v9 = v7;
  [v8 resumeWithEndpointID:0 completionHandler:v10];
}

- (OS_dispatch_queue)handlerQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerQueue);

  return WeakRetained;
}

- (ANRemotePlaybackSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end