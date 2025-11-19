@interface EXConcreteExtensionContextVendor
+ (Class)_extensionContextClass;
+ (Class)_extensionPrincipalClass;
+ (id)_completionConcurrentQueue;
+ (id)_expirationConcurrentQueue;
+ (id)_extensionDictionary;
+ (id)_extensionMainStoryboard;
+ (void)_startListening:(BOOL)a3;
- (BOOL)_shouldCreatePrincipalObject;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (EXConcreteExtensionContextVendor)init;
- (void)_addExtensionContext:(id)a3;
- (void)_beginRequestWithExtensionItems:(id)a3 listenerEndpoint:(id)a4 withContextUUID:(id)a5 completion:(id)a6;
- (void)_onGlobalStateQueueOnly_setPrincipalObject:(id)a3 forUUID:(id)a4;
- (void)_removeExtensionContext:(id)a3;
- (void)_setPrincipalObject:(id)a3 forUUID:(id)a4;
- (void)_tearDownContextWithUUID:(id)a3;
@end

@implementation EXConcreteExtensionContextVendor

void __58__EXConcreteExtensionContextVendor__extensionContextClass__block_invoke()
{
  v0 = +[EXConcreteExtensionContextVendor _extensionDictionary];
  v3 = [v0 objectForKey:@"NSExtensionContextClass"];
  if (v3)
  {
  }

  else
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 infoDictionary];
    v3 = [v2 objectForKey:@"NSExtensionContextClass"];

    if (!v3)
    {
      v3 = 0;
      _extensionContextClass___extensionContextClass = objc_opt_class();
      goto LABEL_5;
    }
  }

  _extensionContextClass___extensionContextClass = objc_getClass([v3 UTF8String]);
  if (!_extensionContextClass___extensionContextClass)
  {
    NSLog(&cfstr_SSDUnableToFin.isa, "__extensionContextClass != nil", "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXConcreteExtensionContextVendor.m", 129, v3);
    __break(1u);
    return;
  }

LABEL_5:
}

void __56__EXConcreteExtensionContextVendor__extensionDictionary__block_invoke()
{
  v5 = [MEMORY[0x1E69C4AA0] defaultService];
  v0 = [v5 valueForKey:@"solePersonality"];
  v1 = [v0 valueForKey:@"bundleInfoDictionary"];
  v2 = [v1 objectForKey:@"NSExtension"];
  v3 = [v2 copy];
  v4 = _extensionDictionary___extensionDictionary;
  _extensionDictionary___extensionDictionary = v3;
}

+ (Class)_extensionContextClass
{
  if (_extensionContextClass_onceToken != -1)
  {
    +[EXConcreteExtensionContextVendor _extensionContextClass];
  }

  v3 = _extensionContextClass___extensionContextClass;

  return v3;
}

+ (id)_extensionDictionary
{
  if (_extensionDictionary_onceToken != -1)
  {
    +[EXConcreteExtensionContextVendor _extensionDictionary];
  }

  v3 = _extensionDictionary___extensionDictionary;

  return v3;
}

- (EXConcreteExtensionContextVendor)init
{
  v6.receiver = self;
  v6.super_class = EXConcreteExtensionContextVendor;
  v2 = [(_NSExtensionContextVendor *)&v6 _init];
  if (v2)
  {
    v3 = objc_opt_new();
    extensionContexts = v2->__extensionContexts;
    v2->__extensionContexts = v3;
  }

  return v2;
}

- (BOOL)_shouldCreatePrincipalObject
{
  v2 = +[EXConcreteExtensionContextVendor _extensionDictionary];
  v3 = [v2 _EX_BOOLForKey:@"NSExtensionShouldCreatePrincipalObject" defaultValue:1];

  if (v3 && (+[EXConcreteExtensionContextVendor _extensionMainStoryboard](EXConcreteExtensionContextVendor, "_extensionMainStoryboard"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4) && +[EXConcreteExtensionContextVendor _extensionPrincipalClass])
  {
    v5 = objc_opt_respondsToSelector() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (id)_extensionMainStoryboard
{
  v2 = +[EXConcreteExtensionContextVendor _extensionDictionary];
  v3 = [v2 objectForKey:@"NSExtensionMainStoryboard"];

  return v3;
}

+ (Class)_extensionPrincipalClass
{
  if (_extensionPrincipalClass_onceToken != -1)
  {
    +[EXConcreteExtensionContextVendor _extensionPrincipalClass];
  }

  v3 = _extensionPrincipalClass___extensionPrincipalClass;

  return v3;
}

void __60__EXConcreteExtensionContextVendor__extensionPrincipalClass__block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = +[EXConcreteExtensionContextVendor _extensionDictionary];
  v1 = [v0 _EX_stringForKey:@"NSExtensionPrincipalClass"];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 infoDictionary];

    v5 = [v4 _EX_dictionaryForKey:@"NSExtension"];
    v2 = [v5 _EX_stringForKey:@"NSExtensionPrincipalClass"];

    if (v2)
    {
    }

    else
    {
      v2 = [v4 _EX_stringForKey:@"NSExtensionPrincipalClass"];

      if (!v2)
      {
        goto LABEL_14;
      }
    }
  }

  Class = objc_getClass([v2 UTF8String]);
  _extensionPrincipalClass___extensionPrincipalClass = Class;
  if (!Class)
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __60__EXConcreteExtensionContextVendor__extensionPrincipalClass__block_invoke_cold_1();
    }

    Class = _extensionPrincipalClass___extensionPrincipalClass;
  }

  if (([(objc_class *)Class conformsToProtocol:&unk_1EF2ABFF8]& 1) == 0)
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v2;
    }
  }

LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_startListening:(BOOL)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EXConcreteExtensionContextVendor__startListening___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a3;
  if (_startListening__onceToken != -1)
  {
    dispatch_once(&_startListening__onceToken, block);
  }
}

void __52__EXConcreteExtensionContextVendor__startListening___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v2 stringWithFormat:@"%@.%@", v4, *MEMORY[0x1E696A2A8]];

  v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v5];
  v7 = _startListening__listener;
  _startListening__listener = v6;

  v8 = _startListening__listener;
  v9 = +[(_NSExtensionContextVendor *)EXConcreteExtensionContextVendor];
  [v8 setDelegate:v9];

  [_startListening__listener resume];
  LODWORD(v8) = *(a1 + 32);
  v10 = _EXLegacyLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1847D1000, v10, OS_LOG_TYPE_DEFAULT, "Cecking in with launchd immediately", buf, 2u);
    }

    +[EXXPCUtil checkInWithLaunchd];
  }

  else
  {
    if (v11)
    {
      *v12 = 0;
      _os_log_impl(&dword_1847D1000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling launchd after initial event", v12, 2u);
    }

    _EXExtensionInstallRunloopObserverToPingLaunchdAfterEvent();
  }
}

+ (id)_completionConcurrentQueue
{
  if (_completionConcurrentQueue_onceToken != -1)
  {
    +[EXConcreteExtensionContextVendor _completionConcurrentQueue];
  }

  v3 = _completionConcurrentQueue_queue;

  return v3;
}

void __62__EXConcreteExtensionContextVendor__completionConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.NSExtensionContest-completion-concurrent", v2);
  v1 = _completionConcurrentQueue_queue;
  _completionConcurrentQueue_queue = v0;
}

+ (id)_expirationConcurrentQueue
{
  if (_expirationConcurrentQueue_onceToken != -1)
  {
    +[EXConcreteExtensionContextVendor _expirationConcurrentQueue];
  }

  v3 = _expirationConcurrentQueue_queue;

  return v3;
}

void __62__EXConcreteExtensionContextVendor__expirationConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.NSExtensionContest-completion-concurrent", v2);
  v1 = _expirationConcurrentQueue_queue;
  _expirationConcurrentQueue_queue = v0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  +[EXXPCUtil assertIsExtensionProcess];
  v6 = [objc_msgSend(objc_opt_class() "_extensionContextClass")];
  v7 = _EXLegacyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtensionContextVendor listener:shouldAcceptNewConnection:];
  }

  v8 = [EXExtensionContextImplementation _extensionContextHostProtocolWithAllowedErrorClasses:v6];
  [v5 setRemoteObjectInterface:v8];

  v9 = [EXExtensionContextImplementation _extensionContextVendorProtocolWithAllowedErrorClasses:v6];
  [v5 setExportedInterface:v9];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)_beginRequestWithExtensionItems:(id)a3 listenerEndpoint:(id)a4 withContextUUID:(id)a5 completion:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _EXLegacyLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v34 = v12;
    v35 = 2114;
    v36 = v11;
    v37 = 2112;
    v38 = v10;
    _os_log_debug_impl(&dword_1847D1000, v14, OS_LOG_TYPE_DEBUG, "beginning request with UUID: %{public}@ with endpoint: %{public}@ for items: %@", buf, 0x20u);
  }

  v15 = [MEMORY[0x1E696B0B8] currentConnection];
  v16 = _os_activity_create(&dword_1847D1000, "beginning extension request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17 = _EXExtensionGetGlobalStateQueue(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke;
  block[3] = &unk_1E6E4E410;
  v26 = v16;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v15;
  v31 = self;
  v32 = v13;
  v18 = v13;
  v19 = v15;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v16;
  dispatch_async(v17, block);

  v24 = *MEMORY[0x1E69E9840];
}

void __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[EXConcreteExtensionContextVendor _extensionContextClass];
  v3 = [[v2 alloc] initWithInputItems:*(a1 + 40) listenerEndpoint:*(a1 + 48) contextUUID:*(a1 + 56)];
  v4 = [v3 internalImplementation];
  v5 = *(a1 + 64);
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v32 = v36;
  v33 = v37;
  [v4 _setExtensionHostAuditToken:&v32];
  if (v3)
  {
    v6 = *(a1 + 72);
    if (!*(v6 + 8))
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(a1 + 72);
      v9 = *(v8 + 8);
      *(v8 + 8) = v7;

      v6 = *(a1 + 72);
    }

    [*(v6 + 16) setObject:v3 forKey:*(a1 + 56)];
    [*(*(a1 + 72) + 8) setObject:*(a1 + 64) forKey:*(a1 + 56)];
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x3032000000;
    *(&v33 + 1) = __Block_byref_object_copy__3;
    v34 = __Block_byref_object_dispose__3;
    v35 = *(a1 + 72);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_98;
    v29[3] = &unk_1E6E4E3C0;
    v31 = &v32;
    v30 = *(a1 + 56);
    [*(a1 + 64) setInterruptionHandler:v29];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_99;
    v26[3] = &unk_1E6E4E3C0;
    v28 = &v32;
    v27 = *(a1 + 56);
    [*(a1 + 64) setInvalidationHandler:v26];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__3;
    v24[4] = __Block_byref_object_dispose__3;
    v25 = 0;
    v10 = *(a1 + 64);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_100;
    v23[3] = &unk_1E6E4E320;
    v23[4] = v24;
    v11 = [v10 remoteObjectProxyWithErrorHandler:v23];
    [v4 _setExtensionHostProxy:v11];

    if ([*(a1 + 72) _shouldCreatePrincipalObject])
    {
      v12 = objc_alloc_init(+[EXConcreteExtensionContextVendor _extensionPrincipalClass]);
      v13 = _EXLegacyLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_cold_2(v12, (a1 + 64));
      }

      [*(a1 + 72) _onGlobalStateQueueOnly_setPrincipalObject:v12 forUUID:*(a1 + 56)];
    }

    else
    {
      v14 = _EXLegacyLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_cold_1();
      }

      v12 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_102;
    v17[3] = &unk_1E6E4E3E8;
    v18 = *(a1 + 56);
    v22 = v24;
    v21 = *(a1 + 80);
    v15 = v12;
    v19 = v15;
    v16 = v3;
    v20 = v16;
    [v4 _willPerformHostCallback:v17];

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(&v32, 8);

    os_activity_scope_leave(&state);
  }

  else
  {
    NSLog(&cfstr_SSDExtensionco.isa, "extensionContext != nil", "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXConcreteExtensionContextVendor.m", 223, v2);
    __break(1u);
  }
}

uint64_t __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_98(uint64_t a1)
{
  v2 = _EXLegacyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "tearing down context in extension due to interruption", v4, 2u);
  }

  return [*(*(*(a1 + 40) + 8) + 40) _tearDownContextWithUUID:*(a1 + 32)];
}

uint64_t __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_99(uint64_t a1)
{
  v2 = _EXLegacyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "tearing down context in extension due to invalidation", v4, 2u);
  }

  return [*(*(*(a1 + 40) + 8) + 40) _tearDownContextWithUUID:*(a1 + 32)];
}

void __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXLegacyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_100_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_102(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _EXLegacyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "in _willPerformHostCallback: block(UUID: %{public}@ error: %{public}@)", &v10, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
  if ([*(a1 + 40) conformsToProtocol:&unk_1EF2ABFF8])
  {
    [*(a1 + 40) beginRequestWithExtensionContext:*(a1 + 48)];
  }

  v7 = os_transaction_create();
  v8 = [*(a1 + 48) internalImplementation];
  [v8 _setTransaction:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownContextWithUUID:(id)a3
{
  v4 = a3;
  v5 = _EXExtensionGetGlobalStateQueue(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__EXConcreteExtensionContextVendor__tearDownContextWithUUID___block_invoke;
  v7[3] = &unk_1E6E4DB10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__EXConcreteExtensionContextVendor__tearDownContextWithUUID___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__EXConcreteExtensionContextVendor__tearDownContextWithUUID___block_invoke_2;
  v2[3] = &unk_1E6E4DB10;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  _os_activity_initiate(&dword_1847D1000, "tearing down extension context", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __61__EXConcreteExtensionContextVendor__tearDownContextWithUUID___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v2 = [v4 internalImplementation];
  [v2 invalidate];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  [v3 setInterruptionHandler:0];
  [v3 setInvalidationHandler:0];
  [v3 invalidate];
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
}

- (void)_addExtensionContext:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extensionContexts = self->__extensionContexts;
    v5 = [v7 _UUID];
    [(NSMutableDictionary *)extensionContexts setObject:v7 forKey:v5];
  }

  else
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtensionContextVendor _addExtensionContext:];
    }

    __break(1u);
  }
}

- (void)_removeExtensionContext:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extensionContexts = self->__extensionContexts;
    v5 = [v7 _UUID];
    [(NSMutableDictionary *)extensionContexts removeObjectForKey:v5];
  }

  else
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtensionContextVendor _removeExtensionContext:];
    }

    __break(1u);
  }
}

- (void)_setPrincipalObject:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _EXExtensionGetGlobalStateQueue(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EXConcreteExtensionContextVendor__setPrincipalObject_forUUID___block_invoke;
  block[3] = &unk_1E6E4E438;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_onGlobalStateQueueOnly_setPrincipalObject:(id)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _EXExtensionGetGlobalStateQueue(0);
  dispatch_assert_queue_V2(v8);

  if (!v7)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtensionContextVendor _onGlobalStateQueueOnly_setPrincipalObject:forUUID:];
    }
  }

  v10 = [(NSMutableDictionary *)self->__extensionPrincipalObjects objectForKey:v6];

  if (v10)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtensionContextVendor _onGlobalStateQueueOnly_setPrincipalObject:v6 forUUID:?];
    }
  }

  extensionPrincipalObjects = self->__extensionPrincipalObjects;
  if (!extensionPrincipalObjects)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->__extensionPrincipalObjects;
    self->__extensionPrincipalObjects = v13;

    extensionPrincipalObjects = self->__extensionPrincipalObjects;
  }

  [(NSMutableDictionary *)extensionPrincipalObjects setObject:v7 forKey:v6];
  v15 = [(NSMutableDictionary *)self->__extensionContexts objectForKey:v6];
  v16 = [v15 internalImplementation];
  [v16 _setPrincipalObject:v7];
}

void __60__EXConcreteExtensionContextVendor__extensionPrincipalClass__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to find NSExtensionPrincipalClass (%@) in extension bundle! Please verify that the extension links the required frameworks and that the value for NSExtensionPrincipalClass is prefixed with '$(PRODUCT_MODULE_NAME).' if the class is implemented in Swift.", v2, 0x26u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(&dword_1847D1000, v0, v1, "%{public}@ Making host default XPC interface, allowed error classes: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_1847D1000, v0, OS_LOG_TYPE_DEBUG, "view services will create object for extensionContext: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(&dword_1847D1000, v3, v4, "creating principle object: %{public}@ - with extensionContext %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

void __112__EXConcreteExtensionContextVendor__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion___block_invoke_100_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1847D1000, v0, OS_LOG_TYPE_ERROR, "error from host: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_addExtensionContext:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_removeExtensionContext:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_onGlobalStateQueueOnly_setPrincipalObject:forUUID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "principalObject != nil";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_4_0();
  v5 = 354;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: principal object cannot be nil!", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_onGlobalStateQueueOnly_setPrincipalObject:(id *)a1 forUUID:(uint64_t)a2 .cold.2(id *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*a1 objectForKey:a2];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x30u);

  v8 = *MEMORY[0x1E69E9840];
}

@end