@interface NEExtensionAppPushProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)dealloc;
- (void)reportIncomingCall:(id)a3;
- (void)reportPushToTalkMessage:(id)a3;
- (void)sendTimerEvent;
- (void)setProviderConfiguration:(id)a3;
- (void)startConnectionWithProviderConfig:(id)a3 completionHandler:(id)a4;
- (void)stopWithReason:(int)a3 completionHandler:(id)a4;
- (void)unmatchEthernet;
@end

@implementation NEExtensionAppPushProviderContext

- (void)sendTimerEvent
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@ sendTimerEvent called", &v6, 0xCu);
  }

  v4 = [(NEExtensionProviderContext *)self _principalObject];
  [v4 handleTimerEvent];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)unmatchEthernet
{
  v2 = [(NEExtensionProviderContext *)self hostContext];
  [v2 unmatchEthernet];
}

- (void)reportPushToTalkMessage:(id)a3
{
  v4 = a3;
  v6 = [(NEExtensionProviderContext *)self hostContext];
  [v6 reportPushToTalkMessage:v4];
}

- (void)reportIncomingCall:(id)a3
{
  v4 = a3;
  v6 = [(NEExtensionProviderContext *)self hostContext];
  [v6 reportIncomingCall:v4];
}

- (void)setProviderConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderContext *)self _principalObject];
  [v5 setProviderConfiguration:v4];
}

- (void)stopWithReason:(int)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "%@ stopWithReason called", buf, 0xCu);
  }

  v8 = [(NEExtensionProviderContext *)self _principalObject];
  if (self && (a3 - 1) <= 0x29)
  {
    v9 = qword_1BAA4E658[a3 - 1];
  }

  else
  {
    v9 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__NEExtensionAppPushProviderContext_stopWithReason_completionHandler___block_invoke;
  v12[3] = &unk_1E7F0B588;
  v12[4] = self;
  v13 = v6;
  v10 = v6;
  [v8 stopWithReason:v9 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __70__NEExtensionAppPushProviderContext_stopWithReason_completionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "%@ provider stopped", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startConnectionWithProviderConfig:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NEExtensionProviderContext *)self _principalObject];
  v9 = v8;
  if (v6)
  {
    [v8 setProviderConfiguration:v6];
  }

  v10 = v9;
  v11 = v10;
  if (self && (v12 = [v10 superclass]) != 0)
  {
    v13 = v12;
    v14 = [v11 methodForSelector:sel_start];
    v15 = v14 != [v13 instanceMethodForSelector:sel_start];
  }

  else
  {
    v15 = 0;
  }

  v16 = ne_log_obj();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v17)
    {
      *buf = 138412290;
      v22 = self;
      _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@ the new start method is overridden", buf, 0xCu);
    }

    [v11 start];
    v7[2](v7, 0);
  }

  else
  {
    if (v17)
    {
      *buf = 138412290;
      v22 = self;
      _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@ the new start method is not overridden", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__NEExtensionAppPushProviderContext_startConnectionWithProviderConfig_completionHandler___block_invoke;
    v19[3] = &unk_1E7F0B628;
    v19[4] = self;
    v20 = v7;
    [v11 startWithCompletionHandler:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __89__NEExtensionAppPushProviderContext_startConnectionWithProviderConfig_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ startWithCompletionHandler failed, error: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NEExtensionAppPushProviderContext;
  [(NEExtensionProviderContext *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_25863 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_25863, &__block_literal_global_73_25864);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_25865;

  return v3;
}

uint64_t __68__NEExtensionAppPushProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2FA0];
  v1 = _extensionAuxiliaryHostProtocol_protocol_25865;
  _extensionAuxiliaryHostProtocol_protocol_25865 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_25868 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_25868, &__block_literal_global_25869);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_25870;

  return v3;
}

uint64_t __70__NEExtensionAppPushProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2F40];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_25870;
  _extensionAuxiliaryVendorProtocol_protocol_25870 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end