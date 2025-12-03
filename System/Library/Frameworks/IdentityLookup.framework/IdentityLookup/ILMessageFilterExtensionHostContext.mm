@interface ILMessageFilterExtensionHostContext
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)deferQueryRequestToNetworkWithReply:(id)reply;
- (void)deferReportRequestToNetworkWithReply:(id)reply;
- (void)finish;
- (void)handleCapabilitiesQueryRequest:(id)request completion:(id)completion;
- (void)handleQueryRequest:(id)request completion:(id)completion;
- (void)handleReportRequest:(id)request completion:(id)completion;
@end

@implementation ILMessageFilterExtensionHostContext

- (void)handleQueryRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke;
  v13[3] = &unk_278A5E3D0;
  v7 = completionCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ILMessageFilterExtensionHostContext_handleQueryRequest_completion___block_invoke_1;
  v11[3] = &unk_278A5E3F8;
  v12 = v7;
  v10 = v7;
  [v9 handleQueryRequest:requestCopy reply:v11];
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

- (void)handleReportRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ILMessageFilterExtensionHostContext_handleReportRequest_completion___block_invoke;
  v13[3] = &unk_278A5E3D0;
  v7 = completionCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__ILMessageFilterExtensionHostContext_handleReportRequest_completion___block_invoke_3;
  v11[3] = &unk_278A5E420;
  v12 = v7;
  v10 = v7;
  [v9 handleReportRequest:requestCopy reply:v11];
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

- (void)handleCapabilitiesQueryRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__ILMessageFilterExtensionHostContext_handleCapabilitiesQueryRequest_completion___block_invoke;
  v13[3] = &unk_278A5E3D0;
  v7 = completionCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(ILMessageFilterExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ILMessageFilterExtensionHostContext_handleCapabilitiesQueryRequest_completion___block_invoke_5;
  v11[3] = &unk_278A5E448;
  v12 = v7;
  v10 = v7;
  [v9 handleCapabilitiesQueryRequest:requestCopy reply:v11];
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

- (void)deferQueryRequestToNetworkWithReply:(id)reply
{
  replyCopy = reply;
  deferQueryRequestToNetwork = [(ILMessageFilterExtensionHostContext *)self deferQueryRequestToNetwork];

  if (deferQueryRequestToNetwork)
  {
    deferQueryRequestToNetwork2 = [(ILMessageFilterExtensionHostContext *)self deferQueryRequestToNetwork];
    deferQueryRequestToNetwork2[2](deferQueryRequestToNetwork2, replyCopy);
  }

  else
  {
    v6 = ILDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionHostContext deferQueryRequestToNetworkWithReply:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IdentityLookup.error.messagefilter" code:1 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v7);
  }
}

- (void)deferReportRequestToNetworkWithReply:(id)reply
{
  replyCopy = reply;
  deferReportRequestToNetwork = [(ILMessageFilterExtensionHostContext *)self deferReportRequestToNetwork];

  if (deferReportRequestToNetwork)
  {
    deferReportRequestToNetwork2 = [(ILMessageFilterExtensionHostContext *)self deferReportRequestToNetwork];
    deferReportRequestToNetwork2[2](deferReportRequestToNetwork2, replyCopy);
  }

  else
  {
    v6 = ILDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionHostContext deferReportRequestToNetworkWithReply:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IdentityLookup.error.messagefilter" code:1 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v7);
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(ILMessageFilterExtensionHostContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

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