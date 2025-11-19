@interface SFPersonaManager
+ (id)sharedInstance;
+ (void)runAsPersona:(id)a3 block:(id)a4;
- (BOOL)personaMatchesEnrolledUser:(id)a3;
- (id)_initWithQueue:(id)a3;
- (void)_detectNewPersonas:(id)a3 currentPersonaIds:(id)a4;
- (void)_detectRemovedPersonas:(id)a3 currentPersonaIds:(id)a4;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SFPersonaManager

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SFPersonaManager_removeObserver___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __35__SFPersonaManager_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SFPersonaManager_addObserver___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __32__SFPersonaManager_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)_detectRemovedPersonas:(id)a3 currentPersonaIds:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 mutableCopy];
  [v8 minusSet:v7];
  v9 = [v8 count];
  v10 = SFLogFramework;
  v11 = os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 136315394;
      v25 = "[SFPersonaManager _detectRemovedPersonas:currentPersonaIds:]";
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_INFO, "%s Detected removed persona(s): %@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(SFPersonaManager *)self observers];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 removedPersonas:v8];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  else if (v11)
  {
    *buf = 136315138;
    v25 = "[SFPersonaManager _detectRemovedPersonas:currentPersonaIds:]";
    _os_log_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_INFO, "%s No removed personas.", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_detectNewPersonas:(id)a3 currentPersonaIds:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v7 mutableCopy];
  [v8 minusSet:v6];
  v9 = [v8 count];
  v10 = SFLogFramework;
  v11 = os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 136315394;
      v25 = "[SFPersonaManager _detectNewPersonas:currentPersonaIds:]";
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_INFO, "%s Detected new persona(s): %@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(SFPersonaManager *)self observers];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 newPersonas:v8];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  else if (v11)
  {
    *buf = 136315138;
    v25 = "[SFPersonaManager _detectNewPersonas:currentPersonaIds:]";
    _os_log_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_INFO, "%s No new personas.", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)personaMatchesEnrolledUser:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v5 = [(SFPersonaManager *)self personaIds];
  v6 = [v5 containsObject:v4];

  v7 = SFLogFramework;
  if (!v6)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[SFPersonaManager personaMatchesEnrolledUser:]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_INFO, "%s Persona (%@) does not match an enrolled user.", &v11, 0x16u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "[SFPersonaManager personaMatchesEnrolledUser:]";
    v13 = 2112;
    v14 = v4;
    _os_log_debug_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_DEBUG, "%s Persona (%@) matches an enrolled user.", &v11, 0x16u);
  }

  v8 = 1;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SFPersonaManager;
  v6 = [(SFPersonaManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [MEMORY[0x1E695DFD8] set];
    personaIds = v7->_personaIds;
    v7->_personaIds = v8;

    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v10;

    [(SFPersonaManager *)v7 _initializeUserProfileStore];
  }

  return v7;
}

+ (void)runAsPersona:(id)a3 block:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFPersonaManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1977 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1977, block);
  }

  v2 = sharedInstance_sharedManager_1978;

  return v2;
}

void __34__SFPersonaManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 cStringUsingEncoding:4];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UTILITY, 0);
  v11 = dispatch_queue_create(v5, v7);

  v8 = *(a1 + 32);
  v9 = [objc_alloc(objc_opt_class()) _initWithQueue:v11];
  v10 = sharedInstance_sharedManager_1978;
  sharedInstance_sharedManager_1978 = v9;
}

@end