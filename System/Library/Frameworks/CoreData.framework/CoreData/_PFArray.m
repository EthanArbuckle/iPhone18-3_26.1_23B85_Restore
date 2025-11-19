@interface _PFArray
- (_PFArray)initWithObjects:(id *)a3 count:(unsigned int)a4 andFlags:(unsigned int)a5 andContext:(id)a6;
- (id)arrayFromObjectIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectIDAtIndex:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newArrayFromObjectIDs;
- (id)objectAtIndex:(unint64_t)a3;
- (id)subarrayWithRange:(_NSRange)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexOfManagedObjectForObjectID:(id)a3;
- (unint64_t)indexOfObject:(id)a3;
- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4;
- (unint64_t)indexOfObjectIdenticalTo:(id)a3 inRange:(_NSRange)a4;
- (void)dealloc;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation _PFArray

- (void)dealloc
{
  flags = self->_flags;
  if (self->_count)
  {
    if ((*&flags & 6) != 0)
    {
      v4 = 0;
      do
      {
      }

      while (v4 < self->_count);
      flags = self->_flags;
    }

    if ((*&flags & 8) != 0)
    {
      array = self->_array;
LABEL_10:
      PF_FREE_OBJECT_ARRAY(array);
    }
  }

  else if ((*&flags & 8) != 0)
  {
    array = self->_array;
    if (array)
    {
      goto LABEL_10;
    }
  }

  if (self->_count)
  {
    if ((*&self->_flags & 0x20) != 0)
    {
      weakContext = self->_weakContext;
      if (weakContext)
      {
        WeakRetained = objc_loadWeakRetained(&weakContext->_object);
        if (WeakRetained)
        {
          v8 = WeakRetained;
          [(NSManagedObjectContext *)WeakRetained _registerAsyncReferenceCallback];
        }
      }
    }
  }

  self->_weakContext = 0;
  v9.receiver = self;
  v9.super_class = _PFArray;
  [(_PFArray *)&v9 dealloc];
}

- (id)arrayFromObjectIDs
{
  v2 = [(_PFArray *)self newArrayFromObjectIDs];

  return v2;
}

- (id)newArrayFromObjectIDs
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 0x20) == 0)
  {
    v3 = *MEMORY[0x1E69E9840];

    return [(_PFArray *)self copy];
  }

  count = self->_count;
  if (count)
  {
    v6 = self->_count;
  }

  else
  {
    v6 = 1;
  }

  if (count >= 0x201)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v12 - ((8 * v7 + 15) & 0xFFFFFFFF0);
  if (count >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
LABEL_15:
    for (i = 0; i != count; ++i)
    {
      *&v8[8 * i] = [self->_array[i] objectID];
    }

    goto LABEL_17;
  }

  bzero(v12 - ((8 * v7 + 15) & 0xFFFFFFFF0), 8 * v6);
  if (count)
  {
    goto LABEL_15;
  }

LABEL_17:
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v8 count:count];
  if (count >= 0x201)
  {
    NSZoneFree(0, v8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (_PFArray)initWithObjects:(id *)a3 count:(unsigned int)a4 andFlags:(unsigned int)a5 andContext:(id)a6
{
  v7 = a5;
  v17.receiver = self;
  v17.super_class = _PFArray;
  v10 = [(_PFArray *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_count = a4;
    v12 = *&v10->_flags & 0xFFFFFFFFFFFFFFF0 | v7 & 3 | (v7 & 8) | 0x10;
    if ((v7 & 0x10) == 0)
    {
      v12 = *&v10->_flags & 0xFFFFFFFFFFFFFFE0 | v7 & 0xB;
    }

    if ((v7 & 0x20) != 0)
    {
      v10->_flags = (v12 | 0x20);
      if (a6 && _PF_shouldAsyncProcessReferenceQueue && ([a6 concurrencyType] == 1 || objc_msgSend(a6, "concurrencyType") == 2))
      {
        v11->_weakContext = [[_PFWeakReference alloc] initWithObject:a6];
      }
    }

    else
    {
      v10->_flags = (v12 & 0xFFFFFFFFFFFFFFDBLL);
    }

    flags = v11->_flags;
    v11->_flags = (*&flags & 0xF8000000FFFFFFFFLL);
    if (a4)
    {
      if ((*&flags & 0x10) != 0)
      {
        v11->_array = PF_ALLOCATE_OBJECT_ARRAY(a4);
        *&v11->_flags |= 8uLL;
        memmove(v11->_array, a3, 8 * a4);
      }

      else
      {
        v11->_array = a3;
      }

      if (*&v11->_flags)
      {
        v14 = 0;
        do
        {
          v15 = v11->_array[v14++];
        }

        while (a4 != v14);
      }
    }
  }

  return v11;
}

- (unint64_t)indexOfObject:(id)a3
{
  count = self->_count;
  if ((*&self->_flags & 0x20) != 0)
  {
    return [(_PFArray *)self indexOfObjectIdenticalTo:a3 inRange:0, count];
  }

  else
  {
    return [(_PFArray *)self indexOfObject:a3 inRange:0, count];
  }
}

- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  length = a4.length;
  location = a4.location;
  v8 = a4.location + a4.length;
  v9 = [a3 methodForSelector:sel_isEqual_];
  if (location >= v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  while (self->_array[location] != a3 && (v10(a3, sel_isEqual_) & 1) == 0)
  {
    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (unint64_t)indexOfObjectIdenticalTo:(id)a3 inRange:(_NSRange)a4
{
  if (!a3 || a4.location >= a4.location + a4.length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while (self->_array[a4.location] != a3)
  {
    ++a4.location;
    if (!--a4.length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return a4.location;
}

- (unint64_t)indexOfManagedObjectForObjectID:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((*&self->_flags & 0x20) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [a3 methodForSelector:sel_isEqual_];
  count = self->_count;
  if (!count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v5;
  v8 = 0;
  while (*(self->_array[v8] + 5) != a3 && (v7(a3, sel_isEqual_) & 1) == 0)
  {
    if (count == ++v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

- (id)managedObjectIDAtIndex:(unint64_t)a3
{
  v3 = self->_array[a3];
  if ((*&self->_flags & 0x20) != 0)
  {
    return v3[5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)subarrayWithRange:(_NSRange)a3
{
  if (a3.location + a3.length <= self->_count)
  {
    if ((*&self->_flags & 0x20) != 0)
    {
      v4 = 59;
    }

    else
    {
      v4 = 27;
    }

    v5 = [[_PFArray alloc] initWithObjects:&self->_array[a3.location] count:a3.length andFlags:v4];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _PFArray;
    return [(_PFArray *)&v6 subarrayWithRange:a3.location, a3.length];
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_count > a3)
  {
    return self->_array[a3];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), a3, self->_count}];
  return 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &self->_count;
  }

  v6 = 0;
  a3->var1 = a4;
  if (a5)
  {
    count = self->_count;
    if (var0 < count)
    {
      v6 = 0;
      do
      {
        a4[v6] = *(&self->_array[var0] + v6);
      }

      while (++v6 + var0 < count && v6 < a5);
      var0 += v6;
    }
  }

  a3->var0 = var0;
  return v6;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_count)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), a4.location + a4.length - 1, self->_count}];
  }

  if (length)
  {
    v8 = &self->_array[location];

    memmove(a3, v8, 8 * length);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  array = self->_array;
  count = self->_count;

  return [v4 initWithObjects:array count:count];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  array = self->_array;
  count = self->_count;

  return [v4 initWithObjects:array count:count];
}

@end