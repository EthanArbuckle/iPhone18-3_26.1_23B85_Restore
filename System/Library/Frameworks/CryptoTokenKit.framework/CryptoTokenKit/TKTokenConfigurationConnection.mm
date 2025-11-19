@interface TKTokenConfigurationConnection
- (TKTokenConfigurationConnection)initWithEndpoint:(id)a3;
- (id)configurationProtocol;
- (void)dealloc;
- (void)registerForConfigurationChange:(id)a3;
- (void)tokenConfigurationChanged:(id)a3;
@end

@implementation TKTokenConfigurationConnection

- (TKTokenConfigurationConnection)initWithEndpoint:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TKTokenConfigurationConnection;
  v6 = [(TKTokenConfigurationConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    configurationConnections = v7->_configurationConnections;
    v7->_configurationConnections = v8;
  }

  return v7;
}

- (id)configurationProtocol
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_endpoint];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = +[TKTokenConfiguration interfaceForProtocol];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    v7 = +[TKTokenConfiguration interfaceForChangeProtocol];
    [(NSXPCConnection *)self->_connection setExportedInterface:v7];

    v8 = [[TKTokenConfigurationConnectionProxy alloc] initWithConnection:self];
    [(NSXPCConnection *)self->_connection setExportedObject:v8];

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4];
}

void __55__TKTokenConfigurationConnection_configurationProtocol__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_tokencfg();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__TKTokenConfigurationConnection_configurationProtocol__block_invoke_cold_1(v2, v3);
  }
}

- (void)registerForConfigurationChange:(id)a3
{
  v5 = a3;
  v4 = self->_configurationConnections;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_configurationConnections addObject:v5];
  objc_sync_exit(v4);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TKTokenConfigurationConnection;
  [(TKTokenConfigurationConnection *)&v3 dealloc];
}

- (void)tokenConfigurationChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_configurationConnections;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_configurationConnections;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) tokenConfigurationChanged:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x1E69E9840];
}

void __55__TKTokenConfigurationConnection_configurationProtocol__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "Failed to send configuration request: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end