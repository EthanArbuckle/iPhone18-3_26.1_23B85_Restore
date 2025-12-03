@interface NEExtensionProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (NEExtensionProviderContext)initWithProvider:(id)provider;
- (NSString)description;
- (id)_principalObject;
- (void)cancelWithError:(id)error;
- (void)completeSession;
- (void)createWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)displayMessage:(id)message message:(id)a4 completionHandler:(id)handler;
- (void)dispose;
- (void)dropProvider;
- (void)hostContext;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier;
- (void)setDescription:(uint64_t)description;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startWithOptions:(id)options completionHandler:(id)handler;
- (void)startedWithError:(id)error;
- (void)stopWithReason:(int)reason;
- (void)validateWithCompletionHandler:(id)handler;
- (void)wake;
@end

@implementation NEExtensionProviderContext

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  [_principalObject observerHelperHandler:pathCopy ofObject:objectCopy change:changeCopy context:context];
}

- (void)validateWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  [(NEExtensionProviderContext *)self requiredProviderSuperClass];
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEFilterErrorDomain" code:4 userInfo:0];
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromClass([(NEExtensionProviderContext *)self requiredProviderSuperClass]);
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Provider is not a %@", &v10, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, v6);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopWithReason:(int)reason
{
  if (reason == 40)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (reason == 6)
  {
    v4 = 2;
LABEL_5:
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEAgentErrorDomain" code:v4 userInfo:0];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = v5;
  [(NEExtensionProviderContext *)self cancelWithError:v5];
}

- (void)startWithOptions:(id)options completionHandler:(id)handler
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, handler, 56);
  }
}

- (void)dispose
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self || !self->_isDisposed)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: disposing", &v5, 0xCu);
    }

    if (self)
    {
      self->_isDisposed = 1;
    }

    [(NEExtensionProviderContext *)self completeSession];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)createWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [mainBundle objectForInfoDictionaryKey:@"NetworkExtension"];

  if ((isa_nsdictionary(v6) & 1) == 0)
  {
    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v19 = "NetworkExtension dictionary is missing from Info.plist";
LABEL_26:
    _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_11;
  }

  extensionPoint = [(NEExtensionProviderContext *)self extensionPoint];

  if (extensionPoint)
  {
    v8 = [v6 objectForKeyedSubscript:@"NEProviderClasses"];
    if ((isa_nsdictionary(v8) & 1) == 0)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = @"NEProviderClasses";
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%@ dictionary is missing from Info.plist", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0);
      goto LABEL_20;
    }

    extensionPoint2 = [(NEExtensionProviderContext *)self extensionPoint];
    v10 = [v8 objectForKeyedSubscript:extensionPoint2];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)v10 length])
    {
      v11 = NSClassFromString(v10);
      if (v11)
      {
        v12 = objc_alloc_init(v11);
        [(NEProvider *)v12 beginRequestWithExtensionContext:self];
        provider = self->_provider;
        self->_provider = v12;
        v14 = v12;

        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.networkextension.providerContext.%@", v10];
        [v15 UTF8String];
        v16 = os_transaction_create();
        transaction = self->_transaction;
        self->_transaction = v16;

        handlerCopy[2](handlerCopy, 1);
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v10;
        _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "No such class: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        extensionPoint3 = [(NEExtensionProviderContext *)self extensionPoint];
        *buf = 138412290;
        v26 = extensionPoint3;
        _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "NetworkExtension Info.plist dictionary does not contain a NEProvider class for extension point %@", buf, 0xCu);
      }
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_19;
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v19 = "Extension point is nil";
    goto LABEL_26;
  }

LABEL_11:

  handlerCopy[2](handlerCopy, 0);
LABEL_21:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)displayMessage:(id)message message:(id)a4 completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = a4;
  messageCopy = message;
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@: display message", &v15, 0xCu);
  }

  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext displayMessage:messageCopy message:v9 completionHandler:handlerCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)hostContext
{
  if (self)
  {
    selfCopy = self;
    v4 = self[3];
    if (!v4)
    {
      _auxiliaryConnection = objc_getProperty(self, a2, 64, 1);
      if (!_auxiliaryConnection)
      {
        _auxiliaryConnection = [selfCopy _auxiliaryConnection];
      }

      v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_77];
      v7 = selfCopy[3];
      selfCopy[3] = v6;

      if (!selfCopy[3])
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Host context object is nil, cannot talk to host", v10, 2u);
        }
      }

      v4 = selfCopy[3];
    }

    self = v4;
    v2 = vars8;
  }

  return self;
}

void __41__NEExtensionProviderContext_hostContext__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "Error while calling host: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startedWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [errorCopy localizedDescription];
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = localizedDescription;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@: Started with error %@", &v13, 0x16u);
    }

    hostContext = [(NEExtensionProviderContext *)self hostContext];
    [hostContext startedWithError:errorCopy];

    if (self)
    {
      objc_setProperty_atomic_copy(self, v9, 0, 56);
    }
  }

  else
  {
    hostContext2 = [(NEExtensionProviderContext *)self hostContext];
    [hostContext2 startedWithError:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cancelWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self && objc_getProperty(self, v4, 56, 1))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Calling stop completion handler with error %@", &v11, 0x16u);
    }

    Property = objc_getProperty(self, v7, 56, 1);
    Property[2](Property, errorCopy);
    objc_setProperty_atomic_copy(self, v9, 0, 56);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  identifierCopy = identifier;
  if (nelog_is_info_logging_enabled())
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Extension %@]", identifierCopy];
    [(NEExtensionProviderContext *)self setDescription:identifierCopy];
  }

  if (nelog_is_debug_logging_enabled())
  {
    v9 = ne_log_large_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = configurationCopy;
      _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "%@: Setting configuration to %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "%@: Setting configuration", buf, 0xCu);
    }
  }

  if (self)
  {
    objc_setProperty_atomic(self, v10, configurationCopy, 48);
  }

  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  applicationName = [configurationCopy applicationName];
  [_principalObject setAppName:applicationName];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setDescription:(uint64_t)description
{
  v4 = a2;
  if (description)
  {
    objc_storeStrong((description + 32), a2);
  }
}

- (void)wake
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: Calling wake", &v6, 0xCu);
  }

  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  [_principalObject wake];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sleepWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Calling sleepWithCompletionHandler:", &v8, 0xCu);
  }

  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  [_principalObject sleepWithCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)completeSession
{
  if (self && objc_getProperty(self, a2, 64, 1))
  {
    [objc_getProperty(self v3];
    hostConnection = self->_hostConnection;
    self->_hostConnection = 0;

    provider = self->_provider;
    self->_provider = 0;

    transaction = self->_transaction;
    self->_transaction = 0;

    v8 = +[NEProviderServer sharedServer];
    [v8 removeProviderContext:self];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "Calling completeRequest", buf, 2u);
    }

    [(NEExtensionProviderContext *)self completeRequestReturningItems:0 completionHandler:0];
  }
}

- (id)_principalObject
{
  if (self && self->_isDisposed)
  {
    _principalObject = 0;
  }

  else
  {
    v8 = v2;
    v9 = v3;
    provider = self->_provider;
    if (provider)
    {
      _principalObject = provider;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = NEExtensionProviderContext;
      _principalObject = [(NEExtensionProviderContext *)&v7 _principalObject];
    }
  }

  return _principalObject;
}

- (NSString)description
{
  description = self->_description;
  if (description)
  {
    v3 = description;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NEExtensionProviderContext;
    v3 = [(NEExtensionProviderContext *)&v5 description];
  }

  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "%@: Deallocating", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NEExtensionProviderContext;
  [(NEExtensionProviderContext *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)dropProvider
{
  provider = self->_provider;
  self->_provider = 0;
  MEMORY[0x1EEE66BB8]();
}

- (NEExtensionProviderContext)initWithProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = NEExtensionProviderContext;
  v6 = [(NEExtensionProviderContext *)&v8 init];
  if (v6)
  {
    [providerCopy beginRequestWithExtensionContext:v6];
    objc_storeStrong(&v6->_provider, provider);
  }

  return v6;
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2763 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2763, &__block_literal_global_66);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2764;

  return v3;
}

uint64_t __61__NEExtensionProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_2764 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0B60];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2766 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2766, &__block_literal_global_2767);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2768;

  return v3;
}

uint64_t __63__NEExtensionProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_2768 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0AA8];

  return MEMORY[0x1EEE66BB8]();
}

void __49__NEExtensionProviderContext_initWithConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: Session manager connection was invalidated", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5 && objc_getProperty(v5, v4, 56, 1))
  {
    objc_initWeak(buf, *(a1 + 32));
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __49__NEExtensionProviderContext_initWithConnection___block_invoke_1;
    newValue[3] = &unk_1E7F0A2A0;
    objc_copyWeak(&v10, buf);
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v6, newValue, 56);
      v7 = *(a1 + 32);
    }

    [v7 stopWithReason:42];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __49__NEExtensionProviderContext_initWithConnection___block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispose];
}

@end