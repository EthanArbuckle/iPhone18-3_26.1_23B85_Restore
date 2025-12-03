@interface AMSMutableSet
+ (id)setWithHashBlock:(id)block;
- (AMSMutableSet)initWithHashBlock:(id)block;
- (BOOL)containsObject:(id)object;
- (id)_allObjectsFromBackingSet;
- (id)anyObject;
- (id)member:(id)member;
- (id)objectEnumerator;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
@end

@implementation AMSMutableSet

+ (id)setWithHashBlock:(id)block
{
  blockCopy = block;
  v4 = [[AMSMutableSet alloc] initWithHashBlock:blockCopy];

  return v4;
}

- (AMSMutableSet)initWithHashBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = AMSMutableSet;
  v5 = [(AMSMutableSet *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    backingSet = v5->_backingSet;
    v5->_backingSet = v6;

    v8 = _Block_copy(blockCopy);
    hashBlock = v5->_hashBlock;
    v5->_hashBlock = v8;
  }

  return v5;
}

- (void)addObject:(id)object
{
  backingSet = self->_backingSet;
  objectCopy = object;
  hashBlock = [(AMSMutableSet *)self hashBlock];
  v6 = hashBlock[2](hashBlock, objectCopy);
  v7 = [AMSSetItem setItemWithObject:objectCopy hashKey:v6];

  [(NSMutableSet *)backingSet addObject:v7];
}

- (void)addObjectsFromArray:(id)array
{
  v14 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        [(AMSMutableSet *)self addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)anyObject
{
  anyObject = [(NSMutableSet *)self->_backingSet anyObject];
  object = [anyObject object];

  return object;
}

- (id)member:(id)member
{
  v22 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  hashBlock = [(AMSMutableSet *)self hashBlock];
  v6 = (hashBlock)[2](hashBlock, memberCopy);
  v7 = [AMSSetItem setItemWithObject:memberCopy hashKey:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSMutableSet *)self->_backingSet allObjects];
  object = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (object)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != object; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        hashKey = [v12 hashKey];
        hashKey2 = [v7 hashKey];
        v15 = [hashKey isEqualToString:hashKey2];

        if (v15)
        {
          object = [v12 object];
          goto LABEL_11;
        }
      }

      object = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (object)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return object;
}

- (id)objectEnumerator
{
  _allObjectsFromBackingSet = [(AMSMutableSet *)self _allObjectsFromBackingSet];
  objectEnumerator = [_allObjectsFromBackingSet objectEnumerator];

  return objectEnumerator;
}

- (BOOL)containsObject:(id)object
{
  v15 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allObjectsFromBackingSet = [(AMSMutableSet *)self _allObjectsFromBackingSet];
  v6 = [_allObjectsFromBackingSet countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_allObjectsFromBackingSet);
        }

        if (*(*(&v10 + 1) + 8 * i) == objectCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [_allObjectsFromBackingSet countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_allObjectsFromBackingSet
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[AMSMutableSet count](self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSMutableSet *)self->_backingSet allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        object = [*(*(&v11 + 1) + 8 * i) object];
        [v3 addObject:object];
      }

      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end