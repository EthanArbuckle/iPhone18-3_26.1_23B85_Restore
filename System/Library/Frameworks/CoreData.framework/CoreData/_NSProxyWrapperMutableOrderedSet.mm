@interface _NSProxyWrapperMutableOrderedSet
- (void)addObject:(id)object;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)initWithContainer:(uint64_t)container key:(uint64_t)key mutableOrderedSet:(void *)set mutationMethods:;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)intersectOrderedSet:(id)set;
- (void)intersectSet:(id)set;
- (void)minusOrderedSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)sortUsingComparator:(id)comparator;
- (void)sortWithOptions:(unint64_t)options usingComparator:(id)comparator;
- (void)unionOrderedSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation _NSProxyWrapperMutableOrderedSet

- (void)dealloc
{
  self->_mutationMethods = 0;
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 dealloc];
}

- (void)initWithContainer:(uint64_t)container key:(uint64_t)key mutableOrderedSet:(void *)set mutationMethods:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = _NSProxyWrapperMutableOrderedSet;
  v6 = objc_msgSendSuper2(&v8, sel_initWithContainer_key_mutableOrderedSet_, a2, container, key);
  if (v6)
  {
    v6[4] = set;
  }

  return v6;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
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
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
    v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
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

- (void)removeObjectAtIndex:(unint64_t)index
{
  if (self->_mutationMethods->_removeObjectMethod)
  {
    container = self->super._container;

    method_invoke();
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
    v5 = self->super._container;
    removeMethod = self->_mutationMethods->_removeMethod;
    method_invoke();
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  if (([object isEqual:{-[NSMutableOrderedSet objectAtIndex:](self->super._mutableOrderedSet, "objectAtIndex:")}] & 1) == 0)
  {
    mutationMethods = self->_mutationMethods;
    if (mutationMethods->_replaceObjectMethod)
    {
      container = self->super._container;

      method_invoke();
    }

    else if (mutationMethods->_replaceMethod)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
      v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
      v11 = self->super._container;
      replaceMethod = self->_mutationMethods->_replaceMethod;
      method_invoke();
    }

    else
    {
      [(_NSProxyWrapperMutableOrderedSet *)self removeObjectAtIndex:index];

      [(_NSProxyWrapperMutableOrderedSet *)self insertObject:object atIndex:index];
    }
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
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
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
      v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{-[NSMutableOrderedSet count](self->super._mutableOrderedSet, "count")}];
      v7 = self->super._container;
      insertMethod = self->_mutationMethods->_insertMethod;
      method_invoke();
    }
  }
}

- (void)addObjects:(const void *)objects count:(unint64_t)count
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
    if (!count)
    {
      goto LABEL_16;
    }
  }

  v11 = 0;
  countCopy = count;
  do
  {
    v13 = *objects;
    if (([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:*objects]& 1) == 0)
    {
      *&v9[8 * v11++] = v13;
    }

    ++objects;
    --countCopy;
  }

  while (countCopy);
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

  if (count >= 0x201)
  {
    NSZoneFree(0, v9);
  }

LABEL_16:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromArray:(id)array
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [array count];
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

    [array getObjects:v9 range:{0, v6}];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)insertObjects:(id *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  if (count)
  {
    countCopy = count;
    objectsCopy = objects;
    if (self->_mutationMethods->_insertMethod)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:objects count:count];
      v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{index, countCopy}];
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
        v14 = *objectsCopy++;
        method_invoke();
        ++index;
        --countCopy;
      }

      while (countCopy);
    }
  }
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  v32 = *MEMORY[0x1E69E9840];
  if (![objects count])
  {
LABEL_24:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!self->_mutationMethods->_insertMethod)
  {
    v9 = [objects count];
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

    [indexes getIndexes:v13 maxCount:v10 inIndexRange:{0, v10, v26}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [objects countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(objects);
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
        v15 = [objects countByEnumeratingWithState:&v27 objects:v31 count:16];
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

- (void)removeObjectsInRange:(_NSRange)range
{
  if (range.length)
  {
    location = range.location;
    if (self->_mutationMethods->_removeMethod)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{range.location, range.length}];
      container = self->super._container;
      removeMethod = self->_mutationMethods->_removeMethod;
      method_invoke();
    }

    else
    {
      v7 = range.location + range.length;
      if (range.location + range.length > range.location)
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

- (void)removeObjectsAtIndexes:(id)indexes
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (![indexes count])
  {
    goto LABEL_19;
  }

  if (!self->_mutationMethods->_removeMethod)
  {
    v7 = [indexes count];
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
      [indexes getIndexes:v12 maxCount:v8 inIndexRange:0];
    }

    else
    {
      bzero(v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
      [indexes getIndexes:v12 maxCount:v8 inIndexRange:0];
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

- (void)removeObjectsInArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  if ([array count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(array);
          }

          v10 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)intersectOrderedSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  if ([set count])
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

          if ([set indexOfObject:*(*(&v13 + 1) + 8 * i)] == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)minusOrderedSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  if ([set count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [set countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(set);
          }

          v10 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [set countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unionOrderedSet:(id)set
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [set count];
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

    [set getObjects:v9];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  if ([set count])
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

          if (([set containsObject:*(*(&v13 + 1) + 8 * i)] & 1) == 0)
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

- (void)minusSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  if ([set count])
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

          if ([set containsObject:*(*(&v13 + 1) + 8 * i)])
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

- (void)unionSet:(id)set
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [set count];
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

    [set getObjects:v9];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sortUsingComparator:(id)comparator
{
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 sortUsingComparator:comparator];
}

- (void)sortWithOptions:(unint64_t)options usingComparator:(id)comparator
{
  v4.receiver = self;
  v4.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 sortWithOptions:options usingComparator:comparator];
}

- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v5.receiver = self;
  v5.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v5 sortRange:range.location options:range.length usingComparator:options, comparator];
}

@end