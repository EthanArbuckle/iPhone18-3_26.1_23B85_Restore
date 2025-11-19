@interface ATXSportsClient
+ (id)sharedInstance;
- (ATXSportsClient)init;
- (void)requestedSchedulesForTeamsWithReply:(id)a3;
@end

@implementation ATXSportsClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ATXSportsClient sharedInstance];
  }

  v3 = sharedInstance_client;

  return v3;
}

uint64_t __33__ATXSportsClient_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_client;
  sharedInstance_client = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ATXSportsClient)init
{
  v7.receiver = self;
  v7.super_class = ATXSportsClient;
  v2 = [(ATXSportsClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.sports.xpc" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = ATXSportsInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_19_1];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_22];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

void __23__ATXSportsClient_init__block_invoke()
{
  v0 = __atxlog_handle_xpc();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __23__ATXSportsClient_init__block_invoke_cold_1(v0);
  }
}

void __23__ATXSportsClient_init__block_invoke_20()
{
  v0 = __atxlog_handle_xpc();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Sports xpc connection invalidated", v1, 2u);
  }
}

- (void)requestedSchedulesForTeamsWithReply:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ATXSportsClient_requestedSchedulesForTeamsWithReply___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 requestedSchedulesForTeamsWithReply:v6];
}

void __55__ATXSportsClient_requestedSchedulesForTeamsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_xpc();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__ATXSportsClient_requestedSchedulesForTeamsWithReply___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __55__ATXSportsClient_requestedSchedulesForTeamsWithReply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[ATXSportsClient requestedSchedulesForTeamsWithReply:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching remote object proxy: %@", &v2, 0x16u);
}

@end