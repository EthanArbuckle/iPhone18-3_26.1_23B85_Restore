@interface NEAgentPacketTunnelExtension
- (void)extension:(id)extension didSetTunnelConfiguration:(id)configuration completionHandler:(id)handler;
- (void)handleExtensionStartedWithCompletionHandler:(id)handler;
- (void)setAppUUIDMap:(id)map;
@end

@implementation NEAgentPacketTunnelExtension

- (void)setAppUUIDMap:(id)map
{
  mapCopy = map;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext setAppUUIDMap:mapCopy];
}

- (void)extension:(id)extension didSetTunnelConfiguration:(id)configuration completionHandler:(id)handler
{
  extensionCopy = extension;
  configurationCopy = configuration;
  handlerCopy = handler;
  if (self && self->_interfaceType == 3 && !self->_isUserEthernetInterfaceCreated)
  {
    v11 = configurationCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ethernetAddress = [v11 ethernetAddress];
      v13 = createEthernetAddressFromString(ethernetAddress);

      v14 = [NEVirtualInterfaceParameters alloc];
      interfaceType = self->_interfaceType;
      v16 = [v11 MTU];
      v17 = [(NEVirtualInterfaceParameters *)v14 initWithType:interfaceType maxPendingPackets:64 ethernetAddress:v13 mtu:v16];

      managerObjectFactory = [(NEAgentExtension *)self managerObjectFactory];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __86__NEAgentPacketTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke;
      v25[3] = &unk_1E7F0B628;
      v25[4] = self;
      v19 = handlerCopy;
      v26 = v19;
      v20 = [managerObjectFactory managerObjectWithErrorHandler:v25];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __86__NEAgentPacketTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke_9;
      v21[3] = &unk_1E7F092F8;
      v21[4] = self;
      v24 = v19;
      v22 = extensionCopy;
      v23 = v11;
      [v20 createVirtualInterfaceWithParameters:v17 completionHandler:v21];
    }

    else
    {
      v27.receiver = self;
      v27.super_class = NEAgentPacketTunnelExtension;
      [(NEAgentTunnelExtension *)&v27 extension:extensionCopy didSetTunnelConfiguration:v11 completionHandler:handlerCopy];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = NEAgentPacketTunnelExtension;
    [(NEAgentTunnelExtension *)&v28 extension:extensionCopy didSetTunnelConfiguration:configurationCopy completionHandler:handlerCopy];
  }
}

void __86__NEAgentPacketTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@: Got an error on the XPC connection while waiting for a virtual interface: %@", &v8, 0x16u);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __86__NEAgentPacketTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke_9(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__NEAgentPacketTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E7F0A228;
  v12 = v3;
  v10 = a1[4];
  v5 = a1[7];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = v5;
  *&v8 = v10;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v7;
  v9 = v3;
  dispatch_async(v4, block);
}

void __86__NEAgentPacketTunnelExtension_extension_didSetTunnelConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(v2 + 128) = 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v3 = 0;
    }

    v4 = [v3 sessionContext];
    [v4 setupVirtualInterface:*(a1 + 32)];

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v12.receiver = *(a1 + 40);
    v12.super_class = NEAgentPacketTunnelExtension;
    objc_msgSendSuper2(&v12, sel_extension_didSetTunnelConfiguration_completionHandler_, v5, v6, v7);
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v14 = v11;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: Failed to create a user ethernet virtual interface", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 64) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleExtensionStartedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7F092D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [sessionContext fetchVirtualInterfaceTypeWithCompletionHandler:v7];
}

void __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 138412546;
    v19 = v12;
    v20 = 2048;
    v21 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: Fetched virtual interface type %ld", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 136) = a2;
  }

  if (a2 == 3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) managerObjectFactory];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke_1;
    v16[3] = &unk_1E7F0B628;
    v7 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v7;
    v8 = [v6 managerObjectWithErrorHandler:v16];

    v9 = [[NEVirtualInterfaceParameters alloc] initWithType:a2 maxPendingPackets:64 ethernetAddress:0 mtu:0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E7F092A8;
    v10 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v15 = a2;
    v14 = v10;
    [v8 createVirtualInterfaceWithParameters:v9 completionHandler:v13];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@: Got an error on the XPC connection while waiting for a virtual interface: %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7F09280;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v12 = *(a1 + 48);
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __76__NEAgentPacketTunnelExtension_handleExtensionStartedWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) sessionContext];
    [v2 setupVirtualInterface:*(a1 + 32)];
  }

  else
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 56);
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "%@: Failed to obtain a virtual interface of type %ld, aborting", &v7, 0x16u);
    }
  }

  result = (*(*(a1 + 48) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end