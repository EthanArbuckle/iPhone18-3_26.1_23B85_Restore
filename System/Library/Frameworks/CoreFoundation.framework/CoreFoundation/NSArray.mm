@interface NSArray
+ (NSArray)allocWithZone:(_NSZone *)zone;
+ (NSArray)array;
+ (NSArray)arrayWithArray:(NSArray *)array;
+ (NSArray)arrayWithArray:(id)array range:(_NSRange)range;
+ (NSArray)arrayWithObject:(id)anObject;
+ (NSArray)arrayWithObjects:(id *)objects count:(NSUInteger)cnt;
+ (NSArray)arrayWithObjects:(id)firstObj;
+ (NSArray)arrayWithOrderedSet:(id)set;
+ (NSArray)arrayWithOrderedSet:(id)set range:(_NSRange)range;
+ (NSArray)arrayWithSet:(id)set;
+ (id)newArrayWithObjects:(const void *)objects count:(unint64_t)count;
- (BOOL)containsObject:(id)anObject;
- (BOOL)containsObject:(id)object inRange:(_NSRange)range;
- (BOOL)containsObjectIdenticalTo:(id)to;
- (BOOL)containsObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArray:(NSArray *)otherArray;
- (NSArray)arrayByAddingObject:(id)anObject;
- (NSArray)arrayByAddingObjectsFromArray:(NSArray *)otherArray;
- (NSArray)initWithArray:(NSArray *)array;
- (NSArray)initWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items;
- (NSArray)initWithObject:(id)object;
- (NSArray)initWithObjects:(id)firstObj;
- (NSArray)initWithOrderedSet:(id)set;
- (NSArray)initWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items;
- (NSArray)initWithSet:(id)set copyItems:(BOOL)items;
- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes;
- (NSArray)sortedArrayUsingComparator:(NSComparator)cmptr;
- (NSArray)sortedArrayUsingFunction:(NSInteger (__cdecl *)comparator context:;
- (NSArray)sortedArrayUsingSelector:(SEL)comparator;
- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (NSArray)subarrayWithRange:(NSRange)range;
- (NSEnumerator)objectEnumerator;
- (NSEnumerator)reverseObjectEnumerator;
- (NSIndexSet)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSString)componentsJoinedByString:(NSString *)separator;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
- (NSUInteger)indexOfObject:(id)anObject;
- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range;
- (NSUInteger)indexOfObject:(id)obj inSortedRange:(NSRange)r options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp;
- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject;
- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
- (NSUInteger)indexOfObjectPassingTest:(void *)predicate;
- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (id)_initByAdoptingBuffer:(id *)buffer count:(unint64_t)count size:(unint64_t)size;
- (id)allObjects;
- (id)arrayByApplyingSelector:(SEL)selector;
- (id)arrayByExcludingObjectsInArray:(id)array;
- (id)arrayByExcludingToObjectsInArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstObject;
- (id)firstObjectCommonWithArray:(NSArray *)otherArray;
- (id)indexesOfObject:(id)object;
- (id)indexesOfObject:(id)object inRange:(_NSRange)range;
- (id)indexesOfObjectIdenticalTo:(id)to;
- (id)indexesOfObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (id)objectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)objectPassingTest:(id)test;
- (id)objectWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)objectsPassingTest:(id)test;
- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)reversedArray;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (unint64_t)countForObject:(id)object inRange:(_NSRange)range;
- (unint64_t)hash;
- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(NSRange)range;
- (void)makeObjectsPerformSelector:(SEL)aSelector;
- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;
@end

@implementation NSArray

+ (NSArray)array
{
  v2 = [[self alloc] initWithObjects:0 count:0];

  return v2;
}

- (id)firstObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  result = [(NSArray *)self count];
  if (result)
  {

    return [(NSArray *)self objectAtIndex:0];
  }

  return result;
}

- (NSEnumerator)reverseObjectEnumerator
{
  v2 = [[__NSArrayReverseEnumerator alloc] initWithObject:self];

  return v2;
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self count];
}

- (id)lastObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  result = [(NSArray *)self count];
  if (result)
  {

    return [(NSArray *)self objectAtIndex:result - 1];
  }

  return result;
}

- (NSString)description
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self descriptionWithLocale:0 indent:0];
}

- (NSEnumerator)objectEnumerator
{
  v2 = [[__NSFastEnumerationEnumerator alloc] initWithObject:self];

  return v2;
}

- (id)allObjects
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(NSArray *)self count];
  v5 = v4;
  if (v4 >> 60)
  {
    v13 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v14 = [NSException exceptionWithName:@"NSGenericException" reason:v13 userInfo:0];
    CFRelease(v13);
    objc_exception_throw(v14);
  }

  v15[0] = 0;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v6 = _CFCreateArrayStorage(v4, 0, v15);
  [(NSArray *)self getObjects:v6 range:0, v5];
  if (v6)
  {
    if (v5)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *v7++;
        --v8;
      }

      while (v8);
    }

    v10 = [[NSArray alloc] _initByAdoptingBuffer:v6 count:v5 size:v5];
  }

  else
  {
    v10 = [[NSArray alloc] initWithObjects:0 count:v5];
  }

  result = v10;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)componentsJoinedByString:(NSString *)separator
{
  v4 = separator;
  v25 = *MEMORY[0x1E69E9840];
  if (separator && (_NSIsNSString(separator) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray componentsJoinedByString:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: string argument is not an NSString", "[NSArray componentsJoinedByString:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v16];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (!v4)
  {
    v4 = &stru_1EF068AA8;
  }

  v6 = [(NSArray *)self count];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(NSArray *)self countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      v12 = 0;
      v13 = v10 + 1;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(self);
        }

        CFStringAppend(Mutable, [*(*(&v21 + 1) + 8 * v12) description]);
        if (v13 < v6)
        {
          CFStringAppend(Mutable, v4);
        }

        ++v12;
        ++v13;
      }

      while (v9 != v12);
      v10 += v9;
      v9 = [(NSArray *)self countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v9);
  }

  result = Mutable;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)containsObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v22 = v9;
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v23, "[NSArray containsObject:inRange:]", location, length, --v22);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, "[NSArray containsObject:inRange:]", location, length, v22);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[NSArray containsObject:inRange:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v20, "[NSArray containsObject:inRange:]", location, length);
    }

    v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v25);
  }

  if (length)
  {
    v10 = [(NSArray *)self objectAtIndex:location];
    if (v10 == object)
    {
      v14 = 1;
    }

    else
    {
      v11 = v10;
      v12 = location + 1;
      v13 = 1;
      v14 = 1;
      do
      {
        if ([object isEqual:v11])
        {
          break;
        }

        v14 = v13 < length;
        if (length == v13)
        {
          break;
        }

        v11 = [(NSArray *)self objectAtIndex:v12++];
        ++v13;
      }

      while (v11 != object);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)containsObject:(id)anObject
{
  v17 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        if (*(*(&v13 + 1) + 8 * i) == anObject || ([anObject isEqual:?] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
      LOBYTE(v6) = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)containsObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v16 = _os_log_pack_size();
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSArray containsObjectIdenticalTo:inRange:]", location, length, --v21);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSArray containsObjectIdenticalTo:inRange:]", location, length, v21);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSArray containsObjectIdenticalTo:inRange:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSArray containsObjectIdenticalTo:inRange:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  if (length)
  {
    if ([(NSArray *)self objectAtIndex:location]== to)
    {
      result = 1;
    }

    else
    {
      v10 = location + 1;
      v11 = -1;
      do
      {
        v12 = v11;
        if (-length == v11)
        {
          break;
        }

        v13 = [(NSArray *)self objectAtIndex:v10];
        v11 = v12 - 1;
        ++v10;
      }

      while (v13 != to);
      result = -v12 < length;
    }
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)containsObjectIdenticalTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        if (*(*(&v13 + 1) + 8 * v9) == to)
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  v23[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v15 = _os_log_pack_size();
    v17 = v23 - ((MEMORY[0x1EEE9AC00](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[NSArray countByEnumeratingWithState:objects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = countCopy;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSArray countByEnumeratingWithState:objects:count:]", countCopy);
    goto LABEL_21;
  }

  if (count >> 61)
  {
    v15 = _os_log_pack_size();
    v17 = v23 - ((MEMORY[0x1EEE9AC00](v15, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "[NSArray countByEnumeratingWithState:objects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = countCopy;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSArray countByEnumeratingWithState:objects:count:]", countCopy);
LABEL_21:
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v15];
    objc_exception_throw(v22);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  var0 = state->var0;
  if (state->var0 == -1)
  {
    countCopy = 0;
  }

  else
  {
    if (var0)
    {
      v11 = state->var3[0];
    }

    else
    {
      state->var2 = state->var3;
      v11 = [(NSArray *)self count];
      state->var3[0] = v11;
      var0 = state->var0;
    }

    state->var1 = objects;
    if (v11 - var0 < countCopy)
    {
      countCopy = v11 - var0;
    }

    if (countCopy)
    {
      [(NSArray *)self getObjects:objects range:?];
      var0 = state->var0;
    }

    v12 = var0 + countCopy;
    if (v11 <= var0 + countCopy)
    {
      v12 = -1;
    }

    state->var0 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];
  return countCopy;
}

- (unint64_t)countForObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v15 = _os_log_pack_size();
      v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill();
      v21 = v10 - 1;
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v20, "[NSArray countForObject:inRange:]", location, length, v21);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSArray countForObject:inRange:]", location, length, v21);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill();
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSArray countForObject:inRange:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSArray countForObject:inRange:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v15];
    objc_exception_throw(v23);
  }

  for (i = 0; length; --length)
  {
    v12 = [(NSArray *)self objectAtIndex:location];
    if (v12 == object || [object isEqual:v12])
    {
      ++i;
    }

    ++location;
  }

  v13 = *MEMORY[0x1E69E9840];
  return i;
}

- (unint64_t)countForObject:(id)object
{
  v18 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(self);
        }

        if (*(*(&v14 + 1) + 8 * i) == object || [object isEqual:?])
        {
          ++v8;
        }
      }

      v7 = [(NSArray *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (level >= 0x64)
  {
    v7 = 100;
  }

  else
  {
    v7 = level;
  }

  v8 = [(NSArray *)self count];
  v10 = v8;
  if (v8 >> 60)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
    CFRelease(v28);
    objc_exception_throw(v29);
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = (&v30 - v12);
  v41[0] = 0;
  if (v10 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, v41);
    v34 = v13;
  }

  else
  {
    v34 = 0;
  }

  [(NSArray *)self getObjects:v13 range:0, v10];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = -1;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __40__NSArray_descriptionWithLocale_indent___block_invoke;
  v37 = &unk_1E6DCFD88;
  v38 = v39;
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v33 = &__kCFAllocatorSystemDefault;
  v31 = objc_autoreleasePoolPush();
  v32 = level;
  if (v10)
  {
    v15 = v13;
    v16 = v10;
    do
    {
      v17 = *v15;
      if (_NSIsNSString(*v15))
      {
        _stringRepresentation = [v17 _stringRepresentation];
      }

      else if ((_NSIsNSDictionary(v17) & 1) != 0 || _NSIsNSArray(v17))
      {
        _stringRepresentation = [v17 descriptionWithLocale:locale indent:v7 + 1];
      }

      else if (_NSIsNSData(v17))
      {
        _stringRepresentation = [v17 description];
      }

      else
      {
        v20 = [v17 description];
        _stringRepresentation = v36(v35, v20);
      }

      if (_stringRepresentation)
      {
        v19 = _stringRepresentation;
      }

      else
      {
        v19 = @"(null)";
      }

      *v15++ = v19;
      --v16;
    }

    while (v16);
  }

  v21 = CFStringCreateMutable(v33, 0);
  if (v32)
  {
    do
    {
      CFStringAppend(v21, @"    ");
      --v7;
    }

    while (v7);
  }

  CFStringAppend(Mutable, v21);
  CFStringAppend(Mutable, @"(\n");
  v22 = 1;
  v23 = v10;
  while (v23)
  {
    CFStringAppend(Mutable, v21);
    CFStringAppend(Mutable, @"    ");
    CFStringAppend(Mutable, *v13);
    if (v22 >= v10)
    {
      v24 = @"\n";
    }

    else
    {
      v24 = @",\n";
    }

    --v23;
    ++v13;
    ++v22;
    CFStringAppend(Mutable, v24);
  }

  CFStringAppend(Mutable, v21);
  CFStringAppend(Mutable, @""));
  CFRelease(v21);
  objc_autoreleasePoolPop(v31);
  v25 = Mutable;
  _Block_object_dispose(v39, 8);
  free(v34);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t __40__NSArray_descriptionWithLocale_indent___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    *(*(*(a1 + 32) + 8) + 24) = objc_lookUpClass("NSString") != 0;
  }

  if (!_CFExecutableLinkedOnOrAfter(6uLL) || !*(*(*(a1 + 32) + 8) + 24))
  {
    return a2;
  }

  return [a2 _stringRepresentation];
}

- (NSString)descriptionWithLocale:(id)locale
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self descriptionWithLocale:locale indent:0];
}

- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!s)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if (!block)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xEFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, block, opts | 0x1000000000000000, s);
  v11 = *MEMORY[0x1E69E9840];

  __NSArrayEnumerate(self, block, opts | 0x1000000000000000, s);
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[NSArray enumerateObjectsWithOptions:usingBlock:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSArray enumerateObjectsWithOptions:usingBlock:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= ~1uLL;
  }

  __NSArrayParameterCheckIterate(self, a2, block, opts, 0);
  v9 = *MEMORY[0x1E69E9840];

  __NSArrayEnumerate(self, block, opts, 0);
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSArray enumerateObjectsUsingBlock:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSArray enumerateObjectsUsingBlock:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = *MEMORY[0x1E69E9840];

  [(NSArray *)self enumerateObjectsWithOptions:0 usingBlock:block];
}

- (id)firstObjectCommonWithArray:(NSArray *)otherArray
{
  v23 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
    if (!otherArray)
    {
      goto LABEL_4;
    }
  }

  else if (!otherArray)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(otherArray) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSArray firstObjectCommonWithArray:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray firstObjectCommonWithArray:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

LABEL_4:
  v6 = [NSSet setWithArray:otherArray];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(NSArray *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(self);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([(NSSet *)v6 containsObject:v11])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)getObjects:(id *)objects range:(NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objects;
  v26[1] = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    v11 = _os_log_pack_size();
    v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[NSArray getObjects:range:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = length;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSArray getObjects:range:]", length);
    goto LABEL_13;
  }

  if (range.length >> 61)
  {
    v11 = _os_log_pack_size();
    v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[NSArray getObjects:range:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = length;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSArray getObjects:range:]", length);
LABEL_13:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v22 = v9;
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v23, "[NSArray getObjects:range:]", location, length, --v22);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, "[NSArray getObjects:range:]", location, length, v22);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[NSArray getObjects:range:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v20, "[NSArray getObjects:range:]", location, length);
    }

    v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v25);
  }

  for (; length; --length)
  {
    *v7++ = [(NSArray *)self objectAtIndex:location++];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)objects
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (!objects && v6)
  {
    v9 = v6;
    v10 = _os_log_pack_size();
    v12 = v19 - ((MEMORY[0x1EEE9AC00](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[NSArray getObjects:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSArray getObjects:]", v9);
    goto LABEL_11;
  }

  if (v6 >> 61)
  {
    v15 = v6;
    v10 = _os_log_pack_size();
    v12 = v19 - ((MEMORY[0x1EEE9AC00](v10, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[NSArray getObjects:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v15;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSArray getObjects:]", v15);
LABEL_11:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v10];
    objc_exception_throw(v18);
  }

  v7 = [(NSArray *)self count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSArray *)self getObjects:objects range:0, v7];
}

- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v25[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = _os_log_pack_size();
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      v22 = v10 - 1;
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSArray indexOfObject:inRange:]", location, length, v22);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSArray indexOfObject:inRange:]", location, length, v22);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSArray indexOfObject:inRange:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSArray indexOfObject:inRange:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  if (length)
  {
    v11 = 0;
    v12 = location;
    while (1)
    {
      v13 = [(NSArray *)self objectAtIndex:v12];
      if (v13 == anObject)
      {
        break;
      }

      if ([anObject isEqual:v13])
      {
        goto LABEL_13;
      }

      ++v11;
      ++v12;
      if (!--length)
      {
        goto LABEL_11;
      }
    }

    v12 = v11 + location;
  }

  else
  {
LABEL_11:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (NSUInteger)indexOfObject:(id)anObject
{
  v19 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_5:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(self);
      }

      if (*(*(&v15 + 1) + 8 * v10) == anObject || ([anObject isEqual:?] & 1) != 0)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(NSArray *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v21[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = v9;
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  if (length)
  {
    while ([(NSArray *)self objectAtIndex:location]!= anObject)
    {
      ++location;
      if (!--length)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = *MEMORY[0x1E69E9840];
  return location;
}

- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject
{
  v19 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_5:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(self);
      }

      if (*(*(&v15 + 1) + 8 * v10) == anObject)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(NSArray *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)indexesOfObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22[5] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v18 = v9;
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v19, "[NSArray indexesOfObject:inRange:]", location, length, --v18);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, "[NSArray indexesOfObject:inRange:]", location, length, v18);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSArray indexesOfObject:inRange:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSArray indexesOfObject:inRange:]", location, length);
    }

    v21 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v13];
    objc_exception_throw(v21);
  }

  v10 = [(objc_class *)__CFLookUpClass("NSIndexSet") indexSetWithIndexesInRange:location, length];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __35__NSArray_indexesOfObject_inRange___block_invoke;
  v22[3] = &unk_1E6DCFDB0;
  v22[4] = object;
  result = [(NSArray *)self indexesOfObjectsAtIndexes:v10 options:0 passingTest:v22];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __35__NSArray_indexesOfObject_inRange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == a2)
  {
    return 1;
  }

  else
  {
    return [v2 isEqual:a2];
  }
}

- (id)indexesOfObject:(id)object
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27__NSArray_indexesOfObject___block_invoke;
  v8[3] = &unk_1E6DCFDB0;
  v8[4] = object;
  result = [(NSArray *)self indexesOfObjectsWithOptions:0 passingTest:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __27__NSArray_indexesOfObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == a2)
  {
    return 1;
  }

  else
  {
    return [v2 isEqual:a2];
  }
}

- (id)indexesOfObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22[5] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v18 = v9;
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v19, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length, --v18);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length, v18);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length);
    }

    v21 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v13];
    objc_exception_throw(v21);
  }

  v10 = [(objc_class *)__CFLookUpClass("NSIndexSet") indexSetWithIndexesInRange:location, length];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__NSArray_indexesOfObjectIdenticalTo_inRange___block_invoke;
  v22[3] = &unk_1E6DCFDB0;
  v22[4] = to;
  result = [(NSArray *)self indexesOfObjectsAtIndexes:v10 options:0 passingTest:v22];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)indexesOfObjectIdenticalTo:(id)to
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__NSArray_indexesOfObjectIdenticalTo___block_invoke;
  v8[3] = &unk_1E6DCFDB0;
  v8[4] = to;
  result = [(NSArray *)self indexesOfObjectsWithOptions:0 passingTest:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSUInteger)indexOfObject:(id)obj inSortedRange:(NSRange)r options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp
{
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  if (!obj)
  {
    v37 = _os_log_pack_size();
    v38 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill();
    *v39 = 136315138;
    *(v39 + 4) = "[NSArray indexOfObject:inSortedRange:options:usingComparator:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSArray indexOfObject:inSortedRange:options:usingComparator:]");
    goto LABEL_55;
  }

  if (!cmp)
  {
    v37 = _os_log_pack_size();
    v38 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    *v41 = 136315138;
    *(v41 + 4) = "[NSArray indexOfObject:inSortedRange:options:usingComparator:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray indexOfObject:inSortedRange:options:usingComparator:]");
LABEL_55:
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v38, v37];
    objc_exception_throw(v42);
  }

  length = r.length;
  location = r.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(selfCopy, v6, __CFTSANTagMutableArray);
  }

  v13 = [(NSArray *)selfCopy count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || (v14 = location + length, v13 < location + length))
  {
    if (v13)
    {
      v43 = v13;
      v32 = _os_log_pack_size();
      v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill();
      v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length, --v43);
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length, v43);
    }

    else
    {
      v32 = _os_log_pack_size();
      v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill();
      v35 = __os_log_helper_1_2_3_8_32_8_0_8_0(v34, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length);
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v35, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length);
    }

    v46 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v33, v32];
    objc_exception_throw(v46);
  }

  if ((opts & 0x300) == 0x300)
  {
    v47 = __CFExceptionProem(selfCopy, a2);
    v48 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: both NSBinarySearchingFirstEqual and NSBinarySearchingLastEqual options cannot be specified", v47);
    v49 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v48), 0];
    objc_exception_throw(v49);
  }

  if (!length)
  {
    v28 = (opts & 0x400) == 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_40;
  }

  v51 = opts & 0x200;
  if (length < 0x101)
  {
    goto LABEL_15;
  }

  v15 = v14 - 1;
  v16 = (*(cmp + 2))(cmp, [(NSArray *)selfCopy objectAtIndex:v14 - 1], obj);
  if (v16 < 0)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_44:
    if ((opts & 0x400) != 0)
    {
      v22 = location + length;
    }

    else
    {
      v22 = v15;
    }

    goto LABEL_47;
  }

  if (!(v16 | opts & 0x100))
  {
    goto LABEL_44;
  }

  v17 = (*(cmp + 2))(cmp, obj, [(NSArray *)selfCopy objectAtIndex:location]);
  if (v17 < 0)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
    v28 = (opts & 0x400) == 0;
LABEL_40:
    if (v28)
    {
      v22 = v29;
    }

    else
    {
      v22 = location;
    }

    goto LABEL_47;
  }

  if (!(v17 | v51))
  {
    v29 = location;
    goto LABEL_50;
  }

LABEL_15:
  v50 = opts;
  v18 = flsl(length);
  v19 = 0;
  v20 = 0;
  v21 = 2 << v18;
  do
  {
    v22 = location + v21 / 2;
    if (v22 < v14)
    {
      v19 = (*(cmp + 2))(cmp, [(NSArray *)selfCopy objectAtIndex:location + v21 / 2], obj);
      if (!(v19 | opts & 0x300))
      {
        goto LABEL_47;
      }

      if (v19)
      {
        v23 = 1;
      }

      else
      {
        v23 = v51 == 0;
      }

      v20 |= v19 == 0;
      v24 = !v23 || v19 <= -1;
      if (v24)
      {
        location += v21 / 2;
      }
    }

    v24 = v21 <= 1;
    v21 /= 2;
  }

  while (!v24);
  LODWORD(v25) = v51 != 0;
  if (v19)
  {
    LODWORD(v25) = 0;
  }

  if (v19 < 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = v25;
  }

  v26 = location + v25;
  v27 = location + (v19 >> 63);
  if ((v20 & 1) == 0)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v50 & 0x400) != 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = v27;
  }

LABEL_47:
  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!s)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSArray indexOfObjectAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray indexOfObjectAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSArray indexOfObjectAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexOfObjectAtIndexes:options:passingTest:]");
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xCFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x3000000000000000, s);
  v11 = *MEMORY[0x1E69E9840];

  return __NSArrayGetIndexPassingTest(self, predicate, opts | 0x3000000000000000, s);
}

- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSArray indexOfObjectWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexOfObjectWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xDFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x2000000000000000, 0);
  v9 = *MEMORY[0x1E69E9840];

  return __NSArrayGetIndexPassingTest(self, predicate, opts | 0x2000000000000000, 0);
}

- (NSUInteger)indexOfObjectPassingTest:(void *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSArray indexOfObjectPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexOfObjectPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self indexOfObjectWithOptions:0 passingTest:predicate];
}

- (NSIndexSet)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!s)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]");
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x5000000000000000, s);
  v11 = *MEMORY[0x1E69E9840];

  return __NSArrayGetIndexesPassingTest(self, predicate, opts | 0x5000000000000000, s);
}

- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSArray indexesOfObjectsWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexesOfObjectsWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x4000000000000000, 0);
  v9 = *MEMORY[0x1E69E9840];

  return __NSArrayGetIndexesPassingTest(self, predicate, opts | 0x4000000000000000, 0);
}

- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSArray indexesOfObjectsPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexesOfObjectsPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self indexesOfObjectsWithOptions:0 passingTest:predicate];
}

- (BOOL)isEqualToArray:(NSArray *)otherArray
{
  v4 = MEMORY[0x1EEE9AC00](self, a2);
  v6 = v5;
  v7 = v4;
  v25[256] = *MEMORY[0x1E69E9840];
  if (v5 && (_NSIsNSArray(v5) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v18 = &v24[-((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSArray isEqualToArray:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray isEqualToArray:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v21);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(v7, v3, __CFTSANTagMutableArray);
  }

  LOBYTE(v8) = v6 == v7;
  if (v6 != v7 && v6)
  {
    v9 = [v7 count];
    if ([v6 count] == v9)
    {
      if (v9)
      {
        v10 = 0;
        if (v9 >= 0x100)
        {
          v11 = 256;
        }

        else
        {
          v11 = v9;
        }

        while (1)
        {
          [v7 getObjects:v25 range:{v10, v11}];
          [v6 getObjects:v24 range:{v10, v11}];
          if (v11)
          {
            break;
          }

LABEL_17:
          v10 += v11;
          if (v9 < v10 + v11)
          {
            v11 = v9 - v10;
          }

          if (v9 <= v10)
          {
            goto LABEL_20;
          }
        }

        v12 = v24;
        v13 = v25;
        v14 = v11;
        while (1)
        {
          if (*v13 != *v12)
          {
            v8 = [*v13 isEqual:?];
            if (!v8)
            {
              break;
            }
          }

          ++v12;
          ++v13;
          if (!--v14)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_20:
        LOBYTE(v8) = 1;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal)
  {
    v6 = _NSIsNSArray(equal);
    if (v6)
    {

      LOBYTE(v6) = [(NSArray *)self isEqualToArray:equal];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)makeObjectsPerformSelector:(SEL)aSelector
{
  v24 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 > 0x80)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [(NSArray *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(self);
          }

          [*(*(&v20 + 1) + 8 * i) performSelector:aSelector];
        }

        v15 = [(NSArray *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v15);
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = v6;
    v9 = MEMORY[0x1EEE9AC00](v6, v7);
    v11 = &v19[-v10];
    if (v9)
    {
      v12 = 0;
      do
      {
        v11[v12] = [(NSArray *)self objectAtIndex:v12];
        ++v12;
      }

      while (v8 != v12);
      do
      {
        v13 = *v11++;
        [v13 performSelector:aSelector];
        --v8;
      }

      while (v8);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument
{
  v26 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if (v8 > 0x80)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = [(NSArray *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(self);
          }

          [*(*(&v22 + 1) + 8 * i) performSelector:aSelector withObject:argument];
        }

        v17 = [(NSArray *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v17);
    }

    v20 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = v8;
    v11 = MEMORY[0x1EEE9AC00](v8, v9);
    v13 = &v21[-v12];
    if (v11)
    {
      v14 = 0;
      do
      {
        v13[v14] = [(NSArray *)self objectAtIndex:v14];
        ++v14;
      }

      while (v10 != v14);
      do
      {
        v15 = *v13++;
        [v15 performSelector:aSelector withObject:argument];
        --v10;
      }

      while (v10);
    }

    v16 = *MEMORY[0x1E69E9840];
  }
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self objectAtIndex:idx];
}

- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes
{
  v58[1] = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v21 = _os_log_pack_size();
    v23 = &v56[-1] - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "[NSArray objectsAtIndexes:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray objectsAtIndexes:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v21];
    objc_exception_throw(v26);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v27 = _os_log_pack_size();
    v29 = &v56[-1] - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill();
    *v30 = 136315138;
    *(v30 + 4) = "[NSArray objectsAtIndexes:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectsAtIndexes:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
    objc_exception_throw(v32);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v35 = &v56[-1] - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill();
    *v36 = 136315138;
    *(v36 + 4) = "[NSArray objectsAtIndexes:]";
    v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectsAtIndexes:]");
    v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v33];
    objc_exception_throw(v38);
  }

  v6 = [(NSArray *)self count];
  v7 = [0 count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  v9 = lastIndex;
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v10 = v7 + v6;
    goto LABEL_23;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7 + v6;
    if (v10 <= lastIndex)
    {
LABEL_23:
      if (!v10)
      {
        v39 = _os_log_pack_size();
        v41 = &v56[-1] - ((MEMORY[0x1EEE9AC00](v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = _os_log_pack_fill();
        *v42 = 136315394;
        *(v42 + 4) = "[NSArray objectsAtIndexes:]";
        *(v42 + 12) = 2048;
        *(v42 + 14) = v9;
        v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSArray objectsAtIndexes:]", v9);
        v44 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v41, v39];
        objc_exception_throw(v44);
      }

      v45 = _os_log_pack_size();
      v47 = &v56[-1] - ((MEMORY[0x1EEE9AC00](v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = _os_log_pack_fill();
      v49 = v10 - 1;
      v50 = __os_log_helper_1_2_3_8_32_8_0_8_0(v48, "[NSArray objectsAtIndexes:]", v9, v49);
      v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v50, "[NSArray objectsAtIndexes:]", v9, v49);
      v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v47, v45];
      objc_exception_throw(v52);
    }
  }

  v11 = [(NSIndexSet *)indexes count];
  v12 = v11;
  if (v11 >> 60)
  {
    v53 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v54 = [NSException exceptionWithName:@"NSGenericException" reason:v53 userInfo:0];
    CFRelease(v53);
    objc_exception_throw(v54);
  }

  v58[0] = 0;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v13 = _CFCreateArrayStorage(v11, 0, v58);
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v57[3] = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __28__NSArray_objectsAtIndexes___block_invoke;
  v56[3] = &unk_1E6DCFDD8;
  v56[5] = v57;
  v56[6] = v13;
  v56[4] = self;
  [(NSIndexSet *)indexes __forwardEnumerateRanges:v56];
  if (v13)
  {
    if (v12)
    {
      v14 = v13;
      v15 = v12;
      do
      {
        v16 = *v14++;
        --v15;
      }

      while (v15);
    }

    v17 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v12 size:v12];
  }

  else
  {
    v17 = [[NSArray alloc] initWithObjects:0 count:v12];
  }

  v18 = v17;
  _Block_object_dispose(v57, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __28__NSArray_objectsAtIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) getObjects:*(a1 + 48) + 8 * *(*(*(a1 + 40) + 8) + 24) range:{a2, a3}];
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

- (id)objectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v14 = _os_log_pack_size();
    v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray objectAtIndexes:options:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSArray objectAtIndexes:options:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!test)
  {
    v14 = _os_log_pack_size();
    v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSArray objectAtIndexes:options:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectAtIndexes:options:passingTest:]");
LABEL_14:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  v10 = [(NSArray *)self indexOfObjectAtIndexes:indexes options:options passingTest:test];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    return [(NSArray *)self objectAtIndex:v10];
  }
}

- (id)objectWithOptions:(unint64_t)options passingTest:(id)test
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSArray objectWithOptions:passingTest:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectWithOptions:passingTest:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v15);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self indexOfObjectWithOptions:options passingTest:test];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return [(NSArray *)self objectAtIndex:v8];
  }
}

- (id)objectPassingTest:(id)test
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSArray objectPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self objectWithOptions:0 passingTest:test];
}

- (id)objectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSArray objectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray objectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if (!test)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSArray objectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectsAtIndexes:options:passingTest:]");
LABEL_12:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  v10 = [(NSArray *)self indexesOfObjectsAtIndexes:indexes options:options passingTest:test];
  v11 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self objectsAtIndexes:v10];
}

- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSArray objectsWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectsWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self indexesOfObjectsWithOptions:options passingTest:test];
  v9 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self objectsAtIndexes:v8];
}

- (id)objectsPassingTest:(id)test
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSArray objectsPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectsPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self objectsWithOptions:0 passingTest:test];
}

- (id)reversedArray
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [[__NSArrayReversed alloc] initWithArray:self];

  return v4;
}

- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v53[1] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    v35 = _os_log_pack_size();
    v37 = &v51[-1] - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    *v38 = 136315138;
    *(v38 + 4) = "[NSArray sortedArrayFromRange:options:usingComparator:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray sortedArrayFromRange:options:usingComparator:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v35];
    objc_exception_throw(v40);
  }

  optionsCopy = options;
  length = range.length;
  location = range.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  v11 = [(NSArray *)self count];
  if (length && (v13 = v11) != 0)
  {
    if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
    {
      v41 = _os_log_pack_size();
      v43 = &v51[-1] - ((MEMORY[0x1EEE9AC00](v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill();
      v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSArray sortedArrayFromRange:options:usingComparator:]", location, length, v13 - 1);
      v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSArray sortedArrayFromRange:options:usingComparator:]", location, length, v13 - 1);
      v47 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v46) osLogPack:0 size:v43, v41];
      objc_exception_throw(v47);
    }

    if (v11 == 1)
    {
      selfCopy = self;
      v15 = *MEMORY[0x1E69E9840];

      return selfCopy;
    }

    else if (length == 1)
    {
      v18 = [(NSArray *)self objectAtIndex:location];
      v19 = *MEMORY[0x1E69E9840];

      return [NSArray arrayWithObject:v18];
    }

    else
    {
      if (length >> 60)
      {
        v48 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
        v49 = [NSException exceptionWithName:@"NSGenericException" reason:v48 userInfo:0];
        CFRelease(v48);
        objc_exception_throw(v49);
      }

      MEMORY[0x1EEE9AC00](v11, v12);
      v21 = &v51[-1] - v20;
      v53[0] = 0;
      if (length >= 0x101)
      {
        v21 = _CFCreateArrayStorage(length, 0, v53);
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v52 = 0;
      v23 = _CFCreateArrayStorage(length, 0, &v52);
      v24 = [(NSArray *)self getObjects:v21 range:location, length];
      MEMORY[0x1EEE9AC00](v24, v25);
      v27 = &v51[-1] - v26;
      v28 = &v51[-1] - v26;
      if (length > 0x1000)
      {
        v28 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __56__NSArray_sortedArrayFromRange_options_usingComparator___block_invoke;
      v51[3] = &unk_1E6D7D7A0;
      v51[4] = comparator;
      v51[5] = v21;
      CFSortIndexes(v28, length, optionsCopy, v51);
      for (i = 0; i != length; ++i)
      {
        v23[i] = *&v21[8 * *&v28[8 * i]];
      }

      if (v27 != v28)
      {
        free(v28);
      }

      v30 = 0;
      if (length <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = length;
      }

      do
      {
        v32 = v23[v30++];
      }

      while (v31 != v30);
      v33 = [[NSArray alloc] _initByAdoptingBuffer:v23 count:length size:length];
      free(v22);
      v34 = *MEMORY[0x1E69E9840];
      return v33;
    }
  }

  else
  {
    v17 = *MEMORY[0x1E69E9840];

    return +[NSArray array];
  }
}

- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray sortedArrayWithOptions:usingComparator:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray sortedArrayWithOptions:usingComparator:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  v9 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self sortedArrayFromRange:0 options:v8 usingComparator:opts, cmptr];
}

- (NSArray)sortedArrayUsingComparator:(NSComparator)cmptr
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSArray sortedArrayUsingComparator:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray sortedArrayUsingComparator:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  v7 = *MEMORY[0x1E69E9840];

  return [(NSArray *)self sortedArrayFromRange:0 options:v6 usingComparator:0, cmptr];
}

- (NSArray)sortedArrayUsingFunction:(NSInteger (__cdecl *)comparator context:
{
  v12[6] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: function pointer cannot be NULL", context, "[NSArray sortedArrayUsingFunction:context:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__NSArray_sortedArrayUsingFunction_context___block_invoke;
  v12[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v12[4] = comparator;
  v12[5] = context;
  result = [(NSArray *)self sortedArrayWithOptions:0 usingComparator:v12];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)sortedArrayUsingSelector:(SEL)comparator
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__NSArray_sortedArrayUsingSelector___block_invoke;
  v8[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v8[4] = comparator;
  result = [(NSArray *)self sortedArrayWithOptions:0 usingComparator:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)subarrayWithRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v7 < location + length)
  {
    if (!v7)
    {
      v15 = _os_log_pack_size();
      v17 = v32 - ((MEMORY[0x1EEE9AC00](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSArray subarrayWithRange:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSArray subarrayWithRange:]", location, length);
      v21 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v15];
      objc_exception_throw(v21);
    }

    v24 = v7;
    v25 = _os_log_pack_size();
    v27 = v32 - ((MEMORY[0x1EEE9AC00](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill();
    v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSArray subarrayWithRange:]", location, length, --v24);
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSArray subarrayWithRange:]", location, length, v24);
    v31 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v27, v25];
    objc_exception_throw(v31);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
    if (length)
    {
      goto LABEL_6;
    }
  }

  else if (length)
  {
LABEL_6:
    if (length >> 60)
    {
      v22 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
      v23 = [NSException exceptionWithName:@"NSGenericException" reason:v22 userInfo:0];
      CFRelease(v22);
      objc_exception_throw(v23);
    }

    v32[0] = 0;
    v8 = _CFCreateArrayStorage(length, 0, v32);
    [(NSArray *)self getObjects:v8 range:location, length];
    if (v8)
    {
      for (i = 0; i != length; ++i)
      {
        v10 = v8[i];
      }

      v11 = [[NSArray alloc] _initByAdoptingBuffer:v8 count:length size:length];
    }

    else
    {
      v11 = [[NSArray alloc] initWithObjects:0 count:length];
    }

    result = v11;
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

  v14 = *MEMORY[0x1E69E9840];

  return +[NSArray array];
}

+ (NSArray)allocWithZone:(_NSZone *)zone
{
  v8 = *MEMORY[0x1E69E9840];
  if (NSArray == self)
  {
    v5 = *MEMORY[0x1E69E9840];

    return __NSArrayImmutablePlaceholder();
  }

  else if (NSMutableArray == self)
  {
    v6 = *MEMORY[0x1E69E9840];

    return __NSArrayMutablePlaceholder();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NSArray;
    result = objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (NSArray)initWithArray:(NSArray *)array
{
  v5 = [(NSArray *)array count];

  return [(NSArray *)self initWithArray:array range:0 copyItems:v5, 0];
}

- (NSArray)initWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items
{
  itemsCopy = items;
  length = range.length;
  location = range.location;
  v51 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v36 = _os_log_pack_size();
    v38 = &v50 - ((MEMORY[0x1EEE9AC00](v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill();
    *v39 = 136315138;
    *(v39 + 4) = "[NSArray initWithArray:range:copyItems:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray initWithArray:range:copyItems:]");
    v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v38, v36];
    objc_exception_throw(v41);
  }

  v10 = [array count];
  v12 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v27 = _os_log_pack_size();
      v29 = &v50 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      v31 = __os_log_helper_1_2_3_8_32_8_0_8_0(v30, "[NSArray initWithArray:range:copyItems:]", location, length);
      v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v31, "[NSArray initWithArray:range:copyItems:]", location, length);
      v33 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v29, v27];
      objc_exception_throw(v33);
    }

    v42 = _os_log_pack_size();
    v44 = &v50 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = v12 - 1;
    v47 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSArray initWithArray:range:copyItems:]", location, length, v46);
    v48 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v47, "[NSArray initWithArray:range:copyItems:]", location, length, v46);
    v49 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v48) osLogPack:0 size:v44, v42];
    objc_exception_throw(v49);
  }

  if (length >> 60)
  {
    v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
    CFRelease(v34);
    objc_exception_throw(v35);
  }

  if (length <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = length;
  }

  v14 = MEMORY[0x1EEE9AC00](v13, v11);
  v16 = (&v50 - v15);
  v50 = 0;
  if (length >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v50);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [array getObjects:v16 range:{location, length, v50, v51}];
  if (!length)
  {
    itemsCopy = 0;
  }

  if (itemsCopy)
  {
    v18 = v16;
    v19 = length;
    do
    {
      *v18 = [*v18 copyWithZone:0];
      ++v18;
      --v19;
    }

    while (v19);
  }

  if (v17)
  {
    if (length)
    {
      v20 = length;
      v21 = v17;
      do
      {
        if ((*v21 & 0x8000000000000000) == 0)
        {
          v22 = *v21;
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    v23 = [(NSArray *)self _initByAdoptingBuffer:v17 count:length size:length];
  }

  else
  {
    v23 = [(NSArray *)self initWithObjects:v16 count:length];
  }

  v24 = v23;
  if (itemsCopy)
  {
    do
    {

      --length;
    }

    while (length);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (NSArray)initWithObject:(id)object
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = object;
  result = [(NSArray *)self initWithObjects:v5 count:1];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)initWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = firstObj;
  v5 = __NSArrayImmutablePlaceholder();
  if (firstObj)
  {
    v7 = 0;
    va_copy(v22, va);
    do
    {
      v8 = v22;
      v22 += 8;
      ++v7;
    }

    while (*v8);
    if (v5 == self)
    {
      va_copy(v22, va);
      v18 = __NSArrayI_new(&v23, va, v7, 0);
      goto LABEL_22;
    }

    if (v7 >> 60)
    {
      v9 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
      v10 = [NSException exceptionWithName:@"NSGenericException" reason:v9 userInfo:0];
      CFRelease(v9);
      objc_exception_throw(v10);
    }
  }

  else
  {
    if (v5 == self)
    {
      v18 = &__NSArray0__struct;
      goto LABEL_22;
    }

    v7 = 0;
  }

  if (v7 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = MEMORY[0x1EEE9AC00](v11, v6);
  v14 = (&v21 - v13);
  v21 = 0;
  if (v7 >= 0x101)
  {
    v14 = _CFCreateArrayStorage(v12, 0, &v21);
    va_copy(v22, va);
    *v14 = firstObj;
    v15 = v14;
  }

  else
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_19;
    }

    va_copy(v22, va);
    *v14 = firstObj;
    if (v7 == 1)
    {
      goto LABEL_19;
    }
  }

  for (i = 1; i != v7; ++i)
  {
    v17 = v22;
    v22 += 8;
    v14[i] = *v17;
  }

LABEL_19:
  v18 = [(NSArray *)self initWithObjects:v21 count:v22, v23, v24];
  free(v15);
LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (NSArray)initWithSet:(id)set copyItems:(BOOL)items
{
  itemsCopy = items;
  v32 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v25 = _os_log_pack_size();
    v27 = &v31 - ((MEMORY[0x1EEE9AC00](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill();
    *v28 = 136315138;
    *(v28 + 4) = "[NSArray initWithSet:copyItems:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSArray initWithSet:copyItems:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v25];
    objc_exception_throw(v30);
  }

  v7 = [set count];
  v9 = v7;
  if (v7 >> 60)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v24 = [NSException exceptionWithName:@"NSGenericException" reason:v23 userInfo:0];
    CFRelease(v23);
    objc_exception_throw(v24);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v12 = (&v31 - v11);
  v31 = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v31);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [set getObjects:v12 count:{v9, v31, v32}];
  if (!v9)
  {
    itemsCopy = 0;
  }

  if (itemsCopy)
  {
    v14 = v12;
    v15 = v9;
    do
    {
      *v14 = [*v14 copyWithZone:0];
      ++v14;
      --v15;
    }

    while (v15);
  }

  if (v13)
  {
    if (v9)
    {
      v16 = v9;
      v17 = v13;
      do
      {
        if ((*v17 & 0x8000000000000000) == 0)
        {
          v18 = *v17;
        }

        ++v17;
        --v16;
      }

      while (v16);
    }

    v19 = [(NSArray *)self _initByAdoptingBuffer:v13 count:v9 size:v9];
  }

  else
  {
    v19 = [(NSArray *)self initWithObjects:v12 count:v9];
  }

  v20 = v19;
  if (itemsCopy)
  {
    do
    {

      --v9;
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSArray)initWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items
{
  itemsCopy = items;
  length = range.length;
  location = range.location;
  v51 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v36 = _os_log_pack_size();
    v38 = &v50 - ((MEMORY[0x1EEE9AC00](v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill();
    *v39 = 136315138;
    *(v39 + 4) = "[NSArray initWithOrderedSet:range:copyItems:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSArray initWithOrderedSet:range:copyItems:]");
    v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v38, v36];
    objc_exception_throw(v41);
  }

  v10 = [set count];
  v12 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v27 = _os_log_pack_size();
      v29 = &v50 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      v31 = __os_log_helper_1_2_3_8_32_8_0_8_0(v30, "[NSArray initWithOrderedSet:range:copyItems:]", location, length);
      v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v31, "[NSArray initWithOrderedSet:range:copyItems:]", location, length);
      v33 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v29, v27];
      objc_exception_throw(v33);
    }

    v42 = _os_log_pack_size();
    v44 = &v50 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = v12 - 1;
    v47 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSArray initWithOrderedSet:range:copyItems:]", location, length, v46);
    v48 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v47, "[NSArray initWithOrderedSet:range:copyItems:]", location, length, v46);
    v49 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v48) osLogPack:0 size:v44, v42];
    objc_exception_throw(v49);
  }

  if (length >> 60)
  {
    v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
    CFRelease(v34);
    objc_exception_throw(v35);
  }

  if (length <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = length;
  }

  v14 = MEMORY[0x1EEE9AC00](v13, v11);
  v16 = (&v50 - v15);
  v50 = 0;
  if (length >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v50);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [set getObjects:v16 range:{location, length, v50, v51}];
  if (!length)
  {
    itemsCopy = 0;
  }

  if (itemsCopy)
  {
    v18 = v16;
    v19 = length;
    do
    {
      *v18 = [*v18 copyWithZone:0];
      ++v18;
      --v19;
    }

    while (v19);
  }

  if (v17)
  {
    if (length)
    {
      v20 = length;
      v21 = v17;
      do
      {
        if ((*v21 & 0x8000000000000000) == 0)
        {
          v22 = *v21;
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    v23 = [(NSArray *)self _initByAdoptingBuffer:v17 count:length size:length];
  }

  else
  {
    v23 = [(NSArray *)self initWithObjects:v16 count:length];
  }

  v24 = v23;
  if (itemsCopy)
  {
    do
    {

      --length;
    }

    while (length);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (NSArray)initWithOrderedSet:(id)set
{
  v5 = [set count];

  return [(NSArray *)self initWithOrderedSet:set range:0 copyItems:v5, 0];
}

- (id)_initByAdoptingBuffer:(id *)buffer count:(unint64_t)count size:(unint64_t)size
{
  countCopy = count;
  v7 = [(NSArray *)self initWithObjects:buffer count:count, size];
  if (countCopy)
  {
    bufferCopy = buffer;
    do
    {
      v9 = *bufferCopy++;

      --countCopy;
    }

    while (countCopy);
  }

  free(buffer);
  return v7;
}

+ (NSArray)arrayWithObject:(id)anObject
{
  Array = __createArray([self alloc], anObject);

  return Array;
}

+ (NSArray)arrayWithObjects:(id *)objects count:(NSUInteger)cnt
{
  v4 = [[self alloc] initWithObjects:objects count:cnt];

  return v4;
}

+ (id)newArrayWithObjects:(const void *)objects count:(unint64_t)count
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v15 = _os_log_pack_size();
    v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "+[NSArray newArrayWithObjects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSArray newArrayWithObjects:count:]", count);
    goto LABEL_26;
  }

  if (count >> 61)
  {
    v15 = _os_log_pack_size();
    v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "+[NSArray newArrayWithObjects:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSArray newArrayWithObjects:count:]", count);
    goto LABEL_26;
  }

  if (count)
  {
    v6 = 0;
    while (objects[v6])
    {
      if (count == ++v6)
      {
        goto LABEL_8;
      }
    }

    v14 = v6;
    v15 = _os_log_pack_size();
    v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "+[NSArray newArrayWithObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSArray newArrayWithObjects:count:]", v14);
LABEL_26:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v19);
  }

LABEL_8:
  if (NSArray == self)
  {
    if (count == 1)
    {
      v10 = *objects;
      v11 = *MEMORY[0x1E69E9840];

      return __NSSingleObjectArrayI_new(v10, 1);
    }

    else if (count)
    {
      v12 = *MEMORY[0x1E69E9840];

      return __NSArrayI_new(objects, 0, count, 1);
    }

    else
    {
      v9 = *MEMORY[0x1E69E9840];

      return &__NSArray0__struct;
    }
  }

  else
  {
    if (NSMutableArray != self)
    {
      v13 = __CFLookUpClass("NSArray");
      __CFRequireConcreteImplementation(v13, self, a2);
    }

    v7 = *MEMORY[0x1E69E9840];

    return __NSArrayM_new(objects, count, 1);
  }
}

+ (NSArray)arrayWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23[0] = firstObj;
  if (firstObj)
  {
    v5 = 0;
    va_copy(v22, va);
    do
    {
      v6 = v22;
      v22 += 8;
      ++v5;
    }

    while (*v6);
    if (__NSPlaceholderArray == self)
    {
      va_copy(v22, va);
      v17 = __NSArrayI_new(v23, va, v5, 0);
      goto LABEL_21;
    }

    if (v5 >> 60)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v8 = [NSException exceptionWithName:@"NSGenericException" reason:v7 userInfo:0];
      CFRelease(v7);
      objc_exception_throw(v8);
    }
  }

  else
  {
    if (__NSPlaceholderArray == self)
    {
      v17 = &__NSArray0__struct;
      goto LABEL_22;
    }

    v5 = 0;
  }

  if (v5 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = MEMORY[0x1EEE9AC00](v9, a2);
  v12 = (&v21 - v11);
  v21 = 0;
  if (v5 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v21);
    va_copy(v22, va);
    *v12 = firstObj;
    v13 = v12;
  }

  else
  {
    v13 = 0;
    if (!v5)
    {
      goto LABEL_19;
    }

    va_copy(v22, va);
    *v12 = firstObj;
    if (v5 == 1)
    {
      goto LABEL_19;
    }
  }

  for (i = 1; i != v5; ++i)
  {
    v15 = v22;
    v22 += 8;
    v12[i] = *v15;
  }

LABEL_19:
  v16 = [self alloc];
  v17 = [v16 initWithObjects:v12 count:{v5, v21}];
  free(v13);
LABEL_21:
  v18 = v17;
LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (NSArray)arrayWithArray:(id)array range:(_NSRange)range
{
  v4 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSArray)arrayWithArray:(NSArray *)array
{
  v3 = [[self alloc] initWithArray:array range:0 copyItems:{-[NSArray count](array, "count"), 0}];

  return v3;
}

+ (NSArray)arrayWithOrderedSet:(id)set range:(_NSRange)range
{
  v4 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSArray)arrayWithOrderedSet:(id)set
{
  v3 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{objc_msgSend(set, "count"), 0}];

  return v3;
}

+ (NSArray)arrayWithSet:(id)set
{
  v3 = [[self alloc] initWithSet:set copyItems:0];

  return v3;
}

- (NSArray)arrayByAddingObject:(id)anObject
{
  v25 = *MEMORY[0x1E69E9840];
  if (!anObject)
  {
    v16 = _os_log_pack_size();
    v18 = &v24 - ((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSArray arrayByAddingObject:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSArray arrayByAddingObject:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v21);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    v22 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6 + 1);
    v23 = [NSException exceptionWithName:@"NSGenericException" reason:v22 userInfo:0];
    CFRelease(v22);
    objc_exception_throw(v23);
  }

  v8 = v6;
  v24 = 0;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = _CFCreateArrayStorage(v9, 0, &v24);
  [(NSArray *)self getObjects:v10 range:0, v8, v24, v25];
  v10[v8] = anObject;
  if (v7)
  {
    v11 = v10;
    v12 = v7;
    do
    {
      v13 = *v11++;
      --v12;
    }

    while (v12);
  }

  result = [[NSArray alloc] _initByAdoptingBuffer:v10 count:v7 size:v7];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)arrayByAddingObjectsFromArray:(NSArray *)otherArray
{
  v30 = *MEMORY[0x1E69E9840];
  if (otherArray && (_NSIsNSArray(otherArray) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v23 = &v29 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "[NSArray arrayByAddingObjectsFromArray:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray arrayByAddingObjectsFromArray:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v21];
    objc_exception_throw(v26);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)otherArray count];
  if (v6)
  {
    v7 = v6;
    v8 = [(NSArray *)self count];
    v9 = v8 + v7;
    if ((v8 + v7) >> 60)
    {
      v27 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8 + v7);
      v28 = [NSException exceptionWithName:@"NSGenericException" reason:v27 userInfo:0];
      CFRelease(v27);
      objc_exception_throw(v28);
    }

    v10 = v8;
    v29 = 0;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 + v7;
    }

    v12 = _CFCreateArrayStorage(v11, 0, &v29);
    if (v10)
    {
      [(NSArray *)self getObjects:v12 range:0, v10, v29, v30];
    }

    [(NSArray *)otherArray getObjects:&v12[v10] range:0, v7, v29];
    if (v12)
    {
      if (v9)
      {
        v13 = v12;
        v14 = v9;
        do
        {
          v15 = *v13++;
          --v14;
        }

        while (v14);
      }

      v16 = [[NSArray alloc] _initByAdoptingBuffer:v12 count:v9 size:v9];
    }

    else
    {
      v16 = [[NSArray alloc] initWithObjects:0 count:v9];
    }

    result = v16;
    v20 = *MEMORY[0x1E69E9840];
  }

  else
  {
    selfCopy = self;
    v18 = *MEMORY[0x1E69E9840];

    return selfCopy;
  }

  return result;
}

- (id)arrayByApplyingSelector:(SEL)selector
{
  v32 = *MEMORY[0x1E69E9840];
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 >> 60)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v24 = [NSException exceptionWithName:@"NSGenericException" reason:v23 userInfo:0];
    CFRelease(v23);
    objc_exception_throw(v24);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v25 - v9;
  v26 = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v26);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = 0;
  v14 = [(NSArray *)self countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(self);
        }

        v17 = [*(*(&v28 + 1) + 8 * i) performSelector:selector];
        if (v17)
        {
          *&v10[8 * v13++] = v17;
        }
      }

      v14 = [(NSArray *)self countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v14);
    if (v12)
    {
      if (v13 >= 1)
      {
        for (j = 0; j != v13; ++j)
        {
          v19 = *&v12[8 * j];
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v20 = [[NSArray alloc] initWithObjects:v10 count:v13];
    goto LABEL_28;
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_26:
  v20 = [[NSArray alloc] _initByAdoptingBuffer:v12 count:v13 size:v13];
LABEL_28:
  result = v20;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)arrayByExcludingObjectsInArray:(id)array
{
  v39 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = &v32 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSArray arrayByExcludingObjectsInArray:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray arrayByExcludingObjectsInArray:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v32 - v9;
  v33 = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v33);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSSet setWithArray:array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = 0;
  v15 = [(NSArray *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v15)
  {
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(self);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if (![(NSSet *)v13 containsObject:v18])
        {
          *&v10[8 * v14++] = v18;
        }
      }

      v15 = [(NSArray *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v15);
    if (v12)
    {
      if (v14 >= 1)
      {
        for (j = 0; j != v14; ++j)
        {
          v20 = *&v12[8 * j];
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v21 = [[NSArray alloc] initWithObjects:v10 count:v14];
    goto LABEL_28;
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_26:
  v21 = [[NSArray alloc] _initByAdoptingBuffer:v12 count:v14 size:v14];
LABEL_28:
  result = v21;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)arrayByExcludingToObjectsInArray:(id)array
{
  v39 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = &v32 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSArray arrayByExcludingToObjectsInArray:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray arrayByExcludingToObjectsInArray:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v32 - v9;
  v33 = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v33);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSSet setWithArray:array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = 0;
  v15 = [(NSArray *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v15)
  {
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(self);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if ([(NSSet *)v13 containsObject:v18])
        {
          *&v10[8 * v14++] = v18;
        }
      }

      v15 = [(NSArray *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v15);
    if (v12)
    {
      if (v14 >= 1)
      {
        for (j = 0; j != v14; ++j)
        {
          v20 = *&v12[8 * j];
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v21 = [[NSArray alloc] initWithObjects:v10 count:v14];
    goto LABEL_28;
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_26:
  v21 = [[NSArray alloc] _initByAdoptingBuffer:v12 count:v14 size:v14];
LABEL_28:
  result = v21;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  ShouldCopy = __NSCollectionsShouldCopy();
  v7 = [NSArray allocWithZone:zone];
  v8 = [(NSArray *)self count];

  return [(NSArray *)v7 initWithArray:self range:0 copyItems:v8, ShouldCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)NSMutableArray allocWithZone:zone];
  v7 = [(NSArray *)self count];

  return [(NSArray *)v6 initWithArray:self range:0 copyItems:v7, 0];
}

@end