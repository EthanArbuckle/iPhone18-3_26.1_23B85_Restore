@interface SCNOrderedDictionary
- (id)allKeys;
- (id)copy;
- (id)description;
- (id)objectAtIndex:(int64_t)index;
- (void)applyBlock:(id)block;
- (void)applyFunction:(void *)function withContext:(void *)context;
- (void)dealloc;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SCNOrderedDictionary

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNOrderedDictionary;
  [(SCNOrderedDictionary *)&v3 dealloc];
}

- (void)setObject:(id)object forKey:(id)key
{
  [(SCNOrderedDictionary *)self removeObjectForKey:key];
  if (object)
  {
    keys = self->_keys;
    if (!keys)
    {
      self->_keys = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_keyValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      keys = self->_keys;
    }

    [(NSMutableArray *)keys addObject:key];
    keyValues = self->_keyValues;

    [(NSMutableDictionary *)keyValues setObject:object forKey:key];
  }
}

- (id)objectAtIndex:(int64_t)index
{
  v4 = [(NSMutableArray *)self->_keys objectAtIndex:index];

  return [(SCNOrderedDictionary *)self objectForKey:v4];
}

- (void)removeObjectForKey:(id)key
{
  if ([(NSMutableDictionary *)self->_keyValues objectForKey:?])
  {
    if ([(NSMutableArray *)self->_keys count]== 1)
    {

      [(SCNOrderedDictionary *)self removeAllObjects];
    }

    else
    {
      [(NSMutableArray *)self->_keys removeObject:key];
      keyValues = self->_keyValues;

      [(NSMutableDictionary *)keyValues removeObjectForKey:key];
    }
  }
}

- (id)allKeys
{
  v2 = [(NSMutableArray *)self->_keys copy];

  return v2;
}

- (void)applyFunction:(void *)function withContext:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keys = self->_keys;
  v8 = [(NSMutableArray *)keys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(keys);
        }

        (function)(*(*(&v12 + 1) + 8 * i), [(NSMutableDictionary *)self->_keyValues objectForKey:*(*(&v12 + 1) + 8 * i)], context);
      }

      v9 = [(NSMutableArray *)keys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)applyBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keys = self->_keys;
  v6 = [(NSMutableArray *)keys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(keys);
        }

        (*(block + 2))(block, *(*(&v10 + 1) + 8 * i), [(NSMutableDictionary *)self->_keyValues objectForKey:*(*(&v10 + 1) + 8 * i)]);
      }

      v7 = [(NSMutableArray *)keys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  [v3 _setupFrom:self];
  return v3;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p\n{\n", NSStringFromClass(v4), self];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keys = self->_keys;
  v7 = [(NSMutableArray *)keys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(keys);
        }

        [v5 appendFormat:@"    %@ = %@\n", *(*(&v12 + 1) + 8 * i), -[NSMutableDictionary objectForKeyedSubscript:](self->_keyValues, "objectForKeyedSubscript:", *(*(&v12 + 1) + 8 * i))];
      }

      v8 = [(NSMutableArray *)keys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"}>"];
  return v5;
}

@end