@interface HKMultimap
+ (id)multimapWithStrongObjects;
+ (id)multimapWithWeakObjects;
- (BOOL)isEqual:(id)equal;
- (HKMultimap)initWithType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectsForKey:(id)key;
- (unint64_t)count;
- (void)removeObject:(id)object;
- (void)removeObject:(id)object forKey:(id)key;
- (void)removeObjectsForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation HKMultimap

- (HKMultimap)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = HKMultimap;
  v4 = [(HKMultimap *)&v8 init];
  if (v4)
  {
    if (type == 1)
    {
      [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    }

    else
    {
      [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    }
    v5 = ;
    table = v4->_table;
    v4->_table = v5;
  }

  return v4;
}

+ (id)multimapWithWeakObjects
{
  v2 = [[self alloc] initWithType:1];

  return v2;
}

+ (id)multimapWithStrongObjects
{
  v2 = [[self alloc] initWithType:0];

  return v2;
}

- (unint64_t)count
{
  objectEnumerator = [(NSMapTable *)self->_table objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v4 = [allObjects count];

  return v4;
}

- (void)removeObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyEnumerator = [(NSMapTable *)self->_table keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([(_HKMappingKey *)v12 objectMatches:objectCopy])
        {
          [(NSMapTable *)self->_table removeObjectForKey:v12, v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyEnumerator = [(NSMapTable *)self->_table keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12 && [*(v12 + 16) isEqual:{keyCopy, v14}])
        {
          [(NSMapTable *)self->_table removeObjectForKey:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)objectsForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keyEnumerator = [(NSMapTable *)self->_table keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v11 && [*(v11 + 16) isEqual:keyCopy])
        {
          v12 = [(NSMapTable *)self->_table objectForKey:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      v6 = [(NSMapTable *)self->_table isEqual:equalCopy->_table];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [[HKMultimap alloc] initWithType:0];
  v6 = [(NSMapTable *)self->_table copyWithZone:zone];
  table = v5->_table;
  v5->_table = v6;

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [[_HKMappingKey alloc] initWithObject:objectCopy andKey:keyCopy];

  [(NSMapTable *)self->_table setObject:objectCopy forKey:v8];
}

- (void)removeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [[_HKMappingKey alloc] initWithObject:objectCopy andKey:keyCopy];

  [(NSMapTable *)self->_table removeObjectForKey:v8];
}

@end