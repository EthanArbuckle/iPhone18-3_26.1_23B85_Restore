@interface HMMutableArray
+ (HMMutableArray)arrayWithArray:(id)array;
+ (id)array;
- (BOOL)addObjectIfNotPresent:(id)present;
- (BOOL)containsObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (HMMutableArray)initWithArray:(id)array;
- (NSArray)array;
- (id)filteredArrayUsingPredicate:(id)predicate;
- (id)firstItemWithValue:(id)value forKey:(id)key;
- (id)itemsWithValue:(id)value forKey:(id)key;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)removeObjectsInArray:(id)array;
- (void)replaceObject:(id)object;
- (void)setArray:(id)array;
- (void)setIfDifferent:(id)different;
@end

@implementation HMMutableArray

- (NSArray)array
{
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  v4 = [internal copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

+ (id)array
{
  v2 = [HMMutableArray alloc];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(HMMutableArray *)v2 initWithArray:array];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      array = [(HMMutableArray *)self array];
      array2 = [(HMMutableArray *)v5 array];

      v8 = [array isEqual:array2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  v6 = [internal containsObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  os_unfair_lock_lock_with_options();
  if (arrayCopy)
  {
    internal = [(HMMutableArray *)self internal];
    [internal addObjectsFromArray:arrayCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIfDifferent:(id)different
{
  differentCopy = different;
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x1E695DFD8];
  internal = [(HMMutableArray *)self internal];
  v6 = [v4 setWithArray:internal];

  if (([v6 isEqualToSet:differentCopy] & 1) == 0)
  {
    internal2 = [(HMMutableArray *)self internal];
    allObjects = [differentCopy allObjects];
    [internal2 setArray:allObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setArray:(id)array
{
  arrayCopy = array;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  if (arrayCopy)
  {
    [internal setArray:arrayCopy];
  }

  else
  {
    [internal removeAllObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)firstItemWithValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  internal = [(HMMutableArray *)self internal];
  v9 = [internal countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(internal);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 valueForKeyPath:keyCopy];
        v14 = [v13 isEqual:valueCopy];

        if (v14)
        {
          v15 = v12;

          goto LABEL_11;
        }
      }

      v9 = [internal countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)itemsWithValue:(id)value forKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  internal = [(HMMutableArray *)self internal];
  v10 = [internal countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(internal);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 valueForKeyPath:keyCopy];
        v15 = [v14 isEqual:valueCopy];

        if (v15)
        {
          [array addObject:v13];
        }
      }

      v10 = [internal countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)filteredArrayUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  v6 = [internal filteredArrayUsingPredicate:predicateCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  v4 = [internal count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)addObjectIfNotPresent:(id)present
{
  presentCopy = present;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  v6 = [internal containsObject:presentCopy];

  if ((v6 & 1) == 0)
  {
    internal2 = [(HMMutableArray *)self internal];
    [internal2 addObject:presentCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6 ^ 1;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  [internal addObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  [internal removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  [internal removeObjectsAtIndexes:indexesCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectsInArray:(id)array
{
  arrayCopy = array;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  [internal removeObjectsInArray:arrayCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  [internal removeObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)replaceObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  internal = [(HMMutableArray *)self internal];
  [internal removeObject:objectCopy];

  internal2 = [(HMMutableArray *)self internal];
  [internal2 addObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMutableArray)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = HMMutableArray;
  v5 = [(HMMutableArray *)&v9 init];
  if (v5)
  {
    if (arrayCopy)
    {
      array = [arrayCopy mutableCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    internal = v5->_internal;
    v5->_internal = array;
  }

  return v5;
}

+ (HMMutableArray)arrayWithArray:(id)array
{
  arrayCopy = array;
  v4 = [[HMMutableArray alloc] initWithArray:arrayCopy];

  return v4;
}

@end