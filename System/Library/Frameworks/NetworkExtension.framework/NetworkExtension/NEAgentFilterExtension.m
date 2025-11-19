@interface NEAgentFilterExtension
+ (BOOL)authenticateFlowWithState:(cfil_crypto_state *)a3 crypto_key:(id)a4 flow:(id)a5 salt:(unsigned int)a6 isKernelSocket:(BOOL)a7;
- (NEAgentFilterExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginEndpoint:(id)a5 pluginProcessIdentity:(id)a6 queue:(id)a7 factory:(id)a8;
- (NEAgentFilterExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginInfo:(id)a5 queue:(id)a6 factory:(id)a7;
- (NSObject)generateClientKey:(int)a3 salt:;
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (uint64_t)copyProcessIdentities;
- (unsigned)sanitizeFilterFlow:(unsigned int *)a1;
- (void)applySettings:(id)a3 completionHandler:(id)a4;
- (void)cleanupControlExtensionWithRequestIdentifier:(void *)a1;
- (void)cleanupDataExtensionWithRequestIdentifier:(void *)a1;
- (void)cleanupOnStartFailure;
- (void)createPacketChannelForExtension:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)extension:(id)a3 didFailWithError:(id)a4;
- (void)extension:(id)a3 didStartWithError:(id)a4;
- (void)extensionDidStop:(id)a3;
- (void)fetchCurrentRulesForFlow:(id)a3 completionHandler:(id)a4;
- (void)getFilterClientConnectionWithCompletionHandler:(int)a3 completionHandler:(id)a4;
- (void)handleAppsUninstalled:(id)a3;
- (void)handleAppsUpdateBegins:(id)a3;
- (void)handleAppsUpdateEnding:(id)a3;
- (void)handleAppsUpdateEnds:(id)a3;
- (void)handleDisposeWithCompletionHandler:(id)a3;
- (void)handleExtensionExit:(void *)a1;
- (void)handleInitWithCompletionHandler:(id)a3;
- (void)handleStopCompleteWithError:(uint64_t)a1;
- (void)notifyRulesChanged;
- (void)provideRemediationMap:(id)a3;
- (void)provideURLAppendStringMap:(id)a3;
- (void)report:(id)a3;
- (void)sendBrowserContentFilterServerRequest;
- (void)sendFilterStatus:(uint64_t)a3 withError:;
- (void)sendSocketContentFilterRequest;
- (void)sleepWithCompletionHandler:(id)a3;
- (void)startFilter;
- (void)startWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)stopFilterExtensionWithReason:(_BYTE *)a1;
- (void)updateConfiguration:(id)a3;
- (void)wakeup;
@end

@implementation NEAgentFilterExtension

- (void)applySettings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);
  }

  else
  {
    WeakRetained = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__NEAgentFilterExtension_applySettings_completionHandler___block_invoke;
  v10[3] = &unk_1E7F0B4A8;
  v10[4] = self;
  v9 = [WeakRetained managerObjectWithErrorHandler:v10];

  [v9 applySettings:v6 completionHandler:v7];
}

void __58__NEAgentFilterExtension_applySettings_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an XPC error while applying filter settings: %@", &v6, 0xCu);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendFilterStatus:(uint64_t)a3 withError:
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v7 = [WeakRetained managerObject];

    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEFilterErrorDomain" code:a3 userInfo:0];
    [v7 setStatus:a2 error:v6];
  }
}

- (void)createPacketChannelForExtension:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);
  }

  else
  {
    WeakRetained = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NEAgentFilterExtension_createPacketChannelForExtension_completionHandler___block_invoke;
  v8[3] = &unk_1E7F0B4A8;
  v8[4] = self;
  v7 = [WeakRetained managerObjectWithErrorHandler:v8];

  [v7 createPacketChannelWithCompletionHandler:v5];
}

void __76__NEAgentFilterExtension_createPacketChannelForExtension_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an XPC error while creating a packet filter channel: %@", &v6, 0xCu);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)provideURLAppendStringMap:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 48, 1);
    }

    else
    {
      v10 = 0;
    }

    [v10 provideURLAppendStringMap:v5];
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        objc_getProperty(self, v12, 48, 1);
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "provideURLAppendStringMap called, but dataSessionContext is not a flow data provider: %@", &v16, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)provideRemediationMap:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 48, 1);
    }

    else
    {
      v10 = 0;
    }

    [v10 provideRemediationMap:v5];
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        objc_getProperty(self, v12, 48, 1);
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "provideRemediationMap called, but dataSessionContext is not a flow data provider: %@", &v16, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyRulesChanged
{
  v2 = self;
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  v3 = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v5, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = *MEMORY[0x1E69E9840];

    [Property handleRulesChanged];
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        objc_getProperty(v2, v9, 48, 1);
      }

      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "notifyRulesChanged called, but dataSessionContext is not a flow data provider: %@", &v13, 0xCu);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)getFilterClientConnectionWithCompletionHandler:(int)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v6, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(NEAgentFilterExtension *)self generateClientKey:a3 salt:0];
    if (!v12)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v25) = a3;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "getFilterClientConnection called, but failed to create client crypto key for pid %d", buf, 8u);
      }

      (*(v7 + 2))(v7, 0, 0);
    }

    if (self)
    {
      v14 = objc_getProperty(self, v11, 80, 1);
    }

    else
    {
      v14 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke;
    block[3] = &unk_1E7F0AAA0;
    block[4] = self;
    v22 = v12;
    v23 = v7;
    v15 = v12;
    dispatch_async(v14, block);
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        objc_getProperty(self, v17, 48, 1);
      }

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412290;
      v25 = v20;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "getFilterClientConnection called, but dataSessionContext is not a flow data provider: %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (NSObject)generateClientKey:(int)a3 salt:
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_19;
  }

  if (!pid)
  {
    goto LABEL_5;
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  buffer = 0u;
  if (proc_pidinfo(pid, 17, 1uLL, &buffer, 56) != 56)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = pid;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "failed to get upid for pid %d", &v14, 8u);
    }

    goto LABEL_13;
  }

  a3 = v17;
LABEL_5:
  buffer = 0u;
  v17 = 0u;
  v6 = *(a1 + 136);
  if ((ne_filter_crypto_generate_client_key() & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = a3;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "failed to generate client crypto key for salt %u", &v14, 8u);
    }

    goto LABEL_17;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&buffer length:32];
  if (!v7)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = a3;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "failed to create NSData for client crypto key for salt %u", &v14, 8u);
    }

    v8 = 0;
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = v8;
LABEL_18:

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

void __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (!objc_getProperty(v3, a2, 104, 1))
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      Property = objc_getProperty(v10, v4, 48, 1);
      v12 = *(a1 + 32);
LABEL_10:
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_2;
      v13[3] = &unk_1E7F0A318;
      v13[4] = v12;
      v15 = *(a1 + 48);
      v14 = *(a1 + 40);
      [Property fetchProviderConnectionWithCompletionHandler:v13];

      return;
    }

LABEL_11:
    v12 = 0;
    Property = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 104, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = *(v5 + 16);

  v9(v5, v7, v8);
}

void __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7F0A2F0;
  v9[4] = v7;
  v10 = v4;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v8 = v4;
  dispatch_async(Property, v9);
}

uint64_t __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_3(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 104);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    if (v5)
    {
      Property = objc_getProperty(v5, v4, 104, 1);
    }

    else
    {
      Property = 0;
    }
  }

  else
  {
    Property = 0;
    v6 = *(a1 + 56);
  }

  v8 = *(a1 + 48);
  v9 = *(v6 + 16);

  return v9(v6, Property, v8);
}

- (void)report:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (!v4)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v17 = "[NEAgentFilterExtension sanitizeReport:]";
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null report", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v6 = [v4 flow];
  v7 = [(NEAgentFilterExtension *)self sanitizeFilterFlow:v6];

  v8 = [v5 action];
  if ((v8 - 1) >= 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v5 event];
  v15 = 0;
  if ((v10 - 1) >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v7 && v9 && v11)
  {
    v15 = [[NEFilterReport alloc] initWithFlow:v7 action:v9 event:v11];
    [v15 setBytesInboundCount:{objc_msgSend(v7, "inBytes")}];
    [v15 setBytesOutboundCount:{objc_msgSend(v7, "outBytes")}];
  }

  if (v15)
  {
    [objc_getProperty(self v12];
    goto LABEL_20;
  }

LABEL_19:
  v15 = 0;
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
}

- (unsigned)sanitizeFilterFlow:(unsigned int *)a1
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = ne_log_obj();
    v5 = v4;
    if (!v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *v31 = "[NEAgentFilterExtension sanitizeFilterFlow:]";
        _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null flow", buf, 0xCu);
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v31 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Sanitizing flow before: %@", buf, 0xCu);
    }

    v5 = v3;
    v7 = objc_getProperty(v5, v6, 128, 1);

    if (v7)
    {
      v8 = [(NEAgentFilterExtension *)a1 generateClientKey:0 salt:?];
      v9 = [v5 pid];
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = [(NEAgentFilterExtension *)a1 generateClientKey:a1[3] salt:?];
      v9 = a1[3];
      if (!v8)
      {
LABEL_15:
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v31 = v9;
          _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Signature validation failed to generate client crypto key for salt %d", buf, 8u);
        }

LABEL_18:
        a1 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    if (![v8 bytes] || objc_msgSend(v8, "length") != 32)
    {
      goto LABEL_15;
    }

    v10 = [NEAgentFilterExtension authenticateFlowWithState:*(a1 + 17) crypto_key:v8 flow:v5 salt:v9 isKernelSocket:v7 == 0];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v5;
        a1 = [v11 copy];
        [a1 setCrypto_signature:0];
        [a1 setPid:0];
        [a1 setEpid:0];
        [a1 setUuid:0];
        [a1 setEuuid:0];
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          if (v11[25].isa + 1 >= 2)
          {
            v24 = @"kernel";
          }

          else
          {
            v24 = @"socket";
          }

          *buf = 138412546;
          *v31 = v24;
          *&v31[8] = 2112;
          *&v31[10] = a1;
          _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "Sanitized %@ socket flow: %@", buf, 0x16u);
        }

        v13 = [v11 euuid];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            *buf = 138412290;
            *v31 = v26;
            v27 = v26;
            _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "Unknown flow class %@", buf, 0xCu);
          }

          a1 = 0;
          v13 = 0;
          goto LABEL_35;
        }

        a1 = [v5 copy];
        [a1 setCrypto_signature:0];
        [a1 setPid:0];
        [a1 setEpid:0];
        [a1 setRequest:0];
        [a1 setResponse:0];
        [a1 setParentURL:0];
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v31 = a1;
          _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Sanitized browser flow: %@", buf, 0xCu);
        }

        v13 = 0;
      }

      if (!a1)
      {
LABEL_36:
        v5 = v13;
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v31 = a1;
          _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "Sanitizing flow after: %@", buf, 0xCu);
        }

        goto LABEL_19;
      }

      v17 = [a1 URL];
      v18 = trimURL(v17);

      [a1 setURL:v18];
      v19 = [a1 sourceAppIdentifier];
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v5 pid];
        *buf = 67109634;
        *v31 = v25;
        *&v31[4] = 2112;
        *&v31[6] = v13;
        *&v31[14] = 2112;
        *&v31[16] = v19;
        _os_log_debug_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEBUG, "LOOKUP: Sanitization (2) looking up pid %d, euuid %@, bundle id: %@", buf, 0x1Cu);
      }

      v21 = +[NEAppInfoCache sharedAppInfoCache];
      v22 = [v5 pid];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __45__NEAgentFilterExtension_sanitizeFilterFlow___block_invoke;
      v28[3] = &unk_1E7F0A348;
      a1 = a1;
      v29 = a1;
      [(NEAppInfoCache *)v21 appInfoForPid:v22 UUID:v13 bundleID:v19 completionHandler:v28];

LABEL_35:
      goto LABEL_36;
    }

    a1 = 0;
  }

LABEL_20:

  v15 = *MEMORY[0x1E69E9840];

  return a1;
}

void __45__NEAgentFilterExtension_sanitizeFilterFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[3];
    [*(a1 + 32) setSourceAppIdentifier:v5];

    v6 = v4[4];
    [*(a1 + 32) setSourceAppVersion:v6];

    v7 = v4[5];
    [*(a1 + 32) setSourceAppUniqueIdentifier:v7];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Could not find app info for flow", v9, 2u);
    }
  }

  v8 = [*(a1 + 32) sourceAppVersion];

  if (!v8)
  {
    [*(a1 + 32) setSourceAppVersion:&stru_1F3880810];
  }
}

- (void)fetchCurrentRulesForFlow:(id)a3 completionHandler:(id)a4
{
  v10 = a4;
  v7 = [(NEAgentFilterExtension *)self sanitizeFilterFlow:a3];
  if (v7)
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 56, 1);
    }

    else
    {
      Property = 0;
    }

    [Property handleNewFlow:v7 completionHandler:v10];
  }

  else
  {
    v9 = objc_alloc_init(NEFilterControlVerdict);
    v10[2](v10, v9);
  }
}

- (void)sendSocketContentFilterRequest
{
  v2 = self;
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  v3 = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained(&v2->_managerObjectFactory);
    }

    else
    {
      WeakRetained = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke;
    v13[3] = &unk_1E7F0B4A8;
    v13[4] = v2;
    v6 = [WeakRetained managerObjectWithErrorHandler:v13];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_67;
    v12[3] = &unk_1E7F0A2C8;
    v12[4] = v2;
    [v6 createContentFilterSocketWithCompletionHandler:v12];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        objc_getProperty(v2, v8, 48, 1);
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v15 = v11;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "sendSocketContentFilterRequest called, but dataSessionContext is not a flow data provider: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an XPC error while creating a content filter socket: %@", &v6, 0xCu);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
  v5 = *MEMORY[0x1E69E9840];
}

void __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_67(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_2;
  v9[3] = &unk_1E7F0A0E8;
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(Property, v9);
}

void __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to create a content filter socket", buf, 2u);
    }

    [(NEAgentFilterExtension *)*(a1 + 40) sendFilterStatus:1 withError:?];
    goto LABEL_26;
  }

  v3 = [v2 fileDescriptor];
  v4 = *(a1 + 40);
  if (!v4 || ([(NEAgentFilterExtension *)v4 generateClientKey:*(v4 + 12) salt:?], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "sendSocketContentFilterRequest called, but failed to create client crypto key for kernel", buf, 2u);
    }

    v17 = 0;
    goto LABEL_23;
  }

  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_19;
  }

  if (v3 < 0 || [v7 length]!= 32)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v22 = "No control socket or invalid crypto key for sending crypto key";
    v23 = buf;
    v24 = v16;
    v25 = 2;
LABEL_33:
    _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, v22, v23, v25);
    goto LABEL_18;
  }

  *buf = xmmword_1BAA4E5B0;
  v28 = 0;
  v9 = [v8 bytes];
  v10 = 0;
  v11 = v9[1];
  v29 = *v9;
  v30 = v11;
  while (1)
  {
    v12 = write(v3, &buf[v10], 56 - v10);
    v13 = __error();
    if (v12 < 1)
    {
      break;
    }

    v10 += v12;
LABEL_12:
    if (v10 >= 0x38)
    {
      goto LABEL_19;
    }
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = *v13;
  if (*v13 == 35)
  {
    goto LABEL_12;
  }

  v21 = ne_log_obj();
  v16 = v21;
  if (v14 != 2)
  {
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LODWORD(v26) = 136315138;
    *(&v26 + 4) = strerror(v14);
    v22 = "Write operation on the control socket failed while sending the crypto key: (%s)";
    v23 = &v26;
    v24 = v16;
    v25 = 12;
    goto LABEL_33;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v26) = 0;
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "Failed to send crypto key to kernel", &v26, 2u);
  }

LABEL_18:

LABEL_19:
  v17 = v8;
LABEL_23:

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 48, 1);
  }

  [Property providerControlSocketFileHandle:{*(a1 + 32), v26, *buf, *&buf[8], v28, v29, v30, v31}];

LABEL_26:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)sendBrowserContentFilterServerRequest
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [WeakRetained managerObject];

  [v3 acceptAgentClients];
}

- (void)extensionDidStop:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    v6 = 48;
    _cmd = v4;
    Property = objc_getProperty(self, v4, 48, 1);
    v8 = _cmd;
    if (Property == _cmd || (v6 = 56, v9 = objc_getProperty(self, _cmd, 56, 1), v8 = _cmd, v9 == _cmd))
    {
      objc_setProperty_atomic(self, v8, 0, v6);
    }

    v10 = objc_getProperty(self, v8, 48, 1);
    if (v10)
    {

LABEL_7:
      v5 = _cmd;
      goto LABEL_9;
    }

    v4 = objc_getProperty(self, v11, 56, 1);
    v5 = _cmd;
    if (!v4)
    {
      v4 = objc_getProperty(self, _cmd, 144, 1);
      v5 = _cmd;
      if (v4)
      {
        v12 = objc_getProperty(self, _cmd, 144, 1);
        v12[2]();
        objc_setProperty_atomic_copy(self, v13, 0, 144);
        goto LABEL_7;
      }
    }
  }

LABEL_9:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)extension:(id)a3 didFailWithError:(id)a4
{
  _cmd = a3;
  v7 = a4;
  if (!self)
  {
    goto LABEL_5;
  }

  if (objc_getProperty(self, v6, 48, 1) == _cmd)
  {
    v9 = 64;
    v8 = objc_getProperty(self, _cmd, 64, 1);
    v11 = 48;
  }

  else
  {
    if (objc_getProperty(self, _cmd, 56, 1) == _cmd)
    {
      v9 = 72;
      v8 = objc_getProperty(self, _cmd, 72, 1);
    }

    else
    {
      if (_cmd)
      {
LABEL_5:
        v8 = 0;
        goto LABEL_11;
      }

      objc_setProperty_atomic(self, 0, 0, 48);
      objc_setProperty_atomic(self, v12, 0, 64);
      v8 = 0;
      v9 = 72;
    }

    v11 = 56;
  }

  objc_setProperty_atomic(self, v10, 0, v11);
  objc_setProperty_atomic(self, v13, 0, v9);
LABEL_11:
  [(NEAgentFilterExtension *)self handleExtensionExit:v8];
}

- (void)handleExtensionExit:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 80, 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__NEAgentFilterExtension_handleExtensionExit___block_invoke;
    v6[3] = &unk_1E7F0A0E8;
    v6[4] = a1;
    v7 = v4;
    dispatch_async(Property, v6);
  }
}

void __46__NEAgentFilterExtension_handleExtensionExit___block_invoke(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_13;
  }

  if (v3[10])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Filter App updating - ignore extension failure/exit for %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (objc_getProperty(v3, a2, 128, 1))
  {
    goto LABEL_12;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    Property = objc_getProperty(v7, v6, 80, 1);
    v9 = *(a1 + 32);
  }

  else
  {
LABEL_13:
    v9 = 0;
    Property = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__NEAgentFilterExtension_handleExtensionExit___block_invoke_44;
  v14[3] = &unk_1E7F0A0E8;
  v14[4] = v9;
  v15 = *(a1 + 40);
  v11 = NECreateTimerSource(Property, 5, v14);
  v12 = *(a1 + 32);
  if (v12)
  {
    objc_setProperty_atomic(v12, v10, v11, 128);
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
}

void __46__NEAgentFilterExtension_handleExtensionExit___block_invoke_44(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    if (objc_getProperty(v3, a2, 128, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 128, 1);
      }

      dispatch_source_cancel(Property);
      v7 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_12;
      }

      objc_setProperty_atomic(v7, v6, 0, 128);
    }

    v8 = *(a1 + 32);
    if (v8 && (*(v8 + 10) & 1) != 0)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Filter App updating - ignore extension failure/exit for %@", &v15, 0xCu);
      }

      goto LABEL_16;
    }
  }

LABEL_12:
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 40);
    v15 = 138412290;
    v16 = v14;
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Filter extension exit timer expired for %@ - notify that extension failed", &v15, 0xCu);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    [(NEAgentFilterExtension *)v12 sendFilterStatus:1 withError:?];
  }

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)extension:(id)a3 didStartWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (!self)
  {
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v11 = 0;
LABEL_4:
    if (v11 == v6)
    {
      if (v9)
      {
        if (self)
        {
          Property = objc_getProperty(self, v8, 48, 1);
        }

        else
        {
          Property = 0;
        }

        [Property stopWithReason:7];
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (objc_getProperty(self, v8, 48, 1) != v6)
  {
    v11 = objc_getProperty(self, v10, 56, 1);
    goto LABEL_4;
  }

  if (v9)
  {
LABEL_10:
    v13 = self;
    v14 = 0;
    v15 = 1;
LABEL_14:
    [(NEAgentFilterExtension *)v13 sendFilterStatus:v14 withError:v15];
    goto LABEL_15;
  }

  if (!self->_controlExtensionInitialized)
  {
LABEL_13:
    v13 = self;
    v14 = 2;
    v15 = 0;
    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v17 = objc_getProperty(self, v16, 56, 1);
  v19 = objc_getProperty(self, v18, 112, 1);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__NEAgentFilterExtension_extension_didStartWithError___block_invoke;
  v20[3] = &unk_1E7F0A2A0;
  objc_copyWeak(&v21, &location);
  [v17 startFilterWithOptions:v19 completionHandler:v20];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
LABEL_15:
}

void __54__NEAgentFilterExtension_extension_didStartWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEAgentFilterExtension *)WeakRetained handleStopCompleteWithError:v3];
}

- (void)handleStopCompleteWithError:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3 != 0;
    v12 = v3;
    if (v3)
    {
      v5 = [v3 domain];
      if (v5 && (v6 = v5, [v12 domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"NEAgentErrorDomain"), v7, v6, v8))
      {
        if ([v12 code] == 3)
        {
          v9 = 0;
          v10 = 4;
        }

        else
        {
          v11 = [v12 code];
          v10 = 0;
          if (v11 == 2)
          {
            v9 = 2;
          }

          else
          {
            v9 = v4;
          }
        }
      }

      else
      {
        v10 = 0;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    [(NEAgentFilterExtension *)a1 sendFilterStatus:v10 withError:v9];
    v3 = v12;
  }
}

- (void)updateConfiguration:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__NEAgentFilterExtension_updateConfiguration___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __46__NEAgentFilterExtension_updateConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) contentFilter];
  v4 = [v2 provider];
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_setProperty_atomic(v5, v3, v4, 112);
  }

  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v6)
  {
    if (v6[8])
    {
      v8 = objc_getProperty(v6, v7, 48, 1);
      [v8 setConfiguration:v12 extensionIdentifier:{objc_getProperty(v6, v9, 88, 1)}];
    }

    if (v6[9])
    {
      v10 = objc_getProperty(v6, v7, 56, 1);
      [v10 setConfiguration:v12 extensionIdentifier:{objc_getProperty(v6, v11, 96, 1)}];
    }
  }
}

- (void)wakeup
{
  if (self)
  {
    if (self->_dataExtensionInitialized)
    {
      [objc_getProperty(self a2];
      v4 = objc_getProperty(self, v3, 40, 1);
      if (v4)
      {
        controlExtensionInitialized = self->_controlExtensionInitialized;

        if (controlExtensionInitialized)
        {
          Property = objc_getProperty(self, v6, 56, 1);

          [Property wake];
        }
      }
    }
  }
}

- (void)sleepWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self && self->_dataExtensionInitialized)
  {
    Property = objc_getProperty(self, v5, 48, 1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7F0B588;
    v8[4] = self;
    v9 = v6;
    [Property sleepWithCompletionHandler:v8];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "%@: Data Extension sleep event complete", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = objc_getProperty(v5, v4, 40, 1);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = *(v7 + 9);

  if ((v8 & 1) == 0)
  {
LABEL_11:
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    Property = objc_getProperty(v10, v9, 56, 1);
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    Property = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke_66;
  v14[3] = &unk_1E7F0B588;
  v14[4] = v12;
  v15 = *(a1 + 40);
  [Property sleepWithCompletionHandler:v14];

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke_66(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "%@: Control Extension sleep event complete.", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startFilter
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NEAgentFilterExtension_startFilter__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = v2;
  dispatch_async(&self->super, block);
}

void __37__NEAgentFilterExtension_startFilter__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v3[8] & 1) != 0)
  {
    v4 = objc_getProperty(v3, a2, 40, 1);
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 9);

      if (v7)
      {
LABEL_6:
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = v8[9];
          Property = objc_getProperty(v8, v5, 112, 1);
          if (Property)
          {
            Property[11] = v9 & 1;
          }

          v11 = *(a1 + 32);
          if (v11)
          {
            objc_initWeak(&location, *(a1 + 32));
            v13 = objc_getProperty(v11, v12, 48, 1);
            v15 = objc_getProperty(v11, v14, 112, 1);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __46__NEAgentFilterExtension_startFilterExtension__block_invoke;
            v17[3] = &unk_1E7F0A2A0;
            objc_copyWeak(&v18, &location);
            [v13 startFilterWithOptions:v15 completionHandler:v17];

            objc_destroyWeak(&v18);
            objc_destroyWeak(&location);
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17[0]) = 0;
    _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Data or Control Extension not initialized.", v17, 2u);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
}

void __46__NEAgentFilterExtension_startFilterExtension__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEAgentFilterExtension *)WeakRetained handleStopCompleteWithError:v3];
}

- (void)startWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke;
  v14[3] = &unk_1E7F0A200;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v12 = v14;
  if (self)
  {
    Property = objc_getProperty(self, v11, 80, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke;
    block[3] = &unk_1E7F0AAA0;
    block[4] = self;
    v19 = v12;
    v18 = v10;
    dispatch_async(Property, block);
  }
}

void __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (v3 && objc_getProperty(v3, a2, 40, 1))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke_65;
      v14[3] = &unk_1E7F0A278;
      v14[4] = v4;
      v15 = *(a1 + 48);
      v6 = v5;
      v8 = v14;
      if (v4)
      {
        Property = objc_getProperty(v4, v7, 80, 1);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke;
        block[3] = &unk_1E7F0AAA0;
        block[4] = v4;
        v18 = v8;
        v17 = v6;
        dispatch_async(Property, block);
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(block[0]) = 0;
        _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Control Extension not present", block, 2u);
      }

      v12 = *(a1 + 48);
      v13 = [(NEAgentFilterExtension *)*(a1 + 32) copyProcessIdentities];
      (*(v12 + 16))(v12, 1, v13);
    }
  }

  else
  {
    [(NEAgentFilterExtension *)v3 cleanupOnStartFailure];
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke(id *a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (!v3)
  {
    goto LABEL_16;
  }

  Property = objc_getProperty(v3, a2, 48, 1);
  v6 = a1[4];
  if (Property)
  {
    if (v6)
    {
      v6 = objc_getProperty(a1[4], v5, 48, 1);
      v7 = a1[4];
    }

    else
    {
      v7 = 0;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2;
    v23[3] = &unk_1E7F0A200;
    v23[4] = v7;
    v25 = a1[6];
    v24 = a1[5];
    [v6 createWithCompletionHandler:v23];

    goto LABEL_15;
  }

  if (v6)
  {
    objc_setProperty_atomic(a1[4], v5, 0, 104);
    v6[4] = 0;
    v8 = a1[4];
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

  objc_initWeak(&location, v8);
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 32, 1);
    }

    v12 = v11;
    v13 = [v12 identifier];
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Beginning data extension request with extension %@", buf, 0xCu);
  }

  v15 = a1[4];
  if (v15)
  {
    v15 = objc_getProperty(v15, v14, 32, 1);
  }

  v16 = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_58;
  v18[3] = &unk_1E7F0A250;
  objc_copyWeak(&v21, &location);
  v20 = a1[6];
  v19 = a1[5];
  [v16 beginExtensionRequestWithInputItems:0 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    Property = objc_getProperty(v4, a2, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7F0A1D8;
  v12 = v2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v9[4] = v7;
  v10 = v8;
  dispatch_async(Property, v9);
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_58(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = ne_log_obj();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [objc_getProperty(WeakRetained v10];
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Extension request with data extension %@ started with identifier %@", buf, 0x16u);
    }

    Property = objc_getProperty(WeakRetained, v12, 80, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_59;
    block[3] = &unk_1E7F0A228;
    v16 = v6;
    v17 = WeakRetained;
    v20 = a1[5];
    v18 = v5;
    v19 = a1[4];
    dispatch_async(Property, block);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "strongself is nil after data extension request started", buf, 2u);
    }

    (*(a1[5] + 2))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_59(uint64_t a1, const char *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 88, 1);
      }

      v19 = *(a1 + 32);
      *buf = 138412546;
      v26 = Property;
      v27 = 2112;
      v28 = v19;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Failed to start the data extension %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = objc_getProperty(v5, a2, 32, 1);
    }

    v7 = [(NSExtension *)v5 extensionHostContextForUUID:?];
    if (v7)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        objc_setProperty_atomic(v8, v6, *(a1 + 48), 64);
        v10 = *(a1 + 40);
        if (v10)
        {
          objc_setProperty_atomic(v10, v9, v7, 48);
          v12 = *(a1 + 40);
          if (v12)
          {
            v13 = objc_getProperty(*(a1 + 40), v11, 48, 1);
            if (v13)
            {
              objc_storeWeak(v13 + 7, v12);
            }
          }
        }
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v14[8] = 1;
        v14 = *(a1 + 40);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_60;
      v21[3] = &unk_1E7F0A1B0;
      v22 = v14;
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      [v7 validateWithCompletionHandler:v21];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        if (v20)
        {
          v20 = objc_getProperty(v20, v16, 88, 1);
        }

        *buf = 138412290;
        v26 = v20;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to get the host context for data extension %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_60(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2_61;
  v9[3] = &unk_1E7F0A2F0;
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(Property, v9);
}

uint64_t __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2_61(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Filter Data provider validation failed with error: %@", &v19, 0xCu);
    }

    result = (*(a1[7] + 16))();
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 48, 1);
    }

    v8 = Property;
    v9 = a1[5];
    v10 = a1[6];
    if (v9)
    {
      v11 = objc_getProperty(v9, v7, 88, 1);
    }

    else
    {
      v11 = 0;
    }

    [v8 setConfiguration:v10 extensionIdentifier:v11];

    v12 = [a1[6] contentFilter];
    v14 = [v12 provider];
    v15 = a1[5];
    if (v15)
    {
      objc_setProperty_atomic(v15, v13, v14, 112);
    }

    v16 = *(a1[7] + 16);
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }

  return result;
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_3(uint64_t a1, const char *a2)
{
  if (*(a1 + 56))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      *(v3 + 8) = 1;
      v4 = *(a1 + 32);
      if (v4)
      {
        Property = objc_getProperty(v4, a2, 48, 1);
        v3 = *(a1 + 32);
LABEL_5:
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_4;
        v8[3] = &unk_1E7F0A1B0;
        v8[4] = v3;
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        [Property validateWithCompletionHandler:v8];

        return;
      }

      v3 = 0;
    }

    Property = 0;
    goto LABEL_5;
  }

  v6 = *(a1 + 48);
  v7 = *(*(a1 + 48) + 16);

  v7();
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_5;
  v9[3] = &unk_1E7F0A2F0;
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(Property, v9);
}

uint64_t __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_5(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Filter provider validation failed: %@", &v19, 0xCu);
    }

    result = (*(a1[7] + 16))();
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 48, 1);
    }

    v8 = Property;
    v9 = a1[5];
    v10 = a1[6];
    if (v9)
    {
      v11 = objc_getProperty(v9, v7, 88, 1);
    }

    else
    {
      v11 = 0;
    }

    [v8 setConfiguration:v10 extensionIdentifier:v11];

    v12 = [a1[6] contentFilter];
    v14 = [v12 provider];
    v15 = a1[5];
    if (v15)
    {
      objc_setProperty_atomic(v15, v13, v14, 112);
    }

    v16 = *(a1[7] + 16);
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }

  return result;
}

- (void)cleanupOnStartFailure
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 64, 1))
    {
      v4 = objc_getProperty(a1, v3, 32, 1);
      [v4 cancelExtensionRequestWithIdentifier:{objc_getProperty(a1, v5, 64, 1)}];
    }

    if (objc_getProperty(a1, v3, 72, 1))
    {
      v7 = objc_getProperty(a1, v6, 40, 1);
      [v7 cancelExtensionRequestWithIdentifier:{objc_getProperty(a1, v8, 72, 1)}];
    }

    objc_setProperty_atomic(a1, v6, 0, 48);
    objc_setProperty_atomic(a1, v9, 0, 64);
    a1[8] = 0;
    objc_setProperty_atomic(a1, v10, 0, 56);
    objc_setProperty_atomic(a1, v11, 0, 72);
    a1[9] = 0;
  }
}

- (uint64_t)copyProcessIdentities
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_getProperty(a1, v3, 56, 1))
  {
    Property = objc_getProperty(a1, v4, 56, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 64, 1);
    }

    v7 = Property;
  }

  else
  {
    v7 = 0;
  }

  if (!objc_getProperty(a1, v4, 48, 1))
  {
    v11 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "No control extension process identity is available", buf, 2u);
    }

    if (v11)
    {
      goto LABEL_12;
    }

LABEL_17:
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "No data extension process identity is available", v16, 2u);
    }

    goto LABEL_20;
  }

  v9 = objc_getProperty(a1, v8, 48, 1);
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 64, 1);
  }

  v11 = v9;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  [v2 addObject:v7];
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_12:
  [v2 addObject:v11];
LABEL_20:
  v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v2];

  return v14;
}

void __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke_65(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v5 = [(NEAgentFilterExtension *)*(a1 + 32) copyProcessIdentities];
    (*(v3 + 16))(v3, 1, v5);
  }

  else
  {
    [(NEAgentFilterExtension *)*(a1 + 32) cleanupOnStartFailure];
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a1[4]);
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 40, 1);
    }

    v5 = Property;
    v6 = [v5 identifier];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Beginning control extension request with extension %@", buf, 0xCu);
  }

  v8 = a1[4];
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 40, 1);
  }

  v9 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_62;
  v11[3] = &unk_1E7F0A250;
  objc_copyWeak(&v14, &location);
  v13 = a1[6];
  v12 = a1[5];
  [v9 beginExtensionRequestWithInputItems:0 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x1E69E9840];
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_62(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = ne_log_obj();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [objc_getProperty(WeakRetained v10];
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Extension request with control extension %@ started with identifier %@", buf, 0x16u);
    }

    Property = objc_getProperty(WeakRetained, v12, 80, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_63;
    block[3] = &unk_1E7F0A228;
    v16 = v6;
    v17 = WeakRetained;
    v20 = a1[5];
    v18 = v5;
    v19 = a1[4];
    dispatch_async(Property, block);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "strongself is nil after control extension request started", buf, 2u);
    }

    (*(a1[5] + 2))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_63(uint64_t a1, const char *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 96, 1);
      }

      v19 = *(a1 + 32);
      *buf = 138412546;
      v26 = Property;
      v27 = 2112;
      v28 = v19;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Failed to start control extension %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = objc_getProperty(v5, a2, 40, 1);
    }

    v7 = [(NSExtension *)v5 extensionHostContextForUUID:?];
    if (v7)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        objc_setProperty_atomic(v8, v6, *(a1 + 48), 72);
        v10 = *(a1 + 40);
        if (v10)
        {
          objc_setProperty_atomic(v10, v9, v7, 56);
          v12 = *(a1 + 40);
          if (v12)
          {
            v13 = objc_getProperty(*(a1 + 40), v11, 56, 1);
            if (v13)
            {
              objc_storeWeak(v13 + 7, v12);
            }
          }
        }
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v14[9] = 1;
        v14 = *(a1 + 40);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_64;
      v21[3] = &unk_1E7F0A1B0;
      v22 = v14;
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      [v7 validateWithCompletionHandler:v21];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        if (v20)
        {
          v20 = objc_getProperty(v20, v16, 96, 1);
        }

        *buf = 138412290;
        v26 = v20;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to get the host context for control extension %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_64(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Filter Control validation failed with error: %@", &v14, 0xCu);
    }

    v6 = *(a1[6] + 16);
  }

  else
  {
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 56, 1);
    }

    v9 = Property;
    v10 = a1[4];
    v11 = a1[5];
    if (v10)
    {
      v12 = objc_getProperty(v10, v8, 96, 1);
    }

    else
    {
      v12 = 0;
    }

    [v9 setConfiguration:v11 extensionIdentifier:v12];

    v6 = *(a1[6] + 16);
  }

  v6();

  v13 = *MEMORY[0x1E69E9840];
}

- (NSXPCInterface)driverInterface
{
  if (driverInterface_onceToken_20784 != -1)
  {
    dispatch_once(&driverInterface_onceToken_20784, &__block_literal_global_29);
  }

  v3 = driverInterface_driverInterface_20785;

  return v3;
}

uint64_t __41__NEAgentFilterExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CCA50];
  v1 = driverInterface_driverInterface_20785;
  driverInterface_driverInterface_20785 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSXPCInterface)managerInterface
{
  if (managerInterface_onceToken_20787 != -1)
  {
    dispatch_once(&managerInterface_onceToken_20787, &__block_literal_global_20788);
  }

  v3 = managerInterface_managerInterface_20789;

  return v3;
}

uint64_t __42__NEAgentFilterExtension_managerInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38D4FF0];
  v1 = managerInterface_managerInterface_20789;
  managerInterface_managerInterface_20789 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)handleAppsUpdateEnds:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__NEAgentFilterExtension_handleAppsUpdateEnds___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __47__NEAgentFilterExtension_handleAppsUpdateEnds___block_invoke(uint64_t a1, const char *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!v4 || (v4[11] & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = objc_getProperty(v4, a2, 88, 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  Property = *(a1 + 32);
  v8 = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 88, 1);
  }

  v2 = Property;
  if (![v8 containsObject:v2])
  {
LABEL_8:
    v9 = *(a1 + 32);
    if (v9 && (v10 = objc_getProperty(v9, v5, 96, 1)) != 0)
    {
      v12 = v10;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v13)
      {
        v15 = objc_getProperty(v13, v11, 96, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v14 containsObject:v15];

      if (v6)
      {
LABEL_13:

        if ((v16 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    if (!v16)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

LABEL_17:
  v17 = *(a1 + 32);
  if (v17)
  {
    *(v17 + 10) = 0;
    v18 = *(a1 + 32);
    if (v18)
    {
      *(v18 + 11) = 0;
    }
  }

  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v23 = objc_getProperty(v21, v20, 88, 1);
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v22, 96, 1);
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = 138412546;
    v26 = v23;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "Extensions %@ and %@ have been updated, idling", &v25, 0x16u);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:0 withError:?];
LABEL_26:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)handleAppsUpdateEnding:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NEAgentFilterExtension_handleAppsUpdateEnding___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __49__NEAgentFilterExtension_handleAppsUpdateEnding___block_invoke(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  if (v4 && (v4[10] & 1) != 0 && (v4[11] & 1) == 0)
  {
    v6 = objc_getProperty(v4, a2, 88, 1);
    if (v6)
    {
      Property = *(a1 + 32);
      v8 = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 88, 1);
      }

      v2 = Property;
      if ([v8 containsObject:v2])
      {

LABEL_18:
        v17 = *(a1 + 32);
        if (v17)
        {
          *(v17 + 11) = 1;
        }

        return;
      }
    }

    v9 = *(a1 + 32);
    if (v9 && (v10 = objc_getProperty(v9, v5, 96, 1)) != 0)
    {
      v12 = v10;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v13)
      {
        v15 = objc_getProperty(v13, v11, 96, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v14 containsObject:v15];

      if (v6)
      {
LABEL_14:

        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        goto LABEL_14;
      }
    }

    if (!v16)
    {
      return;
    }

    goto LABEL_18;
  }
}

- (void)handleAppsUpdateBegins:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NEAgentFilterExtension_handleAppsUpdateBegins___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __49__NEAgentFilterExtension_handleAppsUpdateBegins___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 10))
    {
      goto LABEL_18;
    }

    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 40) containsObject:v3])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      *(v5 + 10) = 1;
      v6 = *(a1 + 32);
      if (v6)
      {
        if (objc_getProperty(v6, v4, 128, 1))
        {
          Property = *(a1 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v7, 128, 1);
          }

          dispatch_source_cancel(Property);
          v10 = *(a1 + 32);
          if (v10)
          {
            objc_setProperty_atomic(v10, v9, 0, 128);
          }
        }
      }
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v15 = objc_getProperty(v13, v12, 88, 1);
        v13 = *(a1 + 32);
        if (v13)
        {
          v13 = objc_getProperty(v13, v14, 96, 1);
        }
      }

      else
      {
        v15 = 0;
      }

      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Extensions %@ and %@ are being updated, stopping", &v17, 0x16u);
    }

    [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:0 withError:?];
    [(NEAgentFilterExtension *)*(a1 + 32) stopFilterExtensionWithReason:?];
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopFilterExtensionWithReason:(_BYTE *)a1
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = ne_session_stop_reason_to_string();
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Stopping filter with reason %s", &v7, 0xCu);
    }

    if (a1[8])
    {
      [objc_getProperty(a1 v5];
    }

    if (a1[9])
    {
      [objc_getProperty(a1 v5];
    }

    objc_setProperty_atomic(a1, v5, 0, 104);
    *(a1 + 4) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleAppsUninstalled:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a3 containsObject:self->_pluginType])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      pluginType = self->_pluginType;
      v7 = 138412290;
      v8 = pluginType;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "App for plugin type %@ has been uninstalled, stopping", &v7, 0xCu);
    }

    [(NEAgentFilterExtension *)self stopFilterExtensionWithReason:?];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleDisposeWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NEAgentFilterExtension_handleDisposeWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7F0B588;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

uint64_t __61__NEAgentFilterExtension_handleDisposeWithCompletionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_getProperty(v3, a2, 48, 1);
    if (v4)
    {

LABEL_6:
      v8 = *(a1 + 32);
      if (v8)
      {
        objc_setProperty_atomic_copy(v8, v6, *(a1 + 40), 144);
        v8 = *(a1 + 32);
      }

      return [v8 handleCancel];
    }

    v7 = *(a1 + 32);
    if (v7 && objc_getProperty(v7, v5, 56, 1))
    {
      goto LABEL_6;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (void)handleInitWithCompletionHandler:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7F0A0C0;
  v15[4] = self;
  v16 = v4;
  v5 = v4;
  v6 = v15;
  if (self)
  {
    objc_initWeak(&location, self);
    v23[0] = *MEMORY[0x1E696A2E0];
    v8 = objc_getProperty(self, v7, 88, 1);
    v23[1] = *MEMORY[0x1E696A2F8];
    v24[0] = v8;
    v24[1] = @"com.apple.networkextension.filter-data";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Property = objc_getProperty(self, v11, 88, 1);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = Property;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Looking for a data extension with identifier %@", &buf, 0xCu);
    }

    v13 = MEMORY[0x1E696ABD0];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke;
    v20 = &unk_1E7F0A188;
    objc_copyWeak(v22, &location);
    v21 = v6;
    [v13 extensionsWithMatchingAttributes:v9 completion:&buf];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke(uint64_t a1, const char *a2, char a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, a2, 80, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F0A098;
  v11 = v4;
  v8 = *(a1 + 40);
  v12 = a3;
  block[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(Property, block);
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 count];
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v9, 88, 1);
    }

    else
    {
      Property = 0;
    }

    *buf = 134218242;
    v33 = v10;
    v34 = 2112;
    v35 = Property;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu data extension(s) with identifier %@", buf, 0x16u);
  }

  if (v5 && !v6 && [v5 count] && WeakRetained)
  {
    objc_initWeak(buf, WeakRetained);
    v13 = [v5 objectAtIndexedSubscript:0];
    objc_setProperty_atomic(WeakRetained, v14, v13, 32);

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_48;
    v30[3] = &unk_1E7F0A110;
    objc_copyWeak(&v31, buf);
    v16 = objc_getProperty(WeakRetained, v15, 32, 1);
    [v16 setRequestInterruptionBlock:v30];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_50;
    v28[3] = &unk_1E7F0A138;
    objc_copyWeak(&v29, buf);
    v18 = objc_getProperty(WeakRetained, v17, 32, 1);
    [v18 setRequestCompletionBlock:v28];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_2;
    v26[3] = &unk_1E7F0A160;
    objc_copyWeak(&v27, buf);
    v20 = objc_getProperty(WeakRetained, v19, 32, 1);
    [v20 setRequestCancellationBlock:v26];

    (*(*(a1 + 32) + 16))();
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    if (WeakRetained)
    {
      v21 = objc_getProperty(WeakRetained, v12, 88, 1);
    }

    else
    {
      v21 = 0;
    }

    if ([NEAgentExtension doesAppExtensionExist:@"com.apple.networkextension.filter-data" bundleIdentifier:v21])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (WeakRetained)
        {
          v25 = objc_getProperty(WeakRetained, v23, 88, 1);
        }

        else
        {
          v25 = 0;
        }

        *buf = 138412802;
        v33 = @"com.apple.networkextension.filter-data";
        v34 = 2112;
        v35 = v25;
        v36 = 2112;
        v37 = v6;
        _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "Failed to create a %@ extension with identifier %@: %@", buf, 0x20u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_48(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v6, 88, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = 138412290;
    v12 = Property;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Extension %@ died unexpectedly", &v11, 0xCu);
  }

  if (WeakRetained)
  {
    v8 = objc_getProperty(WeakRetained, v7, 64, 1);
  }

  else
  {
    v8 = 0;
  }

  if ([v3 isEqual:v8])
  {
    [(NEAgentFilterExtension *)WeakRetained handleExtensionExit:v3];
    [(NEAgentFilterExtension *)WeakRetained cleanupDataExtensionWithRequestIdentifier:v3];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupDataExtensionWithRequestIdentifier:v7];
  }
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupDataExtensionWithRequestIdentifier:v7];
  }
}

- (void)cleanupDataExtensionWithRequestIdentifier:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 80, 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__NEAgentFilterExtension_cleanupDataExtensionWithRequestIdentifier___block_invoke;
    v6[3] = &unk_1E7F0A0E8;
    v6[4] = a1;
    v7 = v4;
    dispatch_async(Property, v6);
  }
}

uint64_t __68__NEAgentFilterExtension_cleanupDataExtensionWithRequestIdentifier___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    objc_setProperty_atomic(Property, a2, 0, 64);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 32, 1);
    }
  }

  [Property setRequestInterruptionBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v5, 32, 1);
  }

  [v6 setRequestCancellationBlock:0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 32, 1);
  }

  [v8 setRequestCompletionBlock:0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 32, 1);
  }

  [v10 cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v11, 48, 1);
  }

  else
  {
    v13 = 0;
  }

  return [v12 extensionDidStop:v13];
}

void __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke_3;
    v22 = &unk_1E7F0A070;
    v1 = *(a1 + 32);
    v23 = *(a1 + 40);
    v3 = &v19;
    if (v1)
    {
      Property = objc_getProperty(v1, v2, 96, 1);
      if ([Property length])
      {
        objc_initWeak(&location, v1);
        v30[0] = *MEMORY[0x1E696A2E0];
        v6 = objc_getProperty(v1, v5, 96, 1);
        v30[1] = *MEMORY[0x1E696A2F8];
        v31[0] = v6;
        v31[1] = @"com.apple.networkextension.filter-control";
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_getProperty(v1, v9, 96, 1);
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v10;
          _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Looking for a control extension with identifier %@", &buf, 0xCu);
        }

        v11 = MEMORY[0x1E696ABD0];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v26 = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke;
        v27 = &unk_1E7F0A188;
        objc_copyWeak(v29, &location);
        v28 = v3;
        [v11 extensionsWithMatchingAttributes:v7 completion:&buf];

        objc_destroyWeak(v29);
        objc_destroyWeak(&location);
      }

      else
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Control Extension not found", &buf, 2u);
        }

        objc_setProperty_atomic(v1, v17, 0, 40);
        (v21)(v3, 1, 1);
      }
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *(a1 + 49);
    v13 = *(*(a1 + 40) + 16);
    v14 = *MEMORY[0x1E69E9840];
    v15 = *(a1 + 40);

    v13(v15, 0, v12);
  }
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 count];
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v9, 96, 1);
    }

    else
    {
      Property = 0;
    }

    *buf = 134218242;
    v36 = v10;
    v37 = 2112;
    v38 = Property;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu control extension(s) with identifier %@", buf, 0x16u);
  }

  if (v5 && !v6 && [v5 count])
  {
    objc_initWeak(buf, WeakRetained);
    v14 = [v5 objectAtIndexedSubscript:0];
    if (WeakRetained)
    {
      objc_setProperty_atomic(WeakRetained, v13, v14, 40);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_54;
    v33[3] = &unk_1E7F0A110;
    objc_copyWeak(&v34, buf);
    if (WeakRetained)
    {
      v16 = objc_getProperty(WeakRetained, v15, 40, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v17 setRequestInterruptionBlock:v33];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_55;
    v31[3] = &unk_1E7F0A138;
    objc_copyWeak(&v32, buf);
    if (WeakRetained)
    {
      v19 = objc_getProperty(WeakRetained, v18, 40, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    [v20 setRequestCompletionBlock:v31];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_2;
    v29[3] = &unk_1E7F0A160;
    objc_copyWeak(&v30, buf);
    if (WeakRetained)
    {
      v22 = objc_getProperty(WeakRetained, v21, 40, 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [v23 setRequestCancellationBlock:v29];

    (*(*(a1 + 32) + 16))();
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  else
  {
    if (WeakRetained)
    {
      v24 = objc_getProperty(WeakRetained, v12, 96, 1);
    }

    else
    {
      v24 = 0;
    }

    if ([NEAgentExtension doesAppExtensionExist:@"com.apple.networkextension.filter-control" bundleIdentifier:v24])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (WeakRetained)
        {
          v28 = objc_getProperty(WeakRetained, v26, 96, 1);
        }

        else
        {
          v28 = 0;
        }

        *buf = 138412802;
        v36 = @"com.apple.networkextension.filter-control";
        v37 = 2112;
        v38 = v28;
        v39 = 2112;
        v40 = v6;
        _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Failed to create a %@ extension with identifier %@: %@", buf, 0x20u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v6, 96, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = 138412290;
    v12 = Property;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Extension %@ died unexpectedly", &v11, 0xCu);
  }

  if (WeakRetained)
  {
    v8 = objc_getProperty(WeakRetained, v7, 72, 1);
  }

  else
  {
    v8 = 0;
  }

  if ([v3 isEqual:v8])
  {
    [(NEAgentFilterExtension *)WeakRetained handleExtensionExit:v3];
    [(NEAgentFilterExtension *)WeakRetained cleanupControlExtensionWithRequestIdentifier:v3];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupControlExtensionWithRequestIdentifier:v7];
  }
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupControlExtensionWithRequestIdentifier:v7];
  }
}

- (void)cleanupControlExtensionWithRequestIdentifier:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 80, 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__NEAgentFilterExtension_cleanupControlExtensionWithRequestIdentifier___block_invoke;
    v6[3] = &unk_1E7F0A0E8;
    v6[4] = a1;
    v7 = v4;
    dispatch_async(Property, v6);
  }
}

uint64_t __71__NEAgentFilterExtension_cleanupControlExtensionWithRequestIdentifier___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    objc_setProperty_atomic(Property, a2, 0, 72);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 40, 1);
    }
  }

  [Property setRequestInterruptionBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v5, 40, 1);
  }

  [v6 setRequestCancellationBlock:0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 40, 1);
  }

  [v8 setRequestCompletionBlock:0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 40, 1);
  }

  [v10 cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v11, 56, 1);
  }

  else
  {
    v13 = 0;
  }

  return [v12 extensionDidStop:v13];
}

- (void)dealloc
{
  crypto_state = self->_crypto_state;
  if (crypto_state)
  {
    free(crypto_state);
    self->_crypto_state = 0;
  }

  if (objc_getProperty(self, a2, 128, 1))
  {
    Property = objc_getProperty(self, v4, 128, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(self, v6, 0, 128);
  }

  v7.receiver = self;
  v7.super_class = NEAgentFilterExtension;
  [(NEAgentFilterExtension *)&v7 dealloc];
}

- (NEAgentFilterExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginEndpoint:(id)a5 pluginProcessIdentity:(id)a6 queue:(id)a7 factory:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = NEAgentFilterExtension;
  v20 = [(NEAgentFilterExtension *)&v34 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&v20->_managerObjectFactory, v19);
  objc_storeStrong(&v21->_queue, a7);
  v22 = objc_alloc(MEMORY[0x1E695DEC8]);
  v23 = [v17 uuid];
  v24 = [v22 initWithObjects:{v23, 0}];
  extensionUUIDs = v21->_extensionUUIDs;
  v21->_extensionUUIDs = v24;

  objc_storeStrong(&v21->_pluginType, a3);
  if (a4 == 4)
  {
    v26 = off_1E7F047B0;
  }

  else
  {
    if (a4 != 6)
    {
LABEL_13:
      v30 = 0;
      goto LABEL_14;
    }

    v26 = off_1E7F047F8;
  }

  v27 = [(NEExtensionProviderHostContext *)objc_alloc(*v26) initWithVendorEndpoint:v16 processIdentity:v17 delegate:v21];
  dataSessionContext = v21->_dataSessionContext;
  v21->_dataSessionContext = v27;

  if (!v21->_dataSessionContext)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v21->_dataExtensionIdentifier, a3);
  inited = ne_filter_crypto_init_master();
  v21->_crypto_state = inited;
  if (!inited)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "Failed to initialize NE filter crypto", buf, 2u);
    }

    goto LABEL_13;
  }

  arc4random_buf(&v21->_crypto_kernel_salt, 4uLL);
LABEL_9:
  v30 = v21;
LABEL_14:

  return v30;
}

- (NEAgentFilterExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginInfo:(id)a5 queue:(id)a6 factory:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v41.receiver = self;
  v41.super_class = NEAgentFilterExtension;
  v17 = [(NEAgentFilterExtension *)&v41 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  objc_storeWeak(&v17->_managerObjectFactory, v16);
  objc_storeStrong(&v18->_queue, a6);
  *&v18->_dataExtensionInitialized = 0;
  objc_storeStrong(&v18->_pluginType, a3);
  v19 = [v14 objectForKeyedSubscript:@"extension-identifier"];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = [NELaunchServices pluginProxyWithIdentifier:v19 type:v13 pluginClass:a4 extensionPoint:0];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 machOUUIDs];
    [v20 addObjectsFromArray:v23];

    v24 = [v22 pluginIdentifier];
    dataExtensionIdentifier = v18->_dataExtensionIdentifier;
    v18->_dataExtensionIdentifier = v24;
  }

  v26 = [NELaunchServices pluginProxyWithIdentifier:0 type:v13 pluginClass:4 extensionPoint:@"com.apple.networkextension.filter-control"];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 machOUUIDs];
    [v20 addObjectsFromArray:v28];

    v29 = [v27 pluginIdentifier];
    controlExtensionIdentifier = v18->_controlExtensionIdentifier;
    v18->_controlExtensionIdentifier = v29;
  }

  if (!v18->_dataExtensionIdentifier)
  {
    v35 = ne_log_obj();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      v34 = 0;
      goto LABEL_16;
    }

    *buf = 138412546;
    v43 = @"com.apple.networkextension.filter-data";
    v44 = 2112;
    v45 = v13;
    v36 = "Failed to find a %@ extension inside of app %@";
    v37 = v35;
    v38 = 22;
LABEL_18:
    _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
    goto LABEL_15;
  }

  if ([v20 count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v20];
    extensionUUIDs = v18->_extensionUUIDs;
    v18->_extensionUUIDs = v31;
  }

  inited = ne_filter_crypto_init_master();
  v18->_crypto_state = inited;
  if (!inited)
  {
    v35 = ne_log_obj();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v36 = "Failed to initialize NE filter crypto";
    v37 = v35;
    v38 = 2;
    goto LABEL_18;
  }

  arc4random_buf(&v18->_crypto_kernel_salt, 4uLL);

LABEL_11:
  v34 = v18;
LABEL_16:

  v39 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (BOOL)authenticateFlowWithState:(cfil_crypto_state *)a3 crypto_key:(id)a4 flow:(id)a5 salt:(unsigned int)a6 isKernelSocket:(BOOL)a7
{
  v7 = a7;
  v113 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (v10 && [v10 bytes] && objc_msgSend(v10, "length") == 32)
  {
    v12 = [v11 crypto_signature];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 crypto_signature];
      v15 = [v14 length];

      if (v15)
      {
        v112 = 0;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        *buf = 0u;
        memset(v107, 0, sizeof(v107));
        if (v11)
        {
          Property = objc_getProperty(v11, v16, 128, 1);
        }

        else
        {
          Property = 0;
        }

        v18 = Property;

        if (v18)
        {
          if (v11)
          {
            v20 = objc_getProperty(v11, v19, 128, 1);
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          [v21 getUUIDBytes:buf];
        }

        DWORD2(v107[0]) = [v11 direction] != 1;
        DWORD2(v107[4]) = [v11 pid];
        if ([v11 epid])
        {
          v22 = [v11 epid];
        }

        else
        {
          v22 = [v11 pid];
        }

        HIDWORD(v107[4]) = v22;
        LODWORD(v108) = [v11 rpid];
        *(&v111 + 1) = [v11 inBytes];
        v112 = [v11 outBytes];
        v27 = "Closed";
        if (![v11 inBytes] && !objc_msgSend(v11, "outBytes"))
        {
          v27 = "New";
        }

        v85 = v27;
        if (v11)
        {
          if (v11[13])
          {
            v28 = [v11 sourceAppIdentifier];

            if (v28)
            {
              v29 = [v11 sourceAppIdentifier];
              [v29 UTF8String];

              v30 = [v11 sourceAppIdentifier];
              [v30 length];
            }
          }
        }

        v31 = [v11 URL];

        if (v31)
        {
          v32 = [v11 URL];
          v33 = [v32 absoluteString];
          [v33 UTF8String];

          v34 = [v11 URL];
          v35 = [v34 absoluteString];
          [v35 length];
        }

        objc_opt_class();
        v82 = a6;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v40 = 0;
          v84 = "";
          v83 = "Browser";
          goto LABEL_60;
        }

        v36 = v11;
        v38 = v36;
        if (v11)
        {
          v39 = objc_getProperty(v36, v37, 128, 1);
          if (v39)
          {

LABEL_36:
            v42 = [v38 remoteFlowEndpoint];

            if (v42)
            {
              v43 = [v38 remoteFlowEndpoint];
              address = nw_endpoint_get_address(v43);

              if (address)
              {
                sa_family = address->sa_family;
                if (sa_family == 30)
                {
                  v46 = *address;
                  *(&v107[1] + 8) = *&address->sa_data[10];
                  goto LABEL_42;
                }

                if (sa_family == 2)
                {
                  v46 = *address;
LABEL_42:
                  *(v107 + 12) = v46;
                }
              }
            }

            v47 = [v38 localFlowEndpoint];

            if (!v47)
            {
              goto LABEL_50;
            }

            v48 = [v38 localFlowEndpoint];
            v49 = nw_endpoint_get_address(v48);

            if (!v49)
            {
              goto LABEL_50;
            }

            v50 = v49->sa_family;
            if (v50 == 30)
            {
              v51 = *v49;
              *(&v107[3] + 4) = *&v49->sa_data[10];
            }

            else
            {
              if (v50 != 2)
              {
                goto LABEL_50;
              }

              v51 = *v49;
            }

            *(&v107[2] + 8) = v51;
LABEL_50:
            v52 = [v38 remoteHostname];
            if (v52 && (v53 = v52, [v38 remoteHostname], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "length"), v54, v53, v55))
            {
              v56 = [v38 remoteHostname];
              v57 = [v56 UTF8String];

              v81 = strlen(v57);
            }

            else
            {
              v81 = 0;
            }

            DWORD1(v107[4]) = [v38 socketProtocol];
            v58 = [v38 uuid];
            [v58 getUUIDBytes:&v108 + 4];

            v59 = [v38 euuid];
            [v59 getUUIDBytes:&v109 + 4];

            v60 = [v38 ruuid];
            [v60 getUUIDBytes:&v110 + 4];

            LODWORD(v60) = [v38 socketProtocol];
            v61 = [v38 socketFamily];

            if (v60 == 6)
            {
              v62 = "TCP";
            }

            else
            {
              v62 = "UDP";
            }

            v63 = "v6";
            if (v61 == 2)
            {
              v63 = "v4";
            }

            v83 = v62;
            v84 = v63;
            v40 = v81;
LABEL_60:
            [v10 bytes];
            v64 = [v11 crypto_signature];
            v65 = [v64 bytes];
            v66 = [v11 crypto_signature];
            LODWORD(v80) = [v66 length];
            LODWORD(v79) = v40;
            v24 = ne_filter_crypto_validate_data();

            v67 = ne_log_obj();
            v68 = v67;
            if (v24)
            {
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
              {
                if (v7)
                {
                  v69 = "Kernel ";
                }

                else
                {
                  v69 = "";
                }

                if ([v11 direction] == 1)
                {
                  v70 = "IN";
                }

                else if ([v11 direction] == 2)
                {
                  v70 = "OUT";
                }

                else
                {
                  v70 = "ANY";
                }

                v73 = [v11 crypto_signature];
                v74 = [v11 inBytes];
                v75 = [v11 outBytes];
                v76 = [v11 sourceAppIdentifier];
                *v86 = 136317442;
                v87 = v69;
                v88 = 2080;
                v89 = v85;
                v90 = 2080;
                v91 = v83;
                v92 = 2080;
                v93 = v84;
                v94 = 2080;
                v95 = v70;
                v96 = 1024;
                v97 = v82;
                v98 = 2112;
                v99 = v73;
                v100 = 2048;
                v101 = v74;
                v102 = 2048;
                v103 = v75;
                v104 = 2112;
                v105 = v76;
                _os_log_debug_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_DEBUG, "Signature validation (%s%s - %s %s %s) succeeded for salt %d with signature %@ (inBytes %llu outBytes %llu) (app %@)", v86, 0x62u);
LABEL_82:
              }
            }

            else if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              if (v7)
              {
                v71 = "Kernel ";
              }

              else
              {
                v71 = "";
              }

              if ([v11 direction] == 1)
              {
                v72 = "IN";
              }

              else if ([v11 direction] == 2)
              {
                v72 = "OUT";
              }

              else
              {
                v72 = "ANY";
              }

              v73 = [v11 crypto_signature];
              v77 = [v11 inBytes];
              v78 = [v11 outBytes];
              v76 = [v11 sourceAppIdentifier];
              *v86 = 136317442;
              v87 = v71;
              v88 = 2080;
              v89 = v85;
              v90 = 2080;
              v91 = v83;
              v92 = 2080;
              v93 = v84;
              v94 = 2080;
              v95 = v72;
              v96 = 1024;
              v97 = v82;
              v98 = 2112;
              v99 = v73;
              v100 = 2048;
              v101 = v77;
              v102 = 2048;
              v103 = v78;
              v104 = 2112;
              v105 = v76;
              _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, "Signature validation (%s%s - %s %s %s) failed for salt %d with signature %@ (inBytes %llu outBytes %llu) (app %@)", v86, 0x62u);
              goto LABEL_82;
            }

            goto LABEL_18;
          }

          v41 = v38[25];
          if (v41 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v41 = 0;
        }

        *&v107[0] = v41;
        goto LABEL_36;
      }
    }

    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Signature validation: flow has no signature", buf, 2u);
    }
  }

  v24 = 0;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

@end