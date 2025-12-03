@interface _NSNotifyingWrapperMutableOrderedSet
- (_NSNotifyingWrapperMutableOrderedSet)initWithContainer:(id)container key:(id)key mutableOrderedSet:(id)set;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addObject:(id)object;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)exchangeObjectAtIndex:(unint64_t)index withObjectAtIndex:(unint64_t)atIndex;
- (void)getObjects:(id *)objects;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)intersectOrderedSet:(id)set;
- (void)intersectSet:(id)set;
- (void)minusOrderedSet:(id)set;
- (void)minusSet:(id)set;
- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count;
- (void)setObject:(id)object atIndex:(unint64_t)index;
- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)unionOrderedSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation _NSNotifyingWrapperMutableOrderedSet

- (void)dealloc
{
  self->_container = 0;

  self->_key = 0;
  self->_mutableOrderedSet = 0;
  v3.receiver = self;
  v3.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 dealloc];
}

- (_NSNotifyingWrapperMutableOrderedSet)initWithContainer:(id)container key:(id)key mutableOrderedSet:(id)set
{
  v10.receiver = self;
  v10.super_class = _NSNotifyingWrapperMutableOrderedSet;
  v8 = [(_NSNotifyingWrapperMutableOrderedSet *)&v10 init];
  if (v8)
  {
    v8->_container = container;
    v8->_key = [key copy];
    v8->_mutableOrderedSet = set;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DFB8]);
  mutableOrderedSet = self->_mutableOrderedSet;

  return [v4 initWithOrderedSet:mutableOrderedSet copyItems:0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DFA0]);
  mutableOrderedSet = self->_mutableOrderedSet;

  return [v4 initWithOrderedSet:mutableOrderedSet copyItems:0];
}

- (id)allObjects
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableOrderedSet *)self->_mutableOrderedSet count];
  v4 = MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  if (v4 > 0x200)
  {
    v7 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v11 - v6, 8 * v5);
  }

  [(NSMutableOrderedSet *)self->_mutableOrderedSet getObjects:v7 range:0, v3];
  v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v3];
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  result = v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)objects
{
  mutableOrderedSet = self->_mutableOrderedSet;
  v5 = [(NSMutableOrderedSet *)mutableOrderedSet count];

  [(NSMutableOrderedSet *)mutableOrderedSet getObjects:objects range:0, v5];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableOrderedSet *)self->_mutableOrderedSet description];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)descriptionWithLocale:(id)locale
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableOrderedSet *)self->_mutableOrderedSet descriptionWithLocale:locale];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(NSMutableOrderedSet *)self->_mutableOrderedSet descriptionWithLocale:locale indent:indent];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:?]&& [(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange])
  {
    v7 = 1;
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
  [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v8 forKey:self->_key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObject:object atIndex:index];
  [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v8 forKey:self->_key];

  if (v7)
  {
    mutableOrderedSet = self->_mutableOrderedSet;

    [(NSMutableOrderedSet *)mutableOrderedSet _setProcessingIdempotentKVO:0];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
  [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectAtIndex:index];
  [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  if (([object isEqual:{-[NSMutableOrderedSet objectAtIndex:](self->_mutableOrderedSet, "objectAtIndex:")}] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
    [(NSManagedObject *)self->_container willChange:4 valuesAtIndexes:v7 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet replaceObjectAtIndex:index withObject:object];
    [(NSManagedObject *)self->_container didChange:4 valuesAtIndexes:v7 forKey:self->_key];
  }
}

- (void)addObject:(id)object
{
  if (([(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:?]& 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{-[NSMutableOrderedSet count](self->_mutableOrderedSet, "count")}];
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v5 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObject:object atIndex:[(NSMutableOrderedSet *)self->_mutableOrderedSet count]];
    [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v5 forKey:self->_key];
  }
}

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v16[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](self);
  v9 = v16 - v8;
  if (v10 >= 0x201)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v16 - v8, 8 * v7);
    if (!count)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
  countCopy = count;
  do
  {
    v13 = *objects;
    if (([(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:*objects]& 1) == 0)
    {
      *&v9[8 * v11++] = v13;
    }

    ++objects;
    --countCopy;
  }

  while (countCopy);
  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{-[NSMutableOrderedSet count](self->_mutableOrderedSet, "count"), v11}];
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v14 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet addObjects:v9 count:v11];
    [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v14 forKey:self->_key];
  }

  if (count >= 0x201)
  {
    NSZoneFree(0, v9);
  }

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
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
    [(_NSNotifyingWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)exchangeObjectAtIndex:(unint64_t)index withObjectAtIndex:(unint64_t)atIndex
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange])
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 exchangeObjectAtIndex:index withObjectAtIndex:atIndex];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 exchangeObjectAtIndex:index withObjectAtIndex:atIndex];
  }
}

- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange])
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 moveObjectsAtIndexes:indexes toIndex:index];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 moveObjectsAtIndexes:indexes toIndex:index];
  }
}

- (void)insertObjects:(id *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  if (count)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{index, count}];
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v9 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObjects:objects count:count atIndex:index];
    [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v9 forKey:self->_key];
  }
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  if ([objects count])
  {
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:indexes forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObjects:objects atIndexes:indexes];
    container = self->_container;
    key = self->_key;

    [(NSManagedObject *)container didChange:2 valuesAtIndexes:indexes forKey:key];
  }
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 setObject:object atIndex:index];
}

- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count
{
  length = range.length;
  location = range.location;
  v57 = *MEMORY[0x1E69E9840];
  _shouldProcessKVOChange = [(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange];
  if (_shouldProcessKVOChange)
  {
    v11 = length == count;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0uLL;
  v28 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  MEMORY[0x1EEE9AC00](_shouldProcessKVOChange);
  v14 = (v23 - v13);
  if (count > 0x200)
  {
    v14 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v23 - v13, 8 * v12);
  }

  [(NSMutableOrderedSet *)self->_mutableOrderedSet getObjects:v14 range:location, length];
  v15 = _PFStackAllocatorCreate(&v25, 1024);
  v16 = CFSetCreate(v15, v14, count, 0);
  v17 = v16;
  v23[1] = v23;
  if (count)
  {
    if (CFSetContainsValue(v16, *objects))
    {
      v18 = 1;
      do
      {
        v19 = v18;
        if (count == v18)
        {
          break;
        }

        v20 = CFSetContainsValue(v17, objects[v18]);
        v18 = v19 + 1;
      }

      while (v20);
      v21 = v19 < count;
    }

    else
    {
      v21 = 1;
    }

    if (count >= 0x201)
    {
      NSZoneFree(0, v14);
    }
  }

  else
  {
    v21 = 0;
  }

  if (*(&v26 + 1))
  {
    if (v17)
    {
      CFRelease(v17);
    }

    if (v21)
    {
      goto LABEL_23;
    }

LABEL_25:
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
    v24.receiver = self;
    v24.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v24 replaceObjectsInRange:location withObjects:length count:objects, count];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
    goto LABEL_26;
  }

  *(&v25 + 1) = v25;
  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_23:
  v24.receiver = self;
  v24.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v24 replaceObjectsInRange:location withObjects:length count:objects, count];
LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  v4.receiver = self;
  v4.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 replaceObjectsAtIndexes:indexes withObjects:objects];
}

- (void)removeObjectsInRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{range.location, range.length}];
    [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v6 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsInRange:location, length];
    [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v6 forKey:self->_key];
  }
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  if ([indexes count])
  {
    [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:indexes forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:indexes];
    container = self->_container;
    key = self->_key;

    [(NSManagedObject *)container didChange:3 valuesAtIndexes:indexes forKey:key];
  }
}

- (void)removeAllObjects
{
  v3 = [(NSMutableOrderedSet *)self->_mutableOrderedSet count];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v3}];
    [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v4 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet removeAllObjects];
    [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v4 forKey:self->_key];
  }
}

- (void)removeObject:(id)object
{
  v3.receiver = self;
  v3.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 removeObject:object];
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

          v10 = [(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
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
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
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
    mutableOrderedSet = self->_mutableOrderedSet;
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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

          v10 = [(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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
    [(_NSNotifyingWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
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
    mutableOrderedSet = self->_mutableOrderedSet;
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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
    mutableOrderedSet = self->_mutableOrderedSet;
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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
    [(_NSNotifyingWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  v9 = [(NSManagedObject *)self->_container hasFaultForRelationshipNamed:self->_key];
  optionsCopy = options;
  comparatorCopy = comparator;
  if (v9)
  {
    v10 = objc_alloc_init(NSFetchRequest);
    [(NSFetchRequest *)v10 setEntity:[(NSManagedObject *)self->_container entity]];
    -[NSFetchRequest setRelationshipKeyPathsForPrefetching:](v10, "setRelationshipKeyPathsForPrefetching:", [MEMORY[0x1E695DEC8] arrayWithObject:self->_key]);
    -[NSFetchRequest setPredicate:](v10, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self == %@", -[NSManagedObject objectID](self->_container, "objectID")]);
    [(NSFetchRequest *)v10 setReturnsObjectsAsFaults:0];
    [(NSFetchRequest *)v10 setIncludesPendingChanges:0];
    if (!v10)
    {
      goto LABEL_34;
    }

LABEL_33:
    [(NSManagedObjectContext *)[(NSManagedObject *)self->_container managedObjectContext] executeFetchRequest:v10 error:0];
    goto LABEL_34;
  }

  v11 = [(NSManagedObject *)self->_container valueForKey:self->_key];
  v12 = [v11 count];
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = v12;
  }

  if (v12)
  {
    v13 = v12;
    v27[1] = v27;
    v14 = v12 >= 0x201 ? 1 : v12;
    v15 = (8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0;
    v16 = v27 - v15;
    if (v12 > 0x200)
    {
      v16 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v27 - v15, 8 * v12);
    }

    [v11 getObjects:v16];
    if (location >= v13 + location)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 8 * location;
      v19 = v13;
      do
      {
        v20 = *&v16[v18];
        v21 = (v20[4] >> 15) & 7;
        if (v21)
        {
          v22 = v21 == 5;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          objectID = [v20 objectID];
          isTemporaryID = [objectID isTemporaryID];
          if ((isTemporaryID & 1) == 0)
          {
            *&v16[8 * v17++] = objectID;
          }
        }

        v18 += 8;
        --v19;
      }

      while (v19);
      if (v17)
      {
        v17 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v16 count:v17];
      }
    }

    if (v13 >= 0x201)
    {
      NSZoneFree(0, v16);
    }

    if ([v17 count])
    {
      v10 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v10, "setEntity:", [-[NSDictionary objectForKey:](-[NSEntityDescription relationshipsByName](-[NSManagedObject entity](self->_container "entity")]);
      -[NSFetchRequest setPredicate:](v10, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v17]);
      [(NSFetchRequest *)v10 setReturnsObjectsAsFaults:0];
      [(NSFetchRequest *)v10 setIncludesPendingChanges:0];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  _shouldProcessKVOChange = [(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange];
  if (_shouldProcessKVOChange)
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
  }

  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [(NSMutableOrderedSet *)self->_mutableOrderedSet count];
  }

  v31.receiver = self;
  v31.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v31 sortRange:location options:length usingComparator:optionsCopy, comparatorCopy];
  if (_shouldProcessKVOChange)
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end