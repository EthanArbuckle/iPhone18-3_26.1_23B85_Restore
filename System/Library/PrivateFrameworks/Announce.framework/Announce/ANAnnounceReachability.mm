@interface ANAnnounceReachability
+ (id)stringForAnnounceReachabilityLevel:(unint64_t)level;
- (ANAnnounceReachability)init;
- (ANAnnounceReachabilityDelegate)delegate;
- (unint64_t)announceReachabilityForHomeName:(id)name;
- (unint64_t)announceReachabilityForHomeUUID:(id)d;
- (unint64_t)announceReachabilityForRoomName:(id)name inHomeName:(id)homeName;
- (unint64_t)announceReachabilityForRoomUUID:(id)d inHomeUUID:(id)iD;
- (void)_start;
- (void)dealloc;
- (void)invalidate;
- (void)reachabilityLevel:(unint64_t)level didChangeForHomeName:(id)name;
- (void)reachabilityLevel:(unint64_t)level didChangeForHomeUUID:(id)d;
- (void)reachabilityLevel:(unint64_t)level didChangeForRoomName:(id)name inHomeName:(id)homeName;
- (void)reachabilityLevel:(unint64_t)level didChangeForRoomUUID:(id)d inHomeUUID:(id)iD;
- (void)setDelegate:(id)delegate;
@end

@implementation ANAnnounceReachability

- (ANAnnounceReachability)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ANAnnounceReachability;
  v2 = [(ANAnnounceReachability *)&v22 init];
  if (v2)
  {
    v3 = ANLogWithCategory("ReachabilityClient");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = @"com.apple.announced.reachability";
      _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "Creating Connection to %@", buf, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.announced.reachability" options:4096];
    connection = v2->_connection;
    v2->_connection = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E9508];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E5738];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v8];
    v10 = objc_opt_new();
    [v10 setDelegate:v2];
    [(NSXPCConnection *)v2->_connection setExportedInterface:v9];
    [(NSXPCConnection *)v2->_connection setExportedObject:v10];
    objc_initWeak(buf, v2);
    v11 = v2->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __30__ANAnnounceReachability_init__block_invoke;
    v20[3] = &unk_2784E2060;
    objc_copyWeak(&v21, buf);
    [(NSXPCConnection *)v11 setInterruptionHandler:v20];
    v12 = v2->_connection;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __30__ANAnnounceReachability_init__block_invoke_81;
    v18 = &unk_2784E2060;
    objc_copyWeak(&v19, buf);
    [(NSXPCConnection *)v12 setInvalidationHandler:&v15];
    [(NSXPCConnection *)v2->_connection resume:v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

void __30__ANAnnounceReachability_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "Connection to announced was interrupted", v6, 2u);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 delegate];
  [v5 connectionInterrupted];
}

void __30__ANAnnounceReachability_init__block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "Connection to announced was invalidated", v6, 2u);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 delegate];
  [v5 connectionInvalidated];
}

- (void)dealloc
{
  v3 = [(ANAnnounceReachability *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc Reachability", buf, 2u);
  }

  [(ANAnnounceReachability *)self invalidate];
  v4.receiver = self;
  v4.super_class = ANAnnounceReachability;
  [(ANAnnounceReachability *)&v4 dealloc];
}

- (void)invalidate
{
  objc_storeWeak(&self->_delegate, 0);
  connection = [(ANAnnounceReachability *)self connection];
  [connection invalidate];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (WeakRetained == obj)
    {
      goto LABEL_6;
    }

    [(ANAnnounceReachability *)self _start];
  }

  else
  {
    objc_storeWeak(&self->_delegate, 0);
  }

  v5 = obj;
LABEL_6:
}

- (ANAnnounceReachabilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)announceReachabilityForHomeName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__ANAnnounceReachability_announceReachabilityForHomeName___block_invoke;
  v10[3] = &unk_2784E23F8;
  v10[4] = self;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ANAnnounceReachability_announceReachabilityForHomeName___block_invoke_85;
  v9[3] = &unk_2784E25F8;
  v9[4] = &v11;
  [v6 announceReachabilityForHomeName:nameCopy reply:v9];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __58__ANAnnounceReachability_announceReachabilityForHomeName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__ANAnnounceReachability_announceReachabilityForHomeName___block_invoke_cold_1();
  }
}

- (unint64_t)announceReachabilityForRoomName:(id)name inHomeName:(id)homeName
{
  nameCopy = name;
  homeNameCopy = homeName;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__ANAnnounceReachability_announceReachabilityForRoomName_inHomeName___block_invoke;
  v13[3] = &unk_2784E23F8;
  v13[4] = self;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ANAnnounceReachability_announceReachabilityForRoomName_inHomeName___block_invoke_87;
  v12[3] = &unk_2784E25F8;
  v12[4] = &v14;
  [v9 announceReachabilityForRoomName:nameCopy inHomeName:homeNameCopy reply:v12];

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __69__ANAnnounceReachability_announceReachabilityForRoomName_inHomeName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__ANAnnounceReachability_announceReachabilityForRoomName_inHomeName___block_invoke_cold_1();
  }
}

- (unint64_t)announceReachabilityForHomeUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__ANAnnounceReachability_announceReachabilityForHomeUUID___block_invoke;
  v10[3] = &unk_2784E23F8;
  v10[4] = self;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ANAnnounceReachability_announceReachabilityForHomeUUID___block_invoke_88;
  v9[3] = &unk_2784E25F8;
  v9[4] = &v11;
  [v6 announceReachabilityForHomeUUID:dCopy reply:v9];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __58__ANAnnounceReachability_announceReachabilityForHomeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__ANAnnounceReachability_announceReachabilityForHomeUUID___block_invoke_cold_1();
  }
}

- (unint64_t)announceReachabilityForRoomUUID:(id)d inHomeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__ANAnnounceReachability_announceReachabilityForRoomUUID_inHomeUUID___block_invoke;
  v13[3] = &unk_2784E23F8;
  v13[4] = self;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ANAnnounceReachability_announceReachabilityForRoomUUID_inHomeUUID___block_invoke_89;
  v12[3] = &unk_2784E25F8;
  v12[4] = &v14;
  [v9 announceReachabilityForRoomUUID:dCopy inHomeUUID:iDCopy reply:v12];

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __69__ANAnnounceReachability_announceReachabilityForRoomUUID_inHomeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__ANAnnounceReachability_announceReachabilityForRoomUUID_inHomeUUID___block_invoke_cold_1();
  }
}

+ (id)stringForAnnounceReachabilityLevel:(unint64_t)level
{
  if (level)
  {
    levelCopy = level;
    v4 = objc_opt_new();
    v5 = v4;
    if (levelCopy)
    {
      [v4 addObject:@"Local"];
    }

    if ((levelCopy & 2) != 0)
    {
      [v5 addObject:@"Remote"];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 componentsJoinedByString:@" | "];
    v8 = [v6 stringWithFormat:@"[%@]", v7];
  }

  else
  {
    v8 = @"[Unknown]";
  }

  return v8;
}

- (void)_start
{
  connection = [(ANAnnounceReachability *)self connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__ANAnnounceReachability__start__block_invoke;
  v6[3] = &unk_2784E23F8;
  v6[4] = self;
  v4 = [connection remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ANAnnounceReachability__start__block_invoke_105;
  v5[3] = &unk_2784E2620;
  v5[4] = self;
  [v4 resumeWithCompletionHandler:v5];
}

void __32__ANAnnounceReachability__start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __32__ANAnnounceReachability__start__block_invoke_cold_1();
  }
}

void __32__ANAnnounceReachability__start__block_invoke_105(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 announceReachabilityDidStartScanning:*(a1 + 32)];
  }
}

- (void)reachabilityLevel:(unint64_t)level didChangeForHomeName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(ANAnnounceReachability *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [ANAnnounceReachability stringForAnnounceReachabilityLevel:level];
    v13 = 138412546;
    v14 = nameCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "Reachability updated for Home = %@: %@", &v13, 0x16u);
  }

  delegate = [(ANAnnounceReachability *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ANAnnounceReachability *)self delegate];
    [delegate2 announceReachability:self didUpdateReachabilityLevel:level forHomeName:nameCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForRoomName:(id)name inHomeName:(id)homeName
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  homeNameCopy = homeName;
  v10 = [(ANAnnounceReachability *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [ANAnnounceReachability stringForAnnounceReachabilityLevel:level];
    v16 = 138412802;
    v17 = homeNameCopy;
    v18 = 2112;
    v19 = nameCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "Reachability updated for Home = %@, Room = %@: %@", &v16, 0x20u);
  }

  delegate = [(ANAnnounceReachability *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(ANAnnounceReachability *)self delegate];
    [delegate2 announceReachability:self didUpdateReachabilityLevel:level forRoomName:nameCopy inHomeName:homeNameCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForHomeUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ANAnnounceReachability *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [ANAnnounceReachability stringForAnnounceReachabilityLevel:level];
    v13 = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "Reachability updated for Home = %@: %@", &v13, 0x16u);
  }

  delegate = [(ANAnnounceReachability *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ANAnnounceReachability *)self delegate];
    [delegate2 announceReachability:self didUpdateReachabilityLevel:level forHomeUUID:dCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForRoomUUID:(id)d inHomeUUID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v10 = [(ANAnnounceReachability *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [ANAnnounceReachability stringForAnnounceReachabilityLevel:level];
    v16 = 138412802;
    v17 = iDCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "Reachability updated for Home = %@, Room = %@: %@", &v16, 0x20u);
  }

  delegate = [(ANAnnounceReachability *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(ANAnnounceReachability *)self delegate];
    [delegate2 announceReachability:self didUpdateReachabilityLevel:level forRoomUUID:dCopy inHomeUUID:iDCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__ANAnnounceReachability_announceReachabilityForHomeName___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2237C8000, v0, v1, "%s: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ANAnnounceReachability_announceReachabilityForRoomName_inHomeName___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2237C8000, v0, v1, "%s: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__ANAnnounceReachability_announceReachabilityForHomeUUID___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2237C8000, v0, v1, "%s: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ANAnnounceReachability_announceReachabilityForRoomUUID_inHomeUUID___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2237C8000, v0, v1, "%s: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__ANAnnounceReachability__start__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2237C8000, v0, v1, "%s: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end