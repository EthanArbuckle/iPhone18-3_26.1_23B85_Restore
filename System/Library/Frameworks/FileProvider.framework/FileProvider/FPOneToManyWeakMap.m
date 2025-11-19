@interface FPOneToManyWeakMap
- (FPOneToManyWeakMap)init;
- (id)anyObjectForKey:(id)a3;
- (id)removeObject:(id)a3;
- (void)addObject:(id)a3 forKey:(id)a4;
@end

@implementation FPOneToManyWeakMap

- (FPOneToManyWeakMap)init
{
  v6.receiver = self;
  v6.super_class = FPOneToManyWeakMap;
  v2 = [(FPOneToManyWeakMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;
  }

  return v2;
}

- (void)addObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    v7 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      [(NSMutableDictionary *)self->_backingDictionary setObject:v7 forKeyedSubscript:v6];
    }

    [v7 addObject:v8];
  }
}

- (id)removeObject:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(NSMutableDictionary *)self->_backingDictionary allKeys];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:v12];
        if ([v13 containsObject:v4])
        {
          [v5 addObject:v12];
          [v13 removeObject:v4];
        }

        v14 = [v13 anyObject];

        if (!v14)
        {
          [(NSMutableDictionary *)self->_backingDictionary setObject:0 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)anyObjectForKey:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:?];
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end