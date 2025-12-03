@interface _PFFetchedResultOrderedSetWrapper
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrderedSet:(id)set;
- (NSString)description;
- (_PFFetchedResultOrderedSetWrapper)initWithArray:(id)array andContext:(id)context;
- (id)allObjects;
- (id)array;
- (id)descriptionWithLocale:(id)locale;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)getObjects:(id *)objects;
@end

@implementation _PFFetchedResultOrderedSetWrapper

- (_PFFetchedResultOrderedSetWrapper)initWithArray:(id)array andContext:(id)context
{
  v9.receiver = self;
  v9.super_class = _PFFetchedResultOrderedSetWrapper;
  v6 = [(_PFFetchedResultOrderedSetWrapper *)&v9 init];
  if (!v6)
  {
    return v6;
  }

  if (![array count])
  {

    return objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {

    return [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:array];
  }

  v6->_underlyingArray = array;
  if (context && _PF_shouldAsyncProcessReferenceQueue && ([context concurrencyType] == 1 || objc_msgSend(context, "concurrencyType") == 2))
  {
    v6->_weakmoc = [[_PFWeakReference alloc] initWithObject:context];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(NSArray *)self->_underlyingArray count];

  if (v3)
  {
    weakmoc = self->_weakmoc;
    if (weakmoc)
    {
      WeakRetained = objc_loadWeakRetained(&weakmoc->_object);
      if (WeakRetained)
      {
        v6 = WeakRetained;
        [(NSManagedObjectContext *)WeakRetained _registerAsyncReferenceCallback];
      }
    }
  }

  _PFDeallocateObject(self);
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSOrderedSet wrapper '%@' for fetch request results: %@", self, self->_underlyingArray];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)descriptionWithLocale:(id)locale
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSOrderedSet wrapper '%@' for fetch request results: %@", self, self->_underlyingArray];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DFA0]);
  underlyingArray = self->_underlyingArray;

  return [v4 initWithArray:underlyingArray];
}

- (id)array
{
  v2 = self->_underlyingArray;

  return v2;
}

- (void)getObjects:(id *)objects
{
  underlyingArray = self->_underlyingArray;
  v5 = [(NSArray *)underlyingArray count];

  [(NSArray *)underlyingArray getObjects:objects range:0, v5];
}

- (BOOL)isEqualToOrderedSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  if (set == self)
  {
    goto LABEL_13;
  }

  v5 = [(_PFFetchedResultOrderedSetWrapper *)self count];
  if (v5 != [set count])
  {
    LOBYTE(v13) = 0;
    goto LABEL_15;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [set countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
LABEL_13:
    LOBYTE(v13) = 1;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(set);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      v12 = [(NSArray *)self->_underlyingArray objectAtIndex:v8];
      if (v12 != v11)
      {
        v13 = [v12 isEqual:v11];
        if (!v13)
        {
          break;
        }
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [set countByEnumeratingWithState:&v16 objects:v20 count:16];
        LOBYTE(v13) = 1;
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(isNSOrderedSet) = 1;
  }

  else
  {
    isNSOrderedSet = [equal isNSOrderedSet];
    if (isNSOrderedSet)
    {

      LOBYTE(isNSOrderedSet) = [(_PFFetchedResultOrderedSetWrapper *)self isEqualToOrderedSet:equal];
    }
  }

  return isNSOrderedSet;
}

- (id)allObjects
{
  v2 = self->_underlyingArray;

  return v2;
}

@end