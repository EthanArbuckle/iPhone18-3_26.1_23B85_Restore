@interface FPOneToManyWeakMap
- (FPOneToManyWeakMap)init;
- (id)anyObjectForKey:(id)key;
- (id)removeObject:(id)object;
- (void)addObject:(id)object forKey:(id)key;
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

- (void)addObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy && keyCopy)
  {
    weakObjectsHashTable = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:keyCopy];
    if (!weakObjectsHashTable)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      [(NSMutableDictionary *)self->_backingDictionary setObject:weakObjectsHashTable forKeyedSubscript:keyCopy];
    }

    [weakObjectsHashTable addObject:objectCopy];
  }
}

- (id)removeObject:(id)object
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_backingDictionary allKeys];
  v7 = [allKeys copy];

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
        if ([v13 containsObject:objectCopy])
        {
          [v5 addObject:v12];
          [v13 removeObject:objectCopy];
        }

        anyObject = [v13 anyObject];

        if (!anyObject)
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

- (id)anyObjectForKey:(id)key
{
  if (key)
  {
    v3 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:?];
    anyObject = [v3 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

@end