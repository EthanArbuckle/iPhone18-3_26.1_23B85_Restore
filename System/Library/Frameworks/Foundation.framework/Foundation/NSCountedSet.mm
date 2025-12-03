@interface NSCountedSet
- (NSCountedSet)initWithArray:(NSArray *)array;
- (NSCountedSet)initWithCapacity:(NSUInteger)numItems;
- (NSCountedSet)initWithCoder:(id)coder;
- (NSCountedSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (NSCountedSet)initWithSet:(NSSet *)set;
- (NSCountedSet)initWithSet:(id)set copyItems:(BOOL)items;
- (NSEnumerator)objectEnumerator;
- (NSUInteger)countForObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLocale:(id)locale;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getObjects:(id *)objects count:(unint64_t)count;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
@end

@implementation NSCountedSet

- (unint64_t)count
{
  TypeID = CFBagGetTypeID();
  v4 = CFGetTypeID(self->_table);
  table = self->_table;
  if (TypeID == v4)
  {

    JUMPOUT(0x1865CF020);
  }

  return CFDictionaryGetCount(table);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  table = self->_table;
  if (table)
  {

    self->_table = 0;
  }

  v4.receiver = self;
  v4.super_class = NSCountedSet;
  [(NSCountedSet *)&v4 dealloc];
}

- (NSEnumerator)objectEnumerator
{
  TypeID = CFBagGetTypeID();
  v4 = CFGetTypeID(self->_table);
  v5 = objc_allocWithZone(MEMORY[0x1E695E008]);
  if (TypeID == v4)
  {
    table = self;
  }

  else
  {
    table = self->_table;
  }

  v7 = [v5 initWithObject:table];

  return v7;
}

- (void)removeAllObjects
{
  TypeID = CFBagGetTypeID();
  v4 = CFGetTypeID(self->_table);
  table = self->_table;
  if (TypeID == v4)
  {

    CFBagRemoveAllValues(table);
  }

  else
  {

    CFDictionaryRemoveAllValues(table);
  }
}

- (id)member:(id)member
{
  if (!member)
  {
    return 0;
  }

  TypeID = CFBagGetTypeID();
  if (TypeID == CFGetTypeID(self->_table))
  {
    table = self->_table;

    return CFBagGetValue(table, member);
  }

  else if (CFDictionaryGetKeyIfPresent())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (void)addObject:(id)object
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!object)
  {
    _NSSetRaiseInsertNilException(self, a2);
  }

  TypeID = CFBagGetTypeID();
  if (TypeID == CFGetTypeID(self->_table))
  {
    table = self->_table;

    CFBagAddValue(table, object);
  }

  else
  {
    v10[0] = 0;
    if (CFDictionaryGetValueIfPresent(self->_table, object, v10))
    {
      v7 = ++v10[0];
      v8 = self->_table;
      v9 = object;
    }

    else
    {
      v8 = self->_table;
      v9 = object;
      v7 = 1;
    }

    CFDictionarySetValue(v8, v9, v7);
  }
}

- (void)removeObject:(id)object
{
  value[1] = *MEMORY[0x1E69E9840];
  if (!object)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to remove nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  TypeID = CFBagGetTypeID();
  if (TypeID == CFGetTypeID(self->_table))
  {
    table = self->_table;

    CFBagRemoveValue(table, object);
  }

  else
  {
    value[0] = 0;
    if (CFDictionaryGetValueIfPresent(self->_table, object, value))
    {
      v7 = self->_table;
      v8 = --value[0];
      if (value[0])
      {
        CFDictionarySetValue(v7, object, v8);
      }

      else
      {
        CFDictionaryRemoveValue(v7, object);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_allocWithZone(objc_opt_class());

  return [v4 initWithSet:self copyItems:0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_allocWithZone(objc_opt_class());

  return [v4 initWithSet:self copyItems:0];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v13 = *MEMORY[0x1E69E9840];
  TypeID = CFBagGetTypeID();
  if (TypeID == CFGetTypeID(self->_table))
  {
    v10 = _CFBagFastEnumeration();
    if (!_CFExecutableLinkedOnOrAfter())
    {
      state->var2 = &countByEnumeratingWithState_objects_count__mut;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSCountedSet;
    return [(NSCountedSet *)&v12 countByEnumeratingWithState:state objects:objects count:count];
  }

  return v10;
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSCountedSet *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(self);
      }

      if (count == v10)
      {
        break;
      }

      *objects++ = *(*(&v12 + 1) + 8 * v10);
      if (v8 == ++v10)
      {
        v8 = [(NSCountedSet *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
        count -= v10;
        if (v8)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  v6 = [(NSCountedSet *)self count];
  v7 = v6;
  if (allowsKeyedCoding)
  {
    [coder encodeInt64:v6 forKey:@"NS.count"];
    objectEnumerator = [(NSCountedSet *)self objectEnumerator];
    nextObject = [(NSEnumerator *)objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = 0;
      do
      {
        [coder encodeObject:nextObject2 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.object%qd", v11)}];
        [coder encodeInt64:-[NSCountedSet countForObject:](self forKey:{"countForObject:", nextObject2), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.count%qd", v11++)}];
        nextObject2 = [(NSEnumerator *)objectEnumerator nextObject];
      }

      while (nextObject2);
    }
  }

  else
  {
    v20 = v6;
    v12 = [coder encodeValueOfObjCType:"I" at:&v20];
    if (v7 >= 1)
    {
      if (v7 >> 60)
      {
        v17 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
        v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v17 userInfo:0];
        CFRelease(v17);
        objc_exception_throw(v18);
      }

      v13 = MEMORY[0x1EEE9AC00](v12);
      v15 = (v19 - v14);
      v19[1] = 0;
      if (v7 >= 0x101)
      {
        v15 = _CFCreateArrayStorage();
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      [(NSCountedSet *)self getObjects:v15 count:v7, v13];
      do
      {
        [coder encodeBycopyObject:*v15];
        v20 = [(NSCountedSet *)self countForObject:*v15];
        [coder encodeValueOfObjCType:"I" at:&v20];
        ++v15;
        --v7;
      }

      while (v7);
      free(v16);
    }
  }
}

- (NSCountedSet)initWithCoder:(id)coder
{
  v40[1] = *MEMORY[0x1E69E9840];
  if ([coder allowsKeyedCoding])
  {
    v6 = [coder decodeInt64ForKey:@"NS.count"];
    if (v6 >> 60)
    {
      v7 = [NSString stringWithFormat:@"%@: cannot decode set with %qd elements in this version", _NSMethodExceptionProem(self, a2), v6];

      v8 = *MEMORY[0x1E695E628];
      v39 = @"NSLocalizedDescription";
      v40[0] = v7;
      v9 = MEMORY[0x1E695DF20];
      v10 = v40;
      v11 = &v39;
LABEL_4:
      [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v8, 4864, objc_msgSend(v9, "dictionaryWithObjects:forKeys:count:", v10, v11, 1))}];
      return 0;
    }

    v12 = [(NSCountedSet *)self initWithCapacity:v6];
    if (v12 && v6)
    {
      v16 = 0;
      while (1)
      {
        v17 = [NSString stringWithFormat:@"NS.object%qd", v16];
        v18 = [NSString stringWithFormat:@"NS.count%qd", v16];
        if (![coder containsValueForKey:v17] || !objc_msgSend(coder, "containsValueForKey:", v18))
        {
          v24 = [NSString stringWithFormat:@"%@: mismatch in count stored (%llu) vs count present (%llu)", _NSMethodExceptionProem(v12, a2), v6, v16];

          v8 = *MEMORY[0x1E695E628];
          v31 = @"NSLocalizedDescription";
          v32 = v24;
          v9 = MEMORY[0x1E695DF20];
          v10 = &v32;
          v11 = &v31;
          goto LABEL_4;
        }

        v19 = [coder decodeObjectForKey:v17];
        if (!v19)
        {
          v25 = [NSString stringWithFormat:@"%@: decode failure at index %llu - item nil", _NSMethodExceptionProem(v12, a2), v16];

          v8 = *MEMORY[0x1E695E628];
          v37 = @"NSLocalizedDescription";
          v38 = v25;
          v9 = MEMORY[0x1E695DF20];
          v10 = &v38;
          v11 = &v37;
          goto LABEL_4;
        }

        v20 = v19;
        v21 = [coder decodeInt64ForKey:v18];
        if (!v21)
        {
          v26 = [NSString stringWithFormat:@"%@: decode failure at index %llu -- itemCount zero", _NSMethodExceptionProem(v12, a2), v16];

          v8 = *MEMORY[0x1E695E628];
          v35 = @"NSLocalizedDescription";
          v36 = v26;
          v9 = MEMORY[0x1E695DF20];
          v10 = &v36;
          v11 = &v35;
          goto LABEL_4;
        }

        v22 = v21;
        if (v21 >> 60)
        {
          break;
        }

        do
        {
          --v22;
          [(NSCountedSet *)v12 addObject:v20];
        }

        while (v22);
        if (++v16 == v6)
        {
          return v12;
        }
      }

      v27 = [NSString stringWithFormat:@"%@: cannot store %qd instances of item '%@' in this version", _NSMethodExceptionProem(v12, a2), v21, v20];

      v8 = *MEMORY[0x1E695E628];
      v33 = @"NSLocalizedDescription";
      v34 = v27;
      v9 = MEMORY[0x1E695DF20];
      v10 = &v34;
      v11 = &v33;
      goto LABEL_4;
    }
  }

  else
  {
    v13 = [coder versionForClassName:@"NSCountedSet"];
    if (v13 > 1)
    {
      v28 = [NSString stringWithFormat:@"%@: NSCountedSet cannot decode class version %lu", _NSMethodExceptionProem(self, a2), v13];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v28 userInfo:0]);
    }

    v30 = 0;
    [coder decodeValueOfObjCType:"I" at:&v30 size:4];
    v14 = v30;
    _NSSetCheckSize(self, a2, v30, "count");
    v12 = [(NSCountedSet *)self initWithCapacity:v14];
    if (v14)
    {
      do
      {
        v29 = 0;
        [coder decodeValueOfObjCType:"@" at:&v29 size:8];
        [coder decodeValueOfObjCType:"I" at:&v30 size:4];
        v15 = v30;
        if (v30)
        {
          do
          {
            --v15;
            [(NSCountedSet *)v12 addObject:v29];
          }

          while (v15);
        }

        --v14;
      }

      while (v14);
    }
  }

  return v12;
}

- (id)descriptionWithLocale:(id)locale
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = [(NSCountedSet *)self count];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(NSMutableString) initWithCapacity:v5 << 6];
    v8 = objc_opt_class();
    v9 = objc_msgSend(v7, "appendFormat:", @"<%@: %p> ("), NSStringFromClass(v8), self;
    if (v6 >> 60)
    {
      v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
      v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0];
      CFRelease(v19);
      objc_exception_throw(v20);
    }

    v21[1] = v21;
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = (v21 - v11);
    v21[2] = 0;
    if (v6 >= 0x101)
    {
      v12 = _CFCreateArrayStorage();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [(NSCountedSet *)self getObjects:v12 count:v6, v10];
    v16 = 1;
    do
    {
      if ((v16 & 1) == 0)
      {
        [v7 replaceCharactersInRange:objc_msgSend(v7 withString:{"length"), 0, @", "}];
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v7 length];
        v18 = [*v12 descriptionWithLocale:locale];
      }

      else
      {
        v17 = [v7 length];
        v18 = [*v12 description];
      }

      [v7 replaceCharactersInRange:v17 withString:{0, v18}];
      [v7 appendFormat:@" [%ld]", -[NSCountedSet countForObject:](self, "countForObject:", *v12)];
      v16 = 0;
      ++v12;
      --v6;
    }

    while (v6);
    [v7 replaceCharactersInRange:objc_msgSend(v7 withString:{"length"), 0, @""}]);
    free(v13);
    return v7;
  }

  else
  {
    v14 = objc_opt_class();
    return [NSString stringWithFormat:@"<%@: %p> ()", NSStringFromClass(v14), self];
  }
}

- (NSUInteger)countForObject:(id)object
{
  v7[1] = *MEMORY[0x1E69E9840];
  TypeID = CFBagGetTypeID();
  if (TypeID == CFGetTypeID(self->_table))
  {
    if (object)
    {

      JUMPOUT(0x1865CD740);
    }

    return 0;
  }

  v7[0] = 0;
  if (!object)
  {
    return 0;
  }

  if (CFDictionaryGetValueIfPresent(self->_table, object, v7))
  {
    return v7[0];
  }

  else
  {
    return 0;
  }
}

- (NSCountedSet)initWithCapacity:(NSUInteger)numItems
{
  _NSSetCheckSize(self, a2, numItems, "capacity");
  self->_table = CFBagCreateMutable(0, 0, MEMORY[0x1E695E9D0]);
  return self;
}

- (NSCountedSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  countCopy = count;
  _NSSetCheckSize(self, a2, count, "count");
  for (i = [(NSCountedSet *)self initWithCapacity:countCopy]; countCopy; ++objects)
  {
    if (!*objects)
    {
      _NSSetRaiseInsertNilException(i, a2);
    }

    --countCopy;
    [(NSCountedSet *)i addObject:?];
  }

  return i;
}

- (NSCountedSet)initWithSet:(id)set copyItems:(BOOL)items
{
  itemsCopy = items;
  v7 = [set count];
  v8 = [(NSCountedSet *)self initWithCapacity:v7];
  if (v7)
  {
    objectEnumerator = [set objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        v12 = [set countForObject:nextObject2];
        if (itemsCopy)
        {
          v13 = [nextObject2 copyWithZone:0];
        }

        else
        {
          v13 = nextObject2;
        }

        v14 = v13;
        while (v12)
        {
          --v12;
          [(NSCountedSet *)v8 addObject:v14];
        }

        nextObject2 = [objectEnumerator nextObject];
      }

      while (nextObject2);
    }
  }

  return v8;
}

- (NSCountedSet)initWithArray:(NSArray *)array
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSCountedSet;
  return [(NSCountedSet *)&v4 initWithArray:array];
}

- (NSCountedSet)initWithSet:(NSSet *)set
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSCountedSet;
  return [(NSCountedSet *)&v4 initWithSet:set];
}

@end