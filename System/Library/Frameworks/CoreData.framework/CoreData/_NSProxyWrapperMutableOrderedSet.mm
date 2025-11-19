@interface _NSProxyWrapperMutableOrderedSet
- (void)addObject:(id)a3;
- (void)addObjects:(const void *)a3 count:(unint64_t)a4;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)initWithContainer:(uint64_t)a3 key:(uint64_t)a4 mutableOrderedSet:(void *)a5 mutationMethods:;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(id *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)intersectOrderedSet:(id)a3;
- (void)intersectSet:(id)a3;
- (void)minusOrderedSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)removeObjectsInArray:(id)a3;
- (void)removeObjectsInRange:(_NSRange)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)sortRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5;
- (void)sortUsingComparator:(id)a3;
- (void)sortWithOptions:(unint64_t)a3 usingComparator:(id)a4;
- (void)unionOrderedSet:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation _NSProxyWrapperMutableOrderedSet

- (void)dealloc
{
  self->_mutationMethods = 0;
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 dealloc];
}

- (void)initWithContainer:(uint64_t)a3 key:(uint64_t)a4 mutableOrderedSet:(void *)a5 mutationMethods:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _NSProxyWrapperMutableOrderedSet;
  v6 = objc_msgSendSuper2(&v8, sel_initWithContainer_key_mutableOrderedSet_, a2, a3, a4);
  if (v6)
  {
    v6[4] = a5;
  }

  return v6;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v12 = a3;
  if ([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:?]&& [(NSMutableOrderedSet *)self->super._mutableOrderedSet _shouldProcessKVOChange])
  {
    v6 = 1;
    [(NSMutableOrderedSet *)self->super._mutableOrderedSet _setProcessingIdempotentKVO:1];
  }

  else
  {
    v6 = 0;
  }

  if (self->_mutationMethods->_insertObjectMethod)
  {
    container = self->super._container;
    method_invoke();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v12 count:1];
    v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a4];
    v10 = self->super._container;
    insertMethod = self->_mutationMethods->_insertMethod;
    method_invoke();

    if (!v6)
    {
      return;
    }
  }

  [(NSMutableOrderedSet *)self->super._mutableOrderedSet _setProcessingIdempotentKVO:0];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  if (self->_mutationMethods->_removeObjectMethod)
  {
    container = self->super._container;

    method_invoke();
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
    v5 = self->super._container;
    removeMethod = self->_mutationMethods->_removeMethod;
    method_invoke();
  }
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v13 = a4;
  if (([a4 isEqual:{-[NSMutableOrderedSet objectAtIndex:](self->super._mutableOrderedSet, "objectAtIndex:")}] & 1) == 0)
  {
    mutationMethods = self->_mutationMethods;
    if (mutationMethods->_replaceObjectMethod)
    {
      container = self->super._container;

      method_invoke();
    }

    else if (mutationMethods->_replaceMethod)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v13 count:1];
      v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
      v11 = self->super._container;
      replaceMethod = self->_mutationMethods->_replaceMethod;
      method_invoke();
    }

    else
    {
      [(_NSProxyWrapperMutableOrderedSet *)self removeObjectAtIndex:a3];

      [(_NSProxyWrapperMutableOrderedSet *)self insertObject:a4 atIndex:a3];
    }
  }
}

- (void)addObject:(id)a3
{
  v9 = a3;
  if (([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:?]& 1) == 0)
  {
    if (self->_mutationMethods->_insertObjectMethod)
    {
      container = self->super._container;
      [(NSMutableOrderedSet *)self->super._mutableOrderedSet count];

      method_invoke();
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v9 count:1];
      v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{-[NSMutableOrderedSet count](self->super._mutableOrderedSet, "count")}];
      v7 = self->super._container;
      insertMethod = self->_mutationMethods->_insertMethod;
      method_invoke();
    }
  }
}

- (void)addObjects:(const void *)a3 count:(unint64_t)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](self);
  v9 = v25 - v8;
  if (v10 >= 0x201)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v25 - v8, 8 * v7);
    if (!a4)
    {
      goto LABEL_16;
    }
  }

  v11 = 0;
  v12 = a4;
  do
  {
    v13 = *a3;
    if (([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:*a3]& 1) == 0)
    {
      *&v9[8 * v11++] = v13;
    }

    ++a3;
    --v12;
  }

  while (v12);
  if (v11)
  {
    if (self->_mutationMethods->_insertMethod)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v9 count:v11];
      v15 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{-[NSMutableOrderedSet count](self->super._mutableOrderedSet, "count"), v11}];
      container = self->super._container;
      insertMethod = self->_mutationMethods->_insertMethod;
      method_invoke();
    }

    else
    {
      v18 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet count];
      v19 = v9;
      do
      {
        v20 = self->super._container;
        insertObjectMethod = self->_mutationMethods->_insertObjectMethod;
        v22 = *v19;
        v19 += 8;
        v23 = v18 + 1;
        method_invoke();
        v18 = v23;
        --v11;
      }

      while (v11);
    }
  }

  if (a4 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

LABEL_16:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromArray:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v11 - v8;
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v11 - v8, 8 * v7);
    }

    [a3 getObjects:v9 range:{0, v6}];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)insertObjects:(id *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    if (self->_mutationMethods->_insertMethod)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];
      v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a5, v6}];
      container = self->super._container;
      insertMethod = self->_mutationMethods->_insertMethod;
      method_invoke();
    }

    else
    {
      do
      {
        v12 = self->super._container;
        insertObjectMethod = self->_mutationMethods->_insertObjectMethod;
        v14 = *v7++;
        method_invoke();
        ++a5;
        --v6;
      }

      while (v6);
    }
  }
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
LABEL_24:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!self->_mutationMethods->_insertMethod)
  {
    v9 = [a3 count];
    v10 = v9;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x201)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = &v25 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = &v25;
    if (v9 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v25 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v11);
    }

    [a4 getIndexes:v13 maxCount:v10 inIndexRange:{0, v10, v26}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v28;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(a3);
          }

          v20 = *(*(&v27 + 1) + 8 * v18);
          container = self->super._container;
          insertObjectMethod = self->_mutationMethods->_insertObjectMethod;
          v16 = v19 + 1;
          v23 = *&v13[8 * v19];
          method_invoke();
          ++v18;
          ++v19;
        }

        while (v15 != v18);
        v15 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    if (v25 >= 0x201)
    {
      NSZoneFree(0, v13);
    }

    goto LABEL_24;
  }

  v7 = self->super._container;
  v8 = *MEMORY[0x1E69E9840];

  method_invoke();
}

- (void)removeObjectsInRange:(_NSRange)a3
{
  if (a3.length)
  {
    location = a3.location;
    if (self->_mutationMethods->_removeMethod)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a3.location, a3.length}];
      container = self->super._container;
      removeMethod = self->_mutationMethods->_removeMethod;
      method_invoke();
    }

    else
    {
      v7 = a3.location + a3.length;
      if (a3.location + a3.length > a3.location)
      {
        do
        {
          --v7;
          v8 = self->super._container;
          removeObjectMethod = self->_mutationMethods->_removeObjectMethod;
          method_invoke();
        }

        while (v7 > location);
      }
    }
  }
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    goto LABEL_19;
  }

  if (!self->_mutationMethods->_removeMethod)
  {
    v7 = [a3 count];
    v8 = v7;
    v9 = v7 - 1;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    if (v7 >= 0x201)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7 >= 0x201)
    {
      v12 = NSAllocateScannedUncollectable();
      [a3 getIndexes:v12 maxCount:v8 inIndexRange:0];
    }

    else
    {
      bzero(v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
      [a3 getIndexes:v12 maxCount:v8 inIndexRange:0];
      if (!v8)
      {
LABEL_19:
        v16 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    do
    {
      container = self->super._container;
      removeObjectMethod = self->_mutationMethods->_removeObjectMethod;
      v15 = *&v12[8 * v9];
      method_invoke();
      --v9;
    }

    while (v9 != -1);
    if (v8 >= 0x201)
    {
      NSZoneFree(0, v12);
    }

    goto LABEL_19;
  }

  v5 = self->super._container;
  v6 = *MEMORY[0x1E69E9840];

  method_invoke();
}

- (void)removeAllObjects
{
  v3 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet count];
  if (v3)
  {
    if (self->_mutationMethods->_removeMethod)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v3}];
      container = self->super._container;
      removeMethod = self->_mutationMethods->_removeMethod;
      method_invoke();
    }

    else
    {
      v6 = v3 - 1;
      do
      {
        v7 = self->super._container;
        removeObjectMethod = self->_mutationMethods->_removeObjectMethod;
        method_invoke();
        --v6;
      }

      while (v6 != -1);
    }
  }
}

- (void)removeObjectsInArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)intersectOrderedSet:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    mutableOrderedSet = self->super._mutableOrderedSet;
    v7 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mutableOrderedSet);
          }

          if ([a3 indexOfObject:*(*(&v13 + 1) + 8 * i)] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v9];
          }

          ++v9;
        }

        v8 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)minusOrderedSet:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unionOrderedSet:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    if (v5 >= 0x201)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = v11 - v8;
    if (v5 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v11 - v8, 8 * v5);
    }

    [a3 getObjects:v9];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    mutableOrderedSet = self->super._mutableOrderedSet;
    v7 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mutableOrderedSet);
          }

          if (([a3 containsObject:*(*(&v13 + 1) + 8 * i)] & 1) == 0)
          {
            [v5 addIndex:v9];
          }

          ++v9;
        }

        v8 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)minusSet:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    mutableOrderedSet = self->super._mutableOrderedSet;
    v7 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mutableOrderedSet);
          }

          if ([a3 containsObject:*(*(&v13 + 1) + 8 * i)])
          {
            [v5 addIndex:v9];
          }

          ++v9;
        }

        v8 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)unionSet:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    if (v5 >= 0x201)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = v11 - v8;
    if (v5 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v11 - v8, 8 * v5);
    }

    [a3 getObjects:v9];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sortUsingComparator:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 sortUsingComparator:a3];
}

- (void)sortWithOptions:(unint64_t)a3 usingComparator:(id)a4
{
  v4.receiver = self;
  v4.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 sortWithOptions:a3 usingComparator:a4];
}

- (void)sortRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5
{
  v5.receiver = self;
  v5.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v5 sortRange:a3.location options:a3.length usingComparator:a4, a5];
}

@end