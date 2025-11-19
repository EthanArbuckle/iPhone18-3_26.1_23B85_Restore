@interface HMMutableArray
+ (HMMutableArray)arrayWithArray:(id)a3;
+ (id)array;
- (BOOL)addObjectIfNotPresent:(id)a3;
- (BOOL)containsObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMMutableArray)initWithArray:(id)a3;
- (NSArray)array;
- (id)filteredArrayUsingPredicate:(id)a3;
- (id)firstItemWithValue:(id)a3 forKey:(id)a4;
- (id)itemsWithValue:(id)a3 forKey:(id)a4;
- (unint64_t)count;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)removeObjectsInArray:(id)a3;
- (void)replaceObject:(id)a3;
- (void)setArray:(id)a3;
- (void)setIfDifferent:(id)a3;
@end

@implementation HMMutableArray

- (NSArray)array
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableArray *)self internal];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

+ (id)array
{
  v2 = [HMMutableArray alloc];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HMMutableArray *)v2 initWithArray:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMMutableArray *)self array];
      v7 = [(HMMutableArray *)v5 array];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMMutableArray *)self internal];
  v6 = [v5 containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)addObjectsFromArray:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (v5)
  {
    v4 = [(HMMutableArray *)self internal];
    [v4 addObjectsFromArray:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIfDifferent:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x1E695DFD8];
  v5 = [(HMMutableArray *)self internal];
  v6 = [v4 setWithArray:v5];

  if (([v6 isEqualToSet:v9] & 1) == 0)
  {
    v7 = [(HMMutableArray *)self internal];
    v8 = [v9 allObjects];
    [v7 setArray:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setArray:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMMutableArray *)self internal];
  if (v5)
  {
    [v4 setArray:v5];
  }

  else
  {
    [v4 removeAllObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)firstItemWithValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(HMMutableArray *)self internal];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 valueForKeyPath:v7];
        v14 = [v13 isEqual:v6];

        if (v14)
        {
          v15 = v12;

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:
  os_unfair_lock_unlock(&self->_lock);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)itemsWithValue:(id)a3 forKey:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v18 = self;
  v8 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(HMMutableArray *)self internal];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 valueForKeyPath:v7];
        v15 = [v14 isEqual:v6];

        if (v15)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&v18->_lock);
  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)filteredArrayUsingPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMMutableArray *)self internal];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableArray *)self internal];
  v4 = [v3 count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)addObjectIfNotPresent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMMutableArray *)self internal];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(HMMutableArray *)self internal];
    [v7 addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6 ^ 1;
}

- (void)addObject:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMMutableArray *)self internal];
  [v4 addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableArray *)self internal];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMMutableArray *)self internal];
  [v4 removeObjectsAtIndexes:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectsInArray:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMMutableArray *)self internal];
  [v4 removeObjectsInArray:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObject:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMMutableArray *)self internal];
  [v4 removeObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)replaceObject:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMMutableArray *)self internal];
  [v4 removeObject:v6];

  v5 = [(HMMutableArray *)self internal];
  [v5 addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMutableArray)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMMutableArray;
  v5 = [(HMMutableArray *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] array];
    }

    internal = v5->_internal;
    v5->_internal = v6;
  }

  return v5;
}

+ (HMMutableArray)arrayWithArray:(id)a3
{
  v3 = a3;
  v4 = [[HMMutableArray alloc] initWithArray:v3];

  return v4;
}

@end