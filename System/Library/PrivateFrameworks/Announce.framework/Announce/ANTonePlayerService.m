@interface ANTonePlayerService
- (ANTonePlayerService)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ANTonePlayerService

- (ANTonePlayerService)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ANTonePlayerService;
  v2 = [(ANTonePlayerService *)&v9 init];
  if (v2)
  {
    v3 = ANLogHandleTonePlayerService();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = &stru_2836DAA20;
      v12 = 2112;
      v13 = @"com.apple.announced.toneplayer";
      _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "%@Creating Connection to Service: %@", buf, 0x16u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.announced.toneplayer" options:4096];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E9568];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_11];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_49];
    [(NSXPCConnection *)v2->_connection resume];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void __27__ANTonePlayerService_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ANLogHandleTonePlayerService();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v0, OS_LOG_TYPE_DEFAULT, "%@Connection to Announced was interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __27__ANTonePlayerService_init__block_invoke_47()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ANLogHandleTonePlayerService();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v0, OS_LOG_TYPE_DEFAULT, "%@Connection to Announced was invalidated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(ANTonePlayerService *)self invalidate];
  v3.receiver = self;
  v3.super_class = ANTonePlayerService;
  [(ANTonePlayerService *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = [(ANTonePlayerService *)self connection];
  [v2 invalidate];
}

void __78__ANTonePlayerService_playTone_audioSessionID_endpointUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleTonePlayerService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = &stru_2836DAA20;
    v9 = 2080;
    v10 = "[ANTonePlayerService playTone:audioSessionID:endpointUUID:completionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __78__ANTonePlayerService_playTone_audioSessionID_endpointUUID_completionHandler___block_invoke_53(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ANLogHandleTonePlayerService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = &stru_2836DAA20;
      v9 = 2080;
      v10 = "[ANTonePlayerService playTone:audioSessionID:endpointUUID:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end