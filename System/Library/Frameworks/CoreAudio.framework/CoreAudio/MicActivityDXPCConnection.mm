@interface MicActivityDXPCConnection
- (MicActivityDXPCConnection)init;
- (void)disableMicrophoneActivityDetection:(id)detection;
- (void)enableMicrophoneActivityDetection:(id)detection;
- (void)listenForMicrophoneActivity:(id)activity reply:(id)reply;
- (void)stopListeningForMicrophoneActivity:(id)activity;
@end

@implementation MicActivityDXPCConnection

- (void)stopListeningForMicrophoneActivity:(id)activity
{
  v6 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  [(MicActivityClientProtocol *)self->server stopListeningForMicrophoneActivity:activityCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)listenForMicrophoneActivity:(id)activity reply:(id)reply
{
  v9 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  replyCopy = reply;
  [(MicActivityClientProtocol *)self->server listenForMicrophoneActivity:activityCopy reply:replyCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)disableMicrophoneActivityDetection:(id)detection
{
  v6 = *MEMORY[0x1E69E9840];
  detectionCopy = detection;
  [(MicActivityClientProtocol *)self->server disableMicrophoneActivityDetection:detectionCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)enableMicrophoneActivityDetection:(id)detection
{
  v6 = *MEMORY[0x1E69E9840];
  detectionCopy = detection;
  [(MicActivityClientProtocol *)self->server enableMicrophoneActivityDetection:detectionCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (MicActivityDXPCConnection)init
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MicActivityDXPCConnection;
  v2 = [(MicActivityDXPCConnection *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.isolated.micactivityd" options:4096];
    connection = v2->connection;
    v2->connection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599B200];
    [(NSXPCConnection *)v2->connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->connection setInterruptionHandler:&__block_literal_global_7273];
    [(NSXPCConnection *)v2->connection setInvalidationHandler:&__block_literal_global_13];
    v6 = [(NSXPCConnection *)v2->connection remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
    server = v2->server;
    v2->server = v6;

    [(NSXPCConnection *)v2->connection resume];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void __33__MicActivityDXPCConnection_init__block_invoke_14(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v5;
    AMCP::Log::Scope::get_os_log_t(*v5);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v7 = *v5;
    AMCP::Log::Scope::get_os_log_t(*v5);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_104[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_104[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
    }

    v15 = [(AMCP::Log::AMCP_Scope_Registry *)v3 localizedDescription];
    v16 = [(AMCP::Log::AMCP_Scope_Registry *)v3 localizedFailureReason];
    v17 = 136316162;
    v18 = v14;
    v19 = 1024;
    v20 = 36;
    v21 = 2112;
    v22 = @"Error on remote object proxy";
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d %@: %@ %@\n", &v17, 0x30u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __33__MicActivityDXPCConnection_init__block_invoke_11(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 0;
    v7 = 0;
    v8 = 47;
    do
    {
      v9 = &aLibraryCachesC_104[v6];
      if (v8 == 47)
      {
        v7 = &aLibraryCachesC_104[v6];
      }

      v8 = v9[1];
      if (!v9[1])
      {
        break;
      }
    }

    while (v6++ < 0xFFF);
    if (v7)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
    }

    v12 = 136315394;
    v13 = v11;
    v14 = 1024;
    v15 = 33;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Connection with MAD was invalidated", &v12, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __33__MicActivityDXPCConnection_init__block_invoke(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 0;
    v7 = 0;
    v8 = 47;
    do
    {
      v9 = &aLibraryCachesC_104[v6];
      if (v8 == 47)
      {
        v7 = &aLibraryCachesC_104[v6];
      }

      v8 = v9[1];
      if (!v9[1])
      {
        break;
      }
    }

    while (v6++ < 0xFFF);
    if (v7)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
    }

    v12 = 136315394;
    v13 = v11;
    v14 = 1024;
    v15 = 30;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Connection with MAD was interrupted", &v12, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end