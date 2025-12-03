@interface NSConcreteSetChanges
- (NSConcreteSetChanges)init;
- (NSConcreteSetChanges)initWithCapacity:(unint64_t)capacity;
- (NSConcreteSetChanges)initWithObjects:(const void *)objects count:(unint64_t)count;
- (NSConcreteSetChanges)initWithSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_fault;
- (void)_willChange;
- (void)addChange:(id)change;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)enumerateChanges:(unint64_t)changes usingBlock:(id)block;
- (void)enumerateChangesUsingBlock:(id)block;
- (void)filterObjectsWithTest:(id)test;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)setSet:(id)set;
- (void)transformObjectsWithBlock:(id)block;
- (void)unionSet:(id)set;
@end

@implementation NSConcreteSetChanges

- (unint64_t)count
{
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  backing = self->_backing;

  return [(NSSet *)backing count];
}

- (id)member:(id)member
{
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  backing = self->_backing;

  return [(NSSet *)backing member:member];
}

- (id)objectEnumerator
{
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  backing = self->_backing;

  return [(NSSet *)backing objectEnumerator];
}

- (NSConcreteSetChanges)init
{
  v3 = [MEMORY[0x1E695DFD8] set];

  return [(NSConcreteSetChanges *)self initWithSet:v3];
}

- (NSConcreteSetChanges)initWithCapacity:(unint64_t)capacity
{
  v4 = [MEMORY[0x1E695DFD8] set];

  return [(NSConcreteSetChanges *)self initWithSet:v4];
}

- (NSConcreteSetChanges)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:objects count:count];

  return [(NSConcreteSetChanges *)self initWithSet:v5];
}

- (NSConcreteSetChanges)initWithSet:(id)set
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSConcreteSetChanges;
  v4 = [(NSConcreteSetChanges *)&v6 init];
  if (v4)
  {
    v4->_backing = [set copy];
  }

  return v4;
}

- (void)_willChange
{
  if (!self->_changes)
  {
    self->_changes = objc_alloc_init(MEMORY[0x1E695DF70]);
  }
}

- (void)addChange:(id)change
{
  [(NSConcreteSetChanges *)self _willChange];
  [(NSConcreteSetChanges *)self willChangeValueForKey:@"changeCount"];
  [(NSMutableArray *)self->_changes addObject:change];

  [(NSConcreteSetChanges *)self didChangeValueForKey:@"changeCount"];
}

- (void)addObjectsFromArray:(id)array
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [array countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(array);
        }

        [(NSSetChanges *)self addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  backing = self->_backing;

  return [(NSSet *)backing countByEnumeratingWithState:state objects:objects count:count];
}

- (void)intersectSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSConcreteSetChanges *)self _willChange];
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  backing = self->_backing;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSSet *)backing countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(backing);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![set member:v10])
        {
          v11 = [[NSSetChange alloc] initWithType:3 object:v10];
          [(NSConcreteSetChanges *)self addChange:v11];
        }
      }

      v7 = [(NSSet *)backing countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }
}

- (void)setSet:(id)set
{
  [(NSConcreteSetChanges *)self removeAllObjects];

  [(NSConcreteSetChanges *)self unionSet:set];
}

- (void)minusSet:(id)set
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSConcreteSetChanges *)self _willChange];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [set countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(set);
        }

        v9 = [[NSSetChange alloc] initWithType:3 object:*(*(&v11 + 1) + 8 * v8)];
        [(NSConcreteSetChanges *)self addChange:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [set countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)removeAllObjects
{
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  backing = self->_backing;

  [(NSConcreteSetChanges *)self minusSet:backing];
}

- (void)unionSet:(id)set
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSConcreteSetChanges *)self _willChange];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [set countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(set);
        }

        v9 = [[NSSetChange alloc] initWithType:2 object:*(*(&v11 + 1) + 8 * v8)];
        [(NSConcreteSetChanges *)self addChange:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [set countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)filterObjectsWithTest:(id)test
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  v11 = 0;
  backing = self->_backing;
  v6 = [(NSSet *)backing countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(backing);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (((*(test + 2))(test, v10, &v11) & 1) == 0)
      {
        [(NSSetChanges *)self removeObject:v10];
      }

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)backing countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        return;
      }
    }
  }
}

- (void)transformObjectsWithBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self->_changes)
  {
    [(NSConcreteSetChanges *)self _fault];
  }

  v13 = 0;
  backing = self->_backing;
  v6 = [(NSSet *)backing countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(backing);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = (*(block + 2))(block, v10, &v13);
      if (v11 != v10)
      {
        v12 = v11;
        [(NSSetChanges *)self removeObject:v10];
        [(NSSetChanges *)self addObject:v12];
      }

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)backing countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        return;
      }
    }
  }
}

- (void)enumerateChangesUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  changes = self->_changes;
  v5 = [(NSMutableArray *)changes countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(changes);
      }

      (*(block + 2))(block, *(*(&v11 + 1) + 8 * v8), &v9);
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)changes countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)enumerateChanges:(unint64_t)changes usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  changes = self->_changes;
  v7 = [(NSMutableArray *)changes countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(changes);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 changeType] == changes)
      {
        (*(block + 2))(block, v11, &v12);
      }

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)changes countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSConcreteSetChanges alloc] initWithSet:self->_backing];
  v4->_changes = [(NSMutableArray *)self->_changes mutableCopy];
  return v4;
}

- (void)_fault
{
  if (self->_changes)
  {
    if (!self->_backingIsMutable)
    {
      backing = self->_backing;
      self->_backing = [(NSSet *)backing mutableCopy];

      self->_backingIsMutable = 1;
    }

    v4 = self->_backing;

    [(NSSetChanges *)self applyChangesToSet:v4];
  }
}

- (id)description
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)[NSMutableString alloc] initWithFormat:@"NSSetChanges(%p) with base %@, and changes:", self, self->_backing];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NSConcreteSetChanges_description__block_invoke;
  v5[3] = &unk_1E69F6468;
  v5[4] = v3;
  [(NSConcreteSetChanges *)self enumerateChangesUsingBlock:v5];
  return v3;
}

uint64_t __35__NSConcreteSetChanges_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([a2 changeType] == 2)
  {
    v4 = @"added";
  }

  else
  {
    v4 = @"removed";
  }

  return [v3 appendFormat:@"\n\t%@ %@", v4, objc_msgSend(a2, "value")];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteSetChanges;
  [(NSConcreteSetChanges *)&v3 dealloc];
}

@end