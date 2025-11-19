@interface NEFilterControlExtensionProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)dealloc;
- (void)dispose;
- (void)handleNewFlow:(id)a3 completionHandler:(id)a4;
- (void)handleReport:(id)a3;
- (void)notifyRulesChanged;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)provideRemediationMap:(id)a3;
- (void)provideURLAppendStringMap:(id)a3;
- (void)startFilterWithOptions:(id)a3 completionHandler:(id)a4;
- (void)stopObserving;
@end

@implementation NEFilterControlExtensionProviderContext

- (void)provideURLAppendStringMap:(id)a3
{
  v4 = a3;
  v6 = [(NEExtensionProviderContext *)self hostContext];
  [v6 provideURLAppendStringMap:v4];
}

- (void)provideRemediationMap:(id)a3
{
  v4 = a3;
  v6 = [(NEExtensionProviderContext *)self hostContext];
  [v6 provideRemediationMap:v4];
}

- (void)notifyRulesChanged
{
  v2 = [(NEExtensionProviderContext *)self hostContext];
  [v2 notifyRulesChanged];
}

- (void)handleReport:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderContext *)self _principalObject];
  [v5 handleReport:v4];
}

- (void)handleNewFlow:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderContext *)self _principalObject];
  v9 = v8;
  if (v7 && (v7[10] & 1) != 0)
  {
    [v8 handleRemediationForFlow:v7 completionHandler:v6];
  }

  else
  {
    [v8 handleNewFlow:v7 completionHandler:v6];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a3;
  v7 = [(NEExtensionProviderContext *)self _principalObject];
  if ([v14 isEqualToString:@"remediationMap"])
  {
    v8 = [v7 remediationMap];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v7 remediationMap];
      [(NEFilterControlExtensionProviderContext *)self provideRemediationMap:v10];
    }
  }

  if ([v14 isEqualToString:@"URLAppendStringMap"])
  {
    v11 = [v7 URLAppendStringMap];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v7 URLAppendStringMap];
      [(NEFilterControlExtensionProviderContext *)self provideURLAppendStringMap:v13];
    }
  }
}

- (void)dealloc
{
  [(NEFilterControlExtensionProviderContext *)self stopObserving];
  v3.receiver = self;
  v3.super_class = NEFilterControlExtensionProviderContext;
  [(NEExtensionProviderContext *)&v3 dealloc];
}

- (void)stopObserving
{
  if (a1 && (a1[104] & 1) != 0)
  {
    v2 = [a1 _principalObject];
    [v2 removeObserver:a1 forKeyPath:@"remediationMap"];
    [v2 removeObserver:a1 forKeyPath:@"URLAppendStringMap"];
    a1[104] = 0;
  }
}

- (void)dispose
{
  if (!self || !self->super.super._isDisposed)
  {
    [(NEFilterControlExtensionProviderContext *)self stopObserving];
    v3.receiver = self;
    v3.super_class = NEFilterControlExtensionProviderContext;
    [(NEExtensionProviderContext *)&v3 dispose];
  }
}

- (void)startFilterWithOptions:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NEExtensionProviderContext *)self _principalObject];
  objc_initWeak(&location, v8);

  v16.receiver = self;
  v16.super_class = NEFilterControlExtensionProviderContext;
  [(NEFilterExtensionProviderContext *)&v16 startFilterWithOptions:v6 completionHandler:v7];
  objc_initWeak(&from, self);
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = self;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling startFilterWithCompletionHandler", buf, 0xCu);
  }

  v10 = objc_loadWeakRetained(&location);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__NEFilterControlExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke;
  v12[3] = &unk_1E7F074A0;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [v10 startFilterWithCompletionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x1E69E9840];
}

void __84__NEFilterControlExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    if (v5[41])
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "The completion handler for startFilterWithOptions: was executed twice", v8, 2u);
      }
    }

    else
    {
      v5[41] = 1;
      if (!v3)
      {
        [WeakRetained addObserver:v5 forKeyPath:@"remediationMap" options:5 context:0];
        [WeakRetained addObserver:v6 forKeyPath:@"URLAppendStringMap" options:5 context:0];
        v6[104] = 1;
      }

      [v6 startedWithError:v3];
    }
  }
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_3666 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_3666, &__block_literal_global_69_3667);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_3668;

  return v3;
}

uint64_t __74__NEFilterControlExtensionProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_3668 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2628];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_3671 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_3671, &__block_literal_global_3672);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_3673;

  return v3;
}

uint64_t __76__NEFilterControlExtensionProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_3673 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2560];

  return MEMORY[0x1EEE66BB8]();
}

@end