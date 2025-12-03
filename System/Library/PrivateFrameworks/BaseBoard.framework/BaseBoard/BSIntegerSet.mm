@interface BSIntegerSet
- (BOOL)isEqual:(id)equal;
- (BSIntegerSet)initWithCapacity:(unint64_t)capacity;
- (_BYTE)_initWithHashTable:(char)table hasZeroValue:;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)enumerateIndexesUsingBlock:(id)block;
- (void)enumerateRangesUsingBlock:(id)block;
- (void)enumerateSortedWithBlock:(id)block;
- (void)enumerateWithBlock:(id)block;
@end

@implementation BSIntegerSet

- (BSIntegerSet)initWithCapacity:(unint64_t)capacity
{
  v4 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:1282 capacity:capacity];
  v5 = [(BSIntegerSet *)self _initWithHashTable:v4 hasZeroValue:0];

  return v5;
}

- (_BYTE)_initWithHashTable:(char)table hasZeroValue:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = BSIntegerSet;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      self[16] = table;
    }
  }

  return self;
}

- (void)enumerateWithBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSIntegerSet.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v15 = 0;
  if (!self->_hasZeroValue || (blockCopy[2](blockCopy, 0, &v15), (v15 & 1) == 0))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    objectEnumerator = [(NSHashTable *)self->_hashTable objectEnumerator];
    v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }
  }
}

- (void)enumerateSortedWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(BSIntegerSet *)self count];
  v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__BSIntegerSet_enumerateSortedWithBlock___block_invoke;
  v12[3] = &unk_1E72CC2E0;
  v12[4] = v13;
  v12[5] = v6;
  [(BSIntegerSet *)self enumerateWithBlock:v12];
  qsort_b(v6, v5, 8uLL, &__block_literal_global_38);
  v11 = 0;
  v7 = v5 - 1;
  if (v5 >= 1)
  {
    v8 = v6;
    do
    {
      v9 = v7;
      v10 = *v8++;
      blockCopy[2](blockCopy, v10, &v11);
      if (v11)
      {
        break;
      }

      v7 = v9 - 1;
    }

    while (v9);
  }

  free(v6);
  _Block_object_dispose(v13, 8);
}

uint64_t __41__BSIntegerSet_enumerateSortedWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_hasZeroValue == v5->_hasZeroValue)
      {
        v6 = [(NSHashTable *)self->_hashTable isEqual:v5->_hashTable];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [BSMutableIntegerSet allocWithZone:?];
  v6 = [(NSHashTable *)self->_hashTable copyWithZone:zone];
  v7 = [(BSIntegerSet *)v5 _initWithHashTable:v6 hasZeroValue:self->_hasZeroValue];

  return v7;
}

- (void)enumerateIndexesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__BSIntegerSet_NSIndexSetCompatibility__enumerateIndexesUsingBlock___block_invoke;
  v6[3] = &unk_1E72CC328;
  v7 = blockCopy;
  v5 = blockCopy;
  [(BSIntegerSet *)self enumerateWithBlock:v6];
}

- (void)enumerateRangesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__BSIntegerSet_NSIndexSetCompatibility__enumerateRangesUsingBlock___block_invoke;
  v6[3] = &unk_1E72CC328;
  v7 = blockCopy;
  v5 = blockCopy;
  [(BSIntegerSet *)self enumerateWithBlock:v6];
}

@end