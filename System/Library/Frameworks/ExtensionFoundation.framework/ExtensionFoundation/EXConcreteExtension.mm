@interface EXConcreteExtension
+ (BOOL)_evaluateActivationRule:(id)a3 withDictionaryIfItMatchesActiveWebPageAlternative:(id)a4 matchResult:(int64_t *)a5;
+ (BOOL)_evaluateActivationRule:(id)a3 withExtensionItemsRepresentation:(id)a4 error:(id *)a5;
+ (BOOL)_evaluateActivationRule:(id)a3 withInputItemsIfTheyMatchActiveWebPageAlternative:(id)a4 matchResult:(int64_t *)a5;
+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)a3 withExtensionItemsRepresentation:(id)a4;
+ (BOOL)_genericValuesMatchActiveWebPageAlternativeWithExtensionItems:(id)a3 attachmentsLens:(id)a4 registeredTypeIdentifiersLens:(id)a5 isActiveWebPageAttachmentCheck:(id)a6;
+ (BOOL)_matchingDictionaryMatchesActiveWebPageAlternative:(id)a3;
+ (BOOL)evaluateActivationRule:(id)a3 withExtensionItemsRepresentation:(id)a4;
+ (id)_dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:(id)a3 fromMatchingDictionary:(id)a4;
+ (id)_inputItemsByApplyingActiveWebPageAlternative:(id)a3 ifNeededByActivationRule:(id)a4;
+ (id)beginMatchingExtensionsWithAttributes:(id)a3 completion:(id)a4;
+ (id)extensionWithIdentifier:(id)a3 excludingDisabledExtensions:(BOOL)a4 error:(id *)a5;
+ (id)extensionsWithMatchingAttributes:(id)a3 error:(id *)a4;
+ (id)globalStateQueueForExtension:(id)a3;
+ (void)endMatchingExtensions:(id)a3;
+ (void)extensionWithURL:(id)a3 completion:(id)a4;
+ (void)extensionWithUUID:(id)a3 completion:(id)a4;
+ (void)extensionsWithMatchingAttributes:(id)a3 synchronously:(BOOL)a4 completion:(id)a5;
+ (void)initialize;
+ (void)initializeFiltering;
- (BOOL)_beginUsingAndCreateExtensionAssertionWithRequest:(id)a3 error:(id *)a4;
- (BOOL)_isMarkedNew;
- (BOOL)_isPhotoServiceAccessGranted;
- (BOOL)_isSystemExtension;
- (BOOL)_wantsProcessPerRequest;
- (BOOL)isEqual:(id)a3;
- (BOOL)makeExtensionContextAndXPCConnectionForRequest:(id)a3 error:(id *)a4;
- (Class)_hostContextClass;
- (EXConcreteExtension)init;
- (NSBundle)_extensionBundle;
- (NSDictionary)_extensionState;
- (double)requestTeardownDelay;
- (id)_bareExtensionServiceConnection;
- (id)_beginExtensionRequest:(id)a3 error:(id *)a4;
- (id)_extensionContextForUUID:(id)a3;
- (id)_initWithPKPlugin:(id)a3 identity:(id)a4;
- (id)_itemProviderForPayload:(id)a3 extensionContext:(id)a4;
- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 error:(id *)a5;
- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 error:(id *)a6;
- (id)description;
- (id)extensionContexts;
- (id)icons;
- (id)objectForInfoDictionaryKey:(id)a3;
- (id)requestCancellationBlock;
- (id)requestCompletionBlock;
- (id)requestInterruptionBlock;
- (int)_plugInProcessIdentifier;
- (int)pidForRequestIdentifier:(id)a3;
- (unint64_t)hash;
- (void)_bareExtensionServiceConnection;
- (void)_beginExtensionRequest:(id)a3 completion:(id)a4;
- (void)_cancelRequestWithError:(id)a3 forExtensionContextWithUUID:(id)a4 completion:(id)a5;
- (void)_completeRequestReturningItems:(id)a3 forExtensionContextWithUUID:(id)a4 completion:(id)a5;
- (void)_didCreateExtensionContext:(id)a3;
- (void)_didShowExtensionManagementInterface;
- (void)_didShowNewExtensionIndicator;
- (void)_dropAssertion;
- (void)_extensionBundle;
- (void)_hostContextClass;
- (void)_hostDidBecomeActiveNote:(id)a3;
- (void)_hostDidEnterBackgroundNote:(id)a3;
- (void)_hostWillEnterForegroundNote:(id)a3;
- (void)_hostWillResignActiveNote:(id)a3;
- (void)_isPhotoServiceAccessGranted;
- (void)_isSystemExtension;
- (void)_loadItemForPayload:(id)a3 contextIdentifier:(id)a4 completionHandler:(id)a5;
- (void)_loadPreviewImageForPayload:(id)a3 contextIdentifier:(id)a4 completionHandler:(id)a5;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_reallyBeginExtensionRequest:(id)a3 completion:(id)a4;
- (void)_reallyBeginExtensionRequest:(id)a3 synchronously:(BOOL)a4 completion:(id)a5;
- (void)_resetExtensionState;
- (void)_safelyBeginUsing:(id)a3;
- (void)_safelyBeginUsingSynchronously:(BOOL)a3 request:(id)a4 readyHandler:(id)a5;
- (void)_safelyBeginUsingWithRequest:(id)a3 readyHandler:(id)a4;
- (void)_safelyEndUsingRequestWithPKUUID:(id)a3 processAssertion:(id)a4 continuation:(id)a5;
- (void)_setExtensionState:(id)a3;
- (void)_wantsProcessPerRequest;
- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 completion:(id)a5;
- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 completion:(id)a6;
- (void)cancelExtensionRequestWithIdentifier:(id)a3;
- (void)dealloc;
- (void)setRequestCancellationBlock:(id)a3;
- (void)setRequestCompletionBlock:(id)a3;
- (void)setRequestInterruptionBlock:(id)a3;
@end

@implementation EXConcreteExtension

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    [a1 initializeFiltering];
    v3 = *MEMORY[0x1E695E890];
    CFPreferencesGetAppBooleanValue(@"EXAssertionLoggingEnabled", *MEMORY[0x1E695E890], 0);
    EXConcreteExtensionDiscoveryLoggingEnabled = CFPreferencesGetAppBooleanValue(@"NSExtensionDiscoveryLoggingEnabled", v3, 0) != 0;
    v4 = os_log_create("com.apple.foundation.NSExtension", "connection");
    v5 = EXConcreteExtensionLogCategoryConnection;
    EXConcreteExtensionLogCategoryConnection = v4;

    v6 = os_log_create("com.apple.foundation.NSExtension", "context");
    v7 = EXConcreteExtensionLogCategoryContext;
    EXConcreteExtensionLogCategoryContext = v6;

    v8 = os_log_create("com.apple.foundation.NSExtension", "discovery");
    v9 = EXConcreteExtensionLogCategoryDiscovery;
    EXConcreteExtensionLogCategoryDiscovery = v8;

    EXConcreteExtensionLogCategoryPlugIn = os_log_create("com.apple.foundation.NSExtension", "plugin");

    MEMORY[0x1EEE66BB8]();
  }
}

+ (void)initializeFiltering
{
  _EXExtensionUseAlternateRules = CFPreferencesCopyAppValue(@"NSExtensionUseAlternateRules", *MEMORY[0x1E695E890]);

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_wantsProcessPerRequest
{
  v3 = [(EXConcreteExtension *)self infoDictionary];

  if (!v3)
  {
    v4 = _EXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension _wantsProcessPerRequest];
    }
  }

  v5 = [(EXConcreteExtension *)self infoDictionary];
  v6 = [v5 objectForKey:@"XPCService"];

  v7 = [v6 objectForKey:@"_MultipleInstances"];
  v8 = [v7 BOOLValue];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(PKPlugIn *)self->__plugIn uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EXConcreteExtension;
  v4 = [(EXConcreteExtension *)&v8 description];
  v5 = [(EXConcreteExtension *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {id = %@}", v4, v5];

  return v6;
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSMutableDictionary *)self->__extensionServiceConnections allValues];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        [v8 setInvalidationHandler:0];
        [v8 setInterruptionHandler:0];
        [v8 invalidate];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v9 = +[_EXDefaults sharedInstance];
  v10 = [v9 platformShouldExhibitEmbeddedBehavior];

  if (v10 && self->_observingHostAppStateChanges)
  {
    Class = objc_getClass("UIApplication");
    if (Class)
    {
      v12 = [(objc_class *)Class performSelector:sel_sharedApplication];
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:v12];

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:v12];

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:v12];

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:v12];
    }

    self->_observingHostAppStateChanges = 0;
  }

  v18.receiver = self;
  v18.super_class = EXConcreteExtension;
  [(EXConcreteExtension *)&v18 dealloc];
  v17 = *MEMORY[0x1E69E9840];
}

- (NSBundle)_extensionBundle
{
  extensionBundle = self->__extensionBundle;
  if (extensionBundle)
  {
LABEL_8:
    v11 = extensionBundle;
    goto LABEL_9;
  }

  plugIn = self->__plugIn;
  v14 = 0;
  v5 = [(PKPlugIn *)plugIn useBundle:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [(PKPlugIn *)self->__plugIn url];
    if (!v7)
    {
      v8 = _EXDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _extensionBundle];
      }
    }

    v9 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v7];
    v10 = self->__extensionBundle;
    self->__extensionBundle = v9;

    extensionBundle = self->__extensionBundle;
    goto LABEL_8;
  }

  v13 = _EXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(EXConcreteExtension *)v6 _extensionBundle];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (Class)_hostContextClass
{
  v3 = [(NSDictionary *)self->_infoDictionary objectForKey:@"NSExtension"];
  v4 = [v3 objectForKey:@"NSExtensionContextHostClass"];
  if (v4)
  {
    v5 = v4;

LABEL_4:
    Class = objc_getClass([v5 UTF8String]);
    goto LABEL_5;
  }

  v5 = [(NSDictionary *)self->_infoDictionary objectForKey:@"NSExtensionContextHostClass"];

  if (v5)
  {
    goto LABEL_4;
  }

  Class = objc_opt_class();
LABEL_5:
  v7 = Class;
  if (!Class)
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(EXConcreteExtension *)v5 _hostContextClass];
    }
  }

  v9 = v7;

  return v7;
}

- (int)_plugInProcessIdentifier
{
  v2 = [(PKPlugIn *)self->__plugIn pluginConnection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (id)requestCompletionBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestCompletionBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (double)requestTeardownDelay
{
  v2 = [(EXConcreteExtension *)self infoDictionary];
  v3 = [v2 objectForKey:@"NSExtension"];

  v4 = [v3 objectForKey:@"NSExtensionDisableTeardownDelay"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 5.0;
  }

  return v6;
}

- (id)_bareExtensionServiceConnection
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [(EXConcreteExtension *)self _extensionBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    v4 = [(EXConcreteExtension *)self identifier];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v4, *MEMORY[0x1E696A2A8]];
  v6 = _EXLegacyLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(EXConcreteExtension *)self _bareExtensionServiceConnection];
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:v5];
  v8 = [EXExtensionContextImplementation _extensionContextVendorProtocolWithAllowedErrorClasses:self->__allowedErrorClasses];
  [v7 setRemoteObjectInterface:v8];

  v9 = [EXExtensionContextImplementation _extensionContextHostProtocolWithAllowedErrorClasses:self->__allowedErrorClasses];
  [v7 setExportedInterface:v9];

  [v7 setExportedObject:self];
  if ([(EXConcreteExtension *)self _wantsProcessPerRequest])
  {
    if (!self->_connectionUUID)
    {
      v10 = _EXDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _bareExtensionServiceConnection];
      }
    }

    v11 = [v7 _xpcConnection];
    v14[0] = 0;
    v14[1] = 0;
    [(NSUUID *)self->_connectionUUID getUUIDBytes:v14];
    xpc_connection_set_oneshot_instance();
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setRequestCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [v4 copy];

  requestCompletionBlock = self->_requestCompletionBlock;
  self->_requestCompletionBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (void)setRequestCancellationBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [v4 copy];

  requestCancellationBlock = self->_requestCancellationBlock;
  self->_requestCancellationBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestCancellationBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestCancellationBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setRequestInterruptionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [v4 copy];

  requestInterruptionBlock = self->_requestInterruptionBlock;
  self->_requestInterruptionBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestInterruptionBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestInterruptionBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

+ (id)extensionsWithMatchingAttributes:(id)a3 error:(id *)a4
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__EXConcreteExtension_extensionsWithMatchingAttributes_error___block_invoke;
  v8[3] = &unk_1E6E4D988;
  v8[4] = &v15;
  v8[5] = &v9;
  [EXConcreteExtension extensionsWithMatchingAttributes:v5 synchronously:1 completion:v8];
  if (a4)
  {
    *a4 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __62__EXConcreteExtension_extensionsWithMatchingAttributes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

+ (void)extensionsWithMatchingAttributes:(id)a3 synchronously:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = a5;
  if (v5)
  {
    v8 = 1024;
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x1E69C4A88];
  v10 = a3;
  v11 = [v9 defaultHost];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__EXConcreteExtension_extensionsWithMatchingAttributes_synchronously_completion___block_invoke;
  v13[3] = &unk_1E6E4D9B0;
  v14 = v7;
  v12 = v7;
  [v11 discoverPlugInsForAttributes:v10 flags:v8 found:v13];
}

void __81__EXConcreteExtension_extensionsWithMatchingAttributes_synchronously_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [EXConcreteExtension alloc];
          v15 = [(EXConcreteExtension *)v14 _initWithPKPlugin:v13, v19];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v16 = *(a1 + 32);
  v17 = [v7 allObjects];
  (*(v16 + 16))(v16, v17, v6);

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)extensionWithIdentifier:(id)a3 excludingDisabledExtensions:(BOOL)a4 error:(id *)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E696A2E0];
  if (a4)
  {
    v20[0] = *MEMORY[0x1E696A2E0];
    v20[1] = @"NSUserElection";
    v21[0] = a3;
    v8 = MEMORY[0x1E696AD98];
    v9 = a3;
    v10 = [v8 numberWithInteger:1];
    v11 = [v10 stringValue];
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v18 = *MEMORY[0x1E696A2E0];
    v19 = a3;
    v13 = MEMORY[0x1E695DF20];
    v10 = a3;
    v12 = [v13 dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  v14 = [a1 extensionsWithMatchingAttributes:v12 error:a5];
  v15 = [v14 firstObject];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)extensionWithUUID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C4A88] defaultHost];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke;
  v10[3] = &unk_1E6E4DA00;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 findPlugInByUUID:v9 reply:v10];
}

void __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2;
  v10[3] = &unk_1E6E4D9D8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  _os_activity_initiate(&dword_1847D1000, "discovering extensions", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [[EXConcreteExtension alloc] _initWithPKPlugin:a1[4]];
    v3 = _EXLegacyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v8 = 138543618;
      v9 = v2;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "discovered extension: %{public}@, uuid: %{public}@", &v8, 0x16u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1(a1);
    }

    v6 = a1[6];
    (*(a1[7] + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)extensionWithURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C4A88] defaultHost];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EXConcreteExtension_extensionWithURL_completion___block_invoke;
  v10[3] = &unk_1E6E4DA00;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 findPlugInByPathURL:v9 reply:v10];
}

void __51__EXConcreteExtension_extensionWithURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EXConcreteExtension_extensionWithURL_completion___block_invoke_2;
  v10[3] = &unk_1E6E4D9D8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  _os_activity_initiate(&dword_1847D1000, "discovering extensions", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __51__EXConcreteExtension_extensionWithURL_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [[EXConcreteExtension alloc] _initWithPKPlugin:a1[4]];
    v3 = _EXLegacyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v8 = 138543618;
      v9 = v2;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "discovered extension: %{public}@, url: %{public}@", &v8, 0x16u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1(a1);
    }

    v6 = a1[6];
    (*(a1[7] + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)beginMatchingExtensionsWithAttributes:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C4A88] defaultHost];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke;
  v12[3] = &unk_1E6E4DA28;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 continuouslyDiscoverPlugInsForAttributes:v9 flags:0 found:v12];

  return v10;
}

void __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke_2;
  v10[3] = &unk_1E6E4D9D8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  _os_activity_initiate(&dword_1847D1000, "discovering extensions", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v9 = [EXConcreteExtension alloc];
          v10 = [(EXConcreteExtension *)v9 _initWithPKPlugin:v8, v18];
          [v2 addObject:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v5);
    }

    v11 = _EXLegacyLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412546;
      v23 = v12;
      v24 = 2114;
      v25 = v2;
      _os_log_impl(&dword_1847D1000, v11, OS_LOG_TYPE_DEFAULT, "discovered extensions: attributes %@, extensionSet %{public}@", buf, 0x16u);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = [v2 allObjects];
      (*(v13 + 16))(v13, v14, 0);
    }
  }

  else
  {
    v15 = _EXLegacyLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1(a1);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, *(a1 + 48));
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)endMatchingExtensions:(id)a3
{
  v3 = MEMORY[0x1E69C4A88];
  v4 = a3;
  v5 = [v3 defaultHost];
  [v5 cancelPlugInDiscovery:v4];
}

+ (id)globalStateQueueForExtension:(id)a3
{
  v3 = +[_EXDefaults sharedInstance];
  v4 = [v3 platformShouldExhibitEmbeddedBehavior];

  if (v4 && dyld_program_sdk_at_least())
  {
    if (globalStateQueueForExtension__onceToken != -1)
    {
      +[EXConcreteExtension globalStateQueueForExtension:];
    }

    v5 = globalStateQueueForExtension__dedicatedQueue;
  }

  else
  {
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return v5;
}

uint64_t __52__EXConcreteExtension_globalStateQueueForExtension___block_invoke()
{
  globalStateQueueForExtension__dedicatedQueue = dispatch_queue_create("com.apple.extension.global-state-queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithPKPlugin:(id)a3 identity:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = EXConcreteExtension;
  v8 = [(EXConcreteExtension *)&v51 _init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 4) = 0;
    objc_storeStrong(v8 + 3, a4);
    v10 = [v6 identifier];
    v11 = [v10 copy];
    v12 = v9[4];
    v9[4] = v11;

    v13 = [v6 version];
    v14 = [v13 copy];
    v15 = v9[5];
    v9[5] = v14;

    v16 = [v6 attributes];
    v17 = [v16 copy];
    v18 = v9[6];
    v9[6] = v17;

    v19 = [v6 bundleInfoDictionary];
    v20 = [v19 copy];
    v21 = v9[7];
    v9[7] = v20;

    v22 = [v6 localizedName];
    v23 = [v22 copy];
    v24 = v9[8];
    v9[8] = v23;

    v25 = [v6 localizedShortName];
    v26 = [v25 copy];
    v27 = v9[9];
    v9[9] = v26;

    v28 = [v9[6] objectForKey:*MEMORY[0x1E696A2F8]];
    v29 = [v28 copy];
    v30 = v9[10];
    v9[10] = v29;

    v31 = v9[11];
    v46 = 11;
    v9[11] = 0;

    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = [v6 launchPersonas];
    v34 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v48;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v47 + 1) + 8 * i) personaUniqueString];
          v39 = [_EXPersona personaWithPersonaUniqueString:v38];
          [v32 addObject:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v35);
    }

    objc_storeStrong(v9 + 13, v32);
    if ([v9 _wantsProcessPerRequest])
    {
      v40 = [MEMORY[0x1E696AFB0] UUID];
      v41 = v9[v46];
      v9[v46] = v40;

      v42 = [v6 createInstanceWithUUID:v9[v46]];
    }

    else
    {
      v42 = v6;
    }

    v43 = v9[12];
    v9[12] = v42;

    *(v9 + 2) = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v9;
}

- (EXConcreteExtension)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unable to create null NSExtensions!" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKPlugIn *)self->__plugIn uuid];
    v6 = [v4 _plugIn];
    v7 = [v6 uuid];

    v8 = [v5 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reallyBeginExtensionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v8 = [(EXConcreteExtension *)self makeExtensionContextAndXPCConnectionForRequest:v6 error:&v19];
  v9 = v19;
  if (v8)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke;
    v17[3] = &unk_1E6E4DA98;
    v17[4] = self;
    v18 = v7;
    v10 = v7;
    [(EXConcreteExtension *)self _reallyBeginExtensionRequest:v6 synchronously:0 completion:v17];
    v11 = v18;
  }

  else
  {
    v12 = [EXConcreteExtension globalStateQueueForExtension:self];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke_3;
    block[3] = &unk_1E6E4DAC0;
    v16 = v7;
    v15 = v9;
    v13 = v7;
    dispatch_async(v12, block);

    v11 = v16;
  }
}

void __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke_2;
  block[3] = &unk_1E6E4DA70;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (BOOL)makeExtensionContextAndXPCConnectionForRequest:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _EXLegacyLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
  }

  os_unfair_lock_lock(&self->_unfairLock);
  v7 = [(EXConcreteExtension *)self _hostContextClass];
  v8 = [v7 alloc];
  v9 = [v5 inputItems];
  v10 = [v8 initWithInputItems:v9];

  if (!v10)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = NSStringFromClass(v7);
      [(EXConcreteExtension *)v12 makeExtensionContextAndXPCConnectionForRequest:buf error:v11];
    }
  }

  v13 = [v10 _UUID];
  v14 = [v10 internalImplementation];
  [v14 setExtensionRequest:v5];
  extensionContexts = self->__extensionContexts;
  if (!extensionContexts)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = self->__extensionContexts;
    self->__extensionContexts = v16;

    extensionContexts = self->__extensionContexts;
  }

  [(NSMutableDictionary *)extensionContexts setObject:v10 forKey:v13];
  v18 = [(EXConcreteExtension *)self _bareExtensionServiceConnection];
  extensionServiceConnections = self->__extensionServiceConnections;
  if (!extensionServiceConnections)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = self->__extensionServiceConnections;
    self->__extensionServiceConnections = v20;

    extensionServiceConnections = self->__extensionServiceConnections;
  }

  [(NSMutableDictionary *)extensionServiceConnections setObject:v18 forKey:v13];
  objc_initWeak(&location, self);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke;
  v53[3] = &unk_1E6E4DAE8;
  objc_copyWeak(&v55, &location);
  v22 = v13;
  v54 = v22;
  [v18 setInterruptionHandler:v53];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_68;
  v50[3] = &unk_1E6E4DAE8;
  objc_copyWeak(&v52, &location);
  v23 = v22;
  v51 = v23;
  [v18 setInvalidationHandler:v50];

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);

  os_unfair_lock_unlock(&self->_unfairLock);
  v24 = v10 != 0;
  if (v10)
  {
    [v5 setContext:v10];
  }

  else
  {
    if (a4)
    {
      v25 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A278];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to make extension context for extension: %@ request: %@", self, v5];
      v62 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      *a4 = [v25 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v27];
    }

    v28 = _EXLegacyLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
    }
  }

  if (v18)
  {
    [v5 setXpcConnection:v18];
    v29 = [v5 assertion];
    v30 = [v29 valid];

    if (v30)
    {
      [v18 resume];
      goto LABEL_30;
    }

    v35 = _EXLegacyLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:v10 error:self];
    }

    if (a4)
    {
      v36 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A278];
      v37 = MEMORY[0x1E696AEC0];
      v38 = [v10 _UUID];
      v39 = [(EXConcreteExtension *)self identifier];
      v40 = [v37 stringWithFormat:@"Extension assertion was invalidated! request: %@ plugin_identifier: %@", v38, v39];;
      v60 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *a4 = [v36 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v41];
    }
  }

  else
  {
    v31 = _EXLegacyLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
    }

    if (a4)
    {
      v32 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A278];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to make XPC connection for extension: %@ request: %@", self, v5];
      v58 = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *a4 = [v32 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v34];
    }
  }

  v24 = 0;
LABEL_30:
  v42 = +[_EXDefaults sharedInstance];
  if (![v42 allowSimulatedJetsam])
  {
LABEL_35:

    goto LABEL_36;
  }

  v43 = [v5 options];

  if (v43 >= 0)
  {
    goto LABEL_36;
  }

  [(EXConcreteExtension *)self _plugInProcessIdentifier];
  v44 = terminate_with_reason() == 0;
  v42 = _EXLegacyLog();
  v45 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
  if (!v44)
  {
    if (v45)
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:v42 error:?];
    }

    goto LABEL_35;
  }

  if (v45)
  {
    [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
  }

  sleep(1u);
LABEL_36:
  v46 = _EXLegacyLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    [(EXConcreteExtension *)self makeExtensionContextAndXPCConnectionForRequest:v5 error:v46];
  }

  v47 = *MEMORY[0x1E69E9840];
  return v24;
}

void __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [EXConcreteExtension globalStateQueueForExtension:WeakRetained];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_2;
    v4[3] = &unk_1E6E4DAE8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v6);
  }
}

void __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _EXLegacyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [WeakRetained identifier];
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "extension connection was interrupted! request: %{public}@; plugin_identifier: %{public}@", &v9, 0x16u);
    }

    v6 = [WeakRetained requestInterruptionBlock];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 32));
    }

    EXConcreteExtensionErrorCleanupHandler(WeakRetained, *(a1 + 32));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_68(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _EXLegacyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [WeakRetained identifier];
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "extension connection was invalidated! request: %{public}@; plugin_identifier: %{public}@", buf, 0x16u);
    }

    v6 = _sharedSafePluginQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_69;
    v8[3] = &unk_1E6E4DB10;
    v9 = WeakRetained;
    v10 = *(a1 + 32);
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_reallyBeginExtensionRequest:(id)a3 synchronously:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = _EXLegacyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v26 = "NO";
    *buf = 138543874;
    v36 = self;
    if (v6)
    {
      v26 = "YES";
    }

    v37 = 2114;
    v38 = v8;
    v39 = 2082;
    v40 = v26;
    _os_log_debug_impl(&dword_1847D1000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ really begining request: %{public}@ synchronously: %{public}s", buf, 0x20u);
  }

  v28 = self;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke;
  aBlock[3] = &unk_1E6E4DB38;
  v11 = v9;
  v34 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [v8 xpcConnection];
  v14 = [v8 context];
  v15 = [v14 inputItems];
  v16 = [v8 endpoint];
  if (v6)
  {
    [v13 synchronousRemoteObjectProxyWithErrorHandler:v12];
  }

  else
  {
    [v13 remoteObjectProxyWithErrorHandler:v12];
  }
  v17 = ;
  v27 = v12;
  v18 = [v14 internalImplementation];
  [v18 _setExtensionVendorProxy:v17];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v20 = [v18 _auxiliaryListener];
    v19 = [v20 endpoint];
  }

  v21 = [v14 _UUID];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84;
  v29[3] = &unk_1E6E4DB60;
  v29[4] = v28;
  v30 = v8;
  v31 = v14;
  v32 = v11;
  v22 = v11;
  v23 = v14;
  v24 = v8;
  [v17 _beginRequestWithExtensionItems:v15 listenerEndpoint:v19 withContextUUID:v21 completion:v29];

  v25 = *MEMORY[0x1E69E9840];
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXLegacyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _EXLegacyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84_cold_1(a1);
  }

  v8 = [*(a1 + 48) _UUID];
  v9 = [v8 isEqual:v5];

  if ((v9 & 1) == 0)
  {
    v10 = _EXLegacyLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84_cold_2(v10);
    }
  }

  if (v5)
  {
    [*(a1 + 32) _didCreateExtensionContext:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setOptions:a3];
  [v10 setInputItems:v9];

  [(EXConcreteExtension *)self _beginExtensionRequest:v10 completion:v8];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setOptions:a3];
  [v9 setInputItems:v8];

  v10 = [(EXConcreteExtension *)self _beginExtensionRequest:v9 error:a5];

  return v10;
}

- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setOptions:a3];
  [v13 setInputItems:v12];

  [v13 setEndpoint:v11];
  [(EXConcreteExtension *)self _beginExtensionRequest:v13 completion:v10];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_new();
  [v12 setOptions:a3];
  [v12 setInputItems:v11];

  [v12 setEndpoint:v10];
  v13 = [(EXConcreteExtension *)self _beginExtensionRequest:v12 error:a6];

  return v13;
}

- (void)_beginExtensionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _EXRegistrationLog();
  v9 = os_signpost_id_generate(v8);

  v10 = _EXRegistrationLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "async extension request", "", buf, 2u);
  }

  v12 = _EXLegacyLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension _beginExtensionRequest:completion:];
  }

  [v6 applyActiveWebPageAlternativeIfNeededForExtension:self];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke;
  v19 = &unk_1E6E4DBD8;
  v20 = self;
  v21 = v6;
  v22 = v7;
  v23 = v9;
  v13 = v7;
  v14 = v6;
  v15 = _Block_copy(&v16);
  [(EXConcreteExtension *)self _safelyBeginUsingWithRequest:v14 readyHandler:v15, v16, v17, v18, v19, v20];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2;
  v12[3] = &unk_1E6E4DBB0;
  v13 = v6;
  v14 = *(a1 + 40);
  v15 = v5;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16 = *(a1 + 32);
  v18 = v8;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _EXLegacyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2_cold_1(a1, v2);
    }

    v4 = _EXRegistrationLog();
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_END, v6, "async extension request'", "", buf, 2u);
    }

    v7 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    [*(a1 + 40) setAssertion:*(a1 + 48)];
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3;
    v13[3] = &unk_1E6E4DB88;
    v16 = buf;
    v17 = v19;
    v10 = v9;
    v12 = *(a1 + 64);
    v11 = *(a1 + 72);
    v14 = v10;
    v18 = v11;
    v15 = v12;
    [v8 _reallyBeginExtensionRequest:v10 completion:v13];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    if (v6)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v10 = _EXLegacyLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_4();
      }
    }

    else
    {
      v10 = _EXLegacyLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_5(a1);
      }
    }

    v14 = _EXRegistrationLog();
    v15 = v14;
    v16 = a1[8];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v15, OS_SIGNPOST_INTERVAL_END, v16, "async extension request'", "", v17, 2u);
    }

    (*(a1[5] + 16))();
    v9 = a1[6];
    goto LABEL_18;
  }

  if (v6)
  {
    v8 = _EXLegacyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_1();
    }

    v9 = a1[7];
LABEL_18:
    *(*(v9 + 8) + 24) = 1;
    goto LABEL_22;
  }

  v11 = *(*(a1[7] + 8) + 24);
  v12 = _EXLegacyLog();
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_3();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_2();
  }

LABEL_22:
}

- (id)_beginExtensionRequest:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _EXRegistrationLog();
  v8 = os_signpost_id_generate(v7);

  v9 = _EXRegistrationLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "synchronus extension request", "", buf, 2u);
  }

  v11 = _EXLegacyLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension _beginExtensionRequest:error:];
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  if ([(EXConcreteExtension *)self _beginUsingAndCreateExtensionAssertionWithRequest:v6 error:a4]&& [(EXConcreteExtension *)self makeExtensionContextAndXPCConnectionForRequest:v6 error:a4])
  {
    *v32 = 0;
    *&v32[8] = v32;
    *&v32[16] = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__EXConcreteExtension__beginExtensionRequest_error___block_invoke;
    v25[3] = &unk_1E6E4DC00;
    v25[4] = v32;
    v25[5] = buf;
    [(EXConcreteExtension *)self _reallyBeginExtensionRequest:v6 synchronously:1 completion:v25];
    v12 = [v6 context];

    if (v12)
    {
      v13 = [v6 context];
      [(EXConcreteExtension *)self _didCreateExtensionContext:v13];
    }

    v14 = *(*&v32[8] + 40);
    if (v14)
    {
      if (!a4)
      {
        goto LABEL_22;
      }
    }

    else if (!a4 || *(v27 + 5))
    {
      goto LABEL_22;
    }

    *a4 = v14;
LABEL_22:
    _Block_object_dispose(v32, 8);

    goto LABEL_23;
  }

  v15 = _EXLegacyLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v16 = *a4;
    }

    else
    {
      v16 = 0;
    }

    *v32 = 138543362;
    *&v32[4] = v16;
    _os_log_impl(&dword_1847D1000, v15, OS_LOG_TYPE_DEFAULT, "Failed to begin using with error: %{public}@", v32, 0xCu);
  }

LABEL_23:
  v17 = _EXLegacyLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(v27 + 5);
    if (a4)
    {
      v24 = *a4;
    }

    else
    {
      v24 = 0;
    }

    *v32 = 138543874;
    *&v32[4] = v6;
    *&v32[12] = 2114;
    *&v32[14] = v23;
    *&v32[22] = 2114;
    v33 = v24;
    _os_log_debug_impl(&dword_1847D1000, v17, OS_LOG_TYPE_DEBUG, "completed synchronus begin extension request %{public}@ with identifier: %{public}@ error: %{public}@", v32, 0x20u);
  }

  v18 = _EXRegistrationLog();
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v32 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v19, OS_SIGNPOST_INTERVAL_END, v8, "synchronus extension request'", "", v32, 2u);
  }

  v20 = *(v27 + 5);
  _Block_object_dispose(buf, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __52__EXConcreteExtension__beginExtensionRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)cancelExtensionRequestWithIdentifier:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A2B8];
  v18 = *MEMORY[0x1E696A578];
  v19[0] = @"Extension cancelled by host.";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v8 = [v5 errorWithDomain:v6 code:-2 userInfo:v7];

  v9 = [(EXConcreteExtension *)self requestCancellationBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v4, v8);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__EXConcreteExtension_cancelExtensionRequestWithIdentifier___block_invoke;
  aBlock[3] = &unk_1E6E4DB10;
  aBlock[4] = self;
  v11 = v4;
  v17 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(EXConcreteExtension *)self _requestPostCompletionBlock];

  if (v13)
  {
    v14 = [(EXConcreteExtension *)self _requestPostCompletionBlock];
    (v14)[2](v14, v11, v12);
  }

  else
  {
    v12[2](v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __60__EXConcreteExtension_cancelExtensionRequestWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__EXConcreteExtension_cancelExtensionRequestWithIdentifier___block_invoke_2;
  v4[3] = &unk_1E6E4DB10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

- (int)pidForRequestIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMutableDictionary *)self->__extensionServiceConnections objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = _EXLegacyLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1847D1000, v6, OS_LOG_TYPE_DEFAULT, "nil service connection for UUID: %{public}@", &v10, 0xCu);
    }
  }

  v7 = [v5 processIdentifier];

  os_unfair_lock_unlock(&self->_unfairLock);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_didCreateExtensionContext:(id)a3
{
  v4 = a3;
  v5 = +[_EXDefaults sharedInstance];
  v6 = [v5 platformShouldExhibitEmbeddedBehavior];

  if (!v6)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![objc_opt_class() _shouldSendHostApplicationStateNotifications])
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 infoDictionary];
  v9 = [v8 objectForKeyedSubscript:@"_EXIgnoreHostAppStateChanges"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1847D1000, v11, OS_LOG_TYPE_DEFAULT, "Disallowing host app state observation due to Info.plist override.", buf, 2u);
    }

LABEL_8:
    v12 = 1;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:
  os_unfair_lock_lock(&self->_unfairLock);
  if ((v12 & 1) == 0 && !self->_observingHostAppStateChanges)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__EXConcreteExtension__didCreateExtensionContext___block_invoke;
    block[3] = &unk_1E6E4DC28;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    self->_observingHostAppStateChanges = 1;
  }

  os_unfair_lock_unlock(&self->_unfairLock);
LABEL_14:
}

void __50__EXConcreteExtension__didCreateExtensionContext___block_invoke(uint64_t a1)
{
  Class = objc_getClass("UIApplication");
  if (Class)
  {
    v7 = [(objc_class *)Class performSelector:sel_sharedApplication];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel__hostWillEnterForegroundNote_ name:@"UIApplicationWillEnterForegroundNotification" object:v7];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__hostDidEnterBackgroundNote_ name:@"UIApplicationDidEnterBackgroundNotification" object:v7];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:sel__hostWillResignActiveNote_ name:@"UIApplicationWillResignActiveNotification" object:v7];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:*(a1 + 32) selector:sel__hostDidBecomeActiveNote_ name:@"UIApplicationDidBecomeActiveNotification" object:v7];
  }
}

- (id)objectForInfoDictionaryKey:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  plugIn = self->__plugIn;
  v29[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v7 = plugIn;
  v8 = v6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  if (!v7)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension objectForInfoDictionaryKey:];
    }
  }

  v10 = dispatch_semaphore_create(0);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __EXConcreteExtensionGetLocalizedInfoDictionaryObjectForPlugInAndKeys_block_invoke;
  v20 = &unk_1E6E4DED0;
  v22 = &v23;
  v11 = v10;
  v21 = v11;
  [(PKPlugIn *)v7 localizedInfoDictionaryForKeys:v8 completion:&v17];
  if (dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL))
  {
    NSLog(&cfstr_TimedOutAttemp.isa, v17, v18, v19, v20);
  }

  v12 = v21;
  v13 = v24[5];

  _Block_object_dispose(&v23, 8);
  v14 = [v13 objectForKey:v4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)icons
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(EXConcreteExtension *)self __UIKit_upcall_icons];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_extensionContextForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMutableDictionary *)self->__extensionContexts objectForKey:v4];
  os_unfair_lock_unlock(&self->_unfairLock);

  return v5;
}

- (id)_itemProviderForPayload:(id)a3 extensionContext:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:0x1EF28A810];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v5 inputItems];
  v25 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v8 = *v32;
    v23 = *v32;
    v24 = v5;
    v26 = v7;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = [v10 attachments];
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * j);
              v17 = [v16 _loadOperator];
              v18 = [v17 identifier];
              v19 = [v18 isEqual:v6];

              if (v19)
              {
                v20 = v16;

                v5 = v24;
                v7 = v26;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v26;
        v8 = v23;
      }

      v20 = 0;
      v5 = v24;
      v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)_isPhotoServiceAccessGranted
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(PKPlugIn *)self->__plugIn uuid];
  if (!v2)
  {
    v3 = _EXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension _isPhotoServiceAccessGranted];
    }
  }

  v4 = +[_EXServiceClient sharedInstance];
  v10 = 0;
  v5 = [v4 photoServiceAuthorizationStatusForExtensionUUID:v2 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = v2;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1847D1000, v7, OS_LOG_TYPE_DEFAULT, "Cannot access privacy settings for %{public}@ with error %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_completeRequestReturningItems:(id)a3 forExtensionContextWithUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1847D1000, "completing extension request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = _os_activity_create(&dword_1847D1000, "tear down extension request", v11, OS_ACTIVITY_FLAG_DEFAULT);
  v13 = [EXConcreteExtension globalStateQueueForExtension:self];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke;
  v19[3] = &unk_1E6E4DCA0;
  v20 = v11;
  v21 = self;
  v22 = v9;
  v23 = v8;
  v24 = v12;
  v25 = v10;
  v14 = v12;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  v18 = v11;
  dispatch_async(v13, v19);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [*(a1 + 40) requestCompletionBlock];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = EXConcreteExtensionFilterItemsWithMCProfile(*(a1 + 40), *(a1 + 56));
    (v2)[2](v2, v3, v4);
  }

  v5 = [*(a1 + 40) _requestPostCompletionBlockWithItems];

  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 _requestPostCompletionBlockWithItems];
    v8 = *(a1 + 48);
    v9 = EXConcreteExtensionFilterItemsWithMCProfile(*(a1 + 40), *(a1 + 56));
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_2;
    v21[3] = &unk_1E6E4DC50;
    v10 = *(a1 + 48);
    v21[4] = *(a1 + 40);
    v22 = v10;
    v23 = *(a1 + 72);
    (v7)[2](v7, v8, v9, v21);
    v11 = &v22;
    v12 = &v23;
  }

  else
  {
    v13 = [v6 _requestPostCompletionBlock];

    v14 = *(a1 + 40);
    if (!v13)
    {
      EXConcreteExtensionTearDownRequestCompletion(v14, *(a1 + 48), *(a1 + 72));
      goto LABEL_8;
    }

    v15 = [v14 _requestPostCompletionBlock];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_4;
    v17[3] = &unk_1E6E4DC78;
    v16 = *(a1 + 48);
    v17[4] = *(a1 + 40);
    v18 = *(a1 + 64);
    v19 = *(a1 + 48);
    v20 = *(a1 + 72);
    (v15)[2](v15, v16, v17);
    v11 = &v18;
    v12 = &v19;

    v7 = v20;
  }

LABEL_8:
  os_activity_scope_leave(&state);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v2 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_3;
  block[3] = &unk_1E6E4DC50;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_4(uint64_t a1)
{
  v2 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_5;
  block[3] = &unk_1E6E4DC78;
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 32);
  v7 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_5(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v2);
  EXConcreteExtensionTearDownRequestCompletion(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  os_activity_scope_leave(&v2);
}

- (void)_cancelRequestWithError:(id)a3 forExtensionContextWithUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1847D1000, "cancelling extension request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = [EXConcreteExtension globalStateQueueForExtension:self];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke;
  block[3] = &unk_1E6E4DCC8;
  v18 = v11;
  v19 = self;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  v16 = v11;
  dispatch_async(v12, block);
}

void __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [*(a1 + 40) requestCancellationBlock];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 56));
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke_2;
  aBlock[3] = &unk_1E6E4DA70;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14 = v4;
  aBlock[4] = v5;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 40) _requestPostCompletionBlockWithItems];

  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [v9 _requestPostCompletionBlockWithItems];
    (v10)[2](v10, *(a1 + 48), 0, v7);
  }

  else
  {
    v11 = [v9 _requestPostCompletionBlock];

    if (!v11)
    {
      v7[2](v7);
      goto LABEL_8;
    }

    v10 = [*(a1 + 40) _requestPostCompletionBlock];
    (v10[2])(v10, *(a1 + 48), v7);
  }

LABEL_8:
  os_activity_scope_leave(&state);
}

void __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke_2(void *a1)
{
  v2 = _EXLegacyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "in completeTearDown block", v6, 2u);
  }

  (*(a1[6] + 16))();
  v4 = a1[4];
  v3 = a1[5];
  [v4 requestTeardownDelay];
  EXConcreteExtensionTearDownRequestWithIdentifier(v4, v3, v5);
}

- (void)_loadItemForPayload:(id)a3 contextIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(EXConcreteExtension *)self _extensionContextForUUID:a4];
  v11 = [(EXConcreteExtension *)self _itemProviderForPayload:v9 extensionContext:v10];
  v12 = [v9 objectForKeyedSubscript:0x1EF28A830];
  v13 = [v9 objectForKeyedSubscript:0x1EF28A850];
  Class = objc_getClass([v13 UTF8String]);
  v15 = [v9 objectForKeyedSubscript:0x1EF28A870];

  v31 = 0u;
  v32 = 0u;
  v16 = [MEMORY[0x1E696B0B8] currentConnection];
  v17 = v16;
  if (v16)
  {
    [v16 auditToken];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v28 = v31;
  v22[2] = __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke;
  v22[3] = &unk_1E6E4DD18;
  v26 = v8;
  v27 = Class;
  v23 = v11;
  v24 = v12;
  v30 = 1;
  v29 = v32;
  v25 = v15;
  v18 = v8;
  v19 = v15;
  v20 = v12;
  v21 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v22);
}

void __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_1E6E4DCF0;
  v12 = *(a1 + 104);
  v8 = v3;
  v6 = *(a1 + 88);
  v10 = *(a1 + 72);
  v11 = v6;
  v9 = *(a1 + 56);
  [v4 _loadItemOfClass:v2 forTypeIdentifier:v8 options:v5 coerceForCoding:1 completionHandler:v7];
}

void __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 80) == 1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if (UTTypeConformsTo(v6, *MEMORY[0x1E69638B8]) && _NSIsNSData())
      {
        v7 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:v15 typeIdentifier:*(a1 + 32) error:0];
        v8 = v7;
        if (v7)
        {
          v9 = *(a1 + 64);
          v16 = *(a1 + 48);
          v17 = v9;
          v10 = EXConcreteExtensionGetSandboxedResourceForItemIfNeeded(v7, &v16, 0);
          v11 = v10;
          if (v10)
          {
            v12 = v10;

            v15 = v12;
          }
        }
      }
    }
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v14;
  EXConcreteExtensionCompleteItemLoading(v15, &v16, v5, v13);
}

- (void)_loadPreviewImageForPayload:(id)a3 contextIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(EXConcreteExtension *)self _extensionContextForUUID:a4];
  v11 = [(EXConcreteExtension *)self _itemProviderForPayload:v9 extensionContext:v10];
  v12 = [v9 objectForKeyedSubscript:0x1EF28A850];
  Class = objc_getClass([v12 UTF8String]);
  v14 = [v9 objectForKeyedSubscript:0x1EF28A870];

  v27 = 0u;
  v28 = 0u;
  v15 = [MEMORY[0x1E696B0B8] currentConnection];
  v16 = v15;
  if (v15)
  {
    [v15 auditToken];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke;
  v20[3] = &unk_1E6E4DD68;
  v21 = v11;
  v22 = v14;
  v25 = v27;
  v26 = v28;
  v23 = v8;
  v24 = Class;
  v17 = v8;
  v18 = v14;
  v19 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

void __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v3 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = v3;
  v5[2] = __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E6E4DD40;
  v4 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v1 _loadPreviewImageOfClass:v4 options:v2 coerceForCoding:1 completionHandler:v5];
}

void __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v4;
  EXConcreteExtensionCompleteItemLoading(a2, v5, a3, v3);
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__EXConcreteExtension__openURL_completion___block_invoke;
    block[3] = &unk_1E6E4DC50;
    block[4] = self;
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __43__EXConcreteExtension__openURL_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = _Block_copy(*(a1 + 48));
  [v1 performSelector:sel___UI_upcall_openURL_completion_ withObject:v2 withObject:v3];
}

- (BOOL)_isSystemExtension
{
  v3 = [(EXConcreteExtension *)self infoDictionary];

  if (!v3)
  {
    v4 = _EXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension _isSystemExtension];
    }
  }

  v5 = [(EXConcreteExtension *)self infoDictionary];
  v6 = [v5 objectForKey:@"XPCService"];

  v7 = [v6 objectForKey:@"ServiceType"];
  v8 = [v7 isEqualToString:@"System"];

  return v8;
}

- (void)_safelyBeginUsing:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setOptions:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EXConcreteExtension__safelyBeginUsing___block_invoke;
  v7[3] = &unk_1E6E4DD90;
  v8 = v4;
  v6 = v4;
  [(EXConcreteExtension *)self _safelyBeginUsingWithRequest:v5 readyHandler:v7];
}

- (void)_safelyBeginUsingSynchronously:(BOOL)a3 request:(id)a4 readyHandler:(id)a5
{
  v6 = a3;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = _sharedSafePluginQueue();
  dispatch_assert_queue_V2(v10);

  plugIn = self->__plugIn;
  if (plugIn && ![(PKPlugIn *)plugIn spent])
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x3010000000;
    v64 = 0;
    v65 = 0;
    v63 = &unk_1848DD1FB;
    v46 = _os_activity_create(&dword_1847D1000, "begin using plugin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v46, v61 + 2);
    v48 = v6;
    if (useAssertions())
    {
      objc_initWeak(location, v8);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke;
      aBlock[3] = &unk_1E6E4DDB8;
      objc_copyWeak(&v59, location);
      v16 = _Block_copy(aBlock);
      objc_destroyWeak(&v59);
      objc_destroyWeak(location);
    }

    else
    {
      v16 = 0;
    }

    if (useAssertions())
    {
      v17 = [(EXConcreteExtension *)self identifier];
      v18 = self;
      v19 = v17;
      if ([(EXConcreteExtension *)v18 _wantsProcessPerRequest])
      {
        v20 = 0;
      }

      else
      {
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __EXConcreteExtensionGetProcessIdentifierForExtensionIdentifier_block_invoke;
        v73 = &unk_1E6E4DF58;
        v75 = &v66;
        v22 = v19;
        v74 = v22;
        safelyAccessPidForExtensionIdentiferDictionary(location);
        v20 = *(v67 + 6);
        if (v20 <= 0)
        {
          if ([(EXConcreteExtension *)v18 _isSystemExtension])
          {
            v23 = v22;
            if (EXConcreteExtensionResolveSystemExtensionPIDByIdentifier_onceToken != -1)
            {
              [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
            }

            v24 = v23;
            v25 = [v23 UTF8String];
            v26 = xpc_connection_create(v25, EXConcreteExtensionResolveSystemExtensionPIDByIdentifier_resolution_queue);
            if (v26)
            {
              v20 = [EXXPCUtil servicePidFromXPCConnection:v26];
              xpc_connection_set_event_handler(v26, &__block_literal_global_424);
              xpc_connection_activate(v26);
            }

            else
            {
              v20 = 0;
            }

            *(v67 + 6) = v20;
          }

          else
          {
            v20 = *(v67 + 6);
          }
        }

        _Block_object_dispose(&v66, 8);
      }

      v21 = _NSAcquireProcessAssertionForPIDWithOptions(v20, [v8 options], v16);
      if (v21)
      {
        v27 = _EXLegacyLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *location = 138543618;
          *&location[4] = v21;
          *&location[12] = 1024;
          *&location[14] = v20;
          _os_log_impl(&dword_1847D1000, v27, OS_LOG_TYPE_DEFAULT, "Aquired asertion %{public}@ for running extension with pid %d", location, 0x12u);
        }
      }
    }

    else
    {
      v21 = 0;
      LODWORD(v20) = -1;
    }

    v28 = self->__plugIn;
    if (!v28)
    {
      v29 = _EXDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
      }

      v28 = self->__plugIn;
    }

    if ([(PKPlugIn *)v28 spent])
    {
      v30 = _EXDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
      }
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142;
    v51[3] = &unk_1E6E4DDE0;
    v51[4] = self;
    v31 = v21;
    v52 = v31;
    v57 = v20;
    v32 = v8;
    v53 = v32;
    v33 = v16;
    v54 = v33;
    v55 = v9;
    v56 = &v60;
    v34 = _Block_copy(v51);
    v35 = self->__plugIn;
    v36 = _EXLegacyLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v32 pkUUID];
      [(EXConcreteExtension *)v35 _safelyBeginUsingSynchronously:v37 request:location readyHandler:v36];
    }

    v38 = MEMORY[0x1E69C4A90];
    v39 = [v32 pkUUID];
    v40 = [v32 persona];
    v41 = [v38 launchRequestWithUUID:v39 launchPersona:v40];

    v42 = [v32 sandboxProfileName];
    [(PKPlugIn *)v35 setSandboxProfile:v42];

    if (v48)
    {
      if (objc_opt_respondsToSelector())
      {
        v50 = 0;
        v43 = &v50;
        [(PKPlugIn *)v35 beginUsingRequest:v41 error:&v50];
      }

      else
      {
        v49 = 0;
        v43 = &v49;
        [(PKPlugIn *)v35 beginUsingWithError:&v49];
      }

      v44 = *v43;
      v34[2](v34, v44);
    }

    else if (objc_opt_respondsToSelector())
    {
      [(PKPlugIn *)v35 beginUsingRequest:v41 completion:v34];
    }

    else
    {
      [(PKPlugIn *)v35 beginUsing:v34];
    }

    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v70 = *MEMORY[0x1E696A278];
    v71 = @"The plugin has been invalidated.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v13];

    v15 = _EXLegacyLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
    }

    (*(v9 + 2))(v9, 0, v14);
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _EXLegacyLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained xpcConnection];
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "Assertion invalidated: Invalidating XPC connection %{public}@ ", &v6, 0xCu);
    }

    v4 = [WeakRetained xpcConnection];
    [v4 invalidate];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (useAssertions())
  {
    v5 = (a1 + 32);
    v6 = [*(a1 + 32) _plugInProcessIdentifier];
    if (!v6)
    {
      v7 = _EXLegacyLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_1(a1 + 32);
      }
    }

    v8 = [*(*(a1 + 32) + 96) pluginConnection];
    v9 = [v8 _xpcConnection];
    [*(a1 + 32) set_stashedPlugInConnection:v9];

    v10 = *(a1 + 40);
    if (v10 && v6 == *(a1 + 80))
    {
      v11 = v10;
LABEL_12:
      v14 = v11;
      goto LABEL_18;
    }

    [v10 invalidate];
    v12 = *v5;
    v13 = [*v5 identifier];
    if (([v12 _wantsProcessPerRequest] & 1) == 0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __EXConcreteExtensionSetProcessIdentifierForExtensionIdentifier_block_invoke;
      v28 = &unk_1E6E4DFA0;
      v29 = v13;
      v30 = v6;
      safelyAccessPidForExtensionIdentiferDictionary(buf);
    }

    v11 = _NSAcquireProcessAssertionForPIDWithOptions(v6, [*(a1 + 48) options], *(a1 + 56));
    if (v11)
    {
      goto LABEL_12;
    }

    v15 = _EXLegacyLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = *(*v5 + 12);
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_1847D1000, v15, OS_LOG_TYPE_ERROR, "Failed to acquire assertion for plugin: %{public}@ pid: %d", buf, 0x12u);
    }

    if (!v3)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A2B8];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"The plugin cannot be restarted.";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v3 = [v16 errorWithDomain:v17 code:-1 userInfo:v18];
    }
  }

  v14 = 0;
LABEL_18:
  v19 = _EXLegacyLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_2(a1, v3, v19);
  }

  (*(*(a1 + 64) + 16))();
  v20 = useAssertions();
  if (!v14 && v20)
  {
    v21 = _EXLegacyLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_3(a1);
    }

    [*(a1 + 32) _kill:9];
  }

  if (v3)
  {
    v22 = _EXLegacyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_4(a1);
    }

    [v14 invalidate];
    [*(a1 + 32) _kill:9];
  }

  os_activity_scope_leave((*(*(a1 + 72) + 8) + 32));

  objc_autoreleasePoolPop(v4);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_safelyBeginUsingWithRequest:(id)a3 readyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _sharedSafePluginQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__EXConcreteExtension__safelyBeginUsingWithRequest_readyHandler___block_invoke;
  block[3] = &unk_1E6E4DC50;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)_beginUsingAndCreateExtensionAssertionWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _sharedSafePluginQueue();
  dispatch_assert_queue_not_V2(v7);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v8 = _sharedSafePluginQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke;
  block[3] = &unk_1E6E4DE30;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  v16 = &v17;
  dispatch_sync(v8, block);

  v10 = [v9 assertion];
  if (v10)
  {

LABEL_3:
    v11 = 1;
    goto LABEL_4;
  }

  v13 = v18[5];
  if (!v13)
  {
    goto LABEL_3;
  }

  v11 = 0;
  if (a4)
  {
    *a4 = v13;
  }

LABEL_4:

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke_2;
  v6[3] = &unk_1E6E4DE08;
  v4 = v2;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v3 _safelyBeginUsingSynchronously:1 request:v4 readyHandler:v6];
}

void __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setAssertion:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_safelyEndUsingRequestWithPKUUID:(id)a3 processAssertion:(id)a4 continuation:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _sharedSafePluginQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke;
  block[3] = &unk_1E6E4DE58;
  v13 = v7;
  v14 = v8;
  block[4] = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

void __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {
    v4 = v3;
    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_1(v4, a1);
    }

    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_153;
      v15[3] = &unk_1E6E4DB38;
      v6 = &v16;
      v7 = *(a1 + 40);
      v16 = *(a1 + 48);
      [v4 endUsingRequest:v7 completion:v15];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_2;
      v13[3] = &unk_1E6E4DB38;
      v6 = &v14;
      v14 = *(a1 + 48);
      [v4 endUsing:v13];
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A2B8];
    v17 = *MEMORY[0x1E696A278];
    v18[0] = @"The plugin has been invalidated.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v4 = [v8 errorWithDomain:v9 code:-1 userInfo:v10];

    v11 = _EXLegacyLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_2(v2);
    }

    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)extensionContexts
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(NSMutableDictionary *)self->__extensionContexts allValues];
  os_unfair_lock_unlock(&self->_unfairLock);

  return v3;
}

- (void)_dropAssertion
{
  v3 = _sharedSafePluginQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EXConcreteExtension__dropAssertion__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __37__EXConcreteExtension__dropAssertion__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v9 + 1) + 8 * v5) internalImplementation];
        v7 = [v6 _processAssertion];
        [v7 invalidate];
        [v6 _setProcessAssertion:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_hostWillEnterForegroundNote:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__EXConcreteExtension__hostWillEnterForegroundNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __52__EXConcreteExtension__hostWillEnterForegroundNote___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostWillEnterForegroundForContextUUID:v9 completion:&__block_literal_global_155];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_hostDidEnterBackgroundNote:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__EXConcreteExtension__hostDidEnterBackgroundNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __51__EXConcreteExtension__hostDidEnterBackgroundNote___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostDidEnterBackgroundForContextUUID:v9 completion:&__block_literal_global_157];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_hostWillResignActiveNote:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__EXConcreteExtension__hostWillResignActiveNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __49__EXConcreteExtension__hostWillResignActiveNote___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostWillResignActiveForContextUUID:v9 completion:&__block_literal_global_159];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_hostDidBecomeActiveNote:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__EXConcreteExtension__hostDidBecomeActiveNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __48__EXConcreteExtension__hostDidBecomeActiveNote___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostDidBecomeActiveForContextUUID:v9 completion:&__block_literal_global_161];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)_extensionState
{
  v2 = [(EXConcreteExtension *)self _plugIn];
  v3 = [v2 extensionState];
  v4 = [v3 copy];

  return v4;
}

- (void)_setExtensionState:(id)a3
{
  v5 = [a3 copy];
  v4 = [(EXConcreteExtension *)self _plugIn];
  [v4 setExtensionState:v5];
}

- (BOOL)_isMarkedNew
{
  v3 = [(EXConcreteExtension *)self _plugIn];
  v4 = [v3 userElection];

  if (v4)
  {
    return 0;
  }

  v6 = [(EXConcreteExtension *)self _plugIn];
  v7 = [v6 valueForKey:@"extensionState"];

  v8 = [v7 objectForKeyedSubscript:@"lastDateManagedOn"];

  if (v8)
  {
    v5 = 0;
  }

  else
  {
    v9 = [v7 objectForKeyedSubscript:@"firstDateIndicatedFor"];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DEE8] currentCalendar];
      v11 = [MEMORY[0x1E695DF00] date];
      v12 = [v10 components:16 fromDate:v9 toDate:v11 options:0];

      v5 = [v12 day] < 2;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)_didShowExtensionManagementInterface
{
  v3 = [(EXConcreteExtension *)self _extensionState];
  v5 = [v3 mutableCopy];

  v4 = [MEMORY[0x1E695DF00] date];
  [v5 setObject:v4 forKey:@"lastDateManagedOn"];

  [(EXConcreteExtension *)self willChangeValueForKey:@"markedNew"];
  [(EXConcreteExtension *)self _setExtensionState:v5];
  [(EXConcreteExtension *)self didChangeValueForKey:@"markedNew"];
}

- (void)_didShowNewExtensionIndicator
{
  v3 = [(EXConcreteExtension *)self _extensionState];
  v6 = [v3 mutableCopy];

  v4 = [v6 objectForKey:@"firstDateIndicatedFor"];

  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v6 setObject:v5 forKey:@"firstDateIndicatedFor"];

    [(EXConcreteExtension *)self willChangeValueForKey:@"markedNew"];
    [(EXConcreteExtension *)self _setExtensionState:v6];
    [(EXConcreteExtension *)self didChangeValueForKey:@"markedNew"];
  }
}

- (void)_resetExtensionState
{
  [(EXConcreteExtension *)self willChangeValueForKey:@"markedNew"];
  v3 = [MEMORY[0x1E695DF20] dictionary];
  [(EXConcreteExtension *)self _setExtensionState:v3];

  [(EXConcreteExtension *)self didChangeValueForKey:@"markedNew"];
}

+ (id)_inputItemsByApplyingActiveWebPageAlternative:(id)a3 ifNeededByActivationRule:(id)a4
{
  v6 = a3;
  v11 = 0;
  if ([a1 _evaluateActivationRule:a4 withInputItemsIfTheyMatchActiveWebPageAlternative:v6 matchResult:&v11])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __131__EXConcreteExtension_NSExtensionActiveWebPageAlternative___inputItemsByApplyingActiveWebPageAlternative_ifNeededByActivationRule___block_invoke;
    v10[3] = &__block_descriptor_40_e42_B24__0__NSExtensionItem_8__NSDictionary_16l;
    v10[4] = v11;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v10];
    v8 = [v6 filteredArrayUsingPredicate:v7];

    v6 = v8;
  }

  return v6;
}

uint64_t __131__EXConcreteExtension_NSExtensionActiveWebPageAlternative___inputItemsByApplyingActiveWebPageAlternative_ifNeededByActivationRule___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 attachments];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (*(a1 + 32) == 1)
        {
          v10 = [*(*(&v19 + 1) + 8 * i) registeredTypeIdentifiers];
          v11 = [v10 containsObject:@"com.apple.webarchive"];

          if (!v11)
          {
            goto LABEL_19;
          }
        }

        v12 = [v3 userInfo];
        v13 = [v12 objectForKeyedSubscript:@"supportsJavaScript"];

        if (*(a1 + 32) == 2)
        {
          v14 = [v9 registeredTypeIdentifiers];
          if (![v14 containsObject:@"public.url"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

LABEL_19:
            v16 = 0;
            goto LABEL_20;
          }

          v15 = [v13 BOOLValue];

          if (!v15)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)_matchingDictionaryMatchesActiveWebPageAlternative:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"extensionItems"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [a1 _genericValuesMatchActiveWebPageAlternativeWithExtensionItems:v6 attachmentsLens:&__block_literal_global_1 registeredTypeIdentifiersLens:&__block_literal_global_34 isActiveWebPageAttachmentCheck:&__block_literal_global_37];
  return v7;
}

void *__111__EXConcreteExtension_NSExtensionActiveWebPageAlternative___matchingDictionaryMatchesActiveWebPageAlternative___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"attachments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *__111__EXConcreteExtension_NSExtensionActiveWebPageAlternative___matchingDictionaryMatchesActiveWebPageAlternative___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"registeredTypeIdentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __111__EXConcreteExtension_NSExtensionActiveWebPageAlternative___matchingDictionaryMatchesActiveWebPageAlternative___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 objectForKeyedSubscript:@"registeredTypeIdentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 containsObject:@"com.apple.active-webpage"];
  return v6;
}

uint64_t __101__EXConcreteExtension_NSExtensionActiveWebPageAlternative___inputItemsMatchActiveWebPageAlternative___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"supportsJavaScript"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 BOOLValue];
  if (v9)
  {
    v10 = [v4 registeredTypeIdentifiers];
    v11 = [v10 containsObject:@"public.url"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_genericValuesMatchActiveWebPageAlternativeWithExtensionItems:(id)a3 attachmentsLens:(id)a4 registeredTypeIdentifiersLens:(id)a5 isActiveWebPageAttachmentCheck:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count] == 2)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __199__EXConcreteExtension_NSExtensionActiveWebPageAlternative___genericValuesMatchActiveWebPageAlternativeWithExtensionItems_attachmentsLens_registeredTypeIdentifiersLens_isActiveWebPageAttachmentCheck___block_invoke;
    aBlock[3] = &unk_1E6E4E198;
    v22 = v10;
    v23 = v11;
    v25 = &v31;
    v26 = &v27;
    v24 = v12;
    v13 = _Block_copy(aBlock);
    v14 = [v9 objectAtIndexedSubscript:0];
    v13[2](v13, v14, 0);

    v15 = [v9 objectAtIndexedSubscript:1];
    v13[2](v13, v15, 1);

    v16 = v32[3];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v18 = v28[3];
      v17 = v18 != 0x7FFFFFFFFFFFFFFFLL && v16 != v18;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __199__EXConcreteExtension_NSExtensionActiveWebPageAlternative___genericValuesMatchActiveWebPageAlternativeWithExtensionItems_attachmentsLens_registeredTypeIdentifiersLens_isActiveWebPageAttachmentCheck___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = (*(a1[4] + 16))();
  v6 = v5;
  if (v5 && [v5 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = (*(a1[5] + 16))();
    if (v8)
    {
      v9 = v8;
      if (*(*(a1[7] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && [v8 containsObject:@"com.apple.webarchive"])
      {
        *(*(a1[7] + 8) + 24) = a3;
      }

      if (*(*(a1[8] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && (*(a1[6] + 16))())
      {
        *(*(a1[8] + 8) + 24) = a3;
      }
    }
  }
}

+ (id)_dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:(id)a3 fromMatchingDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"extensionItems"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __141__EXConcreteExtension_NSExtensionActiveWebPageAlternative___dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier_fromMatchingDictionary___block_invoke;
  v16[3] = &unk_1E6E4E1C0;
  v17 = v5;
  v10 = v5;
  v11 = [v9 indexesOfObjectsPassingTest:v16];

  if ([v11 count])
  {
    v12 = [v6 mutableCopy];
    v13 = [v6 objectForKeyedSubscript:@"extensionItems"];
    v14 = [v13 mutableCopy];

    [v14 removeObjectsAtIndexes:v11];
    [v12 setObject:v14 forKey:@"extensionItems"];
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

uint64_t __141__EXConcreteExtension_NSExtensionActiveWebPageAlternative___dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier_fromMatchingDictionary___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"attachments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v23 = v3;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [v15 objectForKeyedSubscript:@"registeredTypeIdentifiers"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        v19 = [v18 containsObject:*(a1 + 32)];
        if (v19)
        {
          v20 = 0;
          goto LABEL_23;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v20 = 1;
LABEL_23:
    v3 = v23;
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BOOL)_evaluateActivationRule:(id)a3 withInputItemsIfTheyMatchActiveWebPageAlternative:(id)a4 matchResult:(int64_t *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"extensionItems";
  v8 = a3;
  v9 = [a4 valueForKey:@"_matchingDictionaryRepresentation"];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  LOBYTE(a5) = [a1 _evaluateActivationRule:v8 withDictionaryIfItMatchesActiveWebPageAlternative:v10 matchResult:a5];

  v11 = *MEMORY[0x1E69E9840];
  return a5;
}

+ (BOOL)_evaluateActivationRule:(id)a3 withDictionaryIfItMatchesActiveWebPageAlternative:(id)a4 matchResult:(int64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _matchingDictionaryMatchesActiveWebPageAlternative:v9];
  if (v10)
  {
    if ([a1 _evaluateActivationRuleWithoutWorkarounds:v8 withExtensionItemsRepresentation:v9])
    {
      *a5 = 3;
    }

    else
    {
      v11 = [a1 _dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:@"com.apple.active-webpage" fromMatchingDictionary:v9];
      if ([a1 _evaluateActivationRuleWithoutWorkarounds:v8 withExtensionItemsRepresentation:v11])
      {
        *a5 = 2;
      }

      else
      {
        v12 = [a1 _dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:@"com.apple.webarchive" fromMatchingDictionary:v9];
        *a5 = [a1 _evaluateActivationRuleWithoutWorkarounds:v8 withExtensionItemsRepresentation:v12];
      }
    }
  }

  return v10;
}

+ (BOOL)evaluateActivationRule:(id)a3 withExtensionItemsRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  if ([a1 _evaluateActivationRule:v6 withDictionaryIfItMatchesActiveWebPageAlternative:v7 matchResult:&v10])
  {
    v8 = v10 != 0;
  }

  else
  {
    v8 = [a1 _evaluateActivationRuleWithoutWorkarounds:v6 withExtensionItemsRepresentation:v7];
  }

  return v8;
}

+ (BOOL)_evaluateActivationRule:(id)a3 withExtensionItemsRepresentation:(id)a4 error:(id *)a5
{
  v12[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v12[0] = 0;
  if ([a1 _evaluateActivationRule:v7 withDictionaryIfItMatchesActiveWebPageAlternative:v8 matchResult:v12])
  {
    v9 = v12[0] != 0;
  }

  else
  {
    v9 = [a1 _evaluateActivationRuleWithoutWorkarounds:v7 withExtensionItemsRepresentation:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)a3 withExtensionItemsRepresentation:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (_NSIsNSDictionary())
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 1;
      v7 = [v5 allValues];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __109__EXConcreteExtension_Filtering___evaluateActivationRuleWithoutWorkarounds_withExtensionItemsRepresentation___block_invoke;
      v15[3] = &unk_1E6E4E258;
      v15[4] = &v16;
      [v7 enumerateObjectsUsingBlock:v15];

      if (v17[3])
      {
        matched = 0;
LABEL_5:
        _Block_object_dispose(&v16, 8);
LABEL_21:

        goto LABEL_22;
      }

      v10 = +[_EXDefaults sharedInstance];
      v11 = [v10 platformShouldExhibitEmbeddedBehavior];

      if (v11)
      {
        v12 = [v5 objectForKey:@"NSExtensionActivationSupportsLocationWithMaxCount"];
        if (v12 && _NSIsNSNumber() && [v12 intValue] >= 1)
        {
          matched = _EXExtensionItemsMatchHackishRepresentationOfSharedLocationExtensionItems(v6);
          if ((matched & 1) != 0 || [v5 count] == 1)
          {

            goto LABEL_5;
          }

          v13 = [v5 mutableCopy];
          [v13 removeObjectForKey:@"NSExtensionActivationSupportsLocationWithMaxCount"];
        }

        else
        {
          v13 = v5;
        }

        v5 = v13;
      }

      _Block_object_dispose(&v16, 8);
      v9 = _EXExtensionPredicateForActivationRule(v5);
    }

    else
    {
      v9 = _EXExtensionPredicateForActivationRule(v5);
      if (!EXExtensionIsPredicateSafeToExecuteWithObject(v9, v6))
      {
        matched = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    matched = [v9 evaluateWithObject:v6];
    goto LABEL_20;
  }

  matched = 0;
LABEL_22:

  return matched;
}

void __109__EXConcreteExtension_Filtering___evaluateActivationRuleWithoutWorkarounds_withExtensionItemsRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 intValue])
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v2, v3, "errors encountered while discovering extensions: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_bareExtensionServiceConnection
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: _connectionUUID is required for process per request!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(os_log_t)log error:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "extensionContext != nil";
  *(buf + 6) = 2080;
  *(buf + 14) = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXConcreteExtension.m";
  *(buf + 11) = 1024;
  *(buf + 6) = 667;
  *(buf + 14) = 2112;
  *(buf + 30) = a1;
  _os_log_fault_impl(&dword_1847D1000, log, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to initialize extension context class: %@", buf, 0x26u);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(void *)a1 error:(void *)a2 .cold.4(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 _UUID];
  v10 = [a2 identifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(NSObject *)a1 error:.cold.6(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1847D1000, a1, OS_LOG_TYPE_DEBUG, "could not terminate extension: %{darwin.errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(NSObject *)a3 error:.cold.8(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a2 context];
  v7 = [a2 xpcConnection];
  v9 = 138412802;
  v10 = a1;
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "%@ Finished making extension context: %{public}@ and connection: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_beginExtensionRequest:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v4, v5, v6, v7, v8);
  v9 = *MEMORY[0x1E69E9840];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v0, v1, "Async Begin using internal completion handler called multiple times. Due to error after initial completion: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 0;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "Async Begin using internal completion handler called multiple times. For unknow reasons. (request ID: %{public}@ error: %{public}@)", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v0, v1, "Async Begin using internal completion handler called multiple times. Due to error before initial completion for request: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v0, v1, "Async Begin using error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_beginExtensionRequest:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)objectForInfoDictionaryKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: can't get info dictionary keys from a nil plugin", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_extensionBundle
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: Unable to fetch URL for plugIn!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_isPhotoServiceAccessGranted
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: PlugIn's UUID is nil!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_isSystemExtension
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: infoDictionary is not available", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_wantsProcessPerRequest
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: infoDictionary is not available", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_hostContextClass
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = "extensionContextHostClass != nil";
  v5 = 2080;
  v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXConcreteExtension.m";
  v7 = 1024;
  v8 = 1381;
  v9 = 2112;
  v10 = a1;
  _os_log_fault_impl(&dword_1847D1000, a2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to load host extension context class: %@", &v3, 0x26u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_safelyBeginUsingSynchronously:request:readyHandler:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: attempting to message a nil plugin!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_safelyBeginUsingSynchronously:request:readyHandler:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: attempting to message a spent plugin!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_safelyBeginUsingSynchronously:(uint8_t *)buf request:(os_log_t)log readyHandler:.cold.4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1847D1000, log, OS_LOG_TYPE_DEBUG, "BeginUsing: Calling into PluginKit plugin: %{public}@ requestUUID: %{public}@", buf, 0x16u);
}

- (void)_safelyBeginUsingSynchronously:request:readyHandler:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 96);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v2, v3, "Plugin %{public}@ must have pid! Extension request will fail", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 48) pkUUID];
  OUTLINED_FUNCTION_1();
  v8 = a2;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "BeginUsing: PluginKit responded for requesr: %{public}@ with error: %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 96) identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 96) identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_kill:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end