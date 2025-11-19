@interface NEExtensionTunnelProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)cancelWithError:(id)a3;
- (void)establishIPCWithCompletionHandler:(id)a3;
- (void)handleIPCDetached;
- (void)setConfiguration:(id)a3 extensionIdentifier:(id)a4;
- (void)setTunnelConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation NEExtensionTunnelProviderContext

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  [(NEExtensionTunnelProviderContext *)self handleIPCDetached];
  v5.receiver = self;
  v5.super_class = NEExtensionTunnelProviderContext;
  [(NEExtensionProviderContext *)&v5 cancelWithError:v4];
}

- (void)establishIPCWithCompletionHandler:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self && objc_getProperty(self, v4, 88, 1))
  {
    Property = objc_getProperty(self, v6, 88, 1);
    if (Property && (v9 = Property, objc_sync_enter(v9), v11 = objc_getProperty(v9, v10, 16, 1), objc_sync_exit(v9), v9, v11))
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(handler) = 138412290;
        *(&handler + 4) = self;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@: IPC is already established", &handler, 0xCu);
      }

      v5[2](v5, 0);
    }

    else
    {
      v13 = objc_getProperty(self, v8, 88, 1);
      [(NEIPC *)v13 stop];
      objc_setProperty_atomic(self, v14, 0, 88);
    }
  }

  v15 = objc_alloc_init(NEIPC);
  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E96A0];
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __70__NEExtensionTunnelProviderContext_establishIPCWithCompletionHandler___block_invoke;
  v39 = &unk_1E7F0AAC8;
  objc_copyWeak(&v40, &location);
  v17 = MEMORY[0x1E69E96A0];
  v18 = &v36;
  if (v15)
  {
    v19 = v15;
    objc_sync_enter(v19);
    objc_setProperty_atomic_copy(v19, v20, v18, 8);
    v21 = MEMORY[0x1E69E96A0];
    v22 = xpc_connection_create(0, MEMORY[0x1E69E96A0]);
    objc_setProperty_atomic(v19, v23, v22, 24);

    v25 = objc_getProperty(v19, v24, 24, 1);
    *&handler = MEMORY[0x1E69E9820];
    *(&handler + 1) = 3221225472;
    v43 = __51__NEIPC_startInListenModeWithQueue_messageHandler___block_invoke;
    v44 = &unk_1E7F08E20;
    v45 = v19;
    v26 = v21;
    v46 = v21;
    xpc_connection_set_event_handler(v25, &handler);

    v28 = objc_getProperty(v19, v27, 24, 1);
    xpc_connection_resume(v28);

    v30 = objc_getProperty(v19, v29, 24, 1);
    v31 = xpc_endpoint_create(v30);

    objc_sync_exit(v19);
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    v33 = 0;
    if (!self)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v33 = objc_alloc_init(MEMORY[0x1E696B0E0]);
  [v33 _setEndpoint:{v31, v36, v37, v38, v39}];
  if (self)
  {
LABEL_15:
    objc_setProperty_atomic(self, v32, v15, 88);
  }

LABEL_16:
  v34 = ne_log_obj();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    LODWORD(handler) = 138412290;
    *(&handler + 4) = self;
    _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_INFO, "%@: created IPC listener", &handler, 0xCu);
  }

  (v5)[2](v5, v33);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  v35 = *MEMORY[0x1E69E9840];
}

void __70__NEExtensionTunnelProviderContext_establishIPCWithCompletionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v20 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained handleIPCDetached];
    }

    else if (v20)
    {
      v11 = [WeakRetained _principalObject];
      v12 = v10;
      objc_sync_enter(v12);
      if (objc_getProperty(v12, v13, 96, 1))
      {
        Property = objc_getProperty(v12, v14, 96, 1);
        dispatch_source_cancel(Property);
      }

      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53__NEExtensionTunnelProviderContext_resetIPCIdleTimer__block_invoke;
      v21[3] = &unk_1E7F0B0E8;
      v21[4] = v12;
      v18 = NECreateTimerSource(v16, 60, v21);
      objc_setProperty_atomic(v12, v19, v18, 96);

      objc_sync_exit(v12);
      [v11 handleAppMessage:v20 completionHandler:v8];
    }
  }
}

void __53__NEExtensionTunnelProviderContext_resetIPCIdleTimer__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) handleIPCDetached];
  objc_sync_exit(obj);
}

- (void)handleIPCDetached
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  [(NEIPC *)v5 stop];

  if (v2)
  {
    objc_setProperty_atomic(v2, v6, 0, 88);
    if (objc_getProperty(v2, v7, 96, 1))
    {
      v9 = objc_getProperty(v2, v8, 96, 1);
      dispatch_source_cancel(v9);
      objc_setProperty_atomic(v2, v10, 0, 96);
    }
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v2;
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "%@: IPC detached", &v15, 0xCu);
  }

  v13 = [(NEExtensionProviderContext *)v2 hostContext];
  [v13 handleIPCDetached];

  objc_sync_exit(v2);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setConfiguration:(id)a3 extensionIdentifier:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28.receiver = self;
  v28.super_class = NEExtensionTunnelProviderContext;
  [(NEExtensionProviderContext *)&v28 setConfiguration:v6 extensionIdentifier:a4];
  v7 = [(NEExtensionProviderContext *)self _principalObject];
  if (!v7)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v30 = self;
    v18 = "%@: no provider found";
LABEL_19:
    _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v30 = self;
    v18 = "%@: not setting configuration because provider is not an NETunnelProvider";
    goto LABEL_19;
  }

  v8 = [v6 alwaysOnVPN];

  if (v8)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 alwaysOnVPN];
      v11 = [v10 activeInterfaceProtocolKey];
      *buf = 138412546;
      v30 = self;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "%@: AlwaysOn VPN configuration: activeInterfaceProtocolKey %@", buf, 0x16u);
    }

    v12 = [v6 alwaysOnVPN];
    v13 = [v12 interfaceProtocolMapping];
    v14 = [v6 alwaysOnVPN];
    v15 = [v14 activeInterfaceProtocolKey];
    v16 = [v13 objectForKeyedSubscript:v15];
    [v7 setProtocolConfiguration:v16];

    v7[42] = 1;
  }

  else
  {
    v19 = [v6 VPN];
    if (v19 || ([v6 appVPN], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = v19;
      v7[41] = [v19 isOnDemandEnabled];
      v21 = [v20 protocol];
      [v7 setProtocolConfiguration:v21];

      v22 = [v6 appVPN];

      if (v22)
      {
        v23 = [v6 appVPN];
        v24 = [v23 appRules];
        [v7 setAppRules:v24];
      }

      v25 = [v20 protocol];
      [v25 type];
    }
  }

  v26 = [v7 protocolConfiguration];

  if (!v26)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = self;
      v18 = "%@: configuration has no VPN configuration";
      goto LABEL_19;
    }

LABEL_20:
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setTunnelConfiguration:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  v9 = ne_log_large_obj();
  v10 = v9;
  if (is_debug_logging_enabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 descriptionWithIndent:0 options:2];
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "%@: provider set tunnel configuration to %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@: provider set tunnel configuration to %@", &v15, 0x16u);
  }

  v13 = [(NEExtensionProviderContext *)self hostContext];
  [v13 setTunnelConfiguration:v6 completionHandler:v7];

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_3030 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_3030, &__block_literal_global_63);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_3031;

  return v3;
}

uint64_t __67__NEExtensionTunnelProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_3031 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0CC8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_3033 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_3033, &__block_literal_global_3034);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_3035;

  return v3;
}

uint64_t __69__NEExtensionTunnelProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_3035 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0BF0];

  return MEMORY[0x1EEE66BB8]();
}

@end