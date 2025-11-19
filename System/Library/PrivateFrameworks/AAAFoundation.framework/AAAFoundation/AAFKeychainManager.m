@interface AAFKeychainManager
- (BOOL)_unsafe_deleteKeychainItemWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)_unsafe_updateKeychainItemWithDescriptor:(id)a3 newItem:(id)a4 error:(id *)a5;
- (id)_unsafe_fetchKeychainItemWithDescriptor:(id)a3 error:(id *)a4;
- (id)_unsafe_fetchKeychainItemsWithDescriptor:(id)a3 error:(id *)a4;
- (id)keychainItemForDescriptor:(id)a3 error:(id *)a4;
- (id)keychainItemsForDescriptor:(id)a3 error:(id *)a4;
- (void)_unsafe_addKeychainItem:(id)a3 shouldAttemptUpdate:(BOOL)a4 error:(id *)a5;
- (void)addKeychainItem:(id)a3 error:(id *)a4;
- (void)addOrUpdateKeychainItem:(id)a3 error:(id *)a4;
- (void)deleteKeychainItemsForDescriptor:(id)a3 error:(id *)a4;
- (void)updateKeychainItem:(id)a3 error:(id *)a4;
@end

@implementation AAFKeychainManager

- (void)addKeychainItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __44__AAFKeychainManager_addKeychainItem_error___block_invoke;
  v11 = &unk_1E831B9C8;
  v12 = self;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  v8 = v9;
  os_unfair_lock_lock(&keychainLock);
  v10(v8);

  os_unfair_lock_unlock(&keychainLock);
  if (a4)
  {
    *a4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
}

void __44__AAFKeychainManager_addKeychainItem_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _unsafe_addKeychainItem:v1 shouldAttemptUpdate:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (void)addOrUpdateKeychainItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __52__AAFKeychainManager_addOrUpdateKeychainItem_error___block_invoke;
  v11 = &unk_1E831B9C8;
  v12 = self;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  v8 = v9;
  os_unfair_lock_lock(&keychainLock);
  v10(v8);

  os_unfair_lock_unlock(&keychainLock);
  if (a4)
  {
    *a4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
}

void __52__AAFKeychainManager_addOrUpdateKeychainItem_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _unsafe_addKeychainItem:v1 shouldAttemptUpdate:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (void)updateKeychainItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __47__AAFKeychainManager_updateKeychainItem_error___block_invoke;
  v11 = &unk_1E831B9C8;
  v12 = self;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  v8 = v9;
  os_unfair_lock_lock(&keychainLock);
  v10(v8);

  os_unfair_lock_unlock(&keychainLock);
  if (a4)
  {
    *a4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
}

void __47__AAFKeychainManager_updateKeychainItem_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) descriptor];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  [v2 _unsafe_updateKeychainItemWithDescriptor:v3 newItem:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

- (id)keychainItemForDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __54__AAFKeychainManager_keychainItemForDescriptor_error___block_invoke;
  v13 = &unk_1E831B9F0;
  v16 = &v24;
  v14 = self;
  v7 = v6;
  v15 = v7;
  v17 = &v18;
  v8 = v11;
  os_unfair_lock_lock(&keychainLock);
  v12(v8);

  os_unfair_lock_unlock(&keychainLock);
  if (a4)
  {
    *a4 = v19[5];
  }

  v9 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

void __54__AAFKeychainManager_keychainItemForDescriptor_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _unsafe_fetchKeychainItemWithDescriptor:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)keychainItemsForDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __55__AAFKeychainManager_keychainItemsForDescriptor_error___block_invoke;
  v13 = &unk_1E831B9F0;
  v16 = &v24;
  v14 = self;
  v7 = v6;
  v15 = v7;
  v17 = &v18;
  v8 = v11;
  os_unfair_lock_lock(&keychainLock);
  v12(v8);

  os_unfair_lock_unlock(&keychainLock);
  if (a4)
  {
    *a4 = v19[5];
  }

  v9 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

void __55__AAFKeychainManager_keychainItemsForDescriptor_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _unsafe_fetchKeychainItemsWithDescriptor:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)deleteKeychainItemsForDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __61__AAFKeychainManager_deleteKeychainItemsForDescriptor_error___block_invoke;
  v11 = &unk_1E831B9C8;
  v12 = self;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  v8 = v9;
  os_unfair_lock_lock(&keychainLock);
  v10(v8);

  os_unfair_lock_unlock(&keychainLock);
  if (a4)
  {
    *a4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
}

void __61__AAFKeychainManager_deleteKeychainItemsForDescriptor_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _unsafe_deleteKeychainItemWithDescriptor:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (void)_unsafe_addKeychainItem:(id)a3 shouldAttemptUpdate:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v12 = a3;
  v8 = [v12 itemAttributes];
  v9 = SecItemAdd(v8, 0);
  if (v9 == -25299 && v6)
  {
    Error = [v12 descriptor];
    [(AAFKeychainManager *)self _unsafe_updateKeychainItemWithDescriptor:Error newItem:v12 error:a5];
LABEL_9:

    goto LABEL_10;
  }

  if (a5 && v9)
  {
    Error = SecCopyLastError();
    *a5 = Error;
    goto LABEL_9;
  }

LABEL_10:
}

- (BOOL)_unsafe_updateKeychainItemWithDescriptor:(id)a3 newItem:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 attributes];
  v9 = [v7 itemAttributes];

  v10 = [v9 mutableCopy];
  [v10 removeObjectForKey:*MEMORY[0x1E697AFF8]];
  v11 = SecItemUpdateWithError();
  v12 = 0;
  if (a5)
  {
    v12 = 0;
    *a5 = v12;
  }

  return v11;
}

- (id)_unsafe_fetchKeychainItemWithDescriptor:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 attributes];
  v7 = [v6 mutableCopy];

  v8 = MEMORY[0x1E695E118];
  [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697B310]];
  [v7 setObject:v8 forKey:*MEMORY[0x1E697B318]];
  [v7 setObject:*MEMORY[0x1E697B270] forKey:*MEMORY[0x1E697B260]];
  result = 0;
  v9 = SecItemCopyMatching(v7, &result);
  if (a4 && v9)
  {
    *a4 = SecCopyLastError();
    v10 = _AAFLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AAFKeychainManager *)a4 _unsafe_fetchKeychainItemWithDescriptor:v10 error:v11, v12, v13, v14, v15, v16];
    }
  }

  if (result && (v17 = CFGetTypeID(result), v17 == CFDictionaryGetTypeID()))
  {
    v18 = result;
    v19 = [[AAFKeychainItem alloc] initWithAttributes:result];
    v20 = [(AAFKeychainItem *)v19 descriptor];
    v21 = [v20 itemClass];

    if (!v21)
    {
      v22 = [(AAFKeychainItem *)v19 descriptor];
      [v22 setItemClass:{objc_msgSend(v5, "itemClass")}];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_unsafe_fetchKeychainItemsWithDescriptor:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v5 = [v33 attributes];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x1E695E118];
  [v6 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697B310]];
  [v6 setObject:v7 forKey:*MEMORY[0x1E697B318]];
  [v6 setObject:*MEMORY[0x1E697B268] forKey:*MEMORY[0x1E697B260]];
  result = 0;
  v8 = SecItemCopyMatching(v6, &result);
  if (a4 && v8)
  {
    *a4 = SecCopyLastError();
    v9 = _AAFLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AAFKeychainManager *)a4 _unsafe_fetchKeychainItemsWithDescriptor:v9 error:v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (result)
  {
    v17 = CFGetTypeID(result);
    if (v17 == CFArrayGetTypeID())
    {
      v32 = v6;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = result;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
              v25 = [[AAFKeychainItem alloc] initWithAttributes:v24];

              v26 = [(AAFKeychainItem *)v25 descriptor];
              v27 = [v26 itemClass];

              if (!v27)
              {
                v28 = [(AAFKeychainItem *)v25 descriptor];
                [v28 setItemClass:{objc_msgSend(v33, "itemClass")}];
              }

              [v16 addObject:{v25, v32}];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v20);
      }

      v6 = v32;
    }
  }

  v29 = [v16 copy];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)_unsafe_deleteKeychainItemWithDescriptor:(id)a3 error:(id *)a4
{
  v5 = [a3 attributes];
  v6 = SecItemDelete(v5);
  v7 = v6;
  if (a4 && v6)
  {
    *a4 = SecCopyLastError();
    v8 = _AAFLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAFKeychainManager *)a4 _unsafe_deleteKeychainItemWithDescriptor:v8 error:v9, v10, v11, v12, v13, v14];
    }
  }

  return v7 == 0;
}

- (void)_unsafe_fetchKeychainItemWithDescriptor:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_1C8644000, a2, a3, "Error fetching keychain item - %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_unsafe_fetchKeychainItemsWithDescriptor:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_1C8644000, a2, a3, "Error fetching keychain items - %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_unsafe_deleteKeychainItemWithDescriptor:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_1C8644000, a2, a3, "Error deleting keychain items - %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end