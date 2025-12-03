@interface SRDebugInfoClient
+ (id)connectionToDaemon;
+ (id)remoteInterface;
+ (void)initialize;
- (SRDebugInfoClient)init;
- (SRDebugInfoClient)initWithConnection:(id)connection;
- (void)datastoreListingWithReply:(id)reply;
- (void)dealloc;
- (void)dumpClientsWithReply:(id)reply;
- (void)dumpConfigurationsWithReply:(id)reply;
- (void)dumpDefaultsWithReply:(id)reply;
- (void)dumpStateCacheWithReply:(id)reply;
- (void)fetchDeviceInformationForDeviceIdentifiers:(id)identifiers reply:(id)reply;
- (void)fetchEligibilityStatusForBundleIdentifier:(id)identifier sensor:(id)sensor reply:(id)reply;
- (void)invalidate;
- (void)setupConnection;
@end

@implementation SRDebugInfoClient

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRDebugInfoClientLog = os_log_create("com.apple.SensorKit", "SRDebugInfoClient");
  }
}

- (SRDebugInfoClient)init
{
  connectionToDaemon = [objc_opt_class() connectionToDaemon];

  return [(SRDebugInfoClient *)self initWithConnection:connectionToDaemon];
}

- (SRDebugInfoClient)initWithConnection:(id)connection
{
  v6.receiver = self;
  v6.super_class = SRDebugInfoClient;
  v4 = [(SRDebugInfoClient *)&v6 init];
  if (v4)
  {
    v4->_connection = connection;
    [(SRDebugInfoClient *)v4 setupConnection];
  }

  return v4;
}

- (void)invalidate
{
  [(NSXPCConnection *)[(SRDebugInfoClient *)self connection] setExportedObject:0];
  connection = [(SRDebugInfoClient *)self connection];

  [(NSXPCConnection *)connection invalidate];
}

- (void)dealloc
{
  [(SRDebugInfoClient *)self setConnection:0];
  v3.receiver = self;
  v3.super_class = SRDebugInfoClient;
  [(SRDebugInfoClient *)&v3 dealloc];
}

+ (id)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48D7E88];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, v7, objc_opt_class(), 0), sel_dumpClientsWithReply_, 0, 1}];
  return v2;
}

+ (id)connectionToDaemon
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SensorKit.debugging" options:4096];

  return v2;
}

- (void)setupConnection
{
  -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  -[NSXPCConnection setExportedInterface:](self->_connection, "setExportedInterface:", [objc_opt_class() clientInterface]);
  connection = self->_connection;

  [(NSXPCConnection *)connection resume];
}

- (void)dumpClientsWithReply:(id)reply
{
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SRDebugInfoClient_dumpClientsWithReply___block_invoke;
  v7[3] = &unk_1E8330408;
  v7[4] = reply;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SRDebugInfoClient_dumpClientsWithReply___block_invoke_30;
  v6[3] = &unk_1E83309E8;
  v6[4] = reply;
  [v5 dumpClientsWithReply:v6];
}

uint64_t __42__SRDebugInfoClient_dumpClientsWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [SRError errorWithCode:8193];
  result = (*(v5 + 16))(v5, MEMORY[0x1E695E0F8], v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dumpStateCacheWithReply:(id)reply
{
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SRDebugInfoClient_dumpStateCacheWithReply___block_invoke;
  v7[3] = &unk_1E8330408;
  v7[4] = reply;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SRDebugInfoClient_dumpStateCacheWithReply___block_invoke_32;
  v6[3] = &unk_1E83309E8;
  v6[4] = reply;
  [v5 dumpStateCacheWithReply:v6];
}

uint64_t __45__SRDebugInfoClient_dumpStateCacheWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [SRError errorWithCode:8193]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)datastoreListingWithReply:(id)reply
{
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SRDebugInfoClient_datastoreListingWithReply___block_invoke;
  v7[3] = &unk_1E8330408;
  v7[4] = reply;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SRDebugInfoClient_datastoreListingWithReply___block_invoke_33;
  v6[3] = &unk_1E8330BB0;
  v6[4] = reply;
  [v5 listDatastoreWithReply:v6];
}

uint64_t __47__SRDebugInfoClient_datastoreListingWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [SRError errorWithCode:8193]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __47__SRDebugInfoClient_datastoreListingWithReply___block_invoke_33(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)dumpConfigurationsWithReply:(id)reply
{
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SRDebugInfoClient_dumpConfigurationsWithReply___block_invoke;
  v7[3] = &unk_1E8330408;
  v7[4] = reply;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SRDebugInfoClient_dumpConfigurationsWithReply___block_invoke_36;
  v6[3] = &unk_1E83309E8;
  v6[4] = reply;
  [v5 dumpConfigurationsWithReply:v6];
}

uint64_t __49__SRDebugInfoClient_dumpConfigurationsWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [SRError errorWithCode:8193];
  result = (*(v5 + 16))(v5, MEMORY[0x1E695E0F8], v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dumpDefaultsWithReply:(id)reply
{
  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SRDebugInfoClient_dumpDefaultsWithReply___block_invoke;
  v7[3] = &unk_1E8330408;
  v7[4] = reply;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SRDebugInfoClient_dumpDefaultsWithReply___block_invoke_37;
  v6[3] = &unk_1E83309E8;
  v6[4] = reply;
  [v5 dumpDefaultsWithReply:v6];
}

uint64_t __43__SRDebugInfoClient_dumpDefaultsWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [SRError errorWithCode:8193];
  result = (*(v5 + 16))(v5, MEMORY[0x1E695E0F8], v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchEligibilityStatusForBundleIdentifier:(id)identifier sensor:(id)sensor reply:(id)reply
{
  connection = self->_connection;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SRDebugInfoClient_fetchEligibilityStatusForBundleIdentifier_sensor_reply___block_invoke;
  v6[3] = &unk_1E8330408;
  v6[4] = reply;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v6), "fetchEligibilityStatusForBundleIdentifier:sensor:reply:", identifier, sensor, reply}];
}

uint64_t __76__SRDebugInfoClient_fetchEligibilityStatusForBundleIdentifier_sensor_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [SRError errorWithCode:8193]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchDeviceInformationForDeviceIdentifiers:(id)identifiers reply:(id)reply
{
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__SRDebugInfoClient_fetchDeviceInformationForDeviceIdentifiers_reply___block_invoke;
  v5[3] = &unk_1E8330408;
  v5[4] = reply;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "fetchDeviceInformationForDeviceIdentifiers:reply:", identifiers, reply}];
}

uint64_t __70__SRDebugInfoClient_fetchDeviceInformationForDeviceIdentifiers_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRDebugInfoClientLog;
  if (os_log_type_enabled(SRDebugInfoClientLog, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [SRError errorWithCode:8193];
  result = (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end