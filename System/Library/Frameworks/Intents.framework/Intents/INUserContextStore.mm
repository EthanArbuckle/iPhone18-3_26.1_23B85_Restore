@interface INUserContextStore
+ (id)findDataInValue:(id)value;
+ (id)keyForBundleIdentifier:(id)identifier andType:(int64_t)type;
+ (id)sharedStore;
- (id)_init;
- (id)_initWithKnowledgeStore:(id)store;
- (void)removeUserContextOfClass:(Class)class forBundleIdentifier:(id)identifier;
- (void)storeUserContext:(id)context forBundleIdentifier:(id)identifier;
- (void)storeUserContextViaHelper:(id)helper forBundleIdentifier:(id)identifier;
- (void)userContextOfClass:(Class)class forBundleIdentifiers:(id)identifiers withCompletion:(id)completion;
- (void)userContextOfClass:(Class)class withCompletion:(id)completion;
@end

@implementation INUserContextStore

- (id)_initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = INUserContextStore;
  v6 = [(INUserContextStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, store);
  }

  return v7;
}

- (id)_init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getCKKnowledgeStoreClass_softClass;
  v12 = getCKKnowledgeStoreClass_softClass;
  if (!getCKKnowledgeStoreClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getCKKnowledgeStoreClass_block_invoke;
    v8[3] = &unk_1E72888B8;
    v8[4] = &v9;
    __getCKKnowledgeStoreClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  defaultKnowledgeStore = [v3 defaultKnowledgeStore];
  v6 = [(INUserContextStore *)self _initWithKnowledgeStore:defaultKnowledgeStore];

  return v6;
}

- (void)userContextOfClass:(Class)class withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [objc_opt_class() keyPrefixForType:{-[objc_class _type](class, "_type")}];
  v8 = [v7 length];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v9 = getCKGenericConditionClass_softClass;
  v25 = getCKGenericConditionClass_softClass;
  if (!getCKGenericConditionClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getCKGenericConditionClass_block_invoke;
    v21[3] = &unk_1E72888B8;
    v21[4] = &v22;
    __getCKGenericConditionClass_block_invoke(v21);
    v9 = v23[3];
  }

  v10 = v9;
  _Block_object_dispose(&v22, 8);
  v11 = [[v9 alloc] initWithMatchType:0 value:v7 negated:0];
  knowledgeStore = self->_knowledgeStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__INUserContextStore_userContextOfClass_withCompletion___block_invoke;
  v15[3] = &unk_1E7281980;
  v18 = completionCopy;
  v19 = v8;
  v16 = v7;
  selfCopy = self;
  classCopy = class;
  v13 = completionCopy;
  v14 = v7;
  [(CKKnowledgeStore *)knowledgeStore dictionaryRepresentationForKeysMatching:v11 completionHandler:v15];
}

void __56__INUserContextStore_userContextOfClass_withCompletion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  if (a2)
  {
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      *buf = 136315394;
      v23 = "[INUserContextStore userContextOfClass:withCompletion:]_block_invoke";
      v24 = 2112;
      v25 = v17;
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Error loading UserContext for prefix:%@", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__INUserContextStore_userContextOfClass_withCompletion___block_invoke_10;
    v18[3] = &unk_1E7281958;
    v9 = a1[5];
    v10 = a1[8];
    v20 = a1[7];
    v21 = v10;
    v18[4] = v9;
    v11 = v6;
    v19 = v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[INUserContextStore userContextOfClass:withCompletion:]_block_invoke";
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Retrieved UserContexts: %@", buf, 0x16u);
    }

    (*(a1[6] + 16))(a1[6], v11, v13, v14, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __56__INUserContextStore_userContextOfClass_withCompletion___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 substringFromIndex:*(a1 + 48)];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() findDataInValue:v6];
    if (v9)
    {
      v10 = *(a1 + 56);
      v18 = 0;
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v10 fromData:v9 error:&v18];
      v12 = v18;
      if (v12)
      {
        v13 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 56);
          *buf = 136315906;
          v20 = "[INUserContextStore userContextOfClass:withCompletion:]_block_invoke";
          v21 = 2112;
          v22 = v17;
          v23 = 2112;
          v24 = v7;
          v25 = 2112;
          v26 = v12;
          _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Error unarchiving UserContext from class:%@ for bundle:%@  - %@", buf, 0x2Au);
        }
      }

      [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
    }

    else
    {
      v15 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v20 = "[INUserContextStore userContextOfClass:withCompletion:]_block_invoke";
        v21 = 2112;
        v22 = v7;
        _os_log_debug_impl(&dword_18E991000, v15, OS_LOG_TYPE_DEBUG, "%s No UserContext for bundle:%@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v20 = "[INUserContextStore userContextOfClass:withCompletion:]_block_invoke";
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_18E991000, v14, OS_LOG_TYPE_DEBUG, "%s Received invalid key for UserContext:%@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)userContextOfClass:(Class)class forBundleIdentifiers:(id)identifiers withCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  allObjects = [identifiersCopy allObjects];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allObjects, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_opt_class() keyForBundleIdentifier:*(*(&v31 + 1) + 8 * v15) andType:{-[objc_class _type](class, "_type")}];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  knowledgeStore = self->_knowledgeStore;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__INUserContextStore_userContextOfClass_forBundleIdentifiers_withCompletion___block_invoke;
  v24[3] = &unk_1E7281930;
  v25 = identifiersCopy;
  v26 = v11;
  v27 = v10;
  selfCopy = self;
  v29 = completionCopy;
  classCopy = class;
  v18 = completionCopy;
  v19 = v10;
  v20 = v11;
  v21 = identifiersCopy;
  [(CKKnowledgeStore *)knowledgeStore valuesForKeys:v19 completionHandler:v24];

  v22 = *MEMORY[0x1E69E9840];
}

void __77__INUserContextStore_userContextOfClass_forBundleIdentifiers_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  if (a2)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 136315650;
      v24 = "[INUserContextStore userContextOfClass:forBundleIdentifiers:withCompletion:]_block_invoke";
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error loading UserContext for bundleIdentifiers:%@ as keys:%@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__INUserContextStore_userContextOfClass_forBundleIdentifiers_withCompletion___block_invoke_4;
    v18[3] = &unk_1E7281908;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v19 = v8;
    v20 = v9;
    v22 = *(a1 + 72);
    v10 = v6;
    v21 = v10;
    [v5 enumerateObjectsUsingBlock:v18];
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      *buf = 136315650;
      v24 = "[INUserContextStore userContextOfClass:forBundleIdentifiers:withCompletion:]_block_invoke";
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Retrieved UserContexts for bundleIdentifiers:%@ -- %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v10, v12, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __77__INUserContextStore_userContextOfClass_forBundleIdentifiers_withCompletion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = *(a1 + 40);
  v9 = [objc_opt_class() findDataInValue:v6];

  if (v9)
  {
    v10 = *(a1 + 56);
    v17 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v10 fromData:v9 error:&v17];
    v12 = v17;
    if (v12)
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 56);
        *buf = 136315906;
        v19 = "[INUserContextStore userContextOfClass:forBundleIdentifiers:withCompletion:]_block_invoke";
        v20 = 2112;
        v21 = v16;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Error unarchiving UserContext from class:%@ for bundle:%@  - %@", buf, 0x2Au);
      }
    }

    [*(a1 + 48) setObject:v11 forKeyedSubscript:v7];
  }

  else
  {
    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v19 = "[INUserContextStore userContextOfClass:forBundleIdentifiers:withCompletion:]_block_invoke";
      v20 = 2112;
      v21 = v7;
      _os_log_debug_impl(&dword_18E991000, v14, OS_LOG_TYPE_DEBUG, "%s No UserContext for bundle:%@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)storeUserContextViaHelper:(id)helper forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helperCopy = helper;
  v7 = +[INImageServiceConnection sharedConnection];
  [v7 storeUserContext:helperCopy forBundleIdentifier:identifierCopy];
}

- (void)removeUserContextOfClass:(Class)class forBundleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _type = [(objc_class *)class _type];
  v8 = [objc_opt_class() keyForBundleIdentifier:identifierCopy andType:_type];
  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v16 = "[INUserContextStore removeUserContextOfClass:forBundleIdentifier:]";
    v17 = 2048;
    v18 = _type;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Removing UserContext of type:%ld for bundle:%@ at key:%@...", buf, 0x2Au);
  }

  knowledgeStore = self->_knowledgeStore;
  v14 = 0;
  [(CKKnowledgeStore *)knowledgeStore removeValueForKey:v8 error:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "[INUserContextStore removeUserContextOfClass:forBundleIdentifier:]";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Error removing value for key:%@ -- %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)storeUserContext:(id)context forBundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifierCopy = identifier;
  _type = [objc_opt_class() _type];
  v9 = [objc_opt_class() keyForBundleIdentifier:identifierCopy andType:_type];
  v10 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v18 = "[INUserContextStore storeUserContext:forBundleIdentifier:]";
    v19 = 2048;
    v20 = _type;
    v21 = 2112;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&dword_18E991000, v10, OS_LOG_TYPE_INFO, "%s Setting UserContext of type:%ld for bundle:%@ at key:%@, with value: %@...", buf, 0x34u);
  }

  v16 = 0;
  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[INUserContextStore storeUserContext:forBundleIdentifier:]";
      v19 = 2112;
      v20 = v12;
      _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Error archiving UserContext: %@", buf, 0x16u);
    }
  }

  else
  {
    [(CKKnowledgeStore *)self->_knowledgeStore setValue:v11 forKey:v9];
    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[INUserContextStore storeUserContext:forBundleIdentifier:]";
      _os_log_impl(&dword_18E991000, v14, OS_LOG_TYPE_INFO, "%s UserContext saved.", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)keyForBundleIdentifier:(id)identifier andType:(int64_t)type
{
  identifierCopy = identifier;
  v6 = [objc_opt_class() keyPrefixForType:type];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, identifierCopy];

  return identifierCopy;
}

+ (id)findDataInValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  null = [MEMORY[0x1E695DFB0] null];
  v5 = [valueCopy isEqual:null];

  if (v5)
  {
LABEL_2:
    v6 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      reverseObjectEnumerator = [valueCopy reverseObjectEnumerator];
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v6 = v12;

              goto LABEL_16;
            }
          }

          v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_2;
  }

  v6 = valueCopy;
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)sharedStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__INUserContextStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStore_onceToken != -1)
  {
    dispatch_once(&sharedStore_onceToken, block);
  }

  v2 = sharedStore_sharedStore;

  return v2;
}

uint64_t __33__INUserContextStore_sharedStore__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedStore_sharedStore;
  sharedStore_sharedStore = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end