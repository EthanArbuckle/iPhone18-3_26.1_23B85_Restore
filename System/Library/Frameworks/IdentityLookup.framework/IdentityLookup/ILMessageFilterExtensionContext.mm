@interface ILMessageFilterExtensionContext
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)deferQueryRequestToNetworkWithCompletion:(void *)completion;
- (void)deferReportRequestToNetworkWithCompletion:(id)a3;
- (void)finish;
- (void)handleCapabilitiesQueryRequest:(id)a3 reply:(id)a4;
- (void)handleQueryRequest:(id)a3 reply:(id)a4;
- (void)handleReportRequest:(id)a3 reply:(id)a4;
@end

@implementation ILMessageFilterExtensionContext

- (void)deferQueryRequestToNetworkWithCompletion:(void *)completion
{
  v4 = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke;
  v10[3] = &unk_278A5E3D0;
  v5 = v4;
  v11 = v5;
  v6 = [(ILMessageFilterExtensionContext *)self remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_1;
  v8[3] = &unk_278A5E5C8;
  v9 = v5;
  v7 = v5;
  [v6 deferQueryRequestToNetworkWithReply:v8];
}

void __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ILDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_238A41000, v8, OS_LOG_TYPE_DEFAULT, "response: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_1_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)deferReportRequestToNetworkWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__ILMessageFilterExtensionContext_deferReportRequestToNetworkWithCompletion___block_invoke;
  v10[3] = &unk_278A5E3D0;
  v5 = v4;
  v11 = v5;
  v6 = [(ILMessageFilterExtensionContext *)self remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__ILMessageFilterExtensionContext_deferReportRequestToNetworkWithCompletion___block_invoke_3;
  v8[3] = &unk_278A5E5C8;
  v9 = v5;
  v7 = v5;
  [v6 deferReportRequestToNetworkWithReply:v8];
}

void __77__ILMessageFilterExtensionContext_deferReportRequestToNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __77__ILMessageFilterExtensionContext_deferReportRequestToNetworkWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ILDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_238A41000, v8, OS_LOG_TYPE_DEFAULT, "response: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __77__ILMessageFilterExtensionContext_deferReportRequestToNetworkWithCompletion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)finish
{
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238A41000, v3, OS_LOG_TYPE_DEFAULT, "finishing extension context", v4, 2u);
  }

  [(ILMessageFilterExtensionContext *)self completeRequestReturningItems:0 completionHandler:0];
}

- (void)handleQueryRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ILMessageFilterExtensionContext *)self extension];
  v9 = [v8 conformsToProtocol:&unk_284B62D50];

  if (v9)
  {
    v10 = [(ILMessageFilterExtensionContext *)self extension];
    [v10 handleQueryRequest:v6 context:self completion:v7];
  }

  else
  {
    v11 = ILDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionContext handleQueryRequest:? reply:?];
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)handleReportRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ILMessageFilterExtensionContext *)self extension];
  v9 = [v8 conformsToProtocol:&unk_284B62DB0];

  if (v9)
  {
    v10 = [(ILMessageFilterExtensionContext *)self extension];
    [v10 handleReportRequest:v6 context:self completion:v7];
  }

  else
  {
    v11 = ILDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionContext handleReportRequest:? reply:?];
    }

    v7[2](v7);
  }
}

- (void)handleCapabilitiesQueryRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ILMessageFilterExtensionContext *)self extension];
  v9 = [v8 conformsToProtocol:&unk_284B62E10];

  if (v9)
  {
    v10 = [(ILMessageFilterExtensionContext *)self extension];
    [v10 handleCapabilitiesQueryRequest:v6 context:self completion:v7];
  }

  else
  {
    v11 = ILDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ILMessageFilterExtensionContext handleCapabilitiesQueryRequest:? reply:?];
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterExtensionContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

void __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "remoteObjectProxy error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__ILMessageFilterExtensionContext_deferQueryRequestToNetworkWithCompletion___block_invoke_1_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "deferQueryRequestToNetwork error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__ILMessageFilterExtensionContext_deferReportRequestToNetworkWithCompletion___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "deferReportRequestToNetwork error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleQueryRequest:(void *)a1 reply:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 extension];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_238A41000, v2, v3, "Extension %@ does not conform to protocol ILMessageFilterQueryHandling", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleReportRequest:(void *)a1 reply:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 extension];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_238A41000, v2, v3, "Extension %@ does not conform to protocol ILMessageFilterReportHandling", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCapabilitiesQueryRequest:(void *)a1 reply:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 extension];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_238A41000, v2, v3, "Extension %@ does not conform to protocol ILMessageFilterCapabilitiesQueryHandling", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end