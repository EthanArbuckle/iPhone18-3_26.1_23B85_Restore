@interface NEAppProxyProviderContainer
- (NEAppProxyProviderContainer)initWithDelegate:(id)delegate providerClass:(Class)class;
- (void)handleAppMessage:(id)message completionHandler:(id)handler;
- (void)setDelegateInterface:(unsigned int)interface;
- (void)setInitialFlowDivertControlSocket:(id)socket;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startWithOptions:(id)options completionHandler:(id)handler;
- (void)stop;
- (void)wake;
@end

@implementation NEAppProxyProviderContainer

- (void)handleAppMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  provider = [(NEAppProxyProviderContainer *)self provider];
  [provider handleAppMessage:messageCopy completionHandler:handlerCopy];
}

- (void)setInitialFlowDivertControlSocket:(id)socket
{
  v26 = *MEMORY[0x1E69E9840];
  socketCopy = socket;
  objc_initWeak(&location, self);
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v24 = 2048;
    v25 = socketCopy;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Setting initial flow divert control socket to %p", buf, 0x16u);
  }

  dup([socketCopy fileDescriptor]);
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v7 = dispatch_queue_create("NEFlow queue", v6);
  v9 = v7;
  if (self)
  {
    objc_setProperty_atomic(self, v8, v7, 32);

    Property = objc_getProperty(self, v10, 32, 1);
  }

  else
  {

    Property = 0;
  }

  v12 = Property;
  v13 = NEFlowDirectorCreate();
  if (self)
  {
    self->_director = v13;

    if (self->_director)
    {
      if (self->_delegateInterfaceIndex)
      {
        director = self->_director;
        NEFlowDirectorSetDelegateInterface();
        v15 = self->_director;
      }

      v19[6] = MEMORY[0x1E69E9820];
      v19[7] = 3221225472;
      v19[8] = __65__NEAppProxyProviderContainer_setInitialFlowDivertControlSocket___block_invoke;
      v19[9] = &unk_1E7F0AA58;
      objc_copyWeak(&v20, &location);
      NEFlowDirectorSetOpenControlSocketCallback();
      v16 = self->_director;
      v19[1] = MEMORY[0x1E69E9820];
      v19[2] = 3221225472;
      v19[3] = __65__NEAppProxyProviderContainer_setInitialFlowDivertControlSocket___block_invoke_2;
      v19[4] = &unk_1E7F06A10;
      v19[5] = self;
      NEFlowDirectorSetMatchRulesCallback();
      v17 = self->_director;
      objc_copyWeak(v19, &location);
      NEFlowDirectorSetNewFlowCallback();
      objc_destroyWeak(v19);
      objc_destroyWeak(&v20);
    }
  }

  else
  {
  }

  objc_destroyWeak(&location);

  v18 = *MEMORY[0x1E69E9840];
}

void __65__NEAppProxyProviderContainer_setInitialFlowDivertControlSocket___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    Property = objc_getProperty(WeakRetained, v2, 24, 1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__NEAppProxyProviderContainer_flowDivertOpenControlSocket__block_invoke;
    v5[3] = &unk_1E7F0A2C8;
    v5[4] = v4;
    [Property container:v4 didRequestFlowDivertControlSocketWithCompletionHandler:v5];
    WeakRetained = v4;
  }
}

uint64_t __65__NEAppProxyProviderContainer_setInitialFlowDivertControlSocket___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = a4;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Verifying app with signing identifier %@", &v12, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 40);
  }

  result = NEFlowDirectorHandleMatchRulesResult();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __65__NEAppProxyProviderContainer_setInitialFlowDivertControlSocket___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  self = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (self)
  {
    FlowType = NEFlowGetFlowType();
    if (FlowType == 1)
    {
      v9 = off_1E7F04660;
    }

    else
    {
      v8 = FlowType;
      if (FlowType != 2)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v18 = v8;
          _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "Unknown flow type %ld", buf, 0xCu);
        }

        goto LABEL_11;
      }

      v9 = off_1E7F04668;
    }

    v10 = objc_alloc(*v9);
    v12 = [v10 initWithNEFlow:a2 queue:{objc_getProperty(self, v11, 32, 1)}];
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "%@: Calling handleNewFlow with %@", buf, 0x16u);
    }

    v14 = [self provider];
    v6[2](v6, [v14 handleNewFlow:v12]);

LABEL_11:
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __58__NEAppProxyProviderContainer_flowDivertOpenControlSocket__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = dup([v3 fileDescriptor]);
  }

  else
  {
    v5 = -1;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v10 = 138412546;
    v11 = v7;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Received new flow divert control socket %d", &v10, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8 && *(v8 + 40))
  {
    NEFlowDirectorHandleNewControlSocket();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setDelegateInterface:(unsigned int)interface
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 1024;
    interfaceCopy = interface;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Setting flow divert delegate interface to %u", &v7, 0x12u);
  }

  if (self)
  {
    self->_delegateInterfaceIndex = interface;
    if (self->_director)
    {
      NEFlowDirectorSetDelegateInterface();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: Calling stopProxyWithReason", buf, 0xCu);
  }

  provider = [(NEAppProxyProviderContainer *)self provider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__NEAppProxyProviderContainer_stop__block_invoke;
  v6[3] = &unk_1E7F0B0E8;
  v6[4] = self;
  [provider stopProxyWithReason:0 completionHandler:v6];

  v5 = *MEMORY[0x1E69E9840];
}

void __35__NEAppProxyProviderContainer_stop__block_invoke(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[5])
    {
      NEFlowDirectorDestroy();
    }

    else if (objc_getProperty(v3, a2, 48, 1))
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "%@: Calling stop completion handler", buf, 0xCu);
      }

      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 48, 1);
      }

      (*(Property + 2))(Property, 0);
      v9 = *(a1 + 32);
      if (v9)
      {
        objc_setProperty_atomic_copy(v9, v8, 0, 48);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __35__NEAppProxyProviderContainer_stop__block_invoke_2(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 40) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      if (objc_getProperty(v4, a2, 48, 1))
      {
        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 32);
          v12 = 138412290;
          v13 = v6;
          _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Calling stop completion handler", &v12, 0xCu);
        }

        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v7, 48, 1);
        }

        (*(Property + 2))(Property, 0);
        v10 = *(a1 + 32);
        if (v10)
        {
          objc_setProperty_atomic_copy(v10, v9, 0, 48);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)startWithOptions:(id)options completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v15 = 2048;
    v16 = optionsCopy;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Calling startProxyWithOptions with options %p", buf, 0x16u);
  }

  if (self)
  {
    objc_setProperty_atomic_copy(self, v9, handlerCopy, 48);
  }

  provider = [(NEAppProxyProviderContainer *)self provider];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__NEAppProxyProviderContainer_startWithOptions_completionHandler___block_invoke;
  v12[3] = &unk_1E7F0B4A8;
  v12[4] = self;
  [provider startProxyWithOptions:optionsCopy completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __66__NEAppProxyProviderContainer_startWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (!v8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 40);
    }

    NEFlowDirectorStart();
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 24, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  [Property container:v7 didStartWithError:v8];
}

- (void)wake
{
  provider = [(NEAppProxyProviderContainer *)self provider];
  [provider wake];
}

- (void)sleepWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  provider = [(NEAppProxyProviderContainer *)self provider];
  [provider sleepWithCompletionHandler:handlerCopy];
}

- (NEAppProxyProviderContainer)initWithDelegate:(id)delegate providerClass:(Class)class
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = NEAppProxyProviderContainer;
  v8 = [(NEAppProxyProviderContainer *)&v16 init];
  if (!v8)
  {
    goto LABEL_7;
  }

  Superclass = class_getSuperclass(class);
  if (Superclass == objc_opt_class())
  {
    objc_storeStrong(&v8->_delegate, delegate);
    v12 = objc_alloc_init(class);
    provider = v8->_provider;
    v8->_provider = v12;

    [(NEProvider *)v8->_provider setdefaultPathObserver:v8];
LABEL_7:
    v11 = v8;
    goto LABEL_8;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@: failed to init, providerClass is not subclass of NEAppProxyProvider", buf, 0xCu);
  }

  v11 = 0;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

@end