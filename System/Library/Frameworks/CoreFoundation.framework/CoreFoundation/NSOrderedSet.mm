@interface NSOrderedSet
+ (NSOrderedSet)allocWithZone:(_NSZone *)a3;
+ (NSOrderedSet)orderedSet;
+ (NSOrderedSet)orderedSetWithArray:(NSArray *)array;
+ (NSOrderedSet)orderedSetWithArray:(id)a3 range:(_NSRange)a4;
+ (NSOrderedSet)orderedSetWithObject:(id)object;
+ (NSOrderedSet)orderedSetWithObjects:(id *)objects count:(NSUInteger)cnt;
+ (NSOrderedSet)orderedSetWithObjects:(id)firstObj;
+ (NSOrderedSet)orderedSetWithOrderedSet:(NSOrderedSet *)set;
+ (NSOrderedSet)orderedSetWithOrderedSet:(id)a3 range:(_NSRange)a4;
+ (NSOrderedSet)orderedSetWithSet:(NSSet *)set;
+ (id)newOrderedSetWithObjects:(const void *)a3 count:(unint64_t)a4;
- (BOOL)containsObject:(id)a3 inRange:(_NSRange)a4;
- (BOOL)containsObject:(id)object;
- (BOOL)intersectsOrderedSet:(NSOrderedSet *)other;
- (BOOL)intersectsSet:(NSSet *)set;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrderedSet:(NSOrderedSet *)other;
- (BOOL)isSubsetOfOrderedSet:(NSOrderedSet *)other;
- (BOOL)isSubsetOfSet:(NSSet *)set;
- (NSArray)array;
- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes;
- (NSArray)sortedArrayUsingComparator:(NSComparator)cmptr;
- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (NSEnumerator)objectEnumerator;
- (NSEnumerator)reverseObjectEnumerator;
- (NSIndexSet)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSOrderedSet)initWithArray:(NSArray *)array;
- (NSOrderedSet)initWithArray:(NSArray *)set range:(NSRange)range copyItems:(BOOL)flag;
- (NSOrderedSet)initWithObject:(id)object;
- (NSOrderedSet)initWithObjects:(id *)objects count:(NSUInteger)cnt;
- (NSOrderedSet)initWithObjects:(id)firstObj;
- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set;
- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set range:(NSRange)range copyItems:(BOOL)flag;
- (NSOrderedSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag;
- (NSOrderedSet)reversedOrderedSet;
- (NSSet)set;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
- (NSUInteger)count;
- (NSUInteger)indexOfObject:(id)object;
- (NSUInteger)indexOfObject:(id)object inSortedRange:(NSRange)range options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp;
- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSUInteger)indexOfObjectPassingTest:(void *)predicate;
- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstObject;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(NSUInteger)idx;
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (id)objectAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (id)objectPassingTest:(id)a3;
- (id)objectWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)objectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (id)objectsPassingTest:(id)a3;
- (id)objectsWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)sortedArrayFromRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)countForObject:(id)a3;
- (unint64_t)countForObject:(id)a3 inRange:(_NSRange)a4;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4;
- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getObjects:(id *)a3;
- (void)getObjects:(id *)objects range:(NSRange)range;
@end

@implementation NSOrderedSet

+ (NSOrderedSet)orderedSet
{
  v2 = [[a1 alloc] initWithObjects:0 count:0];

  return v2;
}

- (NSSet)set
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSOrderedSetSetProxy alloc] initWithOrderedSet:self];

  return v4;
}

- (NSEnumerator)objectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSFastEnumerationEnumerator alloc] initWithObject:self];

  return v4;
}

- (id)firstObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  result = [(NSOrderedSet *)self count];
  if (result)
  {

    return [(NSOrderedSet *)self objectAtIndex:0];
  }

  return result;
}

- (NSArray)array
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSOrderedSetArrayProxy alloc] initWithOrderedSet:self];

  return v4;
}

- (id)lastObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  result = [(NSOrderedSet *)self count];
  if (result)
  {

    return [(NSOrderedSet *)self objectAtIndex:result - 1];
  }

  return result;
}

- (NSEnumerator)reverseObjectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSOrderedSetReverseEnumerator alloc] initWithObject:self];

  return v4;
}

- (NSString)description
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self descriptionWithLocale:0 indent:0];
}

- (id)allObjects
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [(NSOrderedSet *)self count];
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
  [(NSOrderedSet *)self getObjects:v6 range:0, v5];
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

- (BOOL)containsObject:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = v9;
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSOrderedSet containsObject:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSOrderedSet containsObject:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSOrderedSet containsObject:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v15, "[NSOrderedSet containsObject:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  result = [(NSOrderedSet *)self indexOfObject:a3 inRange:location, length]!= 0x7FFFFFFFFFFFFFFFLL;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)containsObject:(id)object
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObject:object]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v6 = a5;
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v16 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[NSOrderedSet countByEnumeratingWithState:objects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = v6;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSOrderedSet countByEnumeratingWithState:objects:count:]", v6);
    goto LABEL_21;
  }

  if (a5 >> 61)
  {
    v16 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v16, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[NSOrderedSet countByEnumeratingWithState:objects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = v6;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSOrderedSet countByEnumeratingWithState:objects:count:]", v6);
LABEL_21:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v23);
  }

  var0 = a3->var0;
  if (a3->var0 == -1)
  {
    v6 = 0;
  }

  else
  {
    if (__cf_tsanReadFunction)
    {
      __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
      var0 = a3->var0;
    }

    var3 = a3->var3;
    if (var0)
    {
      v12 = *var3;
    }

    else
    {
      a3->var2 = var3;
      v12 = [(NSOrderedSet *)self count];
      a3->var3[0] = v12;
      var0 = a3->var0;
    }

    a3->var1 = a4;
    if (v12 - var0 < v6)
    {
      v6 = v12 - var0;
    }

    if (v6)
    {
      [(NSOrderedSet *)self getObjects:a4 range:?];
      var0 = a3->var0;
    }

    v13 = var0 + v6;
    if (v12 <= var0 + v6)
    {
      v13 = -1;
    }

    a3->var0 = v13;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)countForObject:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = v9;
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSOrderedSet countForObject:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSOrderedSet countForObject:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSOrderedSet countForObject:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v15, "[NSOrderedSet countForObject:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  result = [(NSOrderedSet *)self indexOfObject:a3 inRange:location, length]!= 0x7FFFFFFFFFFFFFFFLL;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)countForObject:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObject:a3]!= 0x7FFFFFFFFFFFFFFFLL;
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
    *(v14 + 4) = "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if (!block)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xEFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, block, opts | 0x1000000000000000, s);
  v11 = *MEMORY[0x1E69E9840];

  __NSOrderedSetEnumerate(self, block, opts | 0x1000000000000000, s);
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[NSOrderedSet enumerateObjectsWithOptions:usingBlock:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSOrderedSet enumerateObjectsWithOptions:usingBlock:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= ~1uLL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, block, opts, 0);
  v9 = *MEMORY[0x1E69E9840];

  __NSOrderedSetEnumerate(self, block, opts, 0);
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSOrderedSet enumerateObjectsUsingBlock:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSOrderedSet enumerateObjectsUsingBlock:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  [(NSOrderedSet *)self enumerateObjectsWithOptions:0 usingBlock:block];
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
    *(v13 + 4) = "[NSOrderedSet getObjects:range:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = length;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSOrderedSet getObjects:range:]", length);
    goto LABEL_14;
  }

  if (range.length >> 61)
  {
    v11 = _os_log_pack_size();
    v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[NSOrderedSet getObjects:range:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = length;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSOrderedSet getObjects:range:]", length);
LABEL_14:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v16);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v22 = v9;
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v23, "[NSOrderedSet getObjects:range:]", location, length, --v22);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, "[NSOrderedSet getObjects:range:]", location, length, v22);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[NSOrderedSet getObjects:range:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, "[NSOrderedSet getObjects:range:]", location, length);
    }

    v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v25);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!length)
    {
      goto LABEL_9;
    }
  }

  else if (!length)
  {
    goto LABEL_9;
  }

  do
  {
    *v7++ = [(NSOrderedSet *)self objectAtIndex:location++];
    --length;
  }

  while (length);
LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  if (!a3 && v6)
  {
    v8 = v6;
    v9 = _os_log_pack_size();
    v11 = v18 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315394;
    *(v12 + 4) = "[NSOrderedSet getObjects:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = v8;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSOrderedSet getObjects:]", v8);
    goto LABEL_11;
  }

  if (v6 >> 61)
  {
    v14 = v6;
    v9 = _os_log_pack_size();
    v11 = v18 - ((MEMORY[0x1EEE9AC00](v9, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[NSOrderedSet getObjects:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = v14;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSOrderedSet getObjects:]", v14);
LABEL_11:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v17);
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSOrderedSet *)self getObjects:a3 range:0, v6];
}

- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v22[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v18 = v9;
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v19, "[NSOrderedSet indexOfObject:inRange:]", location, length, --v18);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, "[NSOrderedSet indexOfObject:inRange:]", location, length, v18);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSOrderedSet indexOfObject:inRange:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[NSOrderedSet indexOfObject:inRange:]", location, length);
    }

    v21 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v13];
    objc_exception_throw(v21);
  }

  result = [(NSOrderedSet *)self indexOfObject:a3];
  if (result - location >= length)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = result;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSUInteger)indexOfObject:(id)object inSortedRange:(NSRange)range options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp
{
  v52 = self;
  v53 = *MEMORY[0x1E69E9840];
  if (!object)
  {
    v37 = _os_log_pack_size();
    v38 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill();
    *v39 = 136315138;
    *(v39 + 4) = "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]");
    goto LABEL_55;
  }

  if (!cmp)
  {
    v37 = _os_log_pack_size();
    v38 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    *v41 = 136315138;
    *(v41 + 4) = "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]");
LABEL_55:
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v38, v37];
    objc_exception_throw(v42);
  }

  length = range.length;
  location = range.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(v52, v6, __CFTSANTagMutableOrderedSet);
  }

  v13 = [(NSOrderedSet *)v52 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || (v14 = location + length, v13 < location + length))
  {
    if (v13)
    {
      v43 = v13;
      v32 = _os_log_pack_size();
      v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill();
      v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length, --v43);
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length, v43);
    }

    else
    {
      v32 = _os_log_pack_size();
      v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill();
      v35 = __os_log_helper_1_2_3_8_32_8_0_8_0(v34, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length);
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v35, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length);
    }

    v46 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v33, v32];
    objc_exception_throw(v46);
  }

  if ((opts & 0x300) == 0x300)
  {
    v47 = __CFExceptionProem(v52, a2);
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
  v16 = (*(cmp + 2))(cmp, [(NSOrderedSet *)v52 objectAtIndex:v14 - 1], object);
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

  v17 = (*(cmp + 2))(cmp, object, [(NSOrderedSet *)v52 objectAtIndex:location]);
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
      v19 = (*(cmp + 2))(cmp, [(NSOrderedSet *)v52 objectAtIndex:location + v21 / 2], object);
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
    *(v15 + 4) = "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]");
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xCFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x3000000000000000, s);
  v11 = *MEMORY[0x1E69E9840];

  return __NSOrderedSetGetIndexPassingTest(self, predicate, opts | 0x3000000000000000, s);
}

- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSOrderedSet indexOfObjectWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexOfObjectWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xDFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x2000000000000000, 0);
  v9 = *MEMORY[0x1E69E9840];

  return __NSOrderedSetGetIndexPassingTest(self, predicate, opts | 0x2000000000000000, 0);
}

- (NSUInteger)indexOfObjectPassingTest:(void *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSOrderedSet indexOfObjectPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexOfObjectPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSOrderedSet *)self indexOfObjectWithOptions:0 passingTest:predicate];
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
    *(v15 + 4) = "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]");
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x5000000000000000, s);
  v11 = *MEMORY[0x1E69E9840];

  return __NSOrderedSetGetIndexesPassingTest(self, predicate, opts | 0x5000000000000000, s);
}

- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSOrderedSet indexesOfObjectsWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexesOfObjectsWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x4000000000000000, 0);
  v9 = *MEMORY[0x1E69E9840];

  return __NSOrderedSetGetIndexesPassingTest(self, predicate, opts | 0x4000000000000000, 0);
}

- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSOrderedSet indexesOfObjectsPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexesOfObjectsPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSOrderedSet *)self indexesOfObjectsWithOptions:0 passingTest:predicate];
}

- (BOOL)intersectsOrderedSet:(NSOrderedSet *)other
{
  v4 = other;
  v25 = *MEMORY[0x1E69E9840];
  if (other && (_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet intersectsOrderedSet:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet intersectsOrderedSet:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v15];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [(NSOrderedSet *)v4 count];
  v8 = v6 >= v7;
  v21 = 0u;
  v22 = 0u;
  if (v6 >= v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = self;
  }

  if (v8)
  {
    v4 = self;
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v10 = [(NSOrderedSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([(NSOrderedSet *)v4 containsObject:*(*(&v21 + 1) + 8 * v13)])
        {
          LOBYTE(v10) = 1;
          goto LABEL_21;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSOrderedSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      v11 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)intersectsSet:(NSSet *)set
{
  v4 = set;
  v25 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet intersectsSet:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSOrderedSet intersectsSet:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v15];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [(NSOrderedSet *)v4 count];
  v8 = v6 >= v7;
  v21 = 0u;
  v22 = 0u;
  if (v6 >= v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = self;
  }

  if (v8)
  {
    v4 = self;
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v10 = [(NSOrderedSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([(NSOrderedSet *)v4 containsObject:*(*(&v21 + 1) + 8 * v13)])
        {
          LOBYTE(v10) = 1;
          goto LABEL_21;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSOrderedSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      v11 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isSubsetOfOrderedSet:(NSOrderedSet *)other
{
  v23 = *MEMORY[0x1E69E9840];
  if (other && (_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSOrderedSet isSubsetOfOrderedSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet isSubsetOfOrderedSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  if (v6 <= [(NSOrderedSet *)other count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(NSOrderedSet *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(self);
          }

          if (![(NSOrderedSet *)other countForObject:*(*(&v19 + 1) + 8 * i)])
          {
            v12 = 0;
            goto LABEL_17;
          }
        }

        v9 = [(NSOrderedSet *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_17:
    if (other)
    {
      result = v12;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSubsetOfSet:(NSSet *)set
{
  v23 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSOrderedSet isSubsetOfSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSOrderedSet isSubsetOfSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  if (v6 <= [(NSSet *)set count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(NSOrderedSet *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(self);
          }

          if (![(NSSet *)set countForObject:*(*(&v19 + 1) + 8 * i)])
          {
            v12 = 0;
            goto LABEL_17;
          }
        }

        v9 = [(NSOrderedSet *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_17:
    if (set)
    {
      result = v12;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self objectAtIndex:idx];
}

- (id)objectAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v14 = _os_log_pack_size();
    v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet objectAtIndexes:options:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSOrderedSet objectAtIndexes:options:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!a5)
  {
    v14 = _os_log_pack_size();
    v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSOrderedSet objectAtIndexes:options:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectAtIndexes:options:passingTest:]");
LABEL_14:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v10 = [(NSOrderedSet *)self indexOfObjectAtIndexes:a3 options:a4 passingTest:a5];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    return [(NSOrderedSet *)self objectAtIndex:v10];
  }
}

- (id)objectWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSOrderedSet objectWithOptions:passingTest:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectWithOptions:passingTest:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v15);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self indexOfObjectWithOptions:a3 passingTest:a4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return [(NSOrderedSet *)self objectAtIndex:v8];
  }
}

- (id)objectPassingTest:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSOrderedSet objectPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSOrderedSet *)self objectWithOptions:0 passingTest:a3];
}

- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes
{
  v60 = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v25 = _os_log_pack_size();
    v27 = &v59 - ((MEMORY[0x1EEE9AC00](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill();
    *v28 = 136315138;
    *(v28 + 4) = "[NSOrderedSet objectsAtIndexes:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet objectsAtIndexes:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v25];
    objc_exception_throw(v30);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v31 = _os_log_pack_size();
    v33 = &v59 - ((MEMORY[0x1EEE9AC00](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = _os_log_pack_fill();
    *v34 = 136315138;
    *(v34 + 4) = "[NSOrderedSet objectsAtIndexes:]";
    v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectsAtIndexes:]");
    v36 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v33, v31];
    objc_exception_throw(v36);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v39 = &v59 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315138;
    *(v40 + 4) = "[NSOrderedSet objectsAtIndexes:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectsAtIndexes:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
    objc_exception_throw(v42);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [0 count];
  v8 = [(NSIndexSet *)indexes lastIndex];
  v9 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v10 = v7 + v6;
    goto LABEL_26;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7 + v6;
    if (v10 <= v8)
    {
LABEL_26:
      if (!v10)
      {
        v43 = _os_log_pack_size();
        v45 = &v59 - ((MEMORY[0x1EEE9AC00](v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = _os_log_pack_fill();
        *v46 = 136315394;
        *(v46 + 4) = "[NSOrderedSet objectsAtIndexes:]";
        *(v46 + 12) = 2048;
        *(v46 + 14) = v9;
        v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSOrderedSet objectsAtIndexes:]", v9);
        v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v45, v43];
        objc_exception_throw(v48);
      }

      v49 = _os_log_pack_size();
      v51 = &v59 - ((MEMORY[0x1EEE9AC00](v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = _os_log_pack_fill();
      v53 = v10 - 1;
      v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v52, "[NSOrderedSet objectsAtIndexes:]", v9, v53);
      v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v54, "[NSOrderedSet objectsAtIndexes:]", v9, v53);
      v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v51, v49];
      objc_exception_throw(v56);
    }
  }

  v11 = [(NSIndexSet *)indexes count];
  v12 = v11;
  if (v11 >> 60)
  {
    v57 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v58 = [NSException exceptionWithName:@"NSGenericException" reason:v57 userInfo:0];
    CFRelease(v57);
    objc_exception_throw(v58);
  }

  v59 = 0;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v13 = _CFCreateArrayStorage(v11, 0, &v59);
  v14 = 0;
  v15 = 0;
  while (v14 < [(NSIndexSet *)indexes rangeCount:v59])
  {
    v16 = [(NSIndexSet *)indexes rangeAtIndex:v14];
    v18 = v17;
    [(NSOrderedSet *)self getObjects:&v13[v15] range:v16, v17];
    v15 += v18;
    ++v14;
  }

  if (v13)
  {
    if (v12)
    {
      v19 = v13;
      v20 = v12;
      do
      {
        v21 = *v19++;
        --v20;
      }

      while (v20);
    }

    v22 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v12 size:v12];
  }

  else
  {
    v22 = [[NSArray alloc] initWithObjects:0 count:v12];
  }

  result = v22;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSOrderedSet objectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet objectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if (!a5)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSOrderedSet objectsAtIndexes:options:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectsAtIndexes:options:passingTest:]");
LABEL_12:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v10 = [(NSOrderedSet *)self objectsAtIndexes:[(NSOrderedSet *)self indexesOfObjectsAtIndexes:a3 options:a4 passingTest:a5]];
  v11 = *MEMORY[0x1E69E9840];

  return [NSOrderedSet orderedSetWithArray:v10];
}

- (id)objectsWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSOrderedSet objectsWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectsWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self objectsAtIndexes:[(NSOrderedSet *)self indexesOfObjectsWithOptions:a3 passingTest:a4]];
  v9 = *MEMORY[0x1E69E9840];

  return [NSOrderedSet orderedSetWithArray:v8];
}

- (id)objectsPassingTest:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSOrderedSet objectsPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectsPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSOrderedSet *)self objectsWithOptions:0 passingTest:a3];
}

- (NSOrderedSet)reversedOrderedSet
{
  v2 = [[__NSOrderedSetReversed alloc] initWithOrderedSet:self];

  return v2;
}

- (id)sortedArrayFromRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5
{
  v53[1] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v35 = _os_log_pack_size();
    v37 = &v51[-1] - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    *v38 = 136315138;
    *(v38 + 4) = "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v35];
    objc_exception_throw(v40);
  }

  v7 = a4;
  length = a3.length;
  location = a3.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v11 = [(NSOrderedSet *)self count];
  if (!length || (v13 = v11) == 0)
  {
    v15 = NSArray;
    v16 = *MEMORY[0x1E69E9840];
    goto LABEL_12;
  }

  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    v41 = _os_log_pack_size();
    v43 = &v51[-1] - ((MEMORY[0x1EEE9AC00](v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = _os_log_pack_fill();
    v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]", location, length, v13 - 1);
    v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]", location, length, v13 - 1);
    v47 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v46) osLogPack:0 size:v43, v41];
    objc_exception_throw(v47);
  }

  if (v11 == 1)
  {
    v14 = *MEMORY[0x1E69E9840];
    v15 = self;
LABEL_12:

    return [(NSOrderedSet *)v15 array];
  }

  if (length == 1)
  {
    v18 = [(NSOrderedSet *)self objectAtIndex:location];
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
    v24 = [(NSOrderedSet *)self getObjects:v21 range:location, length];
    MEMORY[0x1EEE9AC00](v24, v25);
    v27 = &v51[-1] - v26;
    v28 = &v51[-1] - v26;
    if (length > 0x1000)
    {
      v28 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __61__NSOrderedSet_sortedArrayFromRange_options_usingComparator___block_invoke;
    v51[3] = &unk_1E6D7D7A0;
    v51[4] = a5;
    v51[5] = v21;
    CFSortIndexes(v28, length, v7, v51);
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

- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSOrderedSet sortedArrayWithOptions:usingComparator:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet sortedArrayWithOptions:usingComparator:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = *MEMORY[0x1E69E9840];

  return [(NSOrderedSet *)self sortedArrayFromRange:0 options:v8 usingComparator:opts, cmptr];
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
    *(v12 + 4) = "[NSOrderedSet sortedArrayUsingComparator:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet sortedArrayUsingComparator:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = *MEMORY[0x1E69E9840];

  return [(NSOrderedSet *)self sortedArrayFromRange:0 options:v6 usingComparator:0, cmptr];
}

- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
  v35 = locale;
  v36[1] = *MEMORY[0x1E69E9840];
  if (level >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = level;
  }

  v7 = [(NSOrderedSet *)self count];
  v9 = v7;
  if (v7 >> 60)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
    CFRelease(v28);
    objc_exception_throw(v29);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v12 = (&v30 - v11);
  v36[0] = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, v36);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [(NSOrderedSet *)self getObjects:v12 range:0, v9];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v33 = &__kCFAllocatorSystemDefault;
  v34 = v13;
  v31 = objc_autoreleasePoolPush();
  v32 = level;
  if (v9)
  {
    v15 = v12;
    v16 = v9;
    do
    {
      v17 = *v15;
      if (_NSIsNSString(*v15))
      {
        v18 = [v17 _stringRepresentation];
      }

      else if (objc_opt_respondsToSelector())
      {
        v18 = [v17 descriptionWithLocale:v35 indent:v6 + 1];
      }

      else if (objc_opt_respondsToSelector())
      {
        v18 = [v17 descriptionWithLocale:v35];
      }

      else
      {
        v18 = [v17 description];
      }

      if (v18)
      {
        v19 = v18;
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

  v20 = v34;
  v21 = CFStringCreateMutable(v33, 0);
  if (v32)
  {
    do
    {
      CFStringAppend(v21, @"    ");
      --v6;
    }

    while (v6);
  }

  CFStringAppend(Mutable, v21);
  CFStringAppend(Mutable, @"{(\n");
  v22 = 1;
  v23 = v9;
  while (v23)
  {
    CFStringAppend(Mutable, v21);
    CFStringAppend(Mutable, @"    ");
    CFStringAppend(Mutable, *v12);
    if (v22 >= v9)
    {
      v24 = @"\n";
    }

    else
    {
      v24 = @",\n";
    }

    --v23;
    ++v12;
    ++v22;
    CFStringAppend(Mutable, v24);
  }

  CFStringAppend(Mutable, v21);
  CFStringAppend(Mutable, @"}"));
  CFRelease(v21);
  objc_autoreleasePoolPop(v31);
  v25 = Mutable;
  free(v20);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (NSString)descriptionWithLocale:(id)locale
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self descriptionWithLocale:locale indent:0];
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self count];
}

- (BOOL)isEqualToOrderedSet:(NSOrderedSet *)other
{
  v4 = MEMORY[0x1EEE9AC00](self, a2);
  v6 = v5;
  v7 = v4;
  v25[256] = *MEMORY[0x1E69E9840];
  if (v5 && (_NSIsNSOrderedSet(v5) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v18 = &v24[-((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSOrderedSet isEqualToOrderedSet:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet isEqualToOrderedSet:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v21);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(v7, v3, __CFTSANTagMutableOrderedSet);
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

- (BOOL)isEqual:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (a3)
  {
    v6 = _NSIsNSOrderedSet(a3);
    if (v6)
    {

      LOBYTE(v6) = [(NSOrderedSet *)self isEqualToOrderedSet:a3];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (NSOrderedSet)allocWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (NSOrderedSet == a1)
  {
    v5 = *MEMORY[0x1E69E9840];

    return __NSOrderedSetImmutablePlaceholder();
  }

  else if (NSMutableOrderedSet == a1)
  {
    v6 = *MEMORY[0x1E69E9840];

    return __NSOrderedSetMutablePlaceholder();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NSOrderedSet;
    result = objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

+ (id)newOrderedSetWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v12 = _os_log_pack_size();
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "+[NSOrderedSet newOrderedSetWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = a4;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSOrderedSet newOrderedSetWithObjects:count:]", a4);
    goto LABEL_18;
  }

  if (a4 >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "+[NSOrderedSet newOrderedSetWithObjects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = a4;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSOrderedSet newOrderedSetWithObjects:count:]", a4);
    goto LABEL_18;
  }

  if (a4)
  {
    v6 = 0;
    while (a3[v6])
    {
      if (a4 == ++v6)
      {
        goto LABEL_8;
      }
    }

    v11 = v6;
    v12 = _os_log_pack_size();
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "+[NSOrderedSet newOrderedSetWithObjects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSOrderedSet newOrderedSetWithObjects:count:]", v11);
LABEL_18:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v16);
  }

LABEL_8:
  if (NSOrderedSet == a1)
  {
    v9 = *MEMORY[0x1E69E9840];

    return __NSOrderedSetI_new(a3, a4, 1);
  }

  else
  {
    if (NSMutableOrderedSet != a1)
    {
      v10 = __CFLookUpClass("NSOrderedSet");
      __CFRequireConcreteImplementation(v10, a1, a2);
    }

    v7 = *MEMORY[0x1E69E9840];

    return __NSOrderedSetM_new(a3, a4, 1);
  }
}

- (NSOrderedSet)initWithArray:(NSArray *)set range:(NSRange)range copyItems:(BOOL)flag
{
  v5 = flag;
  length = range.length;
  location = range.location;
  v47 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSArray(set) & 1) == 0)
  {
    v32 = _os_log_pack_size();
    v34 = &v46 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    *v35 = 136315138;
    *(v35 + 4) = "[NSOrderedSet initWithArray:range:copyItems:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSOrderedSet initWithArray:range:copyItems:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
    objc_exception_throw(v37);
  }

  v10 = [(NSArray *)set count];
  v12 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v25 = &v46 - ((MEMORY[0x1EEE9AC00](v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v26, "[NSOrderedSet initWithArray:range:copyItems:]", location, length);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v27, "[NSOrderedSet initWithArray:range:copyItems:]", location, length);
      v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v25, v23];
      objc_exception_throw(v29);
    }

    v38 = _os_log_pack_size();
    v40 = &v46 - ((MEMORY[0x1EEE9AC00](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    v42 = v12 - 1;
    v43 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v41, "[NSOrderedSet initWithArray:range:copyItems:]", location, length, v42);
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v43, "[NSOrderedSet initWithArray:range:copyItems:]", location, length, v42);
    v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v40, v38];
    objc_exception_throw(v45);
  }

  if (length >> 60)
  {
    v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v31 = [NSException exceptionWithName:@"NSGenericException" reason:v30 userInfo:0];
    CFRelease(v30);
    objc_exception_throw(v31);
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
  v16 = (&v46 - v15);
  v46 = 0;
  if (length >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v46);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(NSArray *)set getObjects:v16 range:location, length, v46, v47];
  if (!length)
  {
    v5 = 0;
  }

  if (v5)
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

  v20 = [(NSOrderedSet *)self initWithObjects:v16 count:length];
  if (v5)
  {
    do
    {

      --length;
    }

    while (length);
  }

  free(v17);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSOrderedSet)initWithArray:(NSArray *)array
{
  v5 = [(NSArray *)array count];

  return [(NSOrderedSet *)self initWithArray:array range:0 copyItems:v5, 0];
}

- (NSOrderedSet)initWithObject:(id)object
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = object;
  result = [(NSOrderedSet *)self initWithObjects:v5 count:1];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSOrderedSet)initWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = 0;
  if (firstObj)
  {
    va_copy(v21, va);
    do
    {
      v6 = v21;
      v21 += 8;
      ++v5;
    }

    while (*v6);
    if (v5 >> 60)
    {
      v17 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v18 = [NSException exceptionWithName:@"NSGenericException" reason:v17 userInfo:0];
      CFRelease(v17);
      objc_exception_throw(v18);
    }
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x1EEE9AC00](v7, a2);
  v10 = (&v19 - v9);
  v20 = 0;
  if (v5 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v20);
    va_copy(v21, va);
    *v10 = firstObj;
    v11 = v10;
LABEL_13:
    for (i = 1; i != v5; ++i)
    {
      v13 = v21;
      v21 += 8;
      v10[i] = *v13;
    }

    goto LABEL_15;
  }

  v11 = 0;
  if (v5)
  {
    va_copy(v21, va);
    *v10 = firstObj;
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v14 = [NSOrderedSet initWithObjects:"initWithObjects:count:" count:?];
  free(v11);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set range:(NSRange)range copyItems:(BOOL)flag
{
  v5 = flag;
  length = range.length;
  location = range.location;
  v47 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v32 = _os_log_pack_size();
    v34 = &v46 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    *v35 = 136315138;
    *(v35 + 4) = "[NSOrderedSet initWithOrderedSet:range:copyItems:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet initWithOrderedSet:range:copyItems:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
    objc_exception_throw(v37);
  }

  v10 = [(NSOrderedSet *)set count];
  v12 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v25 = &v46 - ((MEMORY[0x1EEE9AC00](v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v26, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v27, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length);
      v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v25, v23];
      objc_exception_throw(v29);
    }

    v38 = _os_log_pack_size();
    v40 = &v46 - ((MEMORY[0x1EEE9AC00](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    v42 = v12 - 1;
    v43 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v41, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length, v42);
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v43, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length, v42);
    v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v40, v38];
    objc_exception_throw(v45);
  }

  if (length >> 60)
  {
    v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v31 = [NSException exceptionWithName:@"NSGenericException" reason:v30 userInfo:0];
    CFRelease(v30);
    objc_exception_throw(v31);
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
  v16 = (&v46 - v15);
  v46 = 0;
  if (length >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v46);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(NSOrderedSet *)set getObjects:v16 range:location, length, v46, v47];
  if (!length)
  {
    v5 = 0;
  }

  if (v5)
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

  v20 = [(NSOrderedSet *)self initWithObjects:v16 count:length];
  if (v5)
  {
    do
    {

      --length;
    }

    while (length);
  }

  free(v17);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set
{
  v5 = [(NSOrderedSet *)set count];

  return [(NSOrderedSet *)self initWithOrderedSet:set range:0 copyItems:v5, 0];
}

- (NSOrderedSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag
{
  v4 = flag;
  v28 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v23 = &v27 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "[NSOrderedSet initWithSet:copyItems:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSOrderedSet initWithSet:copyItems:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v21];
    objc_exception_throw(v26);
  }

  v7 = [(NSSet *)set count];
  v9 = v7;
  if (v7 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v12 = (&v27 - v11);
  v27 = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v27);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [(NSSet *)set getObjects:v12 count:v9, v27, v28];
  if (!v9)
  {
    v4 = 0;
  }

  if (v4)
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

  v16 = [(NSOrderedSet *)self initWithObjects:v12 count:v9];
  if (v4)
  {
    do
    {

      --v9;
    }

    while (v9);
  }

  free(v13);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (NSOrderedSet)orderedSetWithObjects:(id *)objects count:(NSUInteger)cnt
{
  v4 = [[a1 alloc] initWithObjects:objects count:cnt];

  return v4;
}

+ (NSOrderedSet)orderedSetWithObject:(id)object
{
  OrderedSet = __createOrderedSet([a1 alloc], object);

  return OrderedSet;
}

+ (NSOrderedSet)orderedSetWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = 0;
  if (firstObj)
  {
    va_copy(v21, va);
    do
    {
      v6 = v21;
      v21 += 8;
      ++v5;
    }

    while (*v6);
    if (v5 >> 60)
    {
      v17 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v18 = [NSException exceptionWithName:@"NSGenericException" reason:v17 userInfo:0];
      CFRelease(v17);
      objc_exception_throw(v18);
    }
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x1EEE9AC00](v7, a2);
  v10 = (&v19 - v9);
  v20 = 0;
  if (v5 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v20);
    va_copy(v21, va);
    *v10 = firstObj;
    v11 = v10;
LABEL_13:
    for (i = 1; i != v5; ++i)
    {
      v13 = v21;
      v21 += 8;
      v10[i] = *v13;
    }

    goto LABEL_15;
  }

  v11 = 0;
  if (v5)
  {
    va_copy(v21, va);
    *v10 = firstObj;
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v14 = [[a1 alloc] initWithObjects:v10 count:v5];
  free(v11);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (NSOrderedSet)orderedSetWithArray:(id)a3 range:(_NSRange)a4
{
  v4 = [[a1 alloc] initWithArray:a3 range:a4.location copyItems:{a4.length, 0}];

  return v4;
}

+ (NSOrderedSet)orderedSetWithArray:(NSArray *)array
{
  v3 = [[a1 alloc] initWithArray:array range:0 copyItems:{-[NSArray count](array, "count"), 0}];

  return v3;
}

+ (NSOrderedSet)orderedSetWithOrderedSet:(id)a3 range:(_NSRange)a4
{
  v4 = [[a1 alloc] initWithOrderedSet:a3 range:a4.location copyItems:{a4.length, 0}];

  return v4;
}

+ (NSOrderedSet)orderedSetWithOrderedSet:(NSOrderedSet *)set
{
  v3 = [[a1 alloc] initWithOrderedSet:set range:0 copyItems:{-[NSOrderedSet count](set, "count"), 0}];

  return v3;
}

+ (NSOrderedSet)orderedSetWithSet:(NSSet *)set
{
  v3 = [[a1 alloc] initWithSet:set copyItems:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [NSOrderedSet allocWithZone:a3];
  v7 = [(NSOrderedSet *)self count];

  return [(NSOrderedSet *)v6 initWithOrderedSet:self range:0 copyItems:v7, 0];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)NSMutableOrderedSet allocWithZone:a3];
  v7 = [(NSOrderedSet *)self count];

  return [(NSOrderedSet *)v6 initWithOrderedSet:self range:0 copyItems:v7, 0];
}

- (NSUInteger)count
{
  OUTLINED_FUNCTION_0_23();
  v2 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v2);
}

- (NSUInteger)indexOfObject:(id)object
{
  OUTLINED_FUNCTION_0_23();
  v3 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v3);
}

- (id)objectAtIndex:(NSUInteger)idx
{
  OUTLINED_FUNCTION_0_23();
  v3 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v3);
}

- (NSOrderedSet)initWithObjects:(id *)objects count:(NSUInteger)cnt
{
  OUTLINED_FUNCTION_0_23();
  v4 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v4);
}

@end