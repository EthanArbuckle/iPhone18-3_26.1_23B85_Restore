@interface AMSThreadSafeDictionary
- (AMSThreadSafeDictionary)init;
- (NSArray)allKeys;
- (NSArray)allValues;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)readWrite:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation AMSThreadSafeDictionary

- (AMSThreadSafeDictionary)init
{
  v8.receiver = self;
  v8.super_class = AMSThreadSafeDictionary;
  v2 = [(AMSThreadSafeDictionary *)&v8 init];
  if (v2)
  {
    v3 = [AMSThreadSafeObject alloc];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [(AMSThreadSafeObject *)v3 initWithObject:v4];
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v5;
  }

  return v2;
}

- (NSArray)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__67;
  v10 = __Block_byref_object_dispose__67;
  v11 = 0;
  v2 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__AMSThreadSafeDictionary_allKeys__block_invoke;
  v5[3] = &unk_1E73BCA60;
  v5[4] = &v6;
  [v2 read:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__AMSThreadSafeDictionary_allKeys__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 allKeys];

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)allValues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__67;
  v10 = __Block_byref_object_dispose__67;
  v11 = 0;
  v2 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AMSThreadSafeDictionary_allValues__block_invoke;
  v5[3] = &unk_1E73BCA60;
  v5[4] = &v6;
  [v2 read:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__AMSThreadSafeDictionary_allValues__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 allValues];

  return MEMORY[0x1EEE66BB8]();
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__67;
  v16 = __Block_byref_object_dispose__67;
  v17 = 0;
  v5 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AMSThreadSafeDictionary_objectForKey___block_invoke;
  v9[3] = &unk_1E73B2F60;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 read:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__AMSThreadSafeDictionary_objectForKey___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKey:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__67;
  v16 = __Block_byref_object_dispose__67;
  v17 = 0;
  v5 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AMSThreadSafeDictionary_objectForKeyedSubscript___block_invoke;
  v9[3] = &unk_1E73B2F60;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 read:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __51__AMSThreadSafeDictionary_objectForKeyedSubscript___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKeyedSubscript:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)readWrite:(id)a3
{
  v4 = a3;
  v5 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AMSThreadSafeDictionary_readWrite___block_invoke;
  v7[3] = &unk_1E73BCA88;
  v8 = v4;
  v6 = v4;
  [v5 readWrite:v7];
}

id __37__AMSThreadSafeDictionary_readWrite___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  v5 = [v4 mutableCopy];

  return v5;
}

- (void)removeAllObjects
{
  v2 = [(AMSThreadSafeDictionary *)self backingDictionary];
  [v2 readWrite:&__block_literal_global_140];
}

id __43__AMSThreadSafeDictionary_removeAllObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 removeAllObjects];

  return v2;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AMSThreadSafeDictionary_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E73BCAD0;
  v8 = v4;
  v6 = v4;
  [v5 readWrite:v7];
}

id __46__AMSThreadSafeDictionary_removeObjectForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeObjectForKey:*(a1 + 32)];

  return v3;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__AMSThreadSafeDictionary_setObject_forKey___block_invoke;
  v11[3] = &unk_1E73BCAF8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 readWrite:v11];
}

id __44__AMSThreadSafeDictionary_setObject_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

  return v3;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSThreadSafeDictionary *)self backingDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AMSThreadSafeDictionary_setObject_forKeyedSubscript___block_invoke;
  v11[3] = &unk_1E73BCAF8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 readWrite:v11];
}

id __55__AMSThreadSafeDictionary_setObject_forKeyedSubscript___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];

  return v3;
}

@end