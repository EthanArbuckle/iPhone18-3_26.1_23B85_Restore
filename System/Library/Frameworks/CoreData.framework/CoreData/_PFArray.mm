@interface _PFArray
- (_PFArray)initWithObjects:(id *)objects count:(unsigned int)count andFlags:(unsigned int)flags andContext:(id)context;
- (id)arrayFromObjectIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectIDAtIndex:(unint64_t)index;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newArrayFromObjectIDs;
- (id)objectAtIndex:(unint64_t)index;
- (id)subarrayWithRange:(_NSRange)range;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfManagedObjectForObjectID:(id)d;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range;
- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
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
  newArrayFromObjectIDs = [(_PFArray *)self newArrayFromObjectIDs];

  return newArrayFromObjectIDs;
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

- (_PFArray)initWithObjects:(id *)objects count:(unsigned int)count andFlags:(unsigned int)flags andContext:(id)context
{
  flagsCopy = flags;
  v17.receiver = self;
  v17.super_class = _PFArray;
  v10 = [(_PFArray *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_count = count;
    v12 = *&v10->_flags & 0xFFFFFFFFFFFFFFF0 | flagsCopy & 3 | (flagsCopy & 8) | 0x10;
    if ((flagsCopy & 0x10) == 0)
    {
      v12 = *&v10->_flags & 0xFFFFFFFFFFFFFFE0 | flagsCopy & 0xB;
    }

    if ((flagsCopy & 0x20) != 0)
    {
      v10->_flags = (v12 | 0x20);
      if (context && _PF_shouldAsyncProcessReferenceQueue && ([context concurrencyType] == 1 || objc_msgSend(context, "concurrencyType") == 2))
      {
        v11->_weakContext = [[_PFWeakReference alloc] initWithObject:context];
      }
    }

    else
    {
      v10->_flags = (v12 & 0xFFFFFFFFFFFFFFDBLL);
    }

    flags = v11->_flags;
    v11->_flags = (*&flags & 0xF8000000FFFFFFFFLL);
    if (count)
    {
      if ((*&flags & 0x10) != 0)
      {
        v11->_array = PF_ALLOCATE_OBJECT_ARRAY(count);
        *&v11->_flags |= 8uLL;
        memmove(v11->_array, objects, 8 * count);
      }

      else
      {
        v11->_array = objects;
      }

      if (*&v11->_flags)
      {
        v14 = 0;
        do
        {
          v15 = v11->_array[v14++];
        }

        while (count != v14);
      }
    }
  }

  return v11;
}

- (unint64_t)indexOfObject:(id)object
{
  count = self->_count;
  if ((*&self->_flags & 0x20) != 0)
  {
    return [(_PFArray *)self indexOfObjectIdenticalTo:object inRange:0, count];
  }

  else
  {
    return [(_PFArray *)self indexOfObject:object inRange:0, count];
  }
}

- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range
{
  if (!object)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  length = range.length;
  location = range.location;
  v8 = range.location + range.length;
  v9 = [object methodForSelector:sel_isEqual_];
  if (location >= v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  while (self->_array[location] != object && (v10(object, sel_isEqual_) & 1) == 0)
  {
    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  if (!to || range.location >= range.location + range.length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while (self->_array[range.location] != to)
  {
    ++range.location;
    if (!--range.length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return range.location;
}

- (unint64_t)indexOfManagedObjectForObjectID:(id)d
{
  if (!d)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((*&self->_flags & 0x20) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [d methodForSelector:sel_isEqual_];
  count = self->_count;
  if (!count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v5;
  v8 = 0;
  while (*(self->_array[v8] + 5) != d && (v7(d, sel_isEqual_) & 1) == 0)
  {
    if (count == ++v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

- (id)managedObjectIDAtIndex:(unint64_t)index
{
  v3 = self->_array[index];
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

- (id)subarrayWithRange:(_NSRange)range
{
  if (range.location + range.length <= self->_count)
  {
    if ((*&self->_flags & 0x20) != 0)
    {
      v4 = 59;
    }

    else
    {
      v4 = 27;
    }

    v5 = [[_PFArray alloc] initWithObjects:&self->_array[range.location] count:range.length andFlags:v4];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _PFArray;
    return [(_PFArray *)&v6 subarrayWithRange:range.location, range.length];
  }
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_count > index)
  {
    return self->_array[index];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), index, self->_count}];
  return 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_count;
  }

  v6 = 0;
  state->var1 = objects;
  if (count)
  {
    count = self->_count;
    if (var0 < count)
    {
      v6 = 0;
      do
      {
        objects[v6] = *(&self->_array[var0] + v6);
      }

      while (++v6 + var0 < count && v6 < count);
      var0 += v6;
    }
  }

  state->var0 = var0;
  return v6;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_count)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), range.location + range.length - 1, self->_count}];
  }

  if (length)
  {
    v8 = &self->_array[location];

    memmove(objects, v8, 8 * length);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  array = self->_array;
  count = self->_count;

  return [v4 initWithObjects:array count:count];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  array = self->_array;
  count = self->_count;

  return [v4 initWithObjects:array count:count];
}

@end