@interface NEAgentAppProxyExtension
- (id)driverInterface;
- (id)managerInterface;
- (void)connectWithParameters:(id)a3;
- (void)extension:(id)a3 didRequestFlowDivertControlSocketWithCompletionHandler:(id)a4;
@end

@implementation NEAgentAppProxyExtension

- (void)extension:(id)a3 didRequestFlowDivertControlSocketWithCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [(NEAgentExtension *)self managerObjectFactory];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__NEAgentAppProxyExtension_extension_didRequestFlowDivertControlSocketWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7F0B4A8;
  v11[4] = self;
  v7 = [v6 managerObjectWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__NEAgentAppProxyExtension_extension_didRequestFlowDivertControlSocketWithCompletionHandler___block_invoke_38;
  v9[3] = &unk_1E7F0A800;
  v10 = v5;
  v8 = v5;
  [v7 createFlowDivertControlSocketWithCompletionHandler:v9];
}

void __93__NEAgentAppProxyExtension_extension_didRequestFlowDivertControlSocketWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an error on the XPC connection while creating a flow divert control socket: %@", &v6, 0xCu);
  }

  [(NEAgentTunnelExtension *)*(a1 + 32) sendStatus:0 withDisconnectError:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectWithParameters:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self managerObjectFactory];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NEAgentAppProxyExtension_connectWithParameters___block_invoke;
  v10[3] = &unk_1E7F0B4A8;
  v10[4] = self;
  v6 = [v5 managerObjectWithErrorHandler:v10];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__NEAgentAppProxyExtension_connectWithParameters___block_invoke_36;
  v8[3] = &unk_1E7F0A7D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 createFlowDivertControlSocketWithCompletionHandler:v8];
}

void __50__NEAgentAppProxyExtension_connectWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an error on the XPC connection while creating a flow divert control socket: %@", &v6, 0xCu);
  }

  [(NEAgentTunnelExtension *)*(a1 + 32) sendStatus:0 withDisconnectError:?];
  v5 = *MEMORY[0x1E69E9840];
}

void __50__NEAgentAppProxyExtension_connectWithParameters___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__NEAgentAppProxyExtension_connectWithParameters___block_invoke_2;
  block[3] = &unk_1E7F0A7B0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __50__NEAgentAppProxyExtension_connectWithParameters___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) sessionContext];
    [v2 setInitialFlowDivertControlSocket:*(a1 + 32)];
    v3 = *(a1 + 48);
    v6.receiver = *(a1 + 40);
    v6.super_class = NEAgentAppProxyExtension;
    objc_msgSendSuper2(&v6, sel_connectWithParameters_, v3);
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to get a flow divert control socket", v5, 2u);
    }

    [(NEAgentTunnelExtension *)*(a1 + 40) sendStatus:0 withDisconnectError:?];
  }
}

- (id)driverInterface
{
  if (driverInterface_onceToken_22258 != -1)
  {
    dispatch_once(&driverInterface_onceToken_22258, &__block_literal_global_14_22259);
  }

  v3 = driverInterface_driverInterface_22260;

  return v3;
}

uint64_t __43__NEAgentAppProxyExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C19A0];
  v1 = driverInterface_driverInterface_22260;
  driverInterface_driverInterface_22260 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)managerInterface
{
  if (managerInterface_onceToken_22263 != -1)
  {
    dispatch_once(&managerInterface_onceToken_22263, &__block_literal_global_22264);
  }

  v3 = managerInterface_managerInterface_22265;

  return v3;
}

uint64_t __44__NEAgentAppProxyExtension_managerInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38D5050];
  v1 = managerInterface_managerInterface_22265;
  managerInterface_managerInterface_22265 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end