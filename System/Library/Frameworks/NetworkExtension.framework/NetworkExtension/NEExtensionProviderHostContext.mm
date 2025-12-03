@interface NEExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)delegate;
- (id)initWithVendorEndpoint:(void *)endpoint processIdentity:(void *)identity delegate:;
- (id)vendorContext;
- (void)createWithCompletionHandler:(id)handler;
- (void)displayMessage:(id)message message:(id)a4 completionHandler:(id)handler;
- (void)dispose;
- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startWithOptions:(id)options completionHandler:(id)handler;
- (void)startedWithError:(id)error;
- (void)validateWithCompletionHandler:(id)handler;
- (void)wake;
@end

@implementation NEExtensionProviderHostContext

- (void)validateWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: Validating", &v16, 0xCu);
  }

  v6 = @"com.apple.developer.networking.networkextension";
  if (self)
  {
    v7 = self->_vendorConnection;
    if (v7)
    {
      _auxiliaryConnection = v7;
    }

    else
    {
      _auxiliaryConnection = [(NEExtensionProviderHostContext *)self _auxiliaryConnection];
      if (!_auxiliaryConnection)
      {
        _xpcConnection = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    _xpcConnection = [_auxiliaryConnection _xpcConnection];

    if (_xpcConnection)
    {
      _xpcConnection2 = [_auxiliaryConnection _xpcConnection];
      [(__CFString *)@"com.apple.developer.networking.networkextension" UTF8String];
      _xpcConnection = xpc_connection_copy_entitlement_value();
    }

    goto LABEL_10;
  }

  _xpcConnection = 0;
LABEL_11:

  v11 = NEGetEntitlement(_xpcConnection);
  if (([(NEExtensionProviderHostContext *)self requiredEntitlement]& v11) != 0)
  {
    vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
    [vendorContext validateWithCompletionHandler:handlerCopy];
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      requiredEntitlement = [(NEExtensionProviderHostContext *)self requiredEntitlement];
      v16 = 67109120;
      LODWORD(selfCopy) = requiredEntitlement;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Provider is missing the required NetworkExtension entitlement (%x)", &v16, 8u);
    }

    vendorContext = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEFilterErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, vendorContext);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)vendorContext
{
  if (val)
  {
    v1 = val;
    v2 = val[3];
    if (!v2)
    {
      objc_initWeak(&location, val);
      _auxiliaryConnection = v1[9];
      if (!_auxiliaryConnection)
      {
        _auxiliaryConnection = [v1 _auxiliaryConnection];
      }

      v4 = _auxiliaryConnection;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__NEExtensionProviderHostContext_vendorContext__block_invoke;
      v10[3] = &unk_1E7F0A2A0;
      objc_copyWeak(&v11, &location);
      v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
      v6 = v1[3];
      v1[3] = v5;

      if (!v1[3])
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9[0] = 0;
          _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Vendor context object is nil, cannot talk to extension", v9, 2u);
        }
      }

      objc_destroyWeak(&v11);

      objc_destroyWeak(&location);
      v2 = v1[3];
    }

    val = v2;
  }

  return val;
}

void __47__NEExtensionProviderHostContext_vendorContext__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "Error while calling extension: %@", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 7);
    if (v6)
    {
      v7 = v6;
      [v6 extension:WeakRetained didFailWithError:v3];
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Host context delegate is nil, cannot notify of extension failure", &v10, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Host context is nil, cannot notify of extension failure", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startWithOptions:(id)options completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2048;
    v14 = optionsCopy;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Starting with options %p", &v11, 0x16u);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
  [vendorContext startWithOptions:optionsCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)displayMessage:(id)message message:(id)a4 completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = a4;
  messageCopy = message;
  v11 = [NEUserNotification alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__NEExtensionProviderHostContext_displayMessage_message_completionHandler___block_invoke;
  v15[3] = &unk_1E7F07430;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [(NEUserNotification *)v11 initAndShowAlertWithHeader:messageCopy message:v9 alternateMessage:0 defaultMessage:0 noBoldDefault:0 usePrivacyIcon:0 extensionItem:0 callbackQueue:MEMORY[0x1E69E96A0] callbackHandler:v15];

  notification = self->_notification;
  self->_notification = v13;
}

- (void)startedWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: started with error %@", &v8, 0x16u);
  }

  delegate = [(NEExtensionProviderHostContext *)&self->super.super.isa delegate];
  [delegate extension:self didStartWithError:errorCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 7);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)dispose
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: disposing", &v6, 0xCu);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
  [vendorContext dispose];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)createWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
  [vendorContext createWithCompletionHandler:handlerCopy];
}

- (void)wake
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: Waking", &v6, 0xCu);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
  [vendorContext wake];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sleepWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: Sleeping", &v8, 0xCu);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
  [vendorContext sleepWithCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  configurationCopy = configuration;
  identifierCopy = [v6 stringWithFormat:@"[Host %@]", identifierCopy];
  v10 = identifierCopy;
  if (self)
  {
    objc_storeStrong(&self->_description, identifierCopy);
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@: Set Configuration", buf, 0xCu);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.isa vendorContext];
  [vendorContext setConfiguration:configurationCopy extensionIdentifier:identifierCopy];

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2907 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2907, &__block_literal_global_62);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2908;

  return v3;
}

uint64_t __65__NEExtensionProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_2908 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0B60];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2910 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2910, &__block_literal_global_2911);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2912;

  return v3;
}

uint64_t __67__NEExtensionProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_2912 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0AA8];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initWithVendorEndpoint:(void *)endpoint processIdentity:(void *)identity delegate:
{
  v7 = a2;
  endpointCopy = endpoint;
  identityCopy = identity;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = NEExtensionProviderHostContext;
    v10 = objc_msgSendSuper2(&v21, sel_initWithInputItems_, 0);
    self = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 7, identityCopy);
      *(self + 49) = 1;
      v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
      v12 = self[9];
      self[9] = v11;

      _extensionAuxiliaryHostProtocol = [objc_opt_class() _extensionAuxiliaryHostProtocol];
      [self[9] setExportedInterface:_extensionAuxiliaryHostProtocol];

      [self[9] setExportedObject:self];
      _extensionAuxiliaryVendorProtocol = [objc_opt_class() _extensionAuxiliaryVendorProtocol];
      [self[9] setRemoteObjectInterface:_extensionAuxiliaryVendorProtocol];

      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __82__NEExtensionProviderHostContext_initWithVendorEndpoint_processIdentity_delegate___block_invoke;
      v18[3] = &unk_1E7F0AA58;
      objc_copyWeak(&v19, &location);
      [self[9] setInterruptionHandler:v18];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__NEExtensionProviderHostContext_initWithVendorEndpoint_processIdentity_delegate___block_invoke_2;
      v16[3] = &unk_1E7F0AA58;
      objc_copyWeak(&v17, &location);
      [self[9] setInvalidationHandler:v16];
      [self[9] resume];
      objc_storeStrong(self + 8, endpoint);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

uint64_t __82__NEExtensionProviderHostContext_initWithVendorEndpoint_processIdentity_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 7);
    [v3 extension:v5 didFailWithError:0];

    v2 = v5;
    WeakRetained = v5[9];
    if (WeakRetained)
    {
      WeakRetained = [WeakRetained invalidate];
      v2 = v5;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

void __82__NEExtensionProviderHostContext_initWithVendorEndpoint_processIdentity_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 7);
    [v2 extensionDidStop:v4];

    v3 = v4[9];
    v4[9] = 0;

    WeakRetained = v4;
  }
}

@end