@interface AXMVisionEngineCache
- (AXMVisionEngineCache)initWithCacheSize:(int64_t)a3;
- (id)_cacheQueue_resultForKey:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)resultForKey:(id)a3;
- (int64_t)cacheSize;
- (void)_cacheQueue_setResult:(id)a3 forKey:(id)a4;
- (void)purgeCache;
- (void)setResult:(id)a3 forKey:(id)a4;
@end

@implementation AXMVisionEngineCache

- (AXMVisionEngineCache)initWithCacheSize:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = AXMVisionEngineCache;
  v4 = [(AXMVisionEngineCache *)&v13 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("cacheQueue", v5);
    cacheQueue = v4->_cacheQueue;
    v4->_cacheQueue = v6;

    v4->_cacheQueue_maxItems = a3;
    v8 = [MEMORY[0x1E695DF90] dictionary];
    cacheQueue_results = v4->_cacheQueue_results;
    v4->_cacheQueue_results = v8;

    v10 = [MEMORY[0x1E695DFA0] orderedSet];
    cacheQueue_orderedKeys = v4->_cacheQueue_orderedKeys;
    v4->_cacheQueue_orderedKeys = v10;
  }

  return v4;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  cacheQueue = self->_cacheQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AXMVisionEngineCache_description__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cacheQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__AXMVisionEngineCache_description__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AXMVisionEngineCache<%p>: %ld items", *(a1 + 32), objc_msgSend(*(*(a1 + 32) + 32), "count")];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)debugDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  cacheQueue = self->_cacheQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AXMVisionEngineCache_debugDescription__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cacheQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__AXMVisionEngineCache_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMVisionEngineCache<%p>: %ld items\n", *(a1 + 32), objc_msgSend(*(*(a1 + 32) + 32), "count")];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AXMVisionEngineCache_debugDescription__block_invoke_2;
  v7[3] = &unk_1E7A1D5A0;
  v7[4] = *(a1 + 40);
  return [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (int64_t)cacheSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cacheQueue = self->_cacheQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AXMVisionEngineCache_cacheSize__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cacheQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__AXMVisionEngineCache_cacheSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cacheQueue_cacheSize];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)resultForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__5;
    v16 = __Block_byref_object_dispose__5;
    v17 = 0;
    cacheQueue = self->_cacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__AXMVisionEngineCache_resultForKey___block_invoke;
    block[3] = &unk_1E7A1CFC0;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(cacheQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __37__AXMVisionEngineCache_resultForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cacheQueue_resultForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_cacheQueue_resultForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cacheQueue_results objectForKey:v4];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys removeObject:v4];
    [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys addObject:v4];
    v6 = AXMediaLogEngineCache();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(AXMVisionEngineCache *)v4 _cacheQueue_resultForKey:v6];
    }
  }

  return v5;
}

- (void)setResult:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    cacheQueue = self->_cacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AXMVisionEngineCache_setResult_forKey___block_invoke;
    block[3] = &unk_1E7A1D5C8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_sync(cacheQueue, block);
  }
}

- (void)_cacheQueue_setResult:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(NSMutableDictionary *)self->_cacheQueue_results setObject:v6 forKey:v7];
    p_cacheQueue_orderedKeys = &self->_cacheQueue_orderedKeys;
    [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys removeObject:v7];
    [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys addObject:v7];
    v9 = AXMediaLogEngineCache();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AXMVisionEngineCache _cacheQueue_setResult:v7 forKey:&self->_cacheQueue_orderedKeys];
    }

    if ([(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys count]> self->_cacheQueue_maxItems)
    {
      v10 = [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys firstObject];
      [(NSMutableDictionary *)self->_cacheQueue_results removeObjectForKey:v10];
      [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys removeObject:v10];
      v11 = AXMediaLogEngineCache();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [AXMVisionEngineCache _cacheQueue_setResult:v10 forKey:p_cacheQueue_orderedKeys];
      }
    }
  }

  else
  {
    v12 = AXMediaLogEngineCache();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AXMVisionEngineCache _cacheQueue_setResult:v7 forKey:self];
    }

    [(NSMutableDictionary *)self->_cacheQueue_results removeObjectForKey:v7];
    [(NSMutableOrderedSet *)self->_cacheQueue_orderedKeys removeObject:v7];
  }
}

- (void)purgeCache
{
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AXMVisionEngineCache_purgeCache__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
}

void __34__AXMVisionEngineCache_purgeCache__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = AXMediaLogEngineCache();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__AXMVisionEngineCache_purgeCache__block_invoke_cold_1(v2);
  }
}

- (void)_cacheQueue_resultForKey:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "Result found for key: %p. moving to newest position", &v2, 0xCu);
}

- (void)_cacheQueue_setResult:(uint64_t)a1 forKey:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1AE37B000, v2, v3, "set new result. adding key: %p. %ld items remain", v4, v5, v6, v7, v8);
}

- (void)_cacheQueue_setResult:(uint64_t)a1 forKey:(id *)a2 .cold.2(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1AE37B000, v2, v3, "cache size too big. evicted key: %p. %ld items remain", v4, v5, v6, v7, v8);
}

- (void)_cacheQueue_setResult:(uint64_t)a1 forKey:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  [*(a2 + 24) count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1AE37B000, v2, v3, "set nil result. removing key: %p. %ld items remain", v4, v5, v6, v7, v8);
}

@end