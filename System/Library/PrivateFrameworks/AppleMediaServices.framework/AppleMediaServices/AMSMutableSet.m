@interface AMSMutableSet
+ (id)setWithHashBlock:(id)a3;
- (AMSMutableSet)initWithHashBlock:(id)a3;
- (BOOL)containsObject:(id)a3;
- (id)_allObjectsFromBackingSet;
- (id)anyObject;
- (id)member:(id)a3;
- (id)objectEnumerator;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
@end

@implementation AMSMutableSet

+ (id)setWithHashBlock:(id)a3
{
  v3 = a3;
  v4 = [[AMSMutableSet alloc] initWithHashBlock:v3];

  return v4;
}

- (AMSMutableSet)initWithHashBlock:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSMutableSet;
  v5 = [(AMSMutableSet *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    backingSet = v5->_backingSet;
    v5->_backingSet = v6;

    v8 = _Block_copy(v4);
    hashBlock = v5->_hashBlock;
    v5->_hashBlock = v8;
  }

  return v5;
}

- (void)addObject:(id)a3
{
  backingSet = self->_backingSet;
  v5 = a3;
  v8 = [(AMSMutableSet *)self hashBlock];
  v6 = v8[2](v8, v5);
  v7 = [AMSSetItem setItemWithObject:v5 hashKey:v6];

  [(NSMutableSet *)backingSet addObject:v7];
}

- (void)addObjectsFromArray:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(AMSMutableSet *)self addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)anyObject
{
  v2 = [(NSMutableSet *)self->_backingSet anyObject];
  v3 = [v2 object];

  return v3;
}

- (id)member:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSMutableSet *)self hashBlock];
  v6 = (v5)[2](v5, v4);
  v7 = [AMSSetItem setItemWithObject:v4 hashKey:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMutableSet *)self->_backingSet allObjects];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 hashKey];
        v14 = [v7 hashKey];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v9 = [v12 object];
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)objectEnumerator
{
  v2 = [(AMSMutableSet *)self _allObjectsFromBackingSet];
  v3 = [v2 objectEnumerator];

  return v3;
}

- (BOOL)containsObject:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(AMSMutableSet *)self _allObjectsFromBackingSet];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * i) == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v4 = [(NSMutableSet *)self->_backingSet allObjects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) object];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end