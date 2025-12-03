@interface NSMutableArray
+ (NSMutableArray)arrayWithCapacity:(NSUInteger)numItems;
- (NSMutableArray)initWithCapacity:(NSUInteger)numItems;
- (NSMutableArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)arrayByAddingObjectsFromArray:(id)array;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)addObject:(id)anObject;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(NSArray *)otherArray;
- (void)addObjectsFromArray:(id)array range:(_NSRange)range;
- (void)addObjectsFromOrderedSet:(id)set;
- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range;
- (void)addObjectsFromSet:(id)set;
- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
- (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjectsFromArray:(id)array atIndex:(unint64_t)index;
- (void)insertObjectsFromArray:(id)array range:(_NSRange)range atIndex:(unint64_t)index;
- (void)insertObjectsFromOrderedSet:(id)set atIndex:(unint64_t)index;
- (void)insertObjectsFromOrderedSet:(id)set range:(_NSRange)range atIndex:(unint64_t)index;
- (void)insertObjectsFromSet:(id)set atIndex:(unint64_t)index;
- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)removeLastObject;
- (void)removeObject:(id)anObject;
- (void)removeObject:(id)anObject inRange:(NSRange)range;
- (void)removeObjectAtIndex:(NSUInteger)index;
- (void)removeObjectIdenticalTo:(id)anObject;
- (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
- (void)removeObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (void)removeObjectsInArray:(NSArray *)otherArray;
- (void)removeObjectsInArray:(id)array range:(_NSRange)range;
- (void)removeObjectsInOrderedSet:(id)set;
- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range;
- (void)removeObjectsInRange:(NSRange)range;
- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array;
- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array range:(_NSRange)a5;
- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set;
- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set range:(_NSRange)a5;
- (void)removeObjectsInRange:(_NSRange)range inSet:(id)set;
- (void)removeObjectsInSet:(id)set;
- (void)removeObjectsPassingTest:(id)test;
- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (void)replaceObject:(id)object;
- (void)replaceObject:(id)object inRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects;
- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray;
- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange;
- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set range:(_NSRange)a5;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromSet:(id)set;
- (void)setArray:(NSArray *)otherArray;
- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)object atIndex:(unint64_t)index;
- (void)setOrderedSet:(id)set;
- (void)setSet:(id)set;
- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)sortUsingComparator:(NSComparator)cmptr;
- (void)sortUsingFunction:(NSInteger (__cdecl *)compare context:;
- (void)sortUsingFunction:(void *)function context:(void *)context range:(_NSRange)range;
- (void)sortUsingSelector:(SEL)comparator;
- (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
@end

@implementation NSMutableArray

- (void)removeAllObjects
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(NSArray *)self count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      [(NSMutableArray *)self removeObjectAtIndex:v5--];
    }

    while (v5 != -1);
  }
}

- (void)addObject:(id)anObject
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (anObject)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableArray addObject:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray addObject:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  if (!anObject)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = [(NSArray *)self count];
  v7 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self insertObject:anObject atIndex:v6];
}

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v21[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (objects)
    {
      goto LABEL_4;
    }
  }

  else if (objects)
  {
    goto LABEL_4;
  }

  if (count)
  {
    v15 = _os_log_pack_size();
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[NSMutableArray addObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray addObjects:count:]", count);
    goto LABEL_17;
  }

LABEL_4:
  if (count >> 61)
  {
    v15 = _os_log_pack_size();
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[NSMutableArray addObjects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray addObjects:count:]", count);
LABEL_17:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v20);
  }

  if (count)
  {
    v8 = 0;
    do
    {
      if (!objects[v8])
      {
        v11 = _os_log_pack_size();
        v12 = _os_log_pack_fill();
        *v12 = 136315394;
        *(v12 + 4) = "[NSMutableArray addObjects:count:]";
        *(v12 + 12) = 2048;
        *(v12 + 14) = v8;
        v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray addObjects:count:]", v8);
        v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
        objc_exception_throw(v14);
      }

      ++v8;
    }

    while (count != v8);
  }

  v9 = [(NSArray *)self count];
  v10 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self insertObjects:objects count:count atIndex:v9];
}

- (void)addObjectsFromArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableArray addObjectsFromArray:range:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray addObjectsFromArray:range:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17];
    objc_exception_throw(v20);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableArray addObjectsFromArray:range:]", location, length, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableArray addObjectsFromArray:range:]", location, length, v21);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableArray addObjectsFromArray:range:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSMutableArray addObjectsFromArray:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v24);
  }

  v10 = [(NSArray *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self insertObjectsFromArray:array range:location atIndex:length, v10];
}

- (void)addObjectsFromArray:(NSArray *)otherArray
{
  v4 = otherArray;
  v31 = *MEMORY[0x1E69E9840];
  if (otherArray)
  {
    if ((_NSIsNSArray(otherArray) & 1) == 0)
    {
      v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray addObjectsFromArray:]");
      v7 = _CFAutoreleasePoolAddObject(0, v6);
      CFLog(3, @"%@", v8, v9, v10, v11, v12, v13, v7);
      if (objc_opt_respondsToSelector())
      {
        v14 = +[(NSArray *)NSMutableArray];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v4);
              }

              [(NSArray *)v14 addObject:*(*(&v27 + 1) + 8 * i)];
            }

            v16 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
          }

          while (v16);
        }

        v4 = v14;
      }
    }
  }

  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_15;
  }

  if ((_NSIsNSArray(v4) & 1) == 0)
  {
    v20 = _os_log_pack_size();
    v22 = &v26[-((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v23 = _os_log_pack_fill();
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableArray addObjectsFromArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray addObjectsFromArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v20];
    objc_exception_throw(v25);
  }

LABEL_15:
  [(NSMutableArray *)self insertObjectsFromArray:v4 range:0 atIndex:[(NSArray *)v4 count], [(NSArray *)self count]];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableArray addObjectsFromOrderedSet:range:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray addObjectsFromOrderedSet:range:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17];
    objc_exception_throw(v20);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length, v21);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v24);
  }

  v10 = [(NSArray *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self insertObjectsFromOrderedSet:set range:location atIndex:length, v10];
}

- (void)addObjectsFromOrderedSet:(id)set
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray addObjectsFromOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray addObjectsFromOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self insertObjectsFromOrderedSet:set range:0 atIndex:v7, v6];
}

- (void)addObjectsFromSet:(id)set
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableArray addObjectsFromSet:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray addObjectsFromSet:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self insertObjectsFromSet:set atIndex:v6];
}

- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if ((idx1 & 0x8000000000000000) != 0 || v8 <= idx1)
  {
    if (v8)
    {
      v23 = v8;
      v15 = _os_log_pack_size();
      v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill();
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx1, --v23);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v25, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx1, v23);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill();
      *v17 = 136315394;
      *(v17 + 4) = "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v17 + 12) = 2048;
      *(v17 + 14) = idx1;
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx1);
    }

    v26 = _CFAutoreleasePoolAddObject(0, v18);
    v27 = v16;
    v28 = v15;
LABEL_25:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v26 userInfo:0 osLogPack:v27 size:v28]);
  }

  v9 = [(NSArray *)self count];
  if ((idx2 & 0x8000000000000000) != 0 || v9 <= idx2)
  {
    if (v9)
    {
      v29 = v9;
      v19 = _os_log_pack_size();
      v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      v31 = __os_log_helper_1_2_3_8_32_8_0_8_0(v30, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx2, --v29);
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v31, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx2, v29);
    }

    else
    {
      v19 = _os_log_pack_size();
      v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = idx2;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx2);
    }

    v26 = _CFAutoreleasePoolAddObject(0, v22);
    v27 = v20;
    v28 = v19;
    goto LABEL_25;
  }

  if (idx1 == idx2)
  {
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (idx2 <= idx1)
    {
      v11 = idx1;
    }

    else
    {
      v11 = idx2;
    }

    if (idx2 >= idx1)
    {
      idx2 = idx1;
    }

    v32[0] = [(NSArray *)self objectAtIndex:idx2];
    v12 = [(NSArray *)self objectAtIndex:v11];
    v13 = v32[0];
    [(NSMutableArray *)self replaceObjectAtIndex:idx2 withObject:v12];
    [(NSMutableArray *)self replaceObjectAtIndex:v11 withObject:v32[0]];
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (objects)
    {
      goto LABEL_4;
    }
  }

  else if (objects)
  {
    goto LABEL_4;
  }

  if (count)
  {
    v18 = _os_log_pack_size();
    v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray insertObjects:count:atIndex:]", count);
    goto LABEL_19;
  }

LABEL_4:
  if (count >> 61)
  {
    v18 = _os_log_pack_size();
    v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray insertObjects:count:atIndex:]", count);
LABEL_19:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v18];
    objc_exception_throw(v23);
  }

  if (count)
  {
    v10 = 0;
    do
    {
      if (!objects[v10])
      {
        v14 = _os_log_pack_size();
        v15 = _os_log_pack_fill();
        *v15 = 136315394;
        *(v15 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
        *(v15 + 12) = 2048;
        *(v15 + 14) = v10;
        v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray insertObjects:count:atIndex:]", v10);
        v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
        objc_exception_throw(v17);
      }

      ++v10;
    }

    while (count != v10);
  }

  v11 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v11 < index)
  {
    if (v11)
    {
      v28 = v11;
      v24 = _os_log_pack_size();
      v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = _os_log_pack_fill();
      v30 = __os_log_helper_1_2_3_8_32_8_0_8_0(v29, "[NSMutableArray insertObjects:count:atIndex:]", index, --v28);
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v30, "[NSMutableArray insertObjects:count:atIndex:]", index, v28);
    }

    else
    {
      v24 = _os_log_pack_size();
      v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      *v26 = 136315394;
      *(v26 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
      *(v26 + 12) = 2048;
      *(v26 + 14) = index;
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjects:count:atIndex:]", index);
    }

    v31 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:v25, v24];
    objc_exception_throw(v31);
  }

  for (; count; --count)
  {
    v12 = *objects++;
    [(NSMutableArray *)self insertObject:v12 atIndex:index++];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromArray:(id)array range:(_NSRange)range atIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v57[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v35 = _os_log_pack_size();
    v37 = v57 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableArray insertObjectsFromArray:range:atIndex:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray insertObjectsFromArray:range:atIndex:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v35];
    objc_exception_throw(v40);
  }

LABEL_4:
  v11 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v20 = _os_log_pack_size();
      v22 = v57 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v20];
      objc_exception_throw(v26);
    }

    v41 = v11;
    v42 = _os_log_pack_size();
    v44 = v57 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length, --v41);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length, v41);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v44, v42];
    objc_exception_throw(v48);
  }

  v12 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v12 < index)
  {
    if (!v12)
    {
      v27 = _os_log_pack_size();
      v29 = v57 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      *v30 = 136315394;
      *(v30 + 4) = "[NSMutableArray insertObjectsFromArray:range:atIndex:]";
      *(v30 + 12) = 2048;
      *(v30 + 14) = index;
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromArray:range:atIndex:]", index);
      v32 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
      objc_exception_throw(v32);
    }

    v49 = v12;
    v50 = _os_log_pack_size();
    v52 = v57 - ((MEMORY[0x1EEE9AC00](v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = _os_log_pack_fill();
    v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", index, --v49);
    v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v54, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", index, v49);
    v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v52, v50];
    objc_exception_throw(v56);
  }

  if (length >> 60)
  {
    v33 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v34 = [NSException exceptionWithName:@"NSGenericException" reason:v33 userInfo:0];
    CFRelease(v33);
    objc_exception_throw(v34);
  }

  if (length <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = length;
  }

  v15 = MEMORY[0x1EEE9AC00](v14, v13);
  v17 = v57 - v16;
  v57[0] = 0;
  if (length >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, v57);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [array getObjects:v17 range:{location, length, v57[0]}];
  [(NSMutableArray *)self insertObjects:v17 count:length atIndex:index];
  free(v18);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromArray:(id)array atIndex:(unint64_t)index
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = v40 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSMutableArray insertObjectsFromArray:atIndex:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray insertObjectsFromArray:atIndex:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v8 = [(NSArray *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v20 = v40 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableArray insertObjectsFromArray:atIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = index;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromArray:atIndex:]", index);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
      objc_exception_throw(v23);
    }

    v32 = _os_log_pack_size();
    v34 = v40 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    v36 = v9 - 1;
    v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v35, "[NSMutableArray insertObjectsFromArray:atIndex:]", index, v36);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v37, "[NSMutableArray insertObjectsFromArray:atIndex:]", index, v36);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v34, v32];
    objc_exception_throw(v39);
  }

  v10 = [array count];
  v12 = v10;
  if (v10 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v15 = v40 - v14;
  v40[0] = 0;
  if (v12 >= 0x101)
  {
    v15 = _CFCreateArrayStorage(v13, 0, v40);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [array getObjects:v15 range:{0, v12, v40[0]}];
  [(NSMutableArray *)self insertObjects:v15 count:v12 atIndex:index];
  free(v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromOrderedSet:(id)set range:(_NSRange)range atIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v57[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v35 = _os_log_pack_size();
    v37 = v57 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v35];
    objc_exception_throw(v40);
  }

LABEL_4:
  v11 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v20 = _os_log_pack_size();
      v22 = v57 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v20];
      objc_exception_throw(v26);
    }

    v41 = v11;
    v42 = _os_log_pack_size();
    v44 = v57 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length, --v41);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length, v41);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v44, v42];
    objc_exception_throw(v48);
  }

  v12 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v12 < index)
  {
    if (!v12)
    {
      v27 = _os_log_pack_size();
      v29 = v57 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      *v30 = 136315394;
      *(v30 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]";
      *(v30 + 12) = 2048;
      *(v30 + 14) = index;
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", index);
      v32 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
      objc_exception_throw(v32);
    }

    v49 = v12;
    v50 = _os_log_pack_size();
    v52 = v57 - ((MEMORY[0x1EEE9AC00](v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = _os_log_pack_fill();
    v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", index, --v49);
    v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v54, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", index, v49);
    v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v52, v50];
    objc_exception_throw(v56);
  }

  if (length >> 60)
  {
    v33 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v34 = [NSException exceptionWithName:@"NSGenericException" reason:v33 userInfo:0];
    CFRelease(v33);
    objc_exception_throw(v34);
  }

  if (length <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = length;
  }

  v15 = MEMORY[0x1EEE9AC00](v14, v13);
  v17 = v57 - v16;
  v57[0] = 0;
  if (length >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, v57);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [set getObjects:v17 range:{location, length, v57[0]}];
  [(NSMutableArray *)self insertObjects:v17 count:length atIndex:index];
  free(v18);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromOrderedSet:(id)set atIndex:(unint64_t)index
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = v40 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v8 = [(NSArray *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v20 = v40 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = index;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]", index);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
      objc_exception_throw(v23);
    }

    v32 = _os_log_pack_size();
    v34 = v40 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    v36 = v9 - 1;
    v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v35, "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]", index, v36);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v37, "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]", index, v36);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v34, v32];
    objc_exception_throw(v39);
  }

  v10 = [set count];
  v12 = v10;
  if (v10 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v15 = v40 - v14;
  v40[0] = 0;
  if (v12 >= 0x101)
  {
    v15 = _CFCreateArrayStorage(v13, 0, v40);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [set getObjects:v15 range:{0, v12, v40[0]}];
  [(NSMutableArray *)self insertObjects:v15 count:v12 atIndex:index];
  free(v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromSet:(id)set atIndex:(unint64_t)index
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = v40 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSMutableArray insertObjectsFromSet:atIndex:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray insertObjectsFromSet:atIndex:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v8 = [(NSArray *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v20 = v40 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableArray insertObjectsFromSet:atIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = index;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromSet:atIndex:]", index);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
      objc_exception_throw(v23);
    }

    v32 = _os_log_pack_size();
    v34 = v40 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    v36 = v9 - 1;
    v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v35, "[NSMutableArray insertObjectsFromSet:atIndex:]", index, v36);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v37, "[NSMutableArray insertObjectsFromSet:atIndex:]", index, v36);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v34, v32];
    objc_exception_throw(v39);
  }

  v10 = [set count];
  v12 = v10;
  if (v10 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v15 = v40 - v14;
  v40[0] = 0;
  if (v12 >= 0x101)
  {
    v15 = _CFCreateArrayStorage(v13, 0, v40);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [set getObjects:v15 count:{v12, v40[0]}];
  [(NSMutableArray *)self insertObjects:v15 count:v12 atIndex:index];
  free(v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes
{
  v61[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v55 = _os_log_pack_size();
    v57 = v61 - ((MEMORY[0x1EEE9AC00](v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = _os_log_pack_fill();
    *v58 = 136315138;
    *(v58 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
    v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray insertObjects:atIndexes:]");
    v60 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v59) osLogPack:0 size:v57, v55];
    objc_exception_throw(v60);
  }

LABEL_4:
  if (!indexes)
  {
    v27 = _os_log_pack_size();
    v29 = v61 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill();
    *v30 = 136315138;
    *(v30 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray insertObjects:atIndexes:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
    objc_exception_throw(v32);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v35 = v61 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill();
    *v36 = 136315138;
    *(v36 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
    v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray insertObjects:atIndexes:]");
    v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v33];
    objc_exception_throw(v38);
  }

  v8 = [(NSArray *)self count];
  v9 = [(NSArray *)objects count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v39 = lastIndex;
    v11 = v9 + v8;
    goto LABEL_26;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= lastIndex)
    {
      v39 = lastIndex;
LABEL_26:
      if (!v11)
      {
        v40 = _os_log_pack_size();
        v42 = v61 - ((MEMORY[0x1EEE9AC00](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = _os_log_pack_fill();
        *v43 = 136315394;
        *(v43 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
        *(v43 + 12) = 2048;
        *(v43 + 14) = v39;
        v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray insertObjects:atIndexes:]", v39);
        v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v40];
        objc_exception_throw(v45);
      }

      v46 = _os_log_pack_size();
      v48 = v61 - ((MEMORY[0x1EEE9AC00](v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = _os_log_pack_fill();
      v50 = __os_log_helper_1_2_3_8_32_8_0_8_0(v49, "[NSMutableArray insertObjects:atIndexes:]", v39, v11 - 1);
      v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v50, "[NSMutableArray insertObjects:atIndexes:]", v39, v11 - 1);
      v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v46];
      objc_exception_throw(v52);
    }
  }

  v12 = [(NSArray *)objects count];
  v13 = [(NSIndexSet *)indexes count];
  if (v12 != v13)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableArray insertObjects:atIndexes:]", v12, v13);
  }

  v14 = [(NSArray *)objects count];
  v16 = v14;
  if (v14 >> 60)
  {
    v53 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v14);
    v54 = [NSException exceptionWithName:@"NSGenericException" reason:v53 userInfo:0];
    CFRelease(v53);
    objc_exception_throw(v54);
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v19 = v61 - v18;
  v61[0] = 0;
  if (v16 >= 0x101)
  {
    v19 = _CFCreateArrayStorage(v17, 0, v61);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [(NSArray *)objects getObjects:v19 range:0, v16, v61[0]];
  v21 = 0;
  for (i = 0; i < [(NSIndexSet *)indexes rangeCount]; ++i)
  {
    v23 = [(NSIndexSet *)indexes rangeAtIndex:i];
    v25 = v24;
    [(NSMutableArray *)self insertObjects:&v19[8 * v21] count:v24 atIndex:v23];
    v21 += v25;
  }

  free(v20);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  v65[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (indexes)
    {
      goto LABEL_3;
    }

LABEL_17:
    v24 = _os_log_pack_size();
    v26 = v65 - ((MEMORY[0x1EEE9AC00](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill();
    *v27 = 136315138;
    *(v27 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray moveObjectsAtIndexes:toIndex:]");
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v24];
    objc_exception_throw(v29);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!indexes)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v30 = _os_log_pack_size();
    v32 = v65 - ((MEMORY[0x1EEE9AC00](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = _os_log_pack_fill();
    *v33 = 136315138;
    *(v33 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray moveObjectsAtIndexes:toIndex:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v30];
    objc_exception_throw(v35);
  }

  v8 = [(NSArray *)self count];
  v9 = [0 count];
  lastIndex = [indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v36 = lastIndex;
    v11 = v9 + v8;
    goto LABEL_21;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= lastIndex)
    {
      v36 = lastIndex;
LABEL_21:
      if (!v11)
      {
        v37 = _os_log_pack_size();
        v39 = v65 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = _os_log_pack_fill();
        *v40 = 136315394;
        *(v40 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
        *(v40 + 12) = 2048;
        *(v40 + 14) = v36;
        v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray moveObjectsAtIndexes:toIndex:]", v36);
        v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
        objc_exception_throw(v42);
      }

      v43 = _os_log_pack_size();
      v45 = v65 - ((MEMORY[0x1EEE9AC00](v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = _os_log_pack_fill();
      v47 = __os_log_helper_1_2_3_8_32_8_0_8_0(v46, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", v36, v11 - 1);
      v48 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v47, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", v36, v11 - 1);
      v49 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v48) osLogPack:0 size:v45, v43];
      objc_exception_throw(v49);
    }
  }

  v12 = [(NSArray *)self count];
  v13 = [indexes countOfIndexesInRange:{0, index}];
  v14 = v12 - v13;
  if ((index & 0x8000000000000000) != 0 || v14 < index)
  {
    if (v12 == v13)
    {
      v50 = _os_log_pack_size();
      v52 = v65 - ((MEMORY[0x1EEE9AC00](v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = _os_log_pack_fill();
      *v53 = 136315394;
      *(v53 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
      *(v53 + 12) = 2048;
      *(v53 + 14) = index;
      v54 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray moveObjectsAtIndexes:toIndex:]", index);
      v55 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v54) osLogPack:0 size:v52, v50];
      objc_exception_throw(v55);
    }

    v58 = _os_log_pack_size();
    v60 = v65 - ((MEMORY[0x1EEE9AC00](v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = _os_log_pack_fill();
    v62 = __os_log_helper_1_2_3_8_32_8_0_8_0(v61, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", index, v14 - 1);
    v63 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v62, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", index, v14 - 1);
    v64 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v63) osLogPack:0 size:v60, v58];
    objc_exception_throw(v64);
  }

  v15 = [(NSArray *)self objectsAtIndexes:indexes];
  [(NSMutableArray *)self removeObjectsAtIndexes:indexes];
  v16 = [(NSArray *)v15 count];
  v18 = v16;
  if (v16 >> 60)
  {
    v56 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v16);
    v57 = [NSException exceptionWithName:@"NSGenericException" reason:v56 userInfo:0];
    CFRelease(v56);
    objc_exception_throw(v57);
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  v19 = MEMORY[0x1EEE9AC00](v16, v17);
  v21 = v65 - v20;
  v65[0] = 0;
  if (v18 >= 0x101)
  {
    v21 = _CFCreateArrayStorage(v19, 0, v65);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [(NSArray *)v15 getObjects:v21 range:0, v18, v65[0]];
  [(NSMutableArray *)self insertObjects:v21 count:v18 atIndex:index];
  free(v22);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)removeFirstObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  if ([(NSArray *)self count])
  {

    [(NSMutableArray *)self removeObjectAtIndex:0];
  }
}

- (void)removeLastObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(NSArray *)self count];
  if (_CFExecutableLinkedOnOrAfter(7uLL))
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableArray *)self removeObjectAtIndex:v5];
  if (v4)
  {
LABEL_5:

    [(NSMutableArray *)self removeObjectAtIndex:v4 - 1];
  }
}

- (void)removeObjectsInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v18[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v7 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v7 < location + length)
  {
    if (v7)
    {
      v14 = v7;
      v9 = _os_log_pack_size();
      v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v15, "[NSMutableArray removeObjectsInRange:]", location, length, --v14);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v16, "[NSMutableArray removeObjectsInRange:]", location, length, v14);
    }

    else
    {
      v9 = _os_log_pack_size();
      v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = _os_log_pack_fill();
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v11, "[NSMutableArray removeObjectsInRange:]", location, length);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v12, "[NSMutableArray removeObjectsInRange:]", location, length);
    }

    v17 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v10, v9];
    objc_exception_throw(v17);
  }

  for (; length; --length)
  {
    [(NSMutableArray *)self removeObjectAtIndex:location];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeObject:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v21[0] = anObject;
  v21[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v17 = v8;
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSMutableArray removeObject:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSMutableArray removeObject:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableArray removeObject:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSMutableArray removeObject:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  v9 = v21[0];
  if (length)
  {
    v10 = length + location - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v10) == v21[0] || [v21[0] isEqual:?])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v10];
      }

      --v10;
      --length;
    }

    while (length);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObject:(id)anObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v5 = [(NSArray *)self count];
  v6 = anObject;
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v7) == anObject || [anObject isEqual:?])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v21[0] = anObject;
  v21[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v17 = v8;
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  v9 = v21[0];
  if (length)
  {
    v10 = length + location - 1;
    do
    {
      if ([(NSArray *)self objectAtIndex:v10]== v21[0])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v10];
      }

      --v10;
      --length;
    }

    while (length);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectIdenticalTo:(id)anObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v5 = [(NSArray *)self count];
  v6 = anObject;
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      if ([(NSArray *)self objectAtIndex:v7]== anObject)
      {
        [(NSMutableArray *)self removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes
{
  v28[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (indexes)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = _os_log_pack_size();
    v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableArray removeObjectsAtIndexes:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray removeObjectsAtIndexes:]");
    goto LABEL_14;
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  if (!indexes)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSMutableArray removeObjectsAtIndexes:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray removeObjectsAtIndexes:]");
LABEL_14:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v20);
  }

  v6 = [(NSArray *)self count];
  v7 = [0 count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v21 = lastIndex;
    v9 = v7 + v6;
    goto LABEL_17;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7 + v6;
    if (v9 <= lastIndex)
    {
      v21 = lastIndex;
LABEL_17:
      v22 = _os_log_pack_size();
      v23 = _os_log_pack_fill();
      if (v9)
      {
        v25 = v9 - 1;
        v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray removeObjectsAtIndexes:]", v21, v25);
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v26, "[NSMutableArray removeObjectsAtIndexes:]", v21, v25);
      }

      else
      {
        *v23 = 136315394;
        *(v23 + 4) = "[NSMutableArray removeObjectsAtIndexes:]";
        *(v23 + 12) = 2048;
        *(v23 + 14) = v21;
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray removeObjectsAtIndexes:]", v21);
      }

      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22];
      objc_exception_throw(v27);
    }
  }

  rangeCount = [(NSIndexSet *)indexes rangeCount];
  if (rangeCount)
  {
    v11 = rangeCount - 1;
    do
    {
      v12 = [(NSIndexSet *)indexes rangeAtIndex:v11];
      [(NSMutableArray *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v12 = [(NSArray *)self count];
  v13 = v12;
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (v12)
    {
      v21 = _os_log_pack_size();
      v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = _os_log_pack_fill();
      v36 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v35, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9, v13 - 1);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v36, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9, v13 - 1);
    }

    else
    {
      v21 = _os_log_pack_size();
      v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9);
    }

    v37 = _CFAutoreleasePoolAddObject(0, v25);
    v38 = v22;
    v39 = v21;
LABEL_28:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v37 userInfo:0 osLogPack:v38 size:v39]);
  }

  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v31 = _os_log_pack_size();
    v32 = _os_log_pack_fill();
    *v32 = 136315138;
    *(v32 + 4) = "[NSMutableArray removeObjectsInRange:inArray:range:]";
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInRange:inArray:range:]");
    v34 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v31];
    objc_exception_throw(v34);
  }

  v14 = [array count];
  v15 = v14;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v14 < location + length)
  {
    if (v14)
    {
      v26 = _os_log_pack_size();
      v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = _os_log_pack_fill();
      v41 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length, v15 - 1);
      v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v41, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length, v15 - 1);
    }

    else
    {
      v26 = _os_log_pack_size();
      v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill();
      v29 = __os_log_helper_1_2_3_8_32_8_0_8_0(v28, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length);
      v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v29, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length);
    }

    v37 = _CFAutoreleasePoolAddObject(0, v30);
    v38 = v27;
    v39 = v26;
    goto LABEL_28;
  }

  v16 = _CFAutoreleasePoolPush();
  v17 = [NSSet setWithArray:array range:location copyItems:length, 0];
  if (v9)
  {
    v18 = v17;
    v19 = v9 - 1;
    do
    {
      if ([(NSSet *)v18 containsObject:[(NSArray *)self objectAtIndex:v10 + v19]])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v19];
      }

      --v19;
    }

    while (v19 != -1);
  }

  v20 = *MEMORY[0x1E69E9840];

  _CFAutoreleasePoolPop(v16);
}

- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array
{
  length = range.length;
  location = range.location;
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v24 = v9;
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableArray removeObjectsInRange:inArray:]", location, length, --v24);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableArray removeObjectsInRange:inArray:]", location, length, v24);
    }

    else
    {
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInRange:inArray:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInRange:inArray:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v12];
    objc_exception_throw(v28);
  }

  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v29 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray removeObjectsInRange:inArray:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInRange:inArray:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

  v10 = [array count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:location inArray:length range:array, 0, v10];
}

- (void)removeObjectsInArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v29 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray removeObjectsInArray:range:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInArray:range:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v24 = v9;
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableArray removeObjectsInArray:range:]", location, length, --v24);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableArray removeObjectsInArray:range:]", location, length, v24);
    }

    else
    {
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInArray:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInArray:range:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v12];
    objc_exception_throw(v28);
  }

  v10 = [(NSArray *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:0 inArray:v10 range:array, location, length];
}

- (void)removeObjectsInArray:(NSArray *)otherArray
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray removeObjectsInArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [(NSArray *)otherArray count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:0 inArray:v6 range:otherArray, 0, v7];
}

- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v39[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v12 = [(NSArray *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (v12)
    {
      v30 = v12;
      v16 = _os_log_pack_size();
      v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v31, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9, --v30);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v32, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9, v30);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9);
    }

    v33 = _CFAutoreleasePoolAddObject(0, v20);
    v34 = v17;
    v35 = v16;
LABEL_26:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v33 userInfo:0 osLogPack:v34 size:v35]);
  }

  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v27 = _os_log_pack_fill();
    *v27 = 136315138;
    *(v27 + 4) = "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]";
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]");
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v26];
    objc_exception_throw(v29);
  }

  v13 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v13 < location + length)
  {
    if (v13)
    {
      v36 = v13;
      v21 = _os_log_pack_size();
      v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = _os_log_pack_fill();
      v38 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length, --v36);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v38, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length, v36);
    }

    else
    {
      v21 = _os_log_pack_size();
      v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length);
    }

    v33 = _CFAutoreleasePoolAddObject(0, v25);
    v34 = v22;
    v35 = v21;
    goto LABEL_26;
  }

  if (v9)
  {
    v14 = v9 - 1;
    do
    {
      if ([set containsObject:-[NSArray objectAtIndex:](self inRange:{"objectAtIndex:", v10 + v14), location, length}])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v14];
      }

      --v14;
    }

    while (v14 != -1);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set
{
  length = range.length;
  location = range.location;
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v24 = v9;
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length, --v24);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length, v24);
    }

    else
    {
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v12];
    objc_exception_throw(v28);
  }

  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v29 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray removeObjectsInRange:inOrderedSet:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInRange:inOrderedSet:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

  v10 = [set count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:location inOrderedSet:length range:set, 0, v10];
}

- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v29 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray removeObjectsInOrderedSet:range:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInOrderedSet:range:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v24 = v9;
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length, --v24);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length, v24);
    }

    else
    {
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v12];
    objc_exception_throw(v28);
  }

  v10 = [(NSArray *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:0 inOrderedSet:v10 range:set, location, length];
}

- (void)removeObjectsInOrderedSet:(id)set
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray removeObjectsInOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:0 inOrderedSet:v6 range:set, 0, v7];
}

- (void)removeObjectsInRange:(_NSRange)range inSet:(id)set
{
  length = range.length;
  location = range.location;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableArray removeObjectsInRange:inSet:]", location, length, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableArray removeObjectsInRange:inSet:]", location, length, v21);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableArray removeObjectsInRange:inSet:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSMutableArray removeObjectsInRange:inSet:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v24);
  }

  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableArray removeObjectsInRange:inSet:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray removeObjectsInRange:inSet:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17];
    objc_exception_throw(v20);
  }

  if (length)
  {
    v10 = length - 1;
    do
    {
      if ([set containsObject:{-[NSArray objectAtIndex:](self, "objectAtIndex:", location + v10)}])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v10];
      }

      --v10;
    }

    while (v10 != -1);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInSet:(id)set
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v10 = v14 - ((MEMORY[0x1EEE9AC00](v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableArray removeObjectsInSet:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray removeObjectsInSet:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v8];
    objc_exception_throw(v13);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsInRange:0 inSet:v6, set];
}

- (void)removeObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (indexes)
    {
      goto LABEL_3;
    }

LABEL_12:
    v17 = _os_log_pack_size();
    v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  if (!indexes)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  if (!test)
  {
    v17 = _os_log_pack_size();
    v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]");
LABEL_15:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v17];
    objc_exception_throw(v23);
  }

  if ((options & 2) != 0)
  {
    options &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, test, options | 0x5000000000000000, indexes);
  IndexesPassingTest = __NSArrayGetIndexesPassingTest(self, test, options | 0x5000000000000000, indexes);
  rangeCount = [IndexesPassingTest rangeCount];
  if (rangeCount)
  {
    v13 = rangeCount - 1;
    do
    {
      v14 = [IndexesPassingTest rangeAtIndex:v13];
      [(NSMutableArray *)self removeObjectsInRange:v14, v15];
      --v13;
    }

    while (v13 != -1);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableArray removeObjectsWithOptions:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableArray removeObjectsWithOptions:passingTest:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!test)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((options & 2) != 0)
  {
    options &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, test, options | 0x4000000000000000, 0);
  IndexesPassingTest = __NSArrayGetIndexesPassingTest(self, test, options | 0x4000000000000000, 0);
  rangeCount = [IndexesPassingTest rangeCount];
  if (rangeCount)
  {
    v11 = rangeCount - 1;
    do
    {
      v12 = [IndexesPassingTest rangeAtIndex:v11];
      [(NSMutableArray *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsPassingTest:(id)test
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v4 = _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315138;
    *(v5 + 4) = "[NSMutableArray removeObjectsPassingTest:]";
    v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableArray removeObjectsPassingTest:]");
    v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6) osLogPack:0 size:v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4];
    objc_exception_throw(v7);
  }

  v3 = *MEMORY[0x1E69E9840];

  [(NSMutableArray *)self removeObjectsWithOptions:0 passingTest:test];
}

- (void)replaceObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25[0] = object;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  if (!v25[0])
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSMutableArray replaceObject:inRange:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray replaceObject:inRange:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v15);
  }

  v8 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v21 = v8;
      v16 = _os_log_pack_size();
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableArray replaceObject:inRange:]", location, length, --v21);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableArray replaceObject:inRange:]", location, length, v21);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableArray replaceObject:inRange:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSMutableArray replaceObject:inRange:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  v9 = v25[0];
  if (length)
  {
    v10 = length + location - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v10) != v25[0] && [v25[0] isEqual:?])
      {
        [(NSMutableArray *)self replaceObjectAtIndex:v10 withObject:v25[0]];
      }

      --v10;
      --length;
    }

    while (length);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)replaceObject:(id)object
{
  v13[0] = object;
  v13[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (!v13[0])
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableArray replaceObject:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray replaceObject:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  v5 = [(NSArray *)self count];
  v6 = v13[0];
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v7) != v13[0] && [v13[0] isEqual:?])
      {
        [(NSMutableArray *)self replaceObjectAtIndex:v7 withObject:v13[0]];
      }

      --v7;
    }

    while (v7 != -1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count
{
  length = range.length;
  location = range.location;
  v47[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v11 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v42 = v11;
      v33 = _os_log_pack_size();
      v35 = v47 - ((MEMORY[0x1EEE9AC00](v33, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill();
      v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length, --v42);
      v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length, v42);
    }

    else
    {
      v33 = _os_log_pack_size();
      v35 = v47 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = _os_log_pack_fill();
      v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v36, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length);
      v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v37, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length);
    }

    v46 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v35, v33];
    objc_exception_throw(v46);
  }

  if (!objects && count)
  {
    v28 = _os_log_pack_size();
    v30 = v47 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315394;
    *(v31 + 4) = "[NSMutableArray replaceObjectsInRange:withObjects:count:]";
    *(v31 + 12) = 2048;
    *(v31 + 14) = count;
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray replaceObjectsInRange:withObjects:count:]", count);
    goto LABEL_37;
  }

  if (count >> 61)
  {
    v28 = _os_log_pack_size();
    v30 = v47 - ((MEMORY[0x1EEE9AC00](v28, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315394;
    *(v40 + 4) = "[NSMutableArray replaceObjectsInRange:withObjects:count:]";
    *(v40 + 12) = 2048;
    *(v40 + 14) = count;
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray replaceObjectsInRange:withObjects:count:]", count);
LABEL_37:
    v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v41);
  }

  if (count)
  {
    v12 = 0;
    do
    {
      if (!objects[v12])
      {
        v22 = _os_log_pack_size();
        v24 = v47 - ((MEMORY[0x1EEE9AC00](v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = _os_log_pack_fill();
        *v25 = 136315394;
        *(v25 + 4) = "[NSMutableArray replaceObjectsInRange:withObjects:count:]";
        *(v25 + 12) = 2048;
        *(v25 + 14) = v12;
        v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray replaceObjectsInRange:withObjects:count:]", v12);
        v27 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v24, v22];
        objc_exception_throw(v27);
      }

      ++v12;
    }

    while (count != v12);
    countCopy = count;
    objectsCopy = objects;
    do
    {
      if ((*objectsCopy & 0x8000000000000000) == 0)
      {
        v15 = *objectsCopy;
      }

      ++objectsCopy;
      --countCopy;
    }

    while (countCopy);
  }

  if (length >= count)
  {
    countCopy2 = count;
  }

  else
  {
    countCopy2 = length;
  }

  if (countCopy2)
  {
    v17 = location;
    objectsCopy2 = objects;
    v19 = countCopy2;
    do
    {
      v20 = *objectsCopy2++;
      [(NSMutableArray *)self replaceObjectAtIndex:v17++ withObject:v20];
      --v19;
    }

    while (v19);
  }

  if (length > count)
  {
    [(NSMutableArray *)self removeObjectsInRange:countCopy2 + location, length - countCopy2];
    goto LABEL_27;
  }

  if (length >= count)
  {
LABEL_27:
    if (!count)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  [(NSMutableArray *)self insertObjects:&objects[countCopy2] count:count - countCopy2 atIndex:countCopy2 + location];
  do
  {
LABEL_28:
    if ((*objects & 0x8000000000000000) == 0)
    {
    }

    ++objects;
    --count;
  }

  while (count);
LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects
{
  v61[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v55 = _os_log_pack_size();
    v57 = v61 - ((MEMORY[0x1EEE9AC00](v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = _os_log_pack_fill();
    *v58 = 136315138;
    *(v58 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
    v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]");
    v60 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v59) osLogPack:0 size:v57, v55];
    objc_exception_throw(v60);
  }

LABEL_4:
  if (!indexes)
  {
    v27 = _os_log_pack_size();
    v29 = v61 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill();
    *v30 = 136315138;
    *(v30 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
    objc_exception_throw(v32);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v35 = v61 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill();
    *v36 = 136315138;
    *(v36 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
    v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]");
    v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v33];
    objc_exception_throw(v38);
  }

  v8 = [(NSArray *)self count];
  v9 = [(NSArray *)objects count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v39 = lastIndex;
    v11 = v9 + v8;
    goto LABEL_26;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= lastIndex)
    {
      v39 = lastIndex;
LABEL_26:
      if (!v11)
      {
        v40 = _os_log_pack_size();
        v42 = v61 - ((MEMORY[0x1EEE9AC00](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = _os_log_pack_fill();
        *v43 = 136315394;
        *(v43 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
        *(v43 + 12) = 2048;
        *(v43 + 14) = v39;
        v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v39);
        v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v40];
        objc_exception_throw(v45);
      }

      v46 = _os_log_pack_size();
      v48 = v61 - ((MEMORY[0x1EEE9AC00](v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = _os_log_pack_fill();
      v50 = __os_log_helper_1_2_3_8_32_8_0_8_0(v49, "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v39, v11 - 1);
      v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v50, "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v39, v11 - 1);
      v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v46];
      objc_exception_throw(v52);
    }
  }

  v12 = [(NSArray *)objects count];
  v13 = [(NSIndexSet *)indexes count];
  if (v12 != v13)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v12, v13);
  }

  v14 = [(NSArray *)objects count];
  v16 = v14;
  if (v14 >> 60)
  {
    v53 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v14);
    v54 = [NSException exceptionWithName:@"NSGenericException" reason:v53 userInfo:0];
    CFRelease(v53);
    objc_exception_throw(v54);
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v19 = v61 - v18;
  v61[0] = 0;
  if (v16 >= 0x101)
  {
    v19 = _CFCreateArrayStorage(v17, 0, v61);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [(NSArray *)objects getObjects:v19 range:0, v16, v61[0]];
  v21 = 0;
  for (i = 0; i < [(NSIndexSet *)indexes rangeCount]; ++i)
  {
    v23 = [(NSIndexSet *)indexes rangeAtIndex:i];
    v25 = v24;
    [(NSMutableArray *)self replaceObjectsInRange:v23 withObjects:v24 count:&v19[8 * v21], v24];
    v21 += v25;
  }

  free(v20);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange
{
  length = otherRange.length;
  location = otherRange.location;
  v9 = range.length;
  v10 = range.location;
  v59[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    v37 = _os_log_pack_size();
    v39 = v59 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315138;
    *(v40 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
    objc_exception_throw(v42);
  }

LABEL_4:
  v12 = [(NSArray *)otherArray count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v23 = v59 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill();
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v21];
      objc_exception_throw(v27);
    }

    v43 = v12;
    v44 = _os_log_pack_size();
    v46 = v59 - ((MEMORY[0x1EEE9AC00](v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = _os_log_pack_fill();
    v48 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v47, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length, --v43);
    v49 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v48, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length, v43);
    v50 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v49) osLogPack:0 size:v46, v44];
    objc_exception_throw(v50);
  }

  v13 = [(NSArray *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v28 = _os_log_pack_size();
      v30 = v59 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v32, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v30, v28];
      objc_exception_throw(v34);
    }

    v51 = v13;
    v52 = _os_log_pack_size();
    v54 = v59 - ((MEMORY[0x1EEE9AC00](v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = _os_log_pack_fill();
    v56 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v55, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, --v51);
    v57 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v56, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, v51);
    v58 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v57) osLogPack:0 size:v54, v52];
    objc_exception_throw(v58);
  }

  if (length >> 60)
  {
    v35 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v36 = [NSException exceptionWithName:@"NSGenericException" reason:v35 userInfo:0];
    CFRelease(v35);
    objc_exception_throw(v36);
  }

  if (length <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = length;
  }

  v16 = MEMORY[0x1EEE9AC00](v15, v14);
  v18 = v59 - v17;
  v59[0] = 0;
  if (length >= 0x101)
  {
    v18 = _CFCreateArrayStorage(v16, 0, v59);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  [(NSArray *)otherArray getObjects:v18 range:location, length, v59[0]];
  [(NSMutableArray *)self replaceObjectsInRange:v10 withObjects:v9 count:v18, length];
  free(v19);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray
{
  length = range.length;
  location = range.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    v28 = _os_log_pack_size();
    v30 = v42 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v21 = v42 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v19];
      objc_exception_throw(v25);
    }

    v34 = _os_log_pack_size();
    v36 = v42 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    v38 = v10 - 1;
    v39 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length, v38);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v39, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length, v38);
    v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v36, v34];
    objc_exception_throw(v41);
  }

  v11 = [(NSArray *)otherArray count];
  v13 = v11;
  if (v11 >> 60)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
    CFRelease(v26);
    objc_exception_throw(v27);
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = v42 - v15;
  v42[0] = 0;
  if (v13 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, v42);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(NSArray *)otherArray getObjects:v16 range:0, v13, v42[0]];
  [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:v16, v13];
  free(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v59[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v39 = v59 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315138;
    *(v40 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
    objc_exception_throw(v42);
  }

LABEL_4:
  v12 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v23 = v59 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill();
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v21];
      objc_exception_throw(v27);
    }

    v43 = v12;
    v44 = _os_log_pack_size();
    v46 = v59 - ((MEMORY[0x1EEE9AC00](v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = _os_log_pack_fill();
    v48 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v47, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, --v43);
    v49 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v48, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, v43);
    v50 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v49) osLogPack:0 size:v46, v44];
    objc_exception_throw(v50);
  }

  v13 = [(NSArray *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v28 = _os_log_pack_size();
      v30 = v59 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v32, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v30, v28];
      objc_exception_throw(v34);
    }

    v51 = v13;
    v52 = _os_log_pack_size();
    v54 = v59 - ((MEMORY[0x1EEE9AC00](v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = _os_log_pack_fill();
    v56 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v55, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, --v51);
    v57 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v56, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, v51);
    v58 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v57) osLogPack:0 size:v54, v52];
    objc_exception_throw(v58);
  }

  if (length >> 60)
  {
    v35 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v36 = [NSException exceptionWithName:@"NSGenericException" reason:v35 userInfo:0];
    CFRelease(v35);
    objc_exception_throw(v36);
  }

  if (length <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = length;
  }

  v16 = MEMORY[0x1EEE9AC00](v15, v14);
  v18 = v59 - v17;
  v59[0] = 0;
  if (length >= 0x101)
  {
    v18 = _CFCreateArrayStorage(v16, 0, v59);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  [set getObjects:v18 range:{location, length, v59[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:v10 withObjects:v9 count:v18, length];
  free(v19);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set
{
  length = range.length;
  location = range.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v28 = _os_log_pack_size();
    v30 = v42 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v21 = v42 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v19];
      objc_exception_throw(v25);
    }

    v34 = _os_log_pack_size();
    v36 = v42 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    v38 = v10 - 1;
    v39 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v38);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v39, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v38);
    v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v36, v34];
    objc_exception_throw(v41);
  }

  v11 = [set count];
  v13 = v11;
  if (v11 >> 60)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
    CFRelease(v26);
    objc_exception_throw(v27);
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = v42 - v15;
  v42[0] = 0;
  if (v13 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, v42);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [set getObjects:v16 range:{0, v13, v42[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:v16, v13];
  free(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromSet:(id)set
{
  length = range.length;
  location = range.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v28 = _os_log_pack_size();
    v30 = v42 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v21 = v42 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v19];
      objc_exception_throw(v25);
    }

    v34 = _os_log_pack_size();
    v36 = v42 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    v38 = v10 - 1;
    v39 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length, v38);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v39, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length, v38);
    v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v36, v34];
    objc_exception_throw(v41);
  }

  v11 = [set count];
  v13 = v11;
  if (v11 >> 60)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
    CFRelease(v26);
    objc_exception_throw(v27);
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = v42 - v15;
  v42[0] = 0;
  if (v13 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, v42);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [set getObjects:v16 count:{v13, v42[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:v16, v13];
  free(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray setObject:atIndex:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray setObject:atIndex:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (!object)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (v8)
    {
      v19 = v8;
      v15 = _os_log_pack_size();
      v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill();
      v21 = __os_log_helper_1_2_3_8_32_8_0_8_0(v20, "[NSMutableArray setObject:atIndex:]", index, --v19);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v21, "[NSMutableArray setObject:atIndex:]", index, v19);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill();
      *v17 = 136315394;
      *(v17 + 4) = "[NSMutableArray setObject:atIndex:]";
      *(v17 + 12) = 2048;
      *(v17 + 14) = index;
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray setObject:atIndex:]", index);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v22);
  }

  if ([(NSArray *)self count]== index)
  {
    v9 = *MEMORY[0x1E69E9840];

    [(NSMutableArray *)self insertObject:object atIndex:index];
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    [(NSMutableArray *)self replaceObjectAtIndex:index withObject:object];
  }
}

- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  [(NSMutableArray *)self setObject:obj atIndex:idx];
}

- (void)setArray:(NSArray *)otherArray
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v15 = _os_log_pack_size();
    v17 = v23 - ((MEMORY[0x1EEE9AC00](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableArray setArray:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray setArray:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v15];
    objc_exception_throw(v20);
  }

LABEL_4:
  if (self != otherArray)
  {
    v6 = [(NSArray *)self count];
    v7 = [(NSArray *)otherArray count];
    v9 = v7;
    if (v7 >> 60)
    {
      v21 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
      v22 = [NSException exceptionWithName:@"NSGenericException" reason:v21 userInfo:0];
      CFRelease(v21);
      objc_exception_throw(v22);
    }

    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = MEMORY[0x1EEE9AC00](v7, v8);
    v12 = v23 - v11;
    v23[0] = 0;
    if (v9 >= 0x101)
    {
      v12 = _CFCreateArrayStorage(v10, 0, v23);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [(NSArray *)otherArray getObjects:v12 range:0, v9, v23[0]];
    [(NSMutableArray *)self replaceObjectsInRange:0 withObjects:v6 count:v12, v9];
    free(v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSMutableArray;
  result = [-[NSArray sortedArrayFromRange:options:usingComparator:](&v7 sortedArrayFromRange:range.location options:range.length usingComparator:{options, comparator), "copy"}];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setOrderedSet:(id)set
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v19 = v23 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[NSMutableArray setOrderedSet:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray setOrderedSet:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v17];
    objc_exception_throw(v22);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];
  v9 = v7;
  if (v7 >> 60)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
    CFRelease(v15);
    objc_exception_throw(v16);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v23 - v11;
  v23[0] = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, v23);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [set getObjects:v12 range:{0, v9, v23[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:0 withObjects:v6 count:v12, v9];
  free(v13);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setSet:(id)set
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v19 = v23 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[NSMutableArray setSet:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray setSet:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v17];
    objc_exception_throw(v22);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];
  v9 = v7;
  if (v7 >> 60)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
    CFRelease(v15);
    objc_exception_throw(v16);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v23 - v11;
  v23[0] = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, v23);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [set getObjects:v12 count:{v9, v23[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:0 withObjects:v6 count:v12, v9];
  free(v13);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  optionsCopy = options;
  length = range.length;
  location = range.location;
  v54[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (comparator)
    {
      goto LABEL_3;
    }

LABEL_27:
    v29 = _os_log_pack_size();
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill();
    *v32 = 136315138;
    *(v32 + 4) = "[NSMutableArray sortRange:options:usingComparator:]";
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableArray sortRange:options:usingComparator:]");
    v34 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v29];
    objc_exception_throw(v34);
  }

  if (!comparator)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = [(NSArray *)self count];
  v13 = v11;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v35 = _os_log_pack_size();
      v37 = &v51 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = _os_log_pack_fill();
      v39 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableArray sortRange:options:usingComparator:]", location, length);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v39, "[NSMutableArray sortRange:options:usingComparator:]", location, length);
      v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v37, v35];
      objc_exception_throw(v41);
    }

    v42 = _os_log_pack_size();
    v44 = &v51 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSMutableArray sortRange:options:usingComparator:]", location, length, v13 - 1);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSMutableArray sortRange:options:usingComparator:]", location, length, v13 - 1);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v44, v42];
    objc_exception_throw(v48);
  }

  if (length >= 2)
  {
    if (length >> 60)
    {
      v49 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
      v50 = [NSException exceptionWithName:@"NSGenericException" reason:v49 userInfo:0];
      CFRelease(v49);
      objc_exception_throw(v50);
    }

    if (length >= 0x101)
    {
      v14 = 1;
    }

    else
    {
      v14 = length;
    }

    v15 = 8 * v14;
    MEMORY[0x1EEE9AC00](v11, v12);
    v17 = &v51 - v16;
    v54[0] = 0;
    if (length >= 0x101)
    {
      v17 = _CFCreateArrayStorage(length, 0, v54);
      v51 = v17;
    }

    else
    {
      v51 = 0;
    }

    v18 = [(NSArray *)self getObjects:v17 range:location, length, v51];
    MEMORY[0x1EEE9AC00](v18, v19);
    v21 = &v51 - v20;
    v22 = &v51 - v20;
    if (length > 0x1000)
    {
      v22 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __52__NSMutableArray_sortRange_options_usingComparator___block_invoke;
    v53[3] = &unk_1E6D7D7A0;
    v53[4] = comparator;
    v53[5] = v17;
    CFSortIndexes(v22, length, optionsCopy, v53);
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = 0;
    v52 = 0;
    if (length >= 0x101)
    {
      v25 = _CFCreateArrayStorage(length, 0, &v52);
    }

    v26 = 0;
    if (length >= 0x101)
    {
      v27 = v25;
    }

    else
    {
      v27 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    do
    {
      *&v27[8 * v26] = *&v17[8 * *&v22[8 * v26]];
      ++v26;
    }

    while (length != v26);
    [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:?];
    if (v21 != v22)
    {
      free(v22);
    }

    free(v25);
    free(v51);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (cmptr)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableArray sortWithOptions:usingComparator:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableArray sortWithOptions:usingComparator:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v16);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!cmptr)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = [(NSArray *)self count];
  if (v8 >= 2)
  {
    v10 = *MEMORY[0x1E69E9840];

    [(NSMutableArray *)self sortRange:0 options:v8 usingComparator:opts, cmptr];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)sortUsingComparator:(NSComparator)cmptr
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (cmptr)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray sortUsingComparator:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableArray sortUsingComparator:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  if (!cmptr)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = [(NSArray *)self count];
  if (v6 >= 2)
  {
    v8 = *MEMORY[0x1E69E9840];

    [(NSMutableArray *)self sortRange:0 options:v6 usingComparator:0, cmptr];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

- (void)sortUsingFunction:(NSInteger (__cdecl *)compare context:
{
  v11[6] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (compare)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: function pointer cannot be NULL", "[NSMutableArray sortUsingFunction:context:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9), 0];
    objc_exception_throw(v10);
  }

  if (!compare)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__NSMutableArray_sortUsingFunction_context___block_invoke;
  v11[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v11[4] = compare;
  v11[5] = context;
  [(NSMutableArray *)self sortWithOptions:0 usingComparator:v11];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)sortUsingFunction:(void *)function context:(void *)context range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25[6] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (function)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: function pointer cannot be NULL", "[NSMutableArray sortUsingFunction:context:range:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13), 0];
    objc_exception_throw(v14);
  }

  if (!function)
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v20 = v11;
      v15 = _os_log_pack_size();
      v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableArray sortUsingFunction:context:range:]", location, length, --v20);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableArray sortUsingFunction:context:range:]", location, length, v20);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill();
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSMutableArray sortUsingFunction:context:range:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSMutableArray sortUsingFunction:context:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v15];
    objc_exception_throw(v23);
  }

  if (length != 1)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __50__NSMutableArray_sortUsingFunction_context_range___block_invoke;
    v25[3] = &__block_descriptor_48_e11_q24__0_8_16l;
    v25[4] = function;
    v25[5] = context;
    [(NSMutableArray *)self sortRange:location options:length usingComparator:0, v25];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sortUsingSelector:(SEL)comparator
{
  v7[5] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (comparator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!comparator)
  {
LABEL_3:
    [self doesNotRecognizeSelector:0];
  }

LABEL_4:
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSMutableArray_sortUsingSelector___block_invoke;
  v7[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v7[4] = comparator;
  [(NSMutableArray *)self sortWithOptions:0 usingComparator:v7];
  v6 = *MEMORY[0x1E69E9840];
}

- (NSMutableArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[NSMutableArray initWithObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray initWithObjects:count:]", count);
    goto LABEL_12;
  }

  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableArray initWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray initWithObjects:count:]", count);
LABEL_12:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!objects[i])
      {
        v10 = _os_log_pack_size();
        v11 = _os_log_pack_fill();
        *v11 = 136315394;
        *(v11 + 4) = "[NSMutableArray initWithObjects:count:]";
        *(v11 + 12) = 2048;
        *(v11 + 14) = i;
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray initWithObjects:count:]", i);
        v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
        objc_exception_throw(v13);
      }
    }
  }

  v7 = [(NSMutableArray *)self initWithCapacity:count];
  [(NSMutableArray *)v7 insertObjects:objects count:count atIndex:0];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)arrayByAddingObjectsFromArray:(id)array
{
  v27 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v20 = _os_log_pack_size();
    v22 = &v26 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableArray arrayByAddingObjectsFromArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray arrayByAddingObjectsFromArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v20];
    objc_exception_throw(v25);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [array count];
  v7 = [(NSArray *)self count];
  v8 = v7 + v6;
  if ((v7 + v6) >> 60)
  {
    v18 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7 + v6);
    v19 = [NSException exceptionWithName:@"NSGenericException" reason:v18 userInfo:0];
    CFRelease(v18);
    objc_exception_throw(v19);
  }

  v9 = v7;
  v26 = 0;
  if (v8 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 + v6;
  }

  v11 = _CFCreateArrayStorage(v10, 0, &v26);
  if (v9)
  {
    [(NSArray *)self getObjects:v11 range:0, v9, v26, v27];
  }

  if (v6)
  {
    [array getObjects:&v11[v9] range:{0, v6}];
  }

  if (v11)
  {
    if (v8)
    {
      v12 = v11;
      v13 = v8;
      do
      {
        v14 = *v12++;
        --v13;
      }

      while (v13);
    }

    v15 = [[NSArray alloc] _initByAdoptingBuffer:v11 count:v8 size:v8];
  }

  else
  {
    v15 = [[NSArray alloc] initWithObjects:0 count:v8];
  }

  result = v15;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSMutableArray)arrayWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (void)removeObjectAtIndex:(NSUInteger)index
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (NSMutableArray)initWithCapacity:(NSUInteger)numItems
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

@end