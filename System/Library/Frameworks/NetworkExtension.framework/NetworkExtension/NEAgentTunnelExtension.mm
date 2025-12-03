@interface NEAgentTunnelExtension
- (id)driverInterface;
- (id)managerInterface;
- (void)attachIPCWithCompletionHandler:(id)handler;
- (void)connectWithParameters:(id)parameters;
- (void)extension:(id)extension didRequestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote effectivePID:(int)d completionHandler:(id)handler;
- (void)extension:(id)extension didSetTunnelConfiguration:(id)configuration completionHandler:(id)handler;
- (void)extension:(id)extension didStartWithError:(id)error;
- (void)extensionDidDetachIPC:(id)c;
- (void)handleAppsUninstalled:(id)uninstalled;
- (void)handleAppsUpdateBegins:(id)begins;
- (void)handleAppsUpdateEnding:(id)ending;
- (void)handleAppsUpdateEnds:(id)ends;
- (void)handleCancel;
- (void)sendExtensionFailed;
- (void)sendStatus:(void *)status withDisconnectError:;
@end

@implementation NEAgentTunnelExtension

- (void)sendExtensionFailed
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  [(NEAgentTunnelExtension *)self sendStatus:v3 withDisconnectError:?];
}

- (void)sendStatus:(void *)status withDisconnectError:
{
  if (self)
  {
    statusCopy = status;
    managerObjectFactory = [self managerObjectFactory];
    managerObject = [managerObjectFactory managerObject];

    [managerObject setStatus:a2 error:statusCopy];
  }
}

- (void)extension:(id)extension didRequestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote effectivePID:(int)d completionHandler:(id)handler
{
  socketCopy = socket;
  v32 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  interfaceCopy = interface;
  localCopy = local;
  remoteCopy = remote;
  handlerCopy = handler;
  v19 = ne_log_obj();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (socketCopy)
  {
    if (v20)
    {
      v28 = 138412290;
      selfCopy5 = self;
      _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@: Getting IKE Socket", &v28, 0xCu);
    }

    if (!interfaceCopy || !localCopy || !remoteCopy)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412290;
        selfCopy5 = self;
        v26 = "%@: Failed to get IKE Socket, null local/remote address or interface name";
        goto LABEL_21;
      }

LABEL_18:

      handlerCopy[2](handlerCopy, 0);
      goto LABEL_19;
    }

    [localCopy bytes];
    [remoteCopy bytes];
    [interfaceCopy UTF8String];
    IKESocket = NEHelperGetIKESocket();
  }

  else
  {
    if (v20)
    {
      v28 = 138412290;
      selfCopy5 = self;
      _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@: Getting PFKey Socket", &v28, 0xCu);
    }

    IKESocket = NEHelperGetPFKeySocket();
  }

  v22 = IKESocket;
  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412546;
    selfCopy5 = self;
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
      selfCopy5 = self;
      v26 = "%@: Failed to get socket";
LABEL_21:
      _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v26, &v28, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v24 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v22 closeOnDealloc:1];
  (handlerCopy)[2](handlerCopy, v24);

LABEL_19:
  v27 = *MEMORY[0x1E69E9840];
}

- (void)extensionDidDetachIPC:(id)c
{
  managerObjectFactory = [(NEAgentExtension *)self managerObjectFactory];
  managerObject = [managerObjectFactory managerObject];

  [managerObject handleIPCDetached];
}

- (void)extension:(id)extension didSetTunnelConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  managerObjectFactory = [(NEAgentExtension *)self managerObjectFactory];
  managerObject = [managerObjectFactory managerObject];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__NEAgentTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_1E7F0B628;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [managerObject setTunnelNetworkSettings:configurationCopy completionHandler:v12];
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

- (void)extension:(id)extension didStartWithError:(id)error
{
  if (error)
  {
    v4 = 0;
    errorCopy = error;
  }

  else
  {
    v4 = 4;
    errorCopy = 0;
  }

  [(NEAgentTunnelExtension *)self sendStatus:v4 withDisconnectError:errorCopy];
}

- (void)attachIPCWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext establishIPCWithCompletionHandler:handlerCopy];
}

- (void)connectWithParameters:(id)parameters
{
  parametersCopy = parameters;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  if ([parametersCopy count])
  {
    v6 = parametersCopy;
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
  [sessionContext startWithOptions:v6 completionHandler:v7];
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

- (void)handleAppsUpdateEnds:(id)ends
{
  endsCopy = ends;
  queue = [(NEAgentExtension *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__NEAgentTunnelExtension_handleAppsUpdateEnds___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = endsCopy;
  v6 = endsCopy;
  dispatch_async(queue, v7);
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

- (void)handleAppsUpdateEnding:(id)ending
{
  endingCopy = ending;
  queue = [(NEAgentExtension *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__NEAgentTunnelExtension_handleAppsUpdateEnding___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = endingCopy;
  v6 = endingCopy;
  dispatch_async(queue, v7);
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

- (void)handleAppsUpdateBegins:(id)begins
{
  beginsCopy = begins;
  queue = [(NEAgentExtension *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__NEAgentTunnelExtension_handleAppsUpdateBegins___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = beginsCopy;
  v6 = beginsCopy;
  dispatch_async(queue, v7);
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

- (void)handleAppsUninstalled:(id)uninstalled
{
  v15 = *MEMORY[0x1E69E9840];
  uninstalledCopy = uninstalled;
  pluginType = [(NEAgentExtension *)self pluginType];
  if (pluginType)
  {
    v6 = pluginType;
    pluginType2 = [(NEAgentExtension *)self pluginType];
    v8 = [uninstalledCopy containsObject:pluginType2];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        pluginType3 = [(NEAgentExtension *)self pluginType];
        v13 = 138412290;
        v14 = pluginType3;
        _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "App for plugin type %@ has been uninstalled, stopping", &v13, 0xCu);
      }

      sessionContext = [(NEAgentExtension *)self sessionContext];
      [sessionContext stopWithReason:6];
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

  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext stopWithReason:42];
}

@end