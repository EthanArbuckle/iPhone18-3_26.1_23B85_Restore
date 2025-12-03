@interface ACIXPCSourceManager
- (ACIXPCSourceManager)initWithDelegate:(void *)delegate;
- (id)allServiceProps;
- (void)initiateConnection;
@end

@implementation ACIXPCSourceManager

- (ACIXPCSourceManager)initWithDelegate:(void *)delegate
{
  v9.receiver = self;
  v9.super_class = ACIXPCSourceManager;
  v4 = [(ACIXPCSourceManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    connection = v4->_connection;
    v4->_connection = 0;

    aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(&v5->_delegate, delegate);
    [(ACIXPCSourceManager *)v5 initiateConnection];
    v7 = v5;
  }

  return v5;
}

- (void)initiateConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.acid.ACIXPCProvider" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = +[ACIXPCProvider remoteServiceManagerInterface];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  serviceManagerProxy = self->_serviceManagerProxy;
  self->_serviceManagerProxy = remoteObjectProxy;

  v8 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  syncServiceManagerProxy = self->_syncServiceManagerProxy;
  self->_syncServiceManagerProxy = v8;

  [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_6];
  [(NSXPCConnection *)self->_connection resume];
  v10 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  v14 = [v10 stringWithFormat:@"%@#%d", processName, objc_msgSend(processInfo2, "processIdentifier")];

  [(ACIRemoteServiceManagerProtocol *)self->_syncServiceManagerProxy registerClient:self clientName:v14];
}

void __41__ACIXPCSourceManager_initiateConnection__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _aciLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23C3F5000, v3, OS_LOG_TYPE_ERROR, "Sync remote object failed, (error: %@)!", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)allServiceProps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  syncServiceManagerProxy = self->_syncServiceManagerProxy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ACIXPCSourceManager_allServiceProps__block_invoke;
  v5[3] = &unk_278BBBE38;
  v5[4] = &v6;
  [(ACIRemoteServiceManagerProtocol *)syncServiceManagerProxy allServices:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end