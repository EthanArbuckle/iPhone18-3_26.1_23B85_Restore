@interface ILMessageFilterExtensionHostContext
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)deferQueryRequestToNetworkWithReply:(id)a3;
- (void)deferReportRequestToNetworkWithReply:(id)a3;
- (void)finish;
- (void)handleCapabilitiesQueryRequest:(id)a3 completion:(id)a4;
- (void)handleQueryRequest:(id)a3 completion:(id)a4;
- (void)handleReportRequest:(id)a3 completion:(id)a4;
@end

@implementation ILMessageFilterExtensionHostContext

- (void)handleQueryRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke;
  v13[3] = &unk_278A5E3D0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_1;
  v11[3] = &unk_278A5E3F8;
  v12 = v7;
  v10 = v7;
  [v9 handleQueryRequest:v8 reply:v11];
}

void __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "response: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleReportRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ILMessageFilterExtensionHostContext_handleReportRequest_completion___block_invoke;
  v13[3] = &unk_278A5E3D0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__ILMessageFilterExtensionHostContext_handleReportRequest_completion___block_invoke_3;
  v11[3] = &unk_278A5E420;
  v12 = v7;
  v10 = v7;
  [v9 handleReportRequest:v8 reply:v11];
}

void __70__ILMessageFilterExtensionHostContext_handleReportRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __70__ILMessageFilterExtensionHostContext_handleReportRequest_completion___block_invoke_3(uint64_t a1)
{
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238A41000, v2, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)handleCapabilitiesQueryRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__ILMessageFilterExtensionHostContext_handleCapabilitiesQueryRequest_completion___block_invoke;
  v13[3] = &unk_278A5E3D0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ILMessageFilterExtensionHostContext_handleCapabilitiesQueryRequest_completion___block_invoke_5;
  v11[3] = &unk_278A5E448;
  v12 = v7;
  v10 = v7;
  [v9 handleCapabilitiesQueryRequest:v8 reply:v11];
}

void __81__ILMessageFilterExtensionHostContext_handleCapabilitiesQueryRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __81__ILMessageFilterExtensionHostContext_handleCapabilitiesQueryRequest_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "response: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)finish
{
  v2 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:&__block_literal_global];
  [v2 finish];
}

void __45__ILMessageFilterExtensionHostContext_finish__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_cold_1();
  }
}

- (void)deferQueryRequestToNetworkWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterExtensionHostContext *)self deferQueryRequestToNetwork];

  if (v5)
  {
    v8 = [(ILMessageFilterExtensionHostContext *)self deferQueryRequestToNetwork];
    v8[2](v8, v4);
  }

  else
  {
    v6 = ILDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionHostContext deferQueryRequestToNetworkWithReply:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IdentityLookup.error.messagefilter" code:1 userInfo:0];
    (*(v4 + 2))(v4, 0, v7);
  }
}

- (void)deferReportRequestToNetworkWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterExtensionHostContext *)self deferReportRequestToNetwork];

  if (v5)
  {
    v8 = [(ILMessageFilterExtensionHostContext *)self deferReportRequestToNetwork];
    v8[2](v8, v4);
  }

  else
  {
    v6 = ILDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionHostContext deferReportRequestToNetworkWithReply:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IdentityLookup.error.messagefilter" code:1 userInfo:0];
    (*(v4 + 2))(v4, 0, v7);
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterExtensionHostContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

void __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deferQueryRequestToNetworkWithReply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "Extension requested to defer query request to network but no deferQueryRequestToNetwork block is set on %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deferReportRequestToNetworkWithReply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "Extension requested to defer report request to network but no deferReportRequestToNetwork block is set on %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end