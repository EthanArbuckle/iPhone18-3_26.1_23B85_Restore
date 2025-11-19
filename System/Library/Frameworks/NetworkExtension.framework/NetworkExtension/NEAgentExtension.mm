@interface NEAgentExtension
+ (BOOL)doesAppExtensionExist:(id)a3 bundleIdentifier:(id)a4;
- (NEAgentExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginEndpoint:(id)a5 pluginProcessIdentity:(id)a6 queue:(id)a7 factory:(id)a8;
- (NEAgentExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginInfo:(id)a5 queue:(id)a6 factory:(id)a7;
- (NEPluginManagerObjectFactory)managerObjectFactory;
- (NSXPCInterface)driverInterface;
- (id)copyProcessIdentities;
- (void)cleanupExtensionWithRequestIdentifier:(void *)a1;
- (void)dealloc;
- (void)extension:(id)a3 didFailWithError:(id)a4;
- (void)extensionDidStop:(id)a3;
- (void)handleDisposeWithCompletionHandler:(id)a3;
- (void)handleExtensionExit:(void *)a1;
- (void)handleInitWithCompletionHandler:(id)a3;
- (void)setExtension:(uint64_t)a1;
- (void)sleepWithCompletionHandler:(id)a3;
- (void)startWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)updateConfiguration:(id)a3;
- (void)wakeup;
@end

@implementation NEAgentExtension

- (NEPluginManagerObjectFactory)managerObjectFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);

  return WeakRetained;
}

- (void)extensionDidStop:(id)a3
{
  [(NEAgentExtension *)self setSessionContext:0];
  if (self && objc_getProperty(self, v4, 112, 1))
  {
    Property = objc_getProperty(self, v5, 112, 1);
    Property[2]();

    objc_setProperty_atomic_copy(self, v7, 0, 112);
  }
}

- (void)extension:(id)a3 didFailWithError:(id)a4
{
  v5 = [(NEAgentExtension *)self queue:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NEAgentExtension_extension_didFailWithError___block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __47__NEAgentExtension_extension_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[10];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSessionContext:0];
  [(NEIKEv2Packet *)*(a1 + 32) setRawPayloads:?];
  [(NEAgentExtension *)*(a1 + 32) handleExtensionExit:v4];
}

- (void)handleExtensionExit:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__NEAgentExtension_handleExtensionExit___block_invoke;
    v5[3] = &unk_1E7F0A0E8;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __40__NEAgentExtension_handleExtensionExit___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) appsUpdateStarted])
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "App updating - ignore extension failure/exit for %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) sendFailedTimer];

    if (!v4)
    {
      v5 = [*(a1 + 32) queue];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __40__NEAgentExtension_handleExtensionExit___block_invoke_8;
      v12 = &unk_1E7F0A0E8;
      v6 = *(a1 + 40);
      v13 = *(a1 + 32);
      v14 = v6;
      v7 = NECreateTimerSource(v5, 5, &v9);
      [*(a1 + 32) setSendFailedTimer:{v7, v9, v10, v11, v12, v13}];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __40__NEAgentExtension_handleExtensionExit___block_invoke_8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sendFailedTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) sendFailedTimer];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setSendFailedTimer:0];
  }

  v4 = [*(a1 + 32) appsUpdateStarted];
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "App updating - ignore extension failure/exit for %@", &v10, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "Extension exit timer expired for %@ - notify that extension failed", &v10, 0xCu);
    }

    [*(a1 + 32) sendExtensionFailed];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)wakeup
{
  v2 = [(NEAgentExtension *)self sessionContext];
  [v2 wake];
}

- (void)sleepWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self sessionContext];
  [v5 sleepWithCompletionHandler:v4];
}

- (void)updateConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentExtension *)self sessionContext];
  [v5 setConfiguration:v4 extensionIdentifier:self->_extensionIdentifier];
}

- (void)startWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NEAgentExtension *)self sessionContext];

  if (v8)
  {
    v9 = [(NEAgentExtension *)self sessionContext];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke;
    v25[3] = &unk_1E7F0A200;
    v10 = &v27;
    v26 = v6;
    v27 = v7;
    v11 = &v26;
    v25[4] = self;
    v12 = v6;
    v13 = v7;
    [v9 createWithCompletionHandler:v25];
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        extension = self->_extension;
      }

      else
      {
        extension = 0;
      }

      v16 = extension;
      v17 = [(NSExtension *)v16 identifier];
      *buf = 138412290;
      v29 = v17;
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "Beginning extension request with extension %@", buf, 0xCu);
    }

    if (self)
    {
      v18 = self->_extension;
    }

    else
    {
      v18 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_34;
    v22[3] = &unk_1E7F095B0;
    v10 = &v24;
    v23 = v6;
    v24 = v7;
    v11 = &v23;
    v22[4] = self;
    v19 = v6;
    v20 = v7;
    [(NSExtension *)v18 beginExtensionRequestWithInputItems:0 completion:v22];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7F0A1D8;
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v8[4] = v6;
  v9 = v7;
  dispatch_async(v4, v8);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_34(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    if (v8)
    {
      v8 = v8[12];
    }

    v9 = v8;
    v10 = [v9 identifier];
    *buf = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "Extension request with extension %@ started with identifier %@", buf, 0x16u);
  }

  v11 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_35;
  block[3] = &unk_1E7F0A228;
  v12 = a1[4];
  v17 = v6;
  v18 = v12;
  v21 = a1[6];
  v19 = v5;
  v20 = a1[5];
  v13 = v5;
  v14 = v6;
  dispatch_async(v11, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_35(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        v9 = v9[12];
      }

      v10 = v9;
      v11 = [v10 identifier];
      v12 = *(a1 + 32);
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to start extension %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v3 = v3[12];
    }

    v4 = *(a1 + 48);
    v5 = v3;
    v6 = [(NSExtension *)v5 extensionHostContextForUUID:v4];

    if (v6)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_36;
      v16[3] = &unk_1E7F0ACD0;
      v16[4] = *(a1 + 40);
      v20 = *(a1 + 64);
      v17 = *(a1 + 48);
      v18 = v6;
      v19 = *(a1 + 56);
      [v18 validateWithCompletionHandler:v16];
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        if (v13)
        {
          v13 = v13[12];
        }

        v14 = v13;
        v15 = [v14 identifier];
        *buf = 138412290;
        v22 = v15;
        _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to get the host context for extension %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_36(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2_37;
  block[3] = &unk_1E7F09588;
  v13 = v3;
  v11 = a1[4];
  v16 = a1[8];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2_37(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) pluginType];
      v9 = *(a1 + 32);
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Provider %@ validation failed: %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    [(NEIKEv2Packet *)*(a1 + 40) setRawPayloads:?];
    [*(a1 + 40) setSessionContext:*(a1 + 56)];
    v3 = *(a1 + 40);
    v4 = [v3 sessionContext];
    v5 = v4;
    if (v4)
    {
      objc_storeWeak((v4 + 56), v3);
    }

    [*(a1 + 40) updateConfiguration:*(a1 + 64)];
    v6 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_38;
    v10[3] = &unk_1E7F0A278;
    v10[4] = v6;
    v11 = *(a1 + 72);
    [v6 handleExtensionStartedWithCompletionHandler:v10];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_38(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        v6 = *(v4 + 96);
        [v6 cancelExtensionRequestWithIdentifier:v5];
      }
    }
  }

  v7 = *(a1 + 40);
  v8 = [(NEAgentExtension *)*(a1 + 32) copyProcessIdentities];
  (*(v7 + 16))(v7, a2, v8);
}

- (id)copyProcessIdentities
{
  if (result)
  {
    v1 = result;
    v2 = [result sessionContext];

    if (!v2)
    {
      goto LABEL_7;
    }

    Property = [v1 sessionContext];
    v5 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 64, 1);
    }

    v6 = Property;

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];

      return v7;
    }

    else
    {
LABEL_7:
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "No extension process identity is available", buf, 2u);
      }

      return objc_alloc_init(MEMORY[0x1E695DEC8]);
    }
  }

  return result;
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) sessionContext];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_3;
    v5[3] = &unk_1E7F0A1B0;
    v5[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    v6 = *(a1 + 40);
    [v2 validateWithCompletionHandler:v5];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_4;
  v7[3] = &unk_1E7F0A2F0;
  v5 = a1[4];
  v8 = v3;
  v9 = v5;
  v11 = a1[6];
  v10 = a1[5];
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) pluginType];
      v7 = *(a1 + 32);
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Provider %@ validation failed: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 40) updateConfiguration:*(a1 + 48)];
    v3 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_31;
    v8[3] = &unk_1E7F0A278;
    v4 = *(a1 + 56);
    v8[4] = *(a1 + 40);
    v9 = v4;
    [v3 handleExtensionStartedWithCompletionHandler:v8];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_31(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [(NEAgentExtension *)*(a1 + 32) copyProcessIdentities];
  (*(v3 + 16))(v3, a2, v4);
}

- (NSXPCInterface)driverInterface
{
  if (driverInterface_onceToken_16845 != -1)
  {
    dispatch_once(&driverInterface_onceToken_16845, &__block_literal_global_16846);
  }

  v3 = driverInterface_driverInterface_16847;

  return v3;
}

uint64_t __35__NEAgentExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1670];
  v1 = driverInterface_driverInterface_16847;
  driverInterface_driverInterface_16847 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)handleDisposeWithCompletionHandler:(id)a3
{
  newValue = a3;
  v4 = [(NEAgentExtension *)self sessionContext];

  if (v4)
  {
    if (self)
    {
      objc_setProperty_atomic_copy(self, v5, newValue, 112);
    }

    v6 = [(NEAgentExtension *)self sessionContext];
    [v6 dispose];
  }

  else
  {
    v7 = newValue;
    if (!newValue)
    {
      goto LABEL_8;
    }

    newValue[2](newValue);
  }

  v7 = newValue;
LABEL_8:
}

- (void)handleInitWithCompletionHandler:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEAgentExtension *)self extensionIdentifier];

  if (v5)
  {
    v23[0] = *MEMORY[0x1E696A2E0];
    v6 = [(NEAgentExtension *)self extensionIdentifier];
    v24[0] = v6;
    v23[1] = *MEMORY[0x1E696A2F8];
    if (self)
    {
      extensionPointIdentifier = self->_extensionPointIdentifier;
    }

    else
    {
      extensionPointIdentifier = 0;
    }

    v24[1] = extensionPointIdentifier;
    v8 = MEMORY[0x1E695DF20];
    v9 = extensionPointIdentifier;
    v5 = [v8 dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NEAgentExtension *)self extensionIdentifier];
    v12 = v11;
    if (self)
    {
      v13 = self->_extensionPointIdentifier;
    }

    else
    {
      v13 = 0;
    }

    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Looking for an extension with identifier %@ and extension point %@", buf, 0x16u);
  }

  v14 = MEMORY[0x1E696ABD0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E7F0B5B0;
  v17[4] = self;
  v18 = v4;
  v15 = v4;
  [v14 extensionsWithMatchingAttributes:v5 completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7F0A2F0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = [*(a1 + 40) extensionIdentifier];
    v5 = v4;
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = *(v6 + 88);
    }

    *buf = 134218498;
    v33 = v3;
    v34 = 2112;
    v35 = v4;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Found %lu extension(s) with identifier %@ and extension point %@", buf, 0x20u);
  }

  if (!*(a1 + 48) && (v13 = *(a1 + 32)) != 0 && [v13 count])
  {
    objc_initWeak(buf, *(a1 + 40));
    v14 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [(NEAgentExtension *)*(a1 + 40) setExtension:v14];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_13;
    v30[3] = &unk_1E7F0A110;
    objc_copyWeak(&v31, buf);
    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = v15[12];
    }

    v16 = v15;
    [v16 setRequestInterruptionBlock:v30];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_15;
    v28[3] = &unk_1E7F0A138;
    objc_copyWeak(&v29, buf);
    v17 = *(a1 + 40);
    if (v17)
    {
      v17 = v17[12];
    }

    v18 = v17;
    [v18 setRequestCompletionBlock:v28];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2_17;
    v26[3] = &unk_1E7F0A160;
    objc_copyWeak(&v27, buf);
    v19 = *(a1 + 40);
    if (v19)
    {
      v19 = v19[12];
    }

    v20 = v19;
    [v20 setRequestCancellationBlock:v26];

    (*(*(a1 + 56) + 16))();
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7[11];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v7 extensionIdentifier];
    v11 = [NEAgentExtension doesAppExtensionExist:v9 bundleIdentifier:v10];

    if (v11)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v22 = [*(a1 + 40) extensionIdentifier];
        v23 = v22;
        v24 = *(a1 + 40);
        if (v24)
        {
          v24 = *(v24 + 88);
        }

        v25 = *(a1 + 48);
        *buf = 138412802;
        v33 = v22;
        v34 = 2112;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to find an app extension with identifier %@ and extension point %@: %@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setExtension:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      v8 = WeakRetained[12];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 identifier];
    v11 = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Extension %@ died unexpectedly", &v11, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[10];
  }

  else
  {
    v6 = 0;
  }

  if ([v3 isEqual:v6])
  {
    [(NEAgentExtension *)WeakRetained handleExtensionExit:v3];
    [(NEAgentExtension *)WeakRetained cleanupExtensionWithRequestIdentifier:v3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[10];
  }

  else
  {
    v5 = 0;
  }

  if ([v6 isEqual:v5])
  {
    [(NEAgentExtension *)v4 cleanupExtensionWithRequestIdentifier:v6];
  }
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2_17(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[10];
  }

  else
  {
    v5 = 0;
  }

  if ([v6 isEqual:v5])
  {
    [(NEAgentExtension *)v4 cleanupExtensionWithRequestIdentifier:v6];
  }
}

- (void)cleanupExtensionWithRequestIdentifier:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__NEAgentExtension_cleanupExtensionWithRequestIdentifier___block_invoke;
    v5[3] = &unk_1E7F0A0E8;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __58__NEAgentExtension_cleanupExtensionWithRequestIdentifier___block_invoke(uint64_t a1)
{
  [(NEIKEv2Packet *)*(a1 + 32) setRawPayloads:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  [v3 setRequestInterruptionBlock:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  [v5 setRequestCancellationBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 96);
  }

  else
  {
    v7 = 0;
  }

  [v7 setRequestCompletionBlock:0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 96);
  }

  else
  {
    v9 = 0;
  }

  [v9 cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  [(NEAgentExtension *)*(a1 + 32) setExtension:?];
  v10 = *(a1 + 32);
  v11 = [v10 sessionContext];
  [v10 extensionDidStop:v11];
}

- (void)dealloc
{
  v3 = [(NEAgentExtension *)self sendFailedTimer];

  if (v3)
  {
    v4 = [(NEAgentExtension *)self sendFailedTimer];
    dispatch_source_cancel(v4);

    [(NEAgentExtension *)self setSendFailedTimer:0];
  }

  v5.receiver = self;
  v5.super_class = NEAgentExtension;
  [(NEAgentExtension *)&v5 dealloc];
}

- (NEAgentExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginEndpoint:(id)a5 pluginProcessIdentity:(id)a6 queue:(id)a7 factory:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v31.receiver = self;
  v31.super_class = NEAgentExtension;
  v20 = [(NEAgentExtension *)&v31 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_5;
  }

  objc_storeWeak(&v20->_managerObjectFactory, v19);
  objc_storeStrong(&v21->_queue, a7);
  v22 = objc_alloc(MEMORY[0x1E695DEC8]);
  v23 = [v17 uuid];
  v24 = [v22 initWithObjects:{v23, 0}];
  extensionUUIDs = v21->_extensionUUIDs;
  v21->_extensionUUIDs = v24;

  objc_storeStrong(&v21->_pluginType, a3);
  objc_storeStrong(&v21->_extensionIdentifier, a3);
  v26 = a4 - 2;
  if ((a4 - 2) > 5)
  {
    goto LABEL_6;
  }

  if (((0x2Bu >> v26) & 1) != 0 && (v27 = [(NEExtensionProviderHostContext *)objc_alloc(*off_1E7F095D0[v26]) initWithVendorEndpoint:v16 processIdentity:v17 delegate:v21], sessionContext = v21->_sessionContext, v21->_sessionContext = v27, sessionContext, v21->_sessionContext))
  {
LABEL_5:
    v29 = v21;
  }

  else
  {
LABEL_6:
    v29 = 0;
  }

  return v29;
}

- (NEAgentExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginInfo:(id)a5 queue:(id)a6 factory:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = NEAgentExtension;
  v17 = [(NEAgentExtension *)&v28 init];
  if (v17)
  {
    v18 = [v14 objectForKeyedSubscript:@"extension-identifier"];
    v19 = [NELaunchServices pluginProxyWithIdentifier:v18 type:v13 pluginClass:a4 extensionPoint:0];

    if (!v19)
    {
      v26 = 0;
      goto LABEL_6;
    }

    objc_storeWeak(&v17->_managerObjectFactory, v16);
    objc_storeStrong(&v17->_queue, a6);
    v20 = [v19 pluginIdentifier];
    extensionIdentifier = v17->_extensionIdentifier;
    v17->_extensionIdentifier = v20;

    v22 = [v19 machOUUIDs];
    extensionUUIDs = v17->_extensionUUIDs;
    v17->_extensionUUIDs = v22;

    objc_storeStrong(&v17->_pluginType, a3);
    v24 = [NELaunchServices pluginClassToExtensionPoint:a4];
    extensionPointIdentifier = v17->_extensionPointIdentifier;
    v17->_extensionPointIdentifier = v24;
  }

  v26 = v17;
LABEL_6:

  return v26;
}

+ (BOOL)doesAppExtensionExist:(id)a3 bundleIdentifier:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "searching app ex with %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E6966CE8] extensionPointIdentifierQuery:v5];
  [v8 setIncludeUpdatingApps:1];
  [MEMORY[0x1E6966CF0] executeQuery:v8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v27 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v23 = v5;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v13 bundleIdentifier];
          v18 = [v13 extensionPointIdentifier];
          *buf = 138412546;
          v29 = v17;
          v30 = 2112;
          v31 = v18;
          _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "returned app extension: %@ - %@", buf, 0x16u);
        }

        v15 = [v13 bundleIdentifier];
        v16 = [v15 isEqual:v6];

        if (v16)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v13 bundleIdentifier];
            v20 = [v13 extensionPointIdentifier];
            *buf = 138412546;
            v29 = v19;
            v30 = 2112;
            v31 = v20;
            _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Found updating app extension: %@ - %@", buf, 0x16u);
          }

          LOBYTE(v10) = 1;
          goto LABEL_17;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_17:
    v5 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

@end