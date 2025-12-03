@interface NEAgentHotspotExtension
- (NEAgentHotspotExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory;
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (id)getExtensionConnection;
- (uint64_t)deriveProcessIdentity;
- (uint64_t)validateExtension;
- (void)cancelWithError:(id)error;
- (void)dealloc;
- (void)handleAppsUninstalled:(id)uninstalled;
- (void)handleAppsUpdateBegins:(id)begins;
- (void)handleAppsUpdateEnding:(id)ending;
- (void)handleAppsUpdateEnds:(id)ends;
- (void)handleCancel;
- (void)handleDisposeWithCompletionHandler:(id)handler;
- (void)handleInitWithCompletionHandler:(id)handler;
- (void)handleXPCError;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startAuthenticationProvider;
- (void)startEvaluationProvider;
- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)stopWithReason:(int)reason;
- (void)updateConfiguration:(id)configuration;
- (void)wakeup;
@end

@implementation NEAgentHotspotExtension

- (void)cancelWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "%@: hotspot provider cancelWithError %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCError
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v17) = 138412290;
    *(&v17 + 4) = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "%@: hotspot provider died unexpectedly", &v17, 0xCu);
  }

  if (self)
  {
    if (objc_getProperty(self, v4, 80, 1))
    {
      [objc_getProperty(self v5];
      objc_setProperty_atomic(self, v6, 0, 80);
    }

    if (objc_getProperty(self, v5, 88, 1))
    {
      [objc_getProperty(self v7];
      objc_setProperty_atomic(self, v8, 0, 88);
    }

    objc_setProperty_atomic(self, v7, 0, 56);
    objc_setProperty_atomic(self, v9, 0, 64);
    objc_setProperty_atomic(self, v10, 0, 40);
    objc_setProperty_atomic(self, v11, 0, 32);
    objc_setProperty_atomic(self, v12, 0, 72);
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "%@ handleExtensionExit", buf, 0xCu);
    }

    Property = objc_getProperty(self, v14, 24, 1);
    *&v17 = MEMORY[0x1E69E9820];
    *(&v17 + 1) = 3221225472;
    v18 = __47__NEAgentHotspotExtension_handleExtensionExit___block_invoke;
    v19 = &unk_1E7F0A0E8;
    selfCopy2 = self;
    v21 = 0;
    dispatch_async(Property, &v17);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __47__NEAgentHotspotExtension_handleExtensionExit___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 8))
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "hotspot provider software updating - ignore extension failure/exit for %@", buf, 0xCu);
      }

      v5 = *MEMORY[0x1E69E9840];
      return;
    }

    WeakRetained = objc_loadWeakRetained((v1 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [WeakRetained managerObject];

  [v8 handleHotspotProviderStopped];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopWithReason:(int)reason
{
  if (self)
  {
    if (objc_getProperty(self, a2, 80, 1))
    {
      Property = objc_getProperty(self, v5, 80, 1);
      reasonCopy2 = reason;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __42__NEAgentHotspotExtension_stopWithReason___block_invoke;
      v18 = &unk_1E7F08740;
      selfCopy = self;
      v8 = &v15;
    }

    else
    {
      if (!objc_getProperty(self, v5, 88, 1))
      {
        return;
      }

      Property = objc_getProperty(self, v9, 88, 1);
      reasonCopy2 = reason;
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __42__NEAgentHotspotExtension_stopWithReason___block_invoke_53;
      v13 = &unk_1E7F08740;
      selfCopy2 = self;
      v8 = &v10;
    }

    [Property stopWithReason:reasonCopy2 completion:{v8, v10, v11, v12, v13, selfCopy2, v15, v16, v17, v18, selfCopy}];
  }
}

void __42__NEAgentHotspotExtension_stopWithReason___block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v14 = 138412546;
    v15 = v6;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: stopWithReason, result: %s", &v14, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: failed to stop hotspot evaluation provider", &v14, 0xCu);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
  v12 = *MEMORY[0x1E69E9840];
}

void __42__NEAgentHotspotExtension_stopWithReason___block_invoke_53(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v14 = 138412546;
    v15 = v6;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: stopWithReason, result: %s", &v14, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: failed to stop hotspot authentication provider", &v14, 0xCu);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)startAuthenticationProvider
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NEAgentHotspotExtension_startAuthenticationProvider__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

id __54__NEAgentHotspotExtension_startAuthenticationProvider__block_invoke(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 88, 1);
    if (result)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 88, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__NEAgentHotspotExtension_startAuthenticationProvider__block_invoke_2;
      v7[3] = &unk_1E7F08740;
      v7[4] = v6;
      return [Property startWithCompletion:v7];
    }
  }

  return result;
}

void __54__NEAgentHotspotExtension_startAuthenticationProvider__block_invoke_2(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v14 = 138412546;
    v15 = v6;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: startWithCompletion, result: %s", &v14, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: failed to start hotspot authentication provider", &v14, 0xCu);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)startEvaluationProvider
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__NEAgentHotspotExtension_startEvaluationProvider__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

id __50__NEAgentHotspotExtension_startEvaluationProvider__block_invoke(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 80, 1);
    if (result)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 80, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __50__NEAgentHotspotExtension_startEvaluationProvider__block_invoke_2;
      v7[3] = &unk_1E7F08740;
      v7[4] = v6;
      return [Property startWithCompletion:v7];
    }
  }

  return result;
}

void __50__NEAgentHotspotExtension_startEvaluationProvider__block_invoke_2(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v14 = 138412546;
    v15 = v6;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: startWithCompletion, result: %s", &v14, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: failed to start hotspot evaluation provider", &v14, 0xCu);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateConfiguration:(id)configuration
{
  v14 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: updateConfiguration", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__NEAgentHotspotExtension_updateConfiguration___block_invoke;
  v10[3] = &unk_1E7F0A0E8;
  v10[4] = self;
  v11 = configurationCopy;
  v8 = configurationCopy;
  dispatch_async(Property, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __47__NEAgentHotspotExtension_updateConfiguration___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 56);
  }
}

- (void)wakeup
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: wakeup", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__NEAgentHotspotExtension_wakeup__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = self;
  dispatch_async(Property, block);
  v6 = *MEMORY[0x1E69E9840];
}

id __33__NEAgentHotspotExtension_wakeup__block_invoke(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    Property = objc_getProperty(result, a2, 80, 1);
    result = *(a1 + 32);
    if (Property)
    {
      if (result)
      {
        result = objc_getProperty(result, v4, 80, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __33__NEAgentHotspotExtension_wakeup__block_invoke_2;
      v18 = &unk_1E7F08740;
      v19 = v6;
      v7 = &v15;
      return [result wakeWithCompletion:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
    }

    if (result)
    {
      result = objc_getProperty(result, v4, 88, 1);
      if (result)
      {
        result = *(a1 + 32);
        if (result)
        {
          result = objc_getProperty(result, v8, 88, 1);
          v9 = *(a1 + 32);
        }

        else
        {
          v9 = 0;
        }

        v10 = MEMORY[0x1E69E9820];
        v11 = 3221225472;
        v12 = __33__NEAgentHotspotExtension_wakeup__block_invoke_48;
        v13 = &unk_1E7F08740;
        v14 = v9;
        v7 = &v10;
        return [result wakeWithCompletion:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
      }
    }
  }

  return result;
}

void __33__NEAgentHotspotExtension_wakeup__block_invoke_2(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "FALSE";
    v7 = *(a1 + 32);
    if (a2)
    {
      v6 = "TRUE";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2080;
    v11 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: wakeWithCompletion completed, result %s", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __33__NEAgentHotspotExtension_wakeup__block_invoke_48(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "FALSE";
    v7 = *(a1 + 32);
    if (a2)
    {
      v6 = "TRUE";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2080;
    v11 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: wakeWithCompletion completed, result %s", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sleepWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: sleepWithCompletionHandler", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__NEAgentHotspotExtension_sleepWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7F0B588;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(Property, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __54__NEAgentHotspotExtension_sleepWithCompletionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 80, 1);
    v6 = *(a1 + 32);
    if (Property)
    {
      if (v6)
      {
        v7 = objc_getProperty(v6, v4, 80, 1);
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __54__NEAgentHotspotExtension_sleepWithCompletionHandler___block_invoke_2;
      v17[3] = &unk_1E7F0A278;
      v17[4] = v8;
      v18 = *(a1 + 40);
      [v7 sleepWithCompletion:v17];
      v9 = v18;
LABEL_11:

      return;
    }

    if (v6 && objc_getProperty(v6, v4, 88, 1))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = objc_getProperty(v11, v10, 88, 1);
        v13 = *(a1 + 32);
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __54__NEAgentHotspotExtension_sleepWithCompletionHandler___block_invoke_46;
      v15[3] = &unk_1E7F0A278;
      v15[4] = v13;
      v16 = *(a1 + 40);
      [v12 sleepWithCompletion:v15];
      v9 = v16;
      goto LABEL_11;
    }
  }

  v14 = *(*(a1 + 40) + 16);

  v14();
}

uint64_t __54__NEAgentHotspotExtension_sleepWithCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = "FAIL";
    v8 = *(a1 + 32);
    if (a2)
    {
      v7 = "TRUE";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2080;
    v12 = v7;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: sleepWithCompletion completed for hotspot evaluation \t\t\t\t\t\t\tprovider, result: %s", &v9, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __54__NEAgentHotspotExtension_sleepWithCompletionHandler___block_invoke_46(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = "FAIL";
    v8 = *(a1 + 32);
    if (a2)
    {
      v7 = "TRUE";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2080;
    v12 = v7;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: sleepWithCompletion completed for hotspot authentication \t\t\t\t\t\t\tprovider, result: %s", &v9, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = configurationCopy;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%@: startWithConfiguration: %@", buf, 0x16u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v9, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__NEAgentHotspotExtension_startWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E7F0AAA0;
  block[4] = self;
  v15 = configurationCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = configurationCopy;
  dispatch_async(Property, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __68__NEAgentHotspotExtension_startWithConfiguration_completionHandler___block_invoke(id *a1, const char *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (!v3)
  {
    goto LABEL_34;
  }

  objc_setProperty_atomic(v3, a2, a1[5], 56);
  v4 = a1[4];
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = v4[3];
  if (v5 == 12)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "initializing HostForAuthenticationProvider", buf, 2u);
    }

    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_34;
    }

    if (!objc_getProperty(a1[4], v22, 88, 1))
    {
      v23 = [NEHotspotAuthenticationProviderHost alloc];
      objc_setProperty_atomic(v8, v24, v23, 88);

      v26 = objc_getProperty(v8, v25, 88, 1);
      v28 = [objc_getProperty(v8 v27];
      v29 = [v28 authenticationProviderBundleIdentifier];
      [v26 initialize:v29];

      [objc_getProperty(v8 v30];
      v19 = v8;
      v20 = 88;
      goto LABEL_15;
    }
  }

  else
  {
    if (v5 != 11)
    {
      goto LABEL_34;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "initializing HostForEvaluationProvider", buf, 2u);
    }

    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_34;
    }

    if (!objc_getProperty(a1[4], v7, 80, 1))
    {
      v10 = [NEHotspotEvaluationProviderHost alloc];
      objc_setProperty_atomic(v8, v11, v10, 80);

      v13 = objc_getProperty(v8, v12, 80, 1);
      v15 = [objc_getProperty(v8 v14];
      v16 = [v15 evaluationProviderBundleIdentifier];
      [v13 initialize:v16];

      [objc_getProperty(v8 v17];
      v19 = v8;
      v20 = 80;
LABEL_15:
      v31 = objc_getProperty(v19, v18, v20, 1);
      [v31 setQueue:{objc_getProperty(v8, v32, 24, 1)}];
    }
  }

  v33 = a1[4];
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = v33[3];
  if (v34 != 11)
  {
    goto LABEL_26;
  }

  if (objc_getProperty(v33, v9, 80, 1))
  {
    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = a1[4];
      *buf = 138412290;
      v62 = v36;
      _os_log_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_INFO, "%@: setting up hotspot evaluation provider", buf, 0xCu);
    }

    v38 = a1[4];
    if (v38)
    {
      Property = objc_getProperty(v38, v37, 80, 1);
      v40 = a1[4];
    }

    else
    {
      v40 = 0;
      Property = 0;
    }

    v55 = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v57 = __68__NEAgentHotspotExtension_startWithConfiguration_completionHandler___block_invoke_42;
    v58 = &unk_1E7F0A278;
    v59 = v40;
    v41 = &v60;
    v60 = a1[6];
    v42 = &v55;
LABEL_33:
    [Property setupWithCompletion:{v42, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60}];

    goto LABEL_34;
  }

  v33 = a1[4];
  if (v33)
  {
    v34 = v33[3];
LABEL_26:
    if (v34 == 12 && objc_getProperty(v33, v9, 88, 1))
    {
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = a1[4];
        *buf = 138412290;
        v62 = v44;
        _os_log_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_INFO, "%@: setting up hotspot authentication provider", buf, 0xCu);
      }

      v46 = a1[4];
      if (v46)
      {
        Property = objc_getProperty(v46, v45, 88, 1);
        v47 = a1[4];
      }

      else
      {
        v47 = 0;
        Property = 0;
      }

      v49 = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __68__NEAgentHotspotExtension_startWithConfiguration_completionHandler___block_invoke_43;
      v52 = &unk_1E7F0A278;
      v53 = v47;
      v41 = &v54;
      v54 = a1[6];
      v42 = &v49;
      goto LABEL_33;
    }
  }

LABEL_34:
  v48 = *MEMORY[0x1E69E9840];
}

void __68__NEAgentHotspotExtension_startWithConfiguration_completionHandler___block_invoke_42(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v27 = v5;
    v28 = 1024;
    v29 = a2;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: setupWithCompletion result %d", buf, 0x12u);
  }

  if (!a2)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = *(a1 + 32);
    *buf = 138412290;
    v27 = v17;
    v18 = "%@: failed to setup hotspot evaluation provider";
LABEL_16:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    goto LABEL_17;
  }

  if (([(NEAgentHotspotExtension *)*(a1 + 32) validateExtension]& 1) == 0)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 32);
    *buf = 138412290;
    v27 = v19;
    v18 = "%@: entitlement validation failed";
    goto LABEL_16;
  }

  v7 = [(NEAgentHotspotExtension *)*(a1 + 32) deriveProcessIdentity];
  v8 = ne_log_obj();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138412290;
      v27 = v20;
      v18 = "%@: failed to get extension process identity";
      goto LABEL_16;
    }

LABEL_17:

    (*(*(a1 + 40) + 16))();
    goto LABEL_18;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      Property = objc_getProperty(*(a1 + 32), v10, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v24 = [Property pid];
    *buf = 138412546;
    v27 = v22;
    v28 = 1024;
    v29 = v24;
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "%@: received extension process identity (pid: %u)", buf, 0x12u);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v12)
  {
    v12 = objc_getProperty(v12, v11, 64, 1);
  }

  v25 = v12;
  v14 = MEMORY[0x1E695DEC8];
  v15 = v12;
  v16 = [v14 arrayWithObjects:&v25 count:1];
  (*(v13 + 16))(v13, 1, v16);

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
}

void __68__NEAgentHotspotExtension_startWithConfiguration_completionHandler___block_invoke_43(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v24 = v5;
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: setupWithCompletion result %d", buf, 0x12u);
  }

  if (!a2)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v16 = *(a1 + 32);
    *buf = 138412290;
    v24 = v16;
    v17 = "%@: failed to setup hotspot authentication provider";
LABEL_17:
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    goto LABEL_18;
  }

  if (([(NEAgentHotspotExtension *)*(a1 + 32) validateExtension]& 1) == 0)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v18 = *(a1 + 32);
    *buf = 138412290;
    v24 = v18;
    v17 = "%@: validation failed";
    goto LABEL_17;
  }

  v7 = [(NEAgentHotspotExtension *)*(a1 + 32) deriveProcessIdentity];
  v8 = ne_log_obj();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!v7)
  {
    if (v9)
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v24 = v19;
      v17 = "%@: failed to get extension process identity";
      goto LABEL_17;
    }

LABEL_18:

    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if (v9)
  {
    v21 = *(a1 + 32);
    *buf = 138412290;
    v24 = v21;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: received extension process identity", buf, 0xCu);
  }

  Property = *(a1 + 32);
  v12 = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 64, 1);
  }

  v22 = Property;
  v13 = MEMORY[0x1E695DEC8];
  v14 = Property;
  v15 = [v13 arrayWithObjects:&v22 count:1];
  (*(v12 + 16))(v12, 1, v15);

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)validateExtension
{
  selfCopy = self;
  v27 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_26;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = selfCopy;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "%@: validating hotspot provider entitlement", buf, 0xCu);
  }

  v3 = @"com.apple.developer.networking.networkextension";
  getExtensionConnection = [(NEAgentHotspotExtension *)selfCopy getExtensionConnection];
  v6 = ne_log_obj();
  v7 = v6;
  if (getExtensionConnection)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = selfCopy;
      _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "%@: finding hotspot provider's entitlement", buf, 0xCu);
    }

    v8 = [getExtensionConnection valueForEntitlement:@"com.apple.developer.networking.networkextension"];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = selfCopy;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%@: failed to find xpc connection with the hotspot provider", buf, 0xCu);
    }

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v18 + 1) + 8 * i) isEqual:{@"hotspot-provider", v18}])
          {
            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v23 = selfCopy;
              v24 = 2080;
              v25 = "hotspot-provider";
              _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, "%@: hotspot provider has [%s] entitlement", buf, 0x16u);
            }

            selfCopy = 1;
            goto LABEL_25;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v23 = selfCopy;
    v14 = "%@: hotspot provider is missing the required NetworkExtension entitlement";
  }

  else
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v23 = selfCopy;
    v14 = "%@: rejecting un-entitled hotspot provider";
  }

  _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_24:
  selfCopy = 0;
LABEL_25:

LABEL_26:
  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (uint64_t)deriveProcessIdentity
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v10 = 0;
    goto LABEL_10;
  }

  getExtensionConnection = [(NEAgentHotspotExtension *)self getExtensionConnection];
  if (!getExtensionConnection)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    *buf = 138412290;
    selfCopy2 = self;
    v14 = "%@: unable to derive the process identity, no hotspot provider xpc connection";
LABEL_12:
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    goto LABEL_8;
  }

  v4 = [NEProcessIdentity alloc];
  processIdentifier = [getExtensionConnection processIdentifier];
  [getExtensionConnection auditToken];
  v6 = [(NEProcessIdentity *)v4 initWithPID:processIdentifier auditToken:buf];
  objc_setProperty_atomic(self, v7, v6, 64);

  if (!objc_getProperty(self, v8, 64, 1))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    selfCopy2 = self;
    v14 = "%@: failed to create a NEProcessIdentity object";
    goto LABEL_12;
  }

  v10 = 1;
  v11 = [objc_getProperty(self v9];
  v17 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v13 = *(self + 72);
  *(self + 72) = v12;

LABEL_9:
LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)getExtensionConnection
{
  v3 = self[3];
  if (v3 == 11)
  {
    if (objc_getProperty(self, a2, 80, 1))
    {
      v4 = [objc_getProperty(self a2];
    }

    else
    {
      v4 = 0;
    }

    v3 = self[3];
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 12 && objc_getProperty(self, a2, 88, 1))
  {
    v6 = [objc_getProperty(self v5];

    v4 = v6;
  }

  return v4;
}

- (NSXPCInterface)driverInterface
{
  if (driverInterface_onceToken_10060 != -1)
  {
    dispatch_once(&driverInterface_onceToken_10060, &__block_literal_global_15);
  }

  v3 = driverInterface_driverInterface_10061;

  return v3;
}

uint64_t __42__NEAgentHotspotExtension_driverInterface__block_invoke()
{
  driverInterface_driverInterface_10061 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C8188];

  return MEMORY[0x1EEE66BB8]();
}

- (NSXPCInterface)managerInterface
{
  if (managerInterface_onceToken_10063 != -1)
  {
    dispatch_once(&managerInterface_onceToken_10063, &__block_literal_global_10064);
  }

  v3 = managerInterface_managerInterface_10065;

  return v3;
}

uint64_t __43__NEAgentHotspotExtension_managerInterface__block_invoke()
{
  managerInterface_managerInterface_10065 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38D4F30];

  return MEMORY[0x1EEE66BB8]();
}

- (void)handleAppsUpdateEnds:(id)ends
{
  v14 = *MEMORY[0x1E69E9840];
  endsCopy = ends;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUpdateEnds", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__NEAgentHotspotExtension_handleAppsUpdateEnds___block_invoke;
  v10[3] = &unk_1E7F0A0E8;
  v10[4] = self;
  v11 = endsCopy;
  v8 = endsCopy;
  dispatch_async(Property, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __48__NEAgentHotspotExtension_handleAppsUpdateEnds___block_invoke(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[9])
    {
      v4 = objc_getProperty(v3, a2, 40, 1);
      if (v4)
      {
        v6 = v4;
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = v7 ? objc_getProperty(v7, v5, 40, 1) : 0;
        v10 = [v8 containsObject:v9];

        if (v10)
        {
          v11 = *(a1 + 32);
          if (v11)
          {
            *(v11 + 8) = 0;
            v12 = *(a1 + 32);
            if (v12)
            {
              *(v12 + 9) = 0;
            }
          }

          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            Property = *(a1 + 32);
            if (Property)
            {
              Property = objc_getProperty(Property, v14, 40, 1);
            }

            v17 = 138412290;
            v18 = Property;
            _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEFAULT, "extensions %@ has been updated, idling", &v17, 0xCu);
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleAppsUpdateEnding:(id)ending
{
  v14 = *MEMORY[0x1E69E9840];
  endingCopy = ending;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUpdateEnding", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NEAgentHotspotExtension_handleAppsUpdateEnding___block_invoke;
  v10[3] = &unk_1E7F0A0E8;
  v10[4] = self;
  v11 = endingCopy;
  v8 = endingCopy;
  dispatch_async(Property, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __50__NEAgentHotspotExtension_handleAppsUpdateEnding___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if ((v3[8] & 1) != 0 && (v3[9] & 1) == 0)
    {
      v4 = objc_getProperty(v3, a2, 40, 1);
      if (v4)
      {
        v6 = v4;
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        if (v7)
        {
          Property = objc_getProperty(v7, v5, 40, 1);
        }

        else
        {
          Property = 0;
        }

        v10 = [v8 containsObject:Property];

        if (v10)
        {
          v11 = *(a1 + 32);
          if (v11)
          {
            *(v11 + 9) = 1;
          }
        }
      }
    }
  }
}

- (void)handleAppsUpdateBegins:(id)begins
{
  v14 = *MEMORY[0x1E69E9840];
  beginsCopy = begins;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUpdateBegins", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NEAgentHotspotExtension_handleAppsUpdateBegins___block_invoke;
  v10[3] = &unk_1E7F0A0E8;
  v10[4] = self;
  v11 = beginsCopy;
  v8 = beginsCopy;
  dispatch_async(Property, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __50__NEAgentHotspotExtension_handleAppsUpdateBegins___block_invoke(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[8])
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 40);
    Property = objc_getProperty(v3, a2, 32, 1);
  }

  else
  {
    Property = 0;
    v4 = *(a1 + 40);
  }

  if ([v4 containsObject:Property])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      *(v6 + 8) = 1;
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = objc_getProperty(v9, v8, 40, 1);
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "Extensions %@ is being updated", &v11, 0xCu);
    }
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleAppsUninstalled:(id)uninstalled
{
  v15 = *MEMORY[0x1E69E9840];
  uninstalledCopy = uninstalled;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUninstalled", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__NEAgentHotspotExtension_handleAppsUninstalled___block_invoke;
  v10[3] = &unk_1E7F0A0E8;
  v11 = uninstalledCopy;
  selfCopy2 = self;
  v8 = uninstalledCopy;
  dispatch_async(Property, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __49__NEAgentHotspotExtension_handleAppsUninstalled___block_invoke(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 32, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v4 containsObject:Property])
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v8 = objc_getProperty(v8, v7, 32, 1);
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "app for plugin type [%@] has been uninstalled", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleCancel
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@ handleCancel", buf, 0xCu);
  }

  if (self)
  {
    if (objc_getProperty(self, v4, 80, 1))
    {
      Property = objc_getProperty(self, v5, 80, 1);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __39__NEAgentHotspotExtension_handleCancel__block_invoke;
      v18 = &unk_1E7F08740;
      selfCopy2 = self;
      v7 = &v15;
LABEL_8:
      [Property stopWithReason:15 completion:{v7, v10, v11, v12, v13, selfCopy3, v15, v16, v17, v18, selfCopy2}];
      goto LABEL_9;
    }

    if (objc_getProperty(self, v5, 88, 1))
    {
      Property = objc_getProperty(self, v8, 88, 1);
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __39__NEAgentHotspotExtension_handleCancel__block_invoke_8;
      v13 = &unk_1E7F08740;
      selfCopy3 = self;
      v7 = &v10;
      goto LABEL_8;
    }
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
}

void __39__NEAgentHotspotExtension_handleCancel__block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = v5;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: (evaluation provider) stopWithReason result %d", &v10, 0x12u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [WeakRetained managerObject];

  [v8 handleHotspotProviderStopped];
  v9 = *MEMORY[0x1E69E9840];
}

void __39__NEAgentHotspotExtension_handleCancel__block_invoke_8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = v5;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "%@: (authentication provider) stopWithReason result %d", &v10, 0x12u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [WeakRetained managerObject];

  [v8 handleHotspotProviderStopped];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleDisposeWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ handleDisposeWithCompletionHandler", buf, 0xCu);
  }

  if (self)
  {
    self = objc_getProperty(self, v6, 24, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__NEAgentHotspotExtension_handleDisposeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7F0B600;
  v10 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(&self->super, block);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __62__NEAgentHotspotExtension_handleDisposeWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleInitWithCompletionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ handleInitWithCompletionHandler", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, 1, 1);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@ dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NEAgentHotspotExtension;
  [(NEAgentHotspotExtension *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (NEAgentHotspotExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  infoCopy = info;
  queueCopy = queue;
  factoryCopy = factory;
  v24.receiver = self;
  v24.super_class = NEAgentHotspotExtension;
  v17 = [(NEAgentHotspotExtension *)&v24 init];
  if (v17)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v26 = v17;
      v27 = 2112;
      v28 = typeCopy;
      v29 = 2048;
      classCopy = class;
      v31 = 2112;
      v32 = infoCopy;
      _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "%@: pluginType: [%@] pluginClass: [%ld] pluginInfo: [%@]", buf, 0x2Au);
    }

    objc_storeWeak(&v17->_managerObjectFactory, factoryCopy);
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_pluginType, type);
    v19 = [infoCopy objectForKeyedSubscript:@"extension-identifier"];
    extensionIdentifier = v17->_extensionIdentifier;
    v17->_extensionIdentifier = v19;

    v21 = [infoCopy objectForKeyedSubscript:@"hotspot-session-type"];
    if (isa_nsnumber(v21))
    {
      v17->_sessionrType = [v21 intValue];
    }

    else
    {

      v17 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

@end