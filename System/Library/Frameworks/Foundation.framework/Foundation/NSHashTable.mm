@interface NSHashTable
+ (NSHashTable)alloc;
+ (NSHashTable)allocWithZone:(_NSZone *)zone;
+ (NSHashTable)hashTableWithOptions:(NSPointerFunctionsOptions)options;
+ (NSHashTable)weakObjectsHashTable;
+ (id)hashTableWithWeakObjects;
- (BOOL)intersectsHashTable:(NSHashTable *)other;
- (BOOL)isEqualToHashTable:(NSHashTable *)other;
- (BOOL)isSubsetOfHashTable:(NSHashTable *)other;
- (NSHashTable)initWithCoder:(id)coder;
- (NSSet)setRepresentation;
- (id)anyObject;
- (id)mutableSet;
- (void)intersectHashTable:(NSHashTable *)other;
- (void)minusHashTable:(NSHashTable *)other;
- (void)unionHashTable:(NSHashTable *)other;
@end

@implementation NSHashTable

+ (NSHashTable)alloc
{
  v2 = objc_opt_self();

  return NSAllocateObject(v2, 0, 0);
}

+ (NSHashTable)weakObjectsHashTable
{
  v2 = [[NSConcreteHashTable alloc] initWithOptions:5 capacity:0];

  return v2;
}

- (NSSet)setRepresentation
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        [(NSSet *)v3 addObject:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)anyObject
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  result = [(NSHashTable *)self countByEnumeratingWithState:v4 objects:&v3 count:16];
  if (result)
  {
    return **(&v4[0] + 1);
  }

  return result;
}

+ (id)hashTableWithWeakObjects
{
  v2 = [[NSConcreteHashTable alloc] initWithOptions:1 capacity:0];

  return v2;
}

+ (NSHashTable)allocWithZone:(_NSZone *)zone
{
  v3 = objc_opt_self();

  return NSAllocateObject(v3, 0, 0);
}

+ (NSHashTable)hashTableWithOptions:(NSPointerFunctionsOptions)options
{
  v3 = [[NSConcreteHashTable alloc] initWithOptions:options capacity:0];

  return v3;
}

- (NSHashTable)initWithCoder:(id)coder
{
  v4 = [NSConcreteHashTable alloc];

  return [(NSConcreteHashTable *)v4 initWithCoder:coder];
}

- (BOOL)intersectsHashTable:(NSHashTable *)other
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(self);
        }

        if ([(NSHashTable *)other member:*(*(&v11 + 1) + 8 * v8)])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSHashTable *)self countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (BOOL)isEqualToHashTable:(NSHashTable *)other
{
  v17 = *MEMORY[0x1E69E9840];
  if (other == self)
  {
    goto LABEL_12;
  }

  v5 = [(NSHashTable *)other count];
  if (v5 != [(NSHashTable *)self count])
  {
    LOBYTE(v10) = 0;
    return v10;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSHashTable *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
LABEL_12:
    LOBYTE(v10) = 1;
  }

  else
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(self);
      }

      v10 = [(NSHashTable *)other member:*(*(&v13 + 1) + 8 * v9)];
      if (!v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
        LOBYTE(v10) = 1;
        if (v7)
        {
          goto LABEL_5;
        }

        return v10;
      }
    }
  }

  return v10;
}

- (BOOL)isSubsetOfHashTable:(NSHashTable *)other
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(self);
      }

      v9 = [(NSHashTable *)other member:*(*(&v12 + 1) + 8 * v8)];
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSHashTable *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)intersectHashTable:(NSHashTable *)other
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(NSHashTable *)self count];
  if (v5 >> 60)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v15 userInfo:0];
    CFRelease(v15);
    objc_exception_throw(v16);
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  MEMORY[0x1EEE9AC00](v5);
  v7 = (v17 - v6);
  v17[1] = 0;
  if (v8 >= 0x101)
  {
    v7 = _CFCreateArrayStorage();
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(NSHashTable *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
  v11 = v7;
  if (v10)
  {
    v12 = *v20;
    v11 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(self);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (![(NSHashTable *)other member:v14])
        {
          *v11++ = v14;
        }
      }

      v10 = [(NSHashTable *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v10);
  }

  while (v7 < v11)
  {
    [(NSHashTable *)self removeObject:*v7++];
  }

  free(v9);
}

- (void)unionHashTable:(NSHashTable *)other
{
  v14 = *MEMORY[0x1E69E9840];
  if (other != self)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSHashTable *)other countByEnumeratingWithState:&v10 objects:v9 count:16];
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
            objc_enumerationMutation(other);
          }

          [(NSHashTable *)self addObject:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)other countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (void)minusHashTable:(NSHashTable *)other
{
  v14 = *MEMORY[0x1E69E9840];
  if (other == self)
  {

    [(NSHashTable *)self removeAllObjects];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSHashTable *)other countByEnumeratingWithState:&v10 objects:v9 count:16];
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
            objc_enumerationMutation(other);
          }

          [(NSHashTable *)self removeObject:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)other countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (id)mutableSet
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return v3;
}

@end