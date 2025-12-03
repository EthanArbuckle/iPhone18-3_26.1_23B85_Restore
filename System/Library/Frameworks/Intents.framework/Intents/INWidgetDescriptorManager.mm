@interface INWidgetDescriptorManager
+ (id)sharedManager;
- (INWidgetDescriptorManager)init;
- (void)_notifyCompletionHandlersWithWidgetDescriptors:(id)descriptors;
- (void)_startObservingDescriptors;
- (void)dealloc;
- (void)descriptorsDidChangeForDescriptorProvider:(id)provider;
- (void)getDescriptorForIntent:(id)intent completionHandler:(id)handler;
- (void)getDescriptorsWithCompletionHandler:(id)handler;
@end

@implementation INWidgetDescriptorManager

- (void)_notifyCompletionHandlersWithWidgetDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__INWidgetDescriptorManager__notifyCompletionHandlersWithWidgetDescriptors___block_invoke;
  v7[3] = &unk_1E7287190;
  v7[4] = self;
  v8 = descriptorsCopy;
  v6 = descriptorsCopy;
  dispatch_async(queue, v7);
}

uint64_t __76__INWidgetDescriptorManager__notifyCompletionHandlersWithWidgetDescriptors___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) cancel];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v2 setWidgetDescriptors:?];
  }

  else
  {
    v2[16] = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) widgetDescriptors];
        (*(v8 + 16))(v8, v9);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  result = [*(*(a1 + 32) + 24) removeAllObjects];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_startObservingDescriptors
{
  self->_observing = 1;
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(INWatchdogTimer *)watchdogTimer cancel];
  }

  v4 = [INWatchdogTimer alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__INWidgetDescriptorManager__startObservingDescriptors__block_invoke;
  v14[3] = &unk_1E72882F8;
  v14[4] = self;
  v5 = [(INWatchdogTimer *)v4 initWithTimeoutInterval:v14 timeoutHandler:10.0];
  v6 = self->_watchdogTimer;
  self->_watchdogTimer = v5;

  [(INWatchdogTimer *)self->_watchdogTimer start];
  provider = self->_provider;
  if (provider)
  {
    [(CHSWidgetDescriptorProvider *)provider removeObserver:self];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v8 = getCHSWidgetDescriptorProviderClass_softClass;
  v19 = getCHSWidgetDescriptorProviderClass_softClass;
  if (!getCHSWidgetDescriptorProviderClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getCHSWidgetDescriptorProviderClass_block_invoke;
    v15[3] = &unk_1E72888B8;
    v15[4] = &v16;
    __getCHSWidgetDescriptorProviderClass_block_invoke(v15);
    v8 = v17[3];
  }

  v9 = v8;
  _Block_object_dispose(&v16, 8);
  v10 = objc_alloc_init(v8);
  v11 = self->_provider;
  self->_provider = v10;

  [(CHSWidgetDescriptorProvider *)self->_provider addObserver:self];
  descriptors = [(CHSWidgetDescriptorProvider *)self->_provider descriptors];
  v13 = [descriptors count];

  if (v13)
  {
    [(INWidgetDescriptorManager *)self descriptorsDidChangeForDescriptorProvider:self->_provider];
  }
}

uint64_t __55__INWidgetDescriptorManager__startObservingDescriptors__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _notifyCompletionHandlersWithWidgetDescriptors:0];
  *(*(a1 + 32) + 16) = 0;
  return result;
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)provider
{
  v31 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  descriptors = [providerCopy descriptors];
  v6 = [descriptors count];

  if (v6)
  {
    selfCopy = self;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = providerCopy;
    descriptors2 = [providerCopy descriptors];
    v9 = [descriptors2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(descriptors2);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if (([v13 supportedSizeClasses] & 8) != 0)
          {
            v14 = 3;
          }

          else if (([v13 supportedSizeClasses] & 4) != 0)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          intentType = [v13 intentType];

          if (intentType)
          {
            intentType2 = [v13 intentType];
            v17 = [intentType2 componentsSeparatedByString:@"."];
            lastObject = [v17 lastObject];

            v19 = [INWidgetDescriptor alloc];
            extensionBundleIdentifier = [v13 extensionBundleIdentifier];
            kind = [v13 kind];
            v22 = [(INWidgetDescriptor *)v19 initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind intentClassName:lastObject preferredSizeClass:v14];
            [v7 addObject:v22];
          }
        }

        v10 = [descriptors2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    [(INWidgetDescriptorManager *)selfCopy _notifyCompletionHandlersWithWidgetDescriptors:v7];
    providerCopy = v25;
  }

  else
  {
    [(INWidgetDescriptorManager *)self _notifyCompletionHandlersWithWidgetDescriptors:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(CHSWidgetDescriptorProvider *)self->_provider removeObserver:self];
  v3.receiver = self;
  v3.super_class = INWidgetDescriptorManager;
  [(INWidgetDescriptorManager *)&v3 dealloc];
}

- (INWidgetDescriptorManager)init
{
  v11.receiver = self;
  v11.super_class = INWidgetDescriptorManager;
  v2 = [(INWidgetDescriptorManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("INWidgetDescriptorManagerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x1E695DFD8] set];
    widgetDescriptors = v2->_widgetDescriptors;
    v2->_widgetDescriptors = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v8;
  }

  return v2;
}

- (void)getDescriptorForIntent:(id)intent completionHandler:(id)handler
{
  intentCopy = intent;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__INWidgetDescriptorManager_getDescriptorForIntent_completionHandler___block_invoke;
  v10[3] = &unk_1E7287168;
  v11 = intentCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = intentCopy;
  [(INWidgetDescriptorManager *)self getDescriptorsWithCompletionHandler:v10];
}

void __70__INWidgetDescriptorManager_getDescriptorForIntent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * v7) supportsIntent:{*(a1 + 32), v9}])
        {
          (*(*(a1 + 40) + 16))();

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
}

- (void)getDescriptorsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__INWidgetDescriptorManager_getDescriptorsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7287140;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

_BYTE *__65__INWidgetDescriptorManager_getDescriptorsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetDescriptors];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) widgetDescriptors];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(*(a1 + 32) + 24);
    v5 = MEMORY[0x193AD7780](*(a1 + 40));
    [v6 addObject:v5];
  }

  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {

    return [result _startObservingDescriptors];
  }

  return result;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_123709 != -1)
  {
    dispatch_once(&sharedManager_onceToken_123709, &__block_literal_global_123710);
  }

  v3 = sharedManager_sharedManager_123711;

  return v3;
}

uint64_t __42__INWidgetDescriptorManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(INWidgetDescriptorManager);
  v1 = sharedManager_sharedManager_123711;
  sharedManager_sharedManager_123711 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end