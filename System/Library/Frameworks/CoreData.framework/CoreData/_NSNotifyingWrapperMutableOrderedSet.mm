@interface _NSNotifyingWrapperMutableOrderedSet
- (_NSNotifyingWrapperMutableOrderedSet)initWithContainer:(id)a3 key:(id)a4 mutableOrderedSet:(id)a5;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionWithLocale:(id)a3;
- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)addObject:(id)a3;
- (void)addObjects:(const void *)a3 count:(unint64_t)a4;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)exchangeObjectAtIndex:(unint64_t)a3 withObjectAtIndex:(unint64_t)a4;
- (void)getObjects:(id *)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(id *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)intersectOrderedSet:(id)a3;
- (void)intersectSet:(id)a3;
- (void)minusOrderedSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)moveObjectsAtIndexes:(id)a3 toIndex:(unint64_t)a4;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)removeObjectsInArray:(id)a3;
- (void)removeObjectsInRange:(_NSRange)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjects:(const void *)a4 count:(unint64_t)a5;
- (void)setObject:(id)a3 atIndex:(unint64_t)a4;
- (void)sortRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5;
- (void)unionOrderedSet:(id)a3;
- (void)unionSet:(id)a3;
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

- (_NSNotifyingWrapperMutableOrderedSet)initWithContainer:(id)a3 key:(id)a4 mutableOrderedSet:(id)a5
{
  v10.receiver = self;
  v10.super_class = _NSNotifyingWrapperMutableOrderedSet;
  v8 = [(_NSNotifyingWrapperMutableOrderedSet *)&v10 init];
  if (v8)
  {
    v8->_container = a3;
    v8->_key = [a4 copy];
    v8->_mutableOrderedSet = a5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DFB8]);
  mutableOrderedSet = self->_mutableOrderedSet;

  return [v4 initWithOrderedSet:mutableOrderedSet copyItems:0];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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

- (void)getObjects:(id *)a3
{
  mutableOrderedSet = self->_mutableOrderedSet;
  v5 = [(NSMutableOrderedSet *)mutableOrderedSet count];

  [(NSMutableOrderedSet *)mutableOrderedSet getObjects:a3 range:0, v5];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableOrderedSet *)self->_mutableOrderedSet description];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)descriptionWithLocale:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableOrderedSet *)self->_mutableOrderedSet descriptionWithLocale:a3];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(NSMutableOrderedSet *)self->_mutableOrderedSet descriptionWithLocale:a3 indent:a4];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
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

  v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a4];
  [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v8 forKey:self->_key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObject:a3 atIndex:a4];
  [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v8 forKey:self->_key];

  if (v7)
  {
    mutableOrderedSet = self->_mutableOrderedSet;

    [(NSMutableOrderedSet *)mutableOrderedSet _setProcessingIdempotentKVO:0];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
  [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectAtIndex:a3];
  [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  if (([a4 isEqual:{-[NSMutableOrderedSet objectAtIndex:](self->_mutableOrderedSet, "objectAtIndex:")}] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
    [(NSManagedObject *)self->_container willChange:4 valuesAtIndexes:v7 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet replaceObjectAtIndex:a3 withObject:a4];
    [(NSManagedObject *)self->_container didChange:4 valuesAtIndexes:v7 forKey:self->_key];
  }
}

- (void)addObject:(id)a3
{
  if (([(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:?]& 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{-[NSMutableOrderedSet count](self->_mutableOrderedSet, "count")}];
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v5 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObject:a3 atIndex:[(NSMutableOrderedSet *)self->_mutableOrderedSet count]];
    [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v5 forKey:self->_key];
  }
}

- (void)addObjects:(const void *)a3 count:(unint64_t)a4
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
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
  v12 = a4;
  do
  {
    v13 = *a3;
    if (([(NSMutableOrderedSet *)self->_mutableOrderedSet containsObject:*a3]& 1) == 0)
    {
      *&v9[8 * v11++] = v13;
    }

    ++a3;
    --v12;
  }

  while (v12);
  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{-[NSMutableOrderedSet count](self->_mutableOrderedSet, "count"), v11}];
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v14 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet addObjects:v9 count:v11];
    [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v14 forKey:self->_key];
  }

  if (a4 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
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
    [(_NSNotifyingWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)exchangeObjectAtIndex:(unint64_t)a3 withObjectAtIndex:(unint64_t)a4
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange])
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
  }
}

- (void)moveObjectsAtIndexes:(id)a3 toIndex:(unint64_t)a4
{
  if ([(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange])
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 moveObjectsAtIndexes:a3 toIndex:a4];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _NSNotifyingWrapperMutableOrderedSet;
    [(_NSNotifyingWrapperMutableOrderedSet *)&v7 moveObjectsAtIndexes:a3 toIndex:a4];
  }
}

- (void)insertObjects:(id *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (a4)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a5, a4}];
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:v9 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObjects:a3 count:a4 atIndex:a5];
    [(NSManagedObject *)self->_container didChange:2 valuesAtIndexes:v9 forKey:self->_key];
  }
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  if ([a3 count])
  {
    [(NSManagedObject *)self->_container willChange:2 valuesAtIndexes:a4 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObjects:a3 atIndexes:a4];
    container = self->_container;
    key = self->_key;

    [(NSManagedObject *)container didChange:2 valuesAtIndexes:a4 forKey:key];
  }
}

- (void)setObject:(id)a3 atIndex:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 setObject:a3 atIndex:a4];
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjects:(const void *)a4 count:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v57 = *MEMORY[0x1E69E9840];
  v10 = [(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange];
  if (v10)
  {
    v11 = length == a5;
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
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v23 - v13);
  if (a5 > 0x200)
  {
    v14 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v23 - v13, 8 * v12);
  }

  [(NSMutableOrderedSet *)self->_mutableOrderedSet getObjects:v14 range:location, length];
  v15 = _PFStackAllocatorCreate(&v25, 1024);
  v16 = CFSetCreate(v15, v14, a5, 0);
  v17 = v16;
  v23[1] = v23;
  if (a5)
  {
    if (CFSetContainsValue(v16, *a4))
    {
      v18 = 1;
      do
      {
        v19 = v18;
        if (a5 == v18)
        {
          break;
        }

        v20 = CFSetContainsValue(v17, a4[v18]);
        v18 = v19 + 1;
      }

      while (v20);
      v21 = v19 < a5;
    }

    else
    {
      v21 = 1;
    }

    if (a5 >= 0x201)
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
    [(_NSNotifyingWrapperMutableOrderedSet *)&v24 replaceObjectsInRange:location withObjects:length count:a4, a5];
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
  [(_NSNotifyingWrapperMutableOrderedSet *)&v24 replaceObjectsInRange:location withObjects:length count:a4, a5];
LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4
{
  v4.receiver = self;
  v4.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 replaceObjectsAtIndexes:a3 withObjects:a4];
}

- (void)removeObjectsInRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a3.location, a3.length}];
    [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v6 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsInRange:location, length];
    [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v6 forKey:self->_key];
  }
}

- (void)removeObjectsAtIndexes:(id)a3
{
  if ([a3 count])
  {
    [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:a3 forKey:self->_key];
    [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:a3];
    container = self->_container;
    key = self->_key;

    [(NSManagedObject *)container didChange:3 valuesAtIndexes:a3 forKey:key];
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

- (void)removeObject:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 removeObject:a3];
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

          v10 = [(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
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
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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

          v10 = [(NSMutableOrderedSet *)self->_mutableOrderedSet indexOfObject:*(*(&v12 + 1) + 8 * v9)];
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
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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
    [(_NSNotifyingWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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

    if ([v5 count])
    {
      [(NSManagedObject *)self->_container willChange:3 valuesAtIndexes:v5 forKey:self->_key];
      [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:v5];
      [(NSManagedObject *)self->_container didChange:3 valuesAtIndexes:v5 forKey:self->_key];
    }
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
    [(_NSNotifyingWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sortRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5
{
  length = a3.length;
  location = a3.location;
  v32 = *MEMORY[0x1E69E9840];
  v9 = [(NSManagedObject *)self->_container hasFaultForRelationshipNamed:self->_key];
  v28 = a4;
  v29 = a5;
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
          v23 = [v20 objectID];
          v24 = [v23 isTemporaryID];
          if ((v24 & 1) == 0)
          {
            *&v16[8 * v17++] = v23;
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
  v25 = [(NSMutableOrderedSet *)self->_mutableOrderedSet _shouldProcessKVOChange];
  if (v25)
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:1];
  }

  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [(NSMutableOrderedSet *)self->_mutableOrderedSet count];
  }

  v31.receiver = self;
  v31.super_class = _NSNotifyingWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v31 sortRange:location options:length usingComparator:v28, v29];
  if (v25)
  {
    [(NSMutableOrderedSet *)self->_mutableOrderedSet _setProcessingIdempotentKVO:0];
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end