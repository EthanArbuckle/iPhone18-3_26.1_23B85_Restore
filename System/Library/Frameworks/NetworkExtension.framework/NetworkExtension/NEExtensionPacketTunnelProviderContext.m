@interface NEExtensionPacketTunnelProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)completeSession;
- (void)dispose;
- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)a3;
- (void)setAppUUIDMap:(id)a3;
- (void)setTunnelConfiguration:(id)a3 completionHandler:(id)a4;
- (void)setupVirtualInterface:(id)a3;
- (void)startWithOptions:(id)a3 completionHandler:(id)a4;
- (void)stopWithReason:(int)a3;
@end

@implementation NEExtensionPacketTunnelProviderContext

- (void)setTunnelConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__NEExtensionPacketTunnelProviderContext_setTunnelConfiguration_completionHandler___block_invoke;
  v10[3] = &unk_1E7F07408;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = NEExtensionPacketTunnelProviderContext;
  [(NEExtensionTunnelProviderContext *)&v9 setTunnelConfiguration:v6 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __83__NEExtensionPacketTunnelProviderContext_setTunnelConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _principalObject];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 packetFlow];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        objc_sync_enter(v9);
        v9[8] = 0;
        objc_sync_exit(v9);
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, v11);
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)setAppUUIDMap:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEExtensionProviderContext *)self _principalObject];
  v6 = ne_log_obj();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = self;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%@: Setting the app UUID map", buf, 0xCu);
    }

    v28 = v5;
    v7 = [v5 packetFlow];
    v29 = v4;
    v8 = v4;
    v9 = v8;
    if (v7)
    {
      selfa = v7;
      v10 = [v8 allKeys];
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v10;
      v12 = [obj countByEnumeratingWithState:&v31 objects:buf count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            v17 = [v9 objectForKeyedSubscript:v16];
            v18 = [NEFlowMetaData alloc];
            v19 = v16;
            v20 = v17;
            if (v18)
            {
              v36.receiver = v18;
              v36.super_class = NEFlowMetaData;
              v21 = [(NEExtensionPacketTunnelProviderContext *)&v36 init];
              v18 = v21;
              if (v21)
              {
                objc_storeStrong(&v21->super.super._hostContext, v17);
                v35 = [v19 hash];
                v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:8];
                sourceAppUniqueIdentifier = v18->_sourceAppUniqueIdentifier;
                v18->_sourceAppUniqueIdentifier = v22;
              }
            }

            [v11 setObject:v18 forKeyedSubscript:v19];
          }

          v13 = [obj countByEnumeratingWithState:&v31 objects:buf count:16];
        }

        while (v13);
      }

      v24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v11];
      v7 = selfa;
      objc_setProperty_atomic(selfa, v25, v24, 72);
    }

    v5 = v28;
    v4 = v29;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = self;
    _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%@: No provider when setting the app UUID map", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = [(NEExtensionProviderContext *)self _principalObject];
  v5 = [v8 packetFlow];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 80);
  }

  else
  {
    v7 = 0;
  }

  v4[2](v4, v7);
}

- (void)setupVirtualInterface:(id)a3
{
  v4 = a3;
  v19 = [(NEExtensionProviderContext *)self _principalObject];
  v5 = [v19 packetFlow];
  v6 = v4;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    if (v7[11])
    {
      [(NEPacketTunnelFlow *)v7 closeVirtualInterface];
    }

    if (dyld_get_program_sdk_version() < 0xF0000)
    {
      v9 = [v6 controlSocket];
      [v7 setSocket:v9];
    }

    v10 = objc_getProperty(v7, v8, 24, 1);
    v7[11] = [v6 createVirtualInterfaceWithQueue:v10 clientInfo:0];

    v12 = v7[11];
    if (v12)
    {
      v7[10] = *(v12 + 256);
    }

    if (objc_getProperty(v7, v11, 96, 1))
    {
      v14 = objc_getProperty(v7, v13, 96, 1);
      objc_setProperty_atomic_copy(v7, v15, 0, 96);
      [v7 readPacketsWithCompletionHandler:v14];
    }

    if (objc_getProperty(v7, v13, 32, 1))
    {
      v17 = objc_getProperty(v7, v16, 32, 1);
      objc_setProperty_atomic_copy(v7, v18, 0, 32);
      [v7 readPacketObjectsWithCompletionHandler:v17];
    }

    objc_sync_exit(v7);
  }
}

- (void)stopWithReason:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(NEExtensionProviderContext *)self _principalObject];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = ne_session_stop_reason_to_string();
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "%@: Calling stopTunnelWithReason because: %s", buf, 0x16u);
  }

  if (self && (a3 - 1) <= 0x29)
  {
    v7 = qword_1BAA4E658[a3 - 1];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__NEExtensionPacketTunnelProviderContext_stopWithReason___block_invoke;
  v9[3] = &unk_1E7F086C0;
  v9[4] = self;
  v10 = a3;
  [v5 stopTunnelWithReason:v7 completionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

id __57__NEExtensionPacketTunnelProviderContext_stopWithReason___block_invoke(uint64_t a1)
{
  result = os_variant_has_internal_diagnostics();
  v3 = *(a1 + 32);
  if (!result || !v3 || (*(v3 + 104) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5.receiver = *(a1 + 32);
    v5.super_class = NEExtensionPacketTunnelProviderContext;
    return objc_msgSendSuper2(&v5, sel_stopWithReason_, v4);
  }

  return result;
}

- (void)startWithOptions:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NEExtensionProviderContext *)self _principalObject];
  v14.receiver = self;
  v14.super_class = NEExtensionPacketTunnelProviderContext;
  [(NEExtensionProviderContext *)&v14 startWithOptions:v6 completionHandler:v7];

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling startTunnelWithOptions with options %p", buf, 0x16u);
  }

  if (isa_nsdictionary(v6))
  {
    v10 = [v6 objectForKeyedSubscript:@"test-disconnect-dispose-timeout"];
    if (isa_nsnumber(v10))
    {
      v11 = [v10 BOOLValue];
      if (self)
      {
        self->_testDisconnectAndDisposeTimeout = v11;
      }
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__NEExtensionPacketTunnelProviderContext_startWithOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E7F0B4A8;
  v13[4] = self;
  [v8 startTunnelWithOptions:v6 completionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __77__NEExtensionPacketTunnelProviderContext_startWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) handleIPCDetached];
  }

  [*(a1 + 32) startedWithError:v3];
}

- (void)dispose
{
  if (!self || !self->super.super._isDisposed)
  {
    v3 = [(NEExtensionProviderContext *)self _principalObject];
    v4 = [v3 packetFlow];
    [(NEPacketTunnelFlow *)v4 closeVirtualInterface];

    v5.receiver = self;
    v5.super_class = NEExtensionPacketTunnelProviderContext;
    [(NEExtensionProviderContext *)&v5 dispose];
  }
}

- (void)completeSession
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (!self || !has_internal_diagnostics || !self->_testDisconnectAndDisposeTimeout)
  {
    v4.receiver = self;
    v4.super_class = NEExtensionPacketTunnelProviderContext;
    [(NEExtensionProviderContext *)&v4 completeSession];
  }
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2445 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2445, &__block_literal_global_75);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2446;

  return v3;
}

uint64_t __73__NEExtensionPacketTunnelProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_2446 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1D80];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2448 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2448, &__block_literal_global_2449);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2450;

  return v3;
}

void __75__NEExtensionPacketTunnelProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1CE0];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_2450;
  _extensionAuxiliaryVendorProtocol_protocol_2450 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol_protocol_2450 setClasses:v5 forSelector:sel_setAppUUIDMap_ argumentIndex:0 ofReply:0];
}

@end