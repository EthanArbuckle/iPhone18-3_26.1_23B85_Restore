@interface INExtensionContextIntentResponseObserver
- (INExtensionContextIntentResponseObserver)init;
- (void)_intentResponseDidUpdate:(id)update;
- (void)setObserver:(id)observer forConnection:(id)connection;
@end

@implementation INExtensionContextIntentResponseObserver

- (void)_intentResponseDidUpdate:(id)update
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v4 = +[INCache sharedCache];
  v5 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  _intents_cacheableObjects = [updateCopy _intents_cacheableObjects];
  v7 = [_intents_cacheableObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(_intents_cacheableObjects);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        cacheIdentifier = [v11 cacheIdentifier];
        v13 = [v4 cacheableObjectForIdentifier:cacheIdentifier];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        [v5 addObject:v14];
      }

      v8 = [_intents_cacheableObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__INExtensionContextIntentResponseObserver__intentResponseDidUpdate___block_invoke;
  v18[3] = &unk_1E7285510;
  v18[4] = self;
  v19 = updateCopy;
  v15 = updateCopy;
  [INSerializedCacheItem serializeCacheableObjects:v5 completion:v18];

  v16 = *MEMORY[0x1E69E9840];
}

void __69__INExtensionContextIntentResponseObserver__intentResponseDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) remoteObservers];
  v5 = [v4 objectEnumerator];
  v6 = [v5 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__INExtensionContextIntentResponseObserver__intentResponseDidUpdate___block_invoke_2;
  v8[3] = &unk_1E72854E8;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = v3;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __69__INExtensionContextIntentResponseObserver__intentResponseDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v8 = 136315394;
      v9 = "[INExtensionContextIntentResponseObserver _intentResponseDidUpdate:]_block_invoke_2";
      v10 = 2048;
      v11 = [v5 count];
      _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Sending %tu serialized cache items.", &v8, 0x16u);
    }

    [v3 intentResponseDidUpdate:*(a1 + 40) withSerializedCacheItems:*(a1 + 32)];
  }

  else
  {
    [v3 intentResponseDidUpdate:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setObserver:(id)observer forConnection:(id)connection
{
  observerCopy = observer;
  connectionCopy = connection;
  remoteObservers = [(INExtensionContextIntentResponseObserver *)self remoteObservers];
  v8 = remoteObservers;
  if (observerCopy)
  {
    [remoteObservers setObject:observerCopy forKey:connectionCopy];
  }

  else
  {
    [remoteObservers removeObjectForKey:connectionCopy];
  }
}

- (INExtensionContextIntentResponseObserver)init
{
  v6.receiver = self;
  v6.super_class = INExtensionContextIntentResponseObserver;
  v2 = [(INExtensionContextIntentResponseObserver *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    remoteObservers = v2->_remoteObservers;
    v2->_remoteObservers = weakToStrongObjectsMapTable;
  }

  return v2;
}

@end