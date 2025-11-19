@interface NEAgentTunnelExtension
- (id)driverInterface;
- (id)managerInterface;
- (void)attachIPCWithCompletionHandler:(id)a3;
- (void)connectWithParameters:(id)a3;
- (void)extension:(id)a3 didRequestSocket:(BOOL)a4 interface:(id)a5 local:(id)a6 remote:(id)a7 effectivePID:(int)a8 completionHandler:(id)a9;
- (void)extension:(id)a3 didSetTunnelConfiguration:(id)a4 completionHandler:(id)a5;
- (void)extension:(id)a3 didStartWithError:(id)a4;
- (void)extensionDidDetachIPC:(id)a3;
- (void)handleAppsUninstalled:(id)a3;
- (void)handleAppsUpdateBegins:(id)a3;
- (void)handleAppsUpdateEnding:(id)a3;
- (void)handleAppsUpdateEnds:(id)a3;
- (void)handleCancel;
- (void)sendExtensionFailed;
- (void)sendStatus:(void *)a3 withDisconnectError:;
@end

@implementation NEAgentTunnelExtension

- (void)sendExtensionFailed
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  [(NEAgentTunnelExtension *)self sendStatus:v3 withDisconnectError:?];
}

- (void)sendStatus:(void *)a3 withDisconnectError:
{
  if (a1)
  {
    v5 = a3;
    v6 = [a1 managerObjectFactory];
    v7 = [v6 managerObject];

    [v7 setStatus:a2 error:v5];
  }
}

- (void)extension:(id)a3 didRequestSocket:(BOOL)a4 interface:(id)a5 local:(id)a6 remote:(id)a7 effectivePID:(int)a8 completionHandler:(id)a9
{
  v12 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = ne_log_obj();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v20)
    {
      v28 = 138412290;
      v29 = self;
      _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@: Getting IKE Socket", &v28, 0xCu);
    }

    if (!v15 || !v16 || !v17)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412290;
        v29 = self;
        v26 = "%@: Failed to get IKE Socket, null local/remote address or interface name";
        goto LABEL_21;
      }

LABEL_18:

      v18[2](v18, 0);
      goto LABEL_19;
    }

    [v16 bytes];
    [v17 bytes];
    [v15 UTF8String];
    IKESocket = NEHelperGetIKESocket();
  }

  else
  {
    if (v20)
    {
      v28 = 138412290;
      v29 = self;
      _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@: Getting PFKey Socket", &v28, 0xCu);
    }

    IKESocket = NEHelperGetPFKeySocket();
  }

  v22 = IKESocket;
  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412546;
    v29 = self;
    v30 = 1024;
    v31 = v22;
    _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "%@: NEHelper returned socket %d", &v28, 0x12u);
  }

  if ((v22 & 0x80000000) != 0)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = self;
      v26 = "%@: Failed to get socket";
LABEL_21:
      _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v26, &v28, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v24 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v22 closeOnDealloc:1];
  (v18)[2](v18, v24);

LABEL_19:
  v27 = *MEMORY[0x1E69E9840];
}

- (void)extensionDidDetachIPC:(id)a3
{
  v3 = [(NEAgentExtension *)self managerObjectFactory];
  v4 = [v3 managerObject];

  [v4 handleIPCDetached];
}

- (void)extension:(id)a3 didSetTunnelConfiguration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NEAgentExtension *)self managerObjectFactory];
  v10 = [v9 managerObject];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__NEAgentTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_1E7F0B628;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v10 setTunnelNetworkSettings:v8 completionHandler:v12];
}

void __80__NEAgentTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: setTunnelNetworkSettings done", buf, 0xCu);
  }

  if (*(a1 + 40))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "%@: setTunnelNetworkSettings calling completionHandler", buf, 0xCu);
    }

    v8 = [*(a1 + 32) queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__NEAgentTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke_35;
    v10[3] = &unk_1E7F0B588;
    v12 = *(a1 + 40);
    v11 = v3;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)extension:(id)a3 didStartWithError:(id)a4
{
  if (a4)
  {
    v4 = 0;
    v5 = a4;
  }

  else
  {
    v4 = 4;
    v5 = 0;
  }

  [(NEAgentTunnelExtension *)self sendStatus:v4 withDisconnectError:v5];
}

- (void)attachIPCWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self sessionContext];
  [v5 establishIPCWithCompletionHandler:v4];
}

- (void)connectWithParameters:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self sessionContext];
  if ([v4 count])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NEAgentTunnelExtension_connectWithParameters___block_invoke;
  v7[3] = &unk_1E7F0B4A8;
  v7[4] = self;
  [v5 startWithOptions:v6 completionHandler:v7];
}

void __48__NEAgentTunnelExtension_connectWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NEAgentTunnelExtension_connectWithParameters___block_invoke_2;
  v7[3] = &unk_1E7F0A0E8;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__NEAgentTunnelExtension_connectWithParameters___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:@"NEAgentErrorDomain"])
    {
      v4 = [*(a1 + 32) code];

      if (v4 == 3)
      {
        v5 = *(a1 + 40);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __48__NEAgentTunnelExtension_connectWithParameters___block_invoke_3;
        v8[3] = &unk_1E7F0B0E8;
        v8[4] = v5;
        [v5 handleDisposeWithCompletionHandler:v8];
        return;
      }
    }

    else
    {
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v6[120])
    {

      [v6 handleDisposeWithCompletionHandler:0];
    }

    else
    {
      v7 = *(a1 + 32);

      [(NEAgentTunnelExtension *)v6 sendStatus:v7 withDisconnectError:?];
    }
  }
}

- (id)driverInterface
{
  if (driverInterface_onceToken_7285 != -1)
  {
    dispatch_once(&driverInterface_onceToken_7285, &__block_literal_global_10);
  }

  v3 = driverInterface_driverInterface_7286;

  return v3;
}

void __41__NEAgentTunnelExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1890];
  v1 = driverInterface_driverInterface_7286;
  driverInterface_driverInterface_7286 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [driverInterface_driverInterface_7286 setClasses:v5 forSelector:sel_setAppUUIDMap_ argumentIndex:0 ofReply:0];
}

- (id)managerInterface
{
  if (managerInterface_onceToken != -1)
  {
    dispatch_once(&managerInterface_onceToken, &__block_literal_global_7293);
  }

  v3 = managerInterface_managerInterface;

  return v3;
}

uint64_t __42__NEAgentTunnelExtension_managerInterface__block_invoke()
{
  managerInterface_managerInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38D23D8];

  return MEMORY[0x1EEE66BB8]();
}

- (void)handleAppsUpdateEnds:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__NEAgentTunnelExtension_handleAppsUpdateEnds___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__NEAgentTunnelExtension_handleAppsUpdateEnds___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) appsUpdateEnding])
  {
    v2 = [*(a1 + 32) extensionIdentifier];
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) extensionIdentifier];
      LODWORD(v4) = [v4 containsObject:v5];

      if (v4)
      {
        [*(a1 + 32) setAppsUpdateStarted:0];
        [*(a1 + 32) setAppsUpdateEnding:0];
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(a1 + 32) extensionIdentifier];
          v9 = 138412290;
          v10 = v7;
          _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "Extension %@ has been updated, setting status to disconnected", &v9, 0xCu);
        }

        [(NEAgentTunnelExtension *)*(a1 + 32) sendStatus:0 withDisconnectError:?];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleAppsUpdateEnding:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__NEAgentTunnelExtension_handleAppsUpdateEnding___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__NEAgentTunnelExtension_handleAppsUpdateEnding___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) appsUpdateStarted])
  {
    if (([*(a1 + 32) appsUpdateEnding] & 1) == 0)
    {
      v2 = [*(a1 + 32) extensionIdentifier];
      if (v2)
      {
        v3 = v2;
        v4 = *(a1 + 40);
        v5 = [*(a1 + 32) extensionIdentifier];
        LODWORD(v4) = [v4 containsObject:v5];

        if (v4)
        {
          v6 = *(a1 + 32);

          [v6 setAppsUpdateEnding:1];
        }
      }
    }
  }
}

- (void)handleAppsUpdateBegins:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__NEAgentTunnelExtension_handleAppsUpdateBegins___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__NEAgentTunnelExtension_handleAppsUpdateBegins___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) appsUpdateStarted] & 1) == 0)
  {
    v2 = [*(a1 + 32) pluginType];
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) pluginType];
      LODWORD(v4) = [v4 containsObject:v5];

      if (v4)
      {
        [*(a1 + 32) setAppsUpdateStarted:1];
        v6 = [*(a1 + 32) sendFailedTimer];

        if (v6)
        {
          v7 = [*(a1 + 32) sendFailedTimer];
          dispatch_source_cancel(v7);

          [*(a1 + 32) setSendFailedTimer:0];
        }

        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) extensionIdentifier];
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Extension %@ is being updated, stopping", &v12, 0xCu);
        }

        [(NEAgentTunnelExtension *)*(a1 + 32) sendStatus:0 withDisconnectError:?];
        v10 = [*(a1 + 32) sessionContext];
        [v10 stopWithReason:40];
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleAppsUninstalled:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEAgentExtension *)self pluginType];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEAgentExtension *)self pluginType];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NEAgentExtension *)self pluginType];
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "App for plugin type %@ has been uninstalled, stopping", &v13, 0xCu);
      }

      v11 = [(NEAgentExtension *)self sessionContext];
      [v11 stopWithReason:6];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleCancel
{
  if (self)
  {
    self->_cancelCalled = 1;
  }

  v2 = [(NEAgentExtension *)self sessionContext];
  [v2 stopWithReason:42];
}

@end