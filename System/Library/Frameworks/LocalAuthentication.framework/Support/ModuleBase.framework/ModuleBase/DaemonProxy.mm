@interface DaemonProxy
+ (id)sharedInstance;
- (NSXPCConnection)connection;
- (id)agentProxy;
- (void)agentProxyWrapper:(id)a3 didFailToObtainRemoteProxyWithError:(id)a4;
- (void)reset;
@end

@implementation DaemonProxy

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[DaemonProxy sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __29__DaemonProxy_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(DaemonProxy);

  return MEMORY[0x2821F96F8]();
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.CoreAuthentication.daemon" options:4096];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x277CD47F8] interfaceWithInternalProtocol:&unk_284B7D3A8];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    v7 = self->_connection;
    v8 = [MEMORY[0x277CD47C8] queue];
    [(NSXPCConnection *)v7 _setQueue:v8];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __25__DaemonProxy_connection__block_invoke;
    v12[3] = &unk_278A64600;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__DaemonProxy_connection__block_invoke_20;
    v10[3] = &unk_278A64600;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __25__DaemonProxy_connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LACLogServer();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __25__DaemonProxy_connection__block_invoke_cold_1(v2);
    }

    v3 = WeakRetained[2];
    WeakRetained[2] = 0;
  }
}

void __25__DaemonProxy_connection__block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LACLogServer();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __25__DaemonProxy_connection__block_invoke_20_cold_1(v2);
    }

    v3 = WeakRetained[2];
    WeakRetained[2] = 0;

    v4 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

- (id)agentProxy
{
  agentProxy = self->_agentProxy;
  if (!agentProxy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__DaemonProxy_agentProxy__block_invoke;
    v7[3] = &unk_278A646C0;
    v7[4] = self;
    v4 = __25__DaemonProxy_agentProxy__block_invoke(v7);
    v5 = self->_agentProxy;
    self->_agentProxy = v4;

    agentProxy = self->_agentProxy;
  }

  return agentProxy;
}

id __25__DaemonProxy_agentProxy__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D23FD8]);
  v3 = [*(a1 + 32) connection];
  v4 = [v2 initWithConnection:v3];

  [v4 setDelegate:*(a1 + 32)];

  return v4;
}

- (void)reset
{
  agentProxy = self->_agentProxy;
  self->_agentProxy = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)agentProxyWrapper:(id)a3 didFailToObtainRemoteProxyWithError:(id)a4
{
  v6 = a4;
  if (self->_agentProxy == a3)
  {
    v7 = LACLogServer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DaemonProxy agentProxyWrapper:v6 didFailToObtainRemoteProxyWithError:v7];
    }

    [(DaemonProxy *)self reset];
  }
}

- (void)agentProxyWrapper:(uint64_t)a1 didFailToObtainRemoteProxyWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_238BBF000, a2, OS_LOG_TYPE_ERROR, "Error on connection to system daemon: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end