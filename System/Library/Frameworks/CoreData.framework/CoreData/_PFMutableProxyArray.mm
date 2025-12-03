@interface _PFMutableProxyArray
- (_PFMutableProxyArray)initWithPFArray:(id)array;
- (_PFMutableProxyArray)initWithPFArray:(id)array inRange:(_NSRange)range;
- (id)arrayFromObjectIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectIDAtIndex:(unint64_t)index;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newArrayFromObjectIDs;
- (id)objectAtIndex:(unint64_t)index;
- (id)subarrayWithRange:(_NSRange)range;
- (id)valueForKey:(id)key;
- (unint64_t)indexOfManagedObjectForObjectID:(id)d;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range;
- (unint64_t)indexOfObjectIdenticalTo:(id)to;
- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation _PFMutableProxyArray

- (id)arrayFromObjectIDs
{
  newArrayFromObjectIDs = [(_PFMutableProxyArray *)self newArrayFromObjectIDs];

  return newArrayFromObjectIDs;
}

- (id)newArrayFromObjectIDs
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(_PFMutableProxyArray *)self count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v12 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v12 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v8 = 0;
  do
  {
    *&v7[8 * v8] = [(_PFMutableProxyArray *)self managedObjectIDAtIndex:v8];
    ++v8;
  }

  while (v4 != v8);
LABEL_13:
  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (_PFMutableProxyArray)initWithPFArray:(id)array inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = _PFMutableProxyArray;
  v7 = [(_PFMutableProxyArray *)&v10 init];
  if (v7)
  {
    v7->_originalArray = array;
    v7->_offset = location;
    v7->_limit = location + length;
    v7->_updatedObjectsArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_editCount = length + 1;
    v7->_indicesVeneer = CFArrayCreateMutable(0, 0, 0);
    if (length)
    {
      for (i = 0; i != length; ++i)
      {
        CFArrayAppendValue(v7->_indicesVeneer, i);
      }
    }
  }

  return v7;
}

- (_PFMutableProxyArray)initWithPFArray:(id)array
{
  v5 = [array count];

  return [(_PFMutableProxyArray *)self initWithPFArray:array inRange:0, v5];
}

- (id)subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [[_PFMutableProxyArray alloc] initWithPFArray:self->_originalArray inRange:range.location, range.length];
  v6->_offset = self->_offset;
  indicesVeneer = v6->_indicesVeneer;
  v14 = v6;
  updatedObjectsArray = v6->_updatedObjectsArray;
  v9 = [(NSMutableArray *)updatedObjectsArray count];
  if (length)
  {
    v10 = v9;
    for (i = 0; i != length; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_indicesVeneer, location + i);
      if ((ValueAtIndex & 0x80000000) != 0)
      {
        [(NSMutableArray *)updatedObjectsArray addObject:[(NSMutableArray *)self->_updatedObjectsArray objectAtIndex:ValueAtIndex & 0x7FFFFFFF]];
        CFArraySetValueAtIndex(indicesVeneer, i, (v10++ | 0x80000000));
      }

      else
      {
        CFArraySetValueAtIndex(indicesVeneer, i, (ValueAtIndex & 0x7FFFFFFF));
      }
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PFMutableProxyArray;
  [(_PFMutableProxyArray *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(_PFMutableProxyArray *)self count];
  v5 = objc_autoreleasePoolPush();
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= 0x201)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v13 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v13 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v6);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *&v8[8 * i] = [(_PFMutableProxyArray *)self objectAtIndex:i];
  }

LABEL_13:
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v8 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v8);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(_PFMutableProxyArray *)self count];
  v5 = objc_autoreleasePoolPush();
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= 0x201)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v13 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v13 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v6);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *&v8[8 * i] = [(_PFMutableProxyArray *)self objectAtIndex:i];
  }

LABEL_13:
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v8 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v8);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = [(_PFMutableProxyArray *)self count];
  if (v8 < location + length)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), location + length - 1, v8}];
  }

  if (length)
  {
    v9 = objc_autoreleasePoolPush();
    if (length >= 0x201)
    {
      v10 = 1;
    }

    else
    {
      v10 = length;
    }

    v11 = (8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = v18 - v11;
    if (length > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v18 - v11, 8 * length);
    }

    for (i = 0; i != length; ++i)
    {
      v14 = [(_PFMutableProxyArray *)self objectAtIndex:location + i];
      *&v12[8 * i] = v14;
      objects[i] = v14;
    }

    v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v12 count:length];
    if (length >= 0x201)
    {
      NSZoneFree(0, v12);
    }

    objc_autoreleasePoolPop(v9);
    v16 = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndex:(unint64_t)index
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_indicesVeneer, index);
  if ((ValueAtIndex & 0x80000000) != 0)
  {
    updatedObjectsArray = self->_updatedObjectsArray;
    v6 = ValueAtIndex & 0x7FFFFFFF;
  }

  else
  {
    updatedObjectsArray = self->_originalArray;
    v6 = self->_offset + ValueAtIndex;
  }

  return [updatedObjectsArray objectAtIndex:v6];
}

- (id)managedObjectIDAtIndex:(unint64_t)index
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_indicesVeneer, index);
  if ((ValueAtIndex & 0x80000000) != 0)
  {
    0x7FFFFFFF = [(NSMutableArray *)self->_updatedObjectsArray objectAtIndex:ValueAtIndex & 0x7FFFFFFF];

    return [0x7FFFFFFF objectID];
  }

  else
  {
    v5 = self->_offset + ValueAtIndex;
    originalArray = self->_originalArray;

    return [(_PFArray *)originalArray managedObjectIDAtIndex:v5];
  }
}

- (unint64_t)indexOfObject:(id)object
{
  v5 = [(_PFMutableProxyArray *)self count];

  return [(_PFMutableProxyArray *)self indexOfObjectIdenticalTo:object inRange:0, v5];
}

- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range
{
  v6 = [(_PFMutableProxyArray *)self count:object];

  return [(_PFMutableProxyArray *)self indexOfObjectIdenticalTo:object inRange:0, v6];
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to
{
  v5 = [(_PFMutableProxyArray *)self count];

  return [(_PFMutableProxyArray *)self indexOfObjectIdenticalTo:to inRange:0, v5];
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objectID = [to objectID];
  v8 = [objectID methodForSelector:sel_isEqual_];
  if (location >= location + length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8;
  while (1)
  {
    v10 = [(_PFMutableProxyArray *)self managedObjectIDAtIndex:location];
    if (objectID == v10 || (v9(objectID, sel_isEqual_, v10) & 1) != 0)
    {
      break;
    }

    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (unint64_t)indexOfManagedObjectForObjectID:(id)d
{
  v5 = [(_PFMutableProxyArray *)self count];
  v6 = [d methodForSelector:sel_isEqual_];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    v9 = [(_PFMutableProxyArray *)self managedObjectIDAtIndex:v8];
    if (v9 == d || (v7(d, sel_isEqual_, v9) & 1) != 0)
    {
      break;
    }

    if (v5 == ++v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

- (id)valueForKey:(id)key
{
  if (![key isEqual:@"objectID"] || (v5 = -[_PFMutableProxyArray arrayFromObjectIDs](self, "arrayFromObjectIDs"), v6 = objc_msgSend(v5, "count"), v6 != -[_PFMutableProxyArray count](self, "count")))
  {
    v8.receiver = self;
    v8.super_class = _PFMutableProxyArray;
    return [(_PFMutableProxyArray *)&v8 valueForKey:key];
  }

  return v5;
}

- (void)addObject:(id)object
{
  v5 = [(NSMutableArray *)self->_updatedObjectsArray count];
  [(NSMutableArray *)self->_updatedObjectsArray addObject:object];
  indicesVeneer = self->_indicesVeneer;

  CFArrayAppendValue(indicesVeneer, (v5 & 0x7FFFFFFF | 0x80000000));
}

- (void)removeLastObject
{
  Count = CFArrayGetCount(self->_indicesVeneer);
  if (Count)
  {
    v4 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(self->_indicesVeneer, Count - 1);
    if ((ValueAtIndex & 0x80000000) != 0)
    {
      [(NSMutableArray *)self->_updatedObjectsArray replaceObjectAtIndex:ValueAtIndex & 0x7FFFFFFF withObject:NSKeyValueCoding_NullValue];
      editCount = self->_editCount;
      if (editCount)
      {
        self->_editCount = editCount - 1;
      }
    }

    indicesVeneer = self->_indicesVeneer;

    CFArrayRemoveValueAtIndex(indicesVeneer, v4);
  }
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v7 = [(NSMutableArray *)self->_updatedObjectsArray count];
  [(NSMutableArray *)self->_updatedObjectsArray addObject:object];
  indicesVeneer = self->_indicesVeneer;

  CFArrayInsertValueAtIndex(indicesVeneer, index, (v7 & 0x7FFFFFFF | 0x80000000));
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_indicesVeneer, index);
  CFArrayRemoveValueAtIndex(self->_indicesVeneer, index);
  if ((ValueAtIndex & 0x80000000) != 0)
  {
    [(NSMutableArray *)self->_updatedObjectsArray replaceObjectAtIndex:ValueAtIndex & 0x7FFFFFFF withObject:NSKeyValueCoding_NullValue];
    editCount = self->_editCount;
    if (editCount)
    {
      self->_editCount = editCount - 1;
    }
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v7 = [(NSMutableArray *)self->_updatedObjectsArray count];
  [(NSMutableArray *)self->_updatedObjectsArray addObject:object];
  indicesVeneer = self->_indicesVeneer;

  CFArraySetValueAtIndex(indicesVeneer, index, (v7 & 0x7FFFFFFF | 0x80000000));
}

@end