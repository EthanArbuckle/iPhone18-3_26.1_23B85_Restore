@interface PHConcurrentMapTable
+ (id)mapTable;
- (BOOL)tryRemoveObjectForKey:(id)a3;
- (PHConcurrentMapTable)init;
- (id)allKeys;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PHConcurrentMapTable

- (id)allKeys
{
  v3 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__PHConcurrentMapTable_allKeys__block_invoke;
  v8[3] = &unk_1E75AAEB0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(PHConcurrentMapTable *)self _dispatchIsolatedRead:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __31__PHConcurrentMapTable_allKeys__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addObject:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)removeAllObjects
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__PHConcurrentMapTable_removeAllObjects__block_invoke;
  v2[3] = &unk_1E75AB270;
  v2[4] = self;
  [(PHConcurrentMapTable *)self _dispatchIsolatedWriteAsync:v2];
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PHConcurrentMapTable_count__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHConcurrentMapTable *)self _dispatchIsolatedRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __29__PHConcurrentMapTable_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__PHConcurrentMapTable_setObject_forKey___block_invoke;
  v10[3] = &unk_1E75AB248;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PHConcurrentMapTable *)self _dispatchIsolatedWriteAsync:v10];
}

- (BOOL)tryRemoveObjectForKey:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PHConcurrentMapTable_tryRemoveObjectForKey___block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(PHConcurrentMapTable *)self _dispatchIsolatedWriteSync:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __46__PHConcurrentMapTable_tryRemoveObjectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;

  v3 = a1[5];
  v4 = *(a1[4] + 16);

  return [v4 removeObjectForKey:v3];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PHConcurrentMapTable_removeObjectForKey___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PHConcurrentMapTable *)self _dispatchIsolatedWriteAsync:v6];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__49297;
  v15 = __Block_byref_object_dispose__49298;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PHConcurrentMapTable_objectForKey___block_invoke;
  v8[3] = &unk_1E75AA3F8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(PHConcurrentMapTable *)self _dispatchIsolatedRead:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __37__PHConcurrentMapTable_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (PHConcurrentMapTable)init
{
  v8.receiver = self;
  v8.super_class = PHConcurrentMapTable;
  v2 = [(PHConcurrentMapTable *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PHConcurrentMapTable read/write isolation queue", MEMORY[0x1E69E96A8]);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    protectedTable = v2->_protectedTable;
    v2->_protectedTable = v5;
  }

  return v2;
}

+ (id)mapTable
{
  v2 = objc_alloc_init(PHConcurrentMapTable);

  return v2;
}

@end