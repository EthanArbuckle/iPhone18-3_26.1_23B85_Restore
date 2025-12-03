@interface INRelevantShortcutStore
+ (INRelevantShortcutStore)defaultStore;
- (INRelevantShortcutStore)initWithSearchableIndex:(id)index;
- (void)setRelevantShortcuts:(id)shortcuts forBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation INRelevantShortcutStore

- (void)setRelevantShortcuts:(id)shortcuts forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  shortcutsCopy = shortcuts;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([shortcutsCopy count] > 0x64)
  {
    NSLog(@"WARNING: Too many INRelevantShortcuts; only using the first %lu", 100);
    v11 = [shortcutsCopy subarrayWithRange:{0, 100}];
  }

  else
  {
    v11 = shortcutsCopy;
  }

  v12 = v11;
  v13 = dispatch_group_create();
  v14 = objc_opt_new();
  strongObjectsPointerArray = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
  [strongObjectsPointerArray setCount:{objc_msgSend(v12, "count")}];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke;
  v28[3] = &unk_1E727E280;
  v29 = v13;
  selfCopy = self;
  v31 = v14;
  v16 = strongObjectsPointerArray;
  v32 = v16;
  v17 = v14;
  v18 = v13;
  [v12 enumerateObjectsUsingBlock:v28];
  v19 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke_12;
  block[3] = &unk_1E7285680;
  v24 = v16;
  selfCopy2 = self;
  v26 = identifierCopy;
  v27 = handlerCopy;
  v20 = handlerCopy;
  v21 = identifierCopy;
  v22 = v16;
  dispatch_group_notify(v18, v19, block);
}

void __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@ is not the expected INRelevantShortcut", v12];

    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  dispatch_group_enter(*(a1 + 32));
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke_2;
  v16[3] = &unk_1E727E258;
  v15 = *(a1 + 40);
  v6 = *(&v15 + 1);
  v7 = *(a1 + 56);
  v19 = a3;
  v8 = *(a1 + 32);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v17 = v15;
  v18 = v9;
  INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler(v5, 0x15u, 0, 1, 0, v16, 180.0, 180.0);
}

void __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) compact];
  v2 = [*(a1 + 40) index];
  v3 = [*(a1 + 32) allObjects];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke_2_13;
  v5[3] = &unk_1E727E2A8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  [v2 donateRelevantShortcuts:v3 bundleID:v4 completionHandler:v5];
}

void __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke_2_13(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (v3)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[INRelevantShortcutStore setRelevantShortcuts:forBundleIdentifier:completionHandler:]_block_invoke_2";
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_18E991000, v4, OS_LOG_TYPE_ERROR, "%s Error when trying to set new relevant shortcuts: %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 allObjects];
    v10 = 136315394;
    v11 = "[INRelevantShortcutStore setRelevantShortcuts:forBundleIdentifier:completionHandler:]_block_invoke";
    v12 = 2050;
    v13 = [v7 count];
    _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Updated relevant shortcuts with %{public}lu shortcuts", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __86__INRelevantShortcutStore_setRelevantShortcuts_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[INRelevantShortcutStore setRelevantShortcuts:forBundleIdentifier:completionHandler:]_block_invoke_2";
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error injecting image proxies into %{public}@: %{public}@", &v10, 0x20u);
    }
  }

  [*(a1 + 40) lock];
  [*(a1 + 48) replacePointerAtIndex:*(a1 + 64) withPointer:v5];
  [*(a1 + 40) unlock];
  dispatch_group_leave(*(a1 + 56));

  v8 = *MEMORY[0x1E69E9840];
}

- (INRelevantShortcutStore)initWithSearchableIndex:(id)index
{
  indexCopy = index;
  v10.receiver = self;
  v10.super_class = INRelevantShortcutStore;
  v6 = [(INRelevantShortcutStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_index, index);
    v8 = v7;
  }

  return v7;
}

+ (INRelevantShortcutStore)defaultStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__INRelevantShortcutStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore_onceToken != -1)
  {
    dispatch_once(&defaultStore_onceToken, block);
  }

  v2 = defaultStore_defaultStore;

  return v2;
}

void __39__INRelevantShortcutStore_defaultStore__block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getCSSearchableIndexClass_softClass_5743;
  v13 = getCSSearchableIndexClass_softClass_5743;
  if (!getCSSearchableIndexClass_softClass_5743)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCSSearchableIndexClass_block_invoke_5744;
    v9[3] = &unk_1E72888B8;
    v9[4] = &v10;
    __getCSSearchableIndexClass_block_invoke_5744(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 alloc];
  v5 = NSStringFromClass(*(a1 + 32));
  v6 = [v4 initWithName:v5 protectionClass:*MEMORY[0x1E696A388]];

  v7 = [[INRelevantShortcutStore alloc] initWithSearchableIndex:v6];
  v8 = defaultStore_defaultStore;
  defaultStore_defaultStore = v7;
}

@end