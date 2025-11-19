@interface ASXPCClient
- (ASXPCClient)init;
- (void)dealloc;
- (void)invalidate;
- (void)launch;
@end

@implementation ASXPCClient

- (ASXPCClient)init
{
  v14.receiver = self;
  v14.super_class = ASXPCClient;
  v2 = [(ASXPCClient *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE80]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CE9330] options:0];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851119E8];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_9];
    objc_initWeak(&location, v2);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __19__ASXPCClient_init__block_invoke_340;
    v11 = &unk_278C4C480;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&v8];
    [(NSXPCConnection *)v2->_connection resume:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __19__ASXPCClient_init__block_invoke()
{
  ASLoggingInitialize();
  v0 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_DEFAULT, "ASXPCClient connection interrupted", v1, 2u);
  }
}

void __19__ASXPCClient_init__block_invoke_340(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "ASXPCClient connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)dealloc
{
  [(ASXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = ASXPCClient;
  [(ASXPCClient *)&v3 dealloc];
}

- (void)launch
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v2 launch];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ASXPCClient launching server %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

@end