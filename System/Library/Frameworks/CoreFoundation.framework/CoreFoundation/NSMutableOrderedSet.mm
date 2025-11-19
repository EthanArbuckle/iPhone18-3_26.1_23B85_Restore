@interface NSMutableOrderedSet
+ (NSMutableOrderedSet)orderedSetWithCapacity:(NSUInteger)numItems;
- (NSMutableOrderedSet)initWithCapacity:(NSUInteger)numItems;
- (NSMutableOrderedSet)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)sortedArrayFromRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5;
- (void)addObject:(id)object;
- (void)addObjects:(id *)objects count:(NSUInteger)count;
- (void)addObjectsFromArray:(NSArray *)array;
- (void)addObjectsFromArray:(id)a3 range:(_NSRange)a4;
- (void)addObjectsFromOrderedSet:(id)a3;
- (void)addObjectsFromOrderedSet:(id)a3 range:(_NSRange)a4;
- (void)addObjectsFromSet:(id)a3;
- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
- (void)insertObject:(id)object atIndex:(NSUInteger)idx;
- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
- (void)insertObjects:(const void *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)insertObjectsFromArray:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjectsFromArray:(id)a3 range:(_NSRange)a4 atIndex:(unint64_t)a5;
- (void)insertObjectsFromOrderedSet:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjectsFromOrderedSet:(id)a3 range:(_NSRange)a4 atIndex:(unint64_t)a5;
- (void)insertObjectsFromSet:(id)a3 atIndex:(unint64_t)a4;
- (void)intersectOrderedSet:(NSOrderedSet *)other;
- (void)intersectSet:(NSSet *)other;
- (void)minusOrderedSet:(NSOrderedSet *)other;
- (void)minusSet:(NSSet *)other;
- (void)moveObjectsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)idx;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)removeLastObject;
- (void)removeObject:(id)a3 inRange:(_NSRange)a4;
- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(NSUInteger)idx;
- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
- (void)removeObjectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (void)removeObjectsInArray:(NSArray *)array;
- (void)removeObjectsInArray:(id)a3 range:(_NSRange)a4;
- (void)removeObjectsInOrderedSet:(id)a3;
- (void)removeObjectsInOrderedSet:(id)a3 range:(_NSRange)a4;
- (void)removeObjectsInRange:(NSRange)range;
- (void)removeObjectsInRange:(_NSRange)a3 inArray:(id)a4;
- (void)removeObjectsInRange:(_NSRange)a3 inArray:(id)a4 range:(_NSRange)a5;
- (void)removeObjectsInRange:(_NSRange)a3 inOrderedSet:(id)a4;
- (void)removeObjectsInRange:(_NSRange)a3 inOrderedSet:(id)a4 range:(_NSRange)a5;
- (void)removeObjectsInRange:(_NSRange)a3 inSet:(id)a4;
- (void)removeObjectsInSet:(id)a3;
- (void)removeObjectsPassingTest:(id)a3;
- (void)removeObjectsWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (void)replaceObject:(id)a3;
- (void)replaceObject:(id)a3 inRange:(_NSRange)a4;
- (void)replaceObjectAtIndex:(NSUInteger)idx withObject:(id)object;
- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects;
- (void)replaceObjectsInRange:(NSRange)range withObjects:(id *)objects count:(NSUInteger)count;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4 range:(_NSRange)a5;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromOrderedSet:(id)a4;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromOrderedSet:(id)a4 range:(_NSRange)a5;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromSet:(id)a4;
- (void)setArray:(id)a3;
- (void)setObject:(id)a3;
- (void)setObject:(id)obj atIndex:(NSUInteger)idx;
- (void)setOrderedSet:(id)a3;
- (void)setSet:(id)a3;
- (void)sortRange:(NSRange)range options:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (void)sortUsingComparator:(NSComparator)cmptr;
- (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (void)unionOrderedSet:(NSOrderedSet *)other;
- (void)unionSet:(NSSet *)other;
@end

@implementation NSMutableOrderedSet

- (void)addObject:(id)object
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableOrderedSet addObject:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet addObject:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!object)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self count];
  v7 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObject:object atIndex:v6];
}

- (void)addObjects:(id *)objects count:(NSUInteger)count
{
  v21[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
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
    *(v17 + 4) = "[NSMutableOrderedSet addObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet addObjects:count:]", count);
    goto LABEL_17;
  }

LABEL_4:
  if (count >> 61)
  {
    v15 = _os_log_pack_size();
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[NSMutableOrderedSet addObjects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet addObjects:count:]", count);
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
        *(v12 + 4) = "[NSMutableOrderedSet addObjects:count:]";
        *(v12 + 12) = 2048;
        *(v12 + 14) = v8;
        v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet addObjects:count:]", v8);
        v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
        objc_exception_throw(v14);
      }

      ++v8;
    }

    while (count != v8);
  }

  v9 = [(NSOrderedSet *)self count];
  v10 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjects:objects count:count atIndex:v9];
}

- (void)addObjectsFromArray:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a3) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableOrderedSet addObjectsFromArray:range:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet addObjectsFromArray:range:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17];
    objc_exception_throw(v20);
  }

LABEL_4:
  v9 = [a3 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length, v21);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v15, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v24);
  }

  v10 = [(NSOrderedSet *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromArray:a3 range:location atIndex:length, v10];
}

- (void)addObjectsFromArray:(NSArray *)array
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
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
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet addObjectsFromArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet addObjectsFromArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = [(NSArray *)array count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromArray:array range:0 atIndex:v7, v6];
}

- (void)addObjectsFromOrderedSet:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17];
    objc_exception_throw(v20);
  }

LABEL_4:
  v9 = [a3 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length, v21);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v15, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v24);
  }

  v10 = [(NSOrderedSet *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromOrderedSet:a3 range:location atIndex:length, v10];
}

- (void)addObjectsFromOrderedSet:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet addObjectsFromOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet addObjectsFromOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = [a3 count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromOrderedSet:a3 range:0 atIndex:v7, v6];
}

- (void)addObjectsFromSet:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(a3) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableOrderedSet addObjectsFromSet:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet addObjectsFromSet:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromSet:a3 atIndex:v6];
}

- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2
{
  v33[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self count];
  if ((idx1 & 0x8000000000000000) != 0 || v8 <= idx1)
  {
    if (v8)
    {
      v24 = v8;
      v16 = _os_log_pack_size();
      v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill();
      v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx1, --v24);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v26, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx1, v24);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      *v18 = 136315394;
      *(v18 + 4) = "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v18 + 12) = 2048;
      *(v18 + 14) = idx1;
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx1);
    }

    v27 = _CFAutoreleasePoolAddObject(0, v19);
    v28 = v17;
    v29 = v16;
LABEL_25:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v27 userInfo:0 osLogPack:v28 size:v29]);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((idx2 & 0x8000000000000000) != 0 || v9 <= idx2)
  {
    if (v9)
    {
      v30 = v9;
      v20 = _os_log_pack_size();
      v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx2, --v30);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v32, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx2, v30);
    }

    else
    {
      v20 = _os_log_pack_size();
      v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = idx2;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx2);
    }

    v27 = _CFAutoreleasePoolAddObject(0, v23);
    v28 = v21;
    v29 = v20;
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

    v12 = [(NSOrderedSet *)self objectAtIndex:idx2];
    v33[0] = [(NSOrderedSet *)self objectAtIndex:v11];
    v13 = v12;
    v14 = v33[0];
    [(NSMutableOrderedSet *)self removeObjectAtIndex:v11];
    [(NSMutableOrderedSet *)self replaceObjectAtIndex:idx2 withObject:v33[0]];
    [(NSMutableOrderedSet *)self insertObject:v12 atIndex:v11];

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (void)insertObjects:(const void *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  if (a4)
  {
    v20 = _os_log_pack_size();
    v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = a4;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet insertObjects:count:atIndex:]", a4);
    goto LABEL_20;
  }

LABEL_4:
  if (a4 >> 61)
  {
    v20 = _os_log_pack_size();
    v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = a4;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet insertObjects:count:atIndex:]", a4);
LABEL_20:
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v20];
    objc_exception_throw(v25);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      if (!a3[v10])
      {
        v16 = _os_log_pack_size();
        v17 = _os_log_pack_fill();
        *v17 = 136315394;
        *(v17 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
        *(v17 + 12) = 2048;
        *(v17 + 14) = v10;
        v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet insertObjects:count:atIndex:]", v10);
        v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
        objc_exception_throw(v19);
      }

      ++v10;
    }

    while (a4 != v10);
  }

  v11 = [(NSOrderedSet *)self count];
  if ((a5 & 0x8000000000000000) != 0 || v11 < a5)
  {
    if (v11)
    {
      v30 = v11;
      v26 = _os_log_pack_size();
      v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSMutableOrderedSet insertObjects:count:atIndex:]", a5, --v30);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v32, "[NSMutableOrderedSet insertObjects:count:atIndex:]", a5, v30);
    }

    else
    {
      v26 = _os_log_pack_size();
      v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill();
      *v28 = 136315394;
      *(v28 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
      *(v28 + 12) = 2048;
      *(v28 + 14) = a5;
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjects:count:atIndex:]", a5);
    }

    v33 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v26];
    objc_exception_throw(v33);
  }

  v12 = [(NSOrderedSet *)self count];
  if (a4)
  {
    v13 = a5 - v12;
    do
    {
      v14 = *a3++;
      [(NSMutableOrderedSet *)self insertObject:v14 atIndex:v13 + [(NSOrderedSet *)self count]];
      --a4;
    }

    while (a4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromArray:(id)a3 range:(_NSRange)a4 atIndex:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v57[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a3) & 1) == 0)
  {
    v35 = _os_log_pack_size();
    v37 = v57 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v35];
    objc_exception_throw(v40);
  }

LABEL_4:
  v11 = [a3 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v20 = _os_log_pack_size();
      v22 = v57 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v20];
      objc_exception_throw(v26);
    }

    v41 = v11;
    v42 = _os_log_pack_size();
    v44 = v57 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length, --v41);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length, v41);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v44, v42];
    objc_exception_throw(v48);
  }

  v12 = [(NSOrderedSet *)self count];
  if ((a5 & 0x8000000000000000) != 0 || v12 < a5)
  {
    if (!v12)
    {
      v27 = _os_log_pack_size();
      v29 = v57 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      *v30 = 136315394;
      *(v30 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]";
      *(v30 + 12) = 2048;
      *(v30 + 14) = a5;
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", a5);
      v32 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
      objc_exception_throw(v32);
    }

    v49 = v12;
    v50 = _os_log_pack_size();
    v52 = v57 - ((MEMORY[0x1EEE9AC00](v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = _os_log_pack_fill();
    v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", a5, --v49);
    v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v54, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", a5, v49);
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

  [a3 getObjects:v17 range:{location, length, v57[0]}];
  [(NSMutableOrderedSet *)self insertObjects:v17 count:length atIndex:a5];
  free(v18);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromArray:(id)a3 atIndex:(unint64_t)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a3) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = v40 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v8 = [(NSOrderedSet *)self count];
  v9 = v8;
  if ((a4 & 0x8000000000000000) != 0 || v8 < a4)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v20 = v40 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = a4;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]", a4);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
      objc_exception_throw(v23);
    }

    v32 = _os_log_pack_size();
    v34 = v40 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    v36 = v9 - 1;
    v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v35, "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]", a4, v36);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v37, "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]", a4, v36);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v34, v32];
    objc_exception_throw(v39);
  }

  v10 = [a3 count];
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

  [a3 getObjects:v15 range:{0, v12, v40[0]}];
  [(NSMutableOrderedSet *)self insertObjects:v15 count:v12 atIndex:a4];
  free(v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromOrderedSet:(id)a3 range:(_NSRange)a4 atIndex:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v57[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v35 = _os_log_pack_size();
    v37 = v57 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v35];
    objc_exception_throw(v40);
  }

LABEL_4:
  v11 = [a3 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v20 = _os_log_pack_size();
      v22 = v57 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v20];
      objc_exception_throw(v26);
    }

    v41 = v11;
    v42 = _os_log_pack_size();
    v44 = v57 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length, --v41);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length, v41);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v44, v42];
    objc_exception_throw(v48);
  }

  v12 = [(NSOrderedSet *)self count];
  if ((a5 & 0x8000000000000000) != 0 || v12 < a5)
  {
    if (!v12)
    {
      v27 = _os_log_pack_size();
      v29 = v57 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill();
      *v30 = 136315394;
      *(v30 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]";
      *(v30 + 12) = 2048;
      *(v30 + 14) = a5;
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", a5);
      v32 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
      objc_exception_throw(v32);
    }

    v49 = v12;
    v50 = _os_log_pack_size();
    v52 = v57 - ((MEMORY[0x1EEE9AC00](v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = _os_log_pack_fill();
    v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", a5, --v49);
    v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v54, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", a5, v49);
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

  [a3 getObjects:v17 range:{location, length, v57[0]}];
  [(NSMutableOrderedSet *)self insertObjects:v17 count:length atIndex:a5];
  free(v18);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromOrderedSet:(id)a3 atIndex:(unint64_t)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = v40 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v8 = [(NSOrderedSet *)self count];
  v9 = v8;
  if ((a4 & 0x8000000000000000) != 0 || v8 < a4)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v20 = v40 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = a4;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]", a4);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
      objc_exception_throw(v23);
    }

    v32 = _os_log_pack_size();
    v34 = v40 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    v36 = v9 - 1;
    v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v35, "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]", a4, v36);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v37, "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]", a4, v36);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v34, v32];
    objc_exception_throw(v39);
  }

  v10 = [a3 count];
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

  [a3 getObjects:v15 range:{0, v12, v40[0]}];
  [(NSMutableOrderedSet *)self insertObjects:v15 count:v12 atIndex:a4];
  free(v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)insertObjectsFromSet:(id)a3 atIndex:(unint64_t)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(a3) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v28 = v40 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315138;
    *(v29 + 4) = "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v8 = [(NSOrderedSet *)self count];
  v9 = v8;
  if ((a4 & 0x8000000000000000) != 0 || v8 < a4)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v20 = v40 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]";
      *(v21 + 12) = 2048;
      *(v21 + 14) = a4;
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]", a4);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
      objc_exception_throw(v23);
    }

    v32 = _os_log_pack_size();
    v34 = v40 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    v36 = v9 - 1;
    v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v35, "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]", a4, v36);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v37, "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]", a4, v36);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v34, v32];
    objc_exception_throw(v39);
  }

  v10 = [a3 count];
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

  [a3 getObjects:v15 count:{v12, v40[0]}];
  [(NSMutableOrderedSet *)self insertObjects:v15 count:v12 atIndex:a4];
  free(v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes
{
  v61[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
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
    *(v58 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
    v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet insertObjects:atIndexes:]");
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
    *(v30 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet insertObjects:atIndexes:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
    objc_exception_throw(v32);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v35 = v61 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill();
    *v36 = 136315138;
    *(v36 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
    v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet insertObjects:atIndexes:]");
    v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v33];
    objc_exception_throw(v38);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = [(NSArray *)objects count];
  v10 = [(NSIndexSet *)indexes lastIndex];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v39 = v10;
    v11 = v9 + v8;
    goto LABEL_26;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= v10)
    {
      v39 = v10;
LABEL_26:
      if (!v11)
      {
        v40 = _os_log_pack_size();
        v42 = v61 - ((MEMORY[0x1EEE9AC00](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = _os_log_pack_fill();
        *v43 = 136315394;
        *(v43 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
        *(v43 + 12) = 2048;
        *(v43 + 14) = v39;
        v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjects:atIndexes:]", v39);
        v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v40];
        objc_exception_throw(v45);
      }

      v46 = _os_log_pack_size();
      v48 = v61 - ((MEMORY[0x1EEE9AC00](v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = _os_log_pack_fill();
      v50 = __os_log_helper_1_2_3_8_32_8_0_8_0(v49, "[NSMutableOrderedSet insertObjects:atIndexes:]", v39, v11 - 1);
      v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v50, "[NSMutableOrderedSet insertObjects:atIndexes:]", v39, v11 - 1);
      v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v46];
      objc_exception_throw(v52);
    }
  }

  v12 = [(NSArray *)objects count];
  v13 = [(NSIndexSet *)indexes count];
  if (v12 != v13)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableOrderedSet insertObjects:atIndexes:]", v12, v13);
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
    [(NSMutableOrderedSet *)self insertObjects:&v19[8 * v21] count:v24 atIndex:v23];
    v21 += v25;
  }

  free(v20);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)intersectOrderedSet:(NSOrderedSet *)other
{
  v34 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v19 = _os_log_pack_size();
    v21 = &v27 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet intersectOrderedSet:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet intersectOrderedSet:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v19];
    objc_exception_throw(v24);
  }

LABEL_4:
  if (self != other)
  {
    v6 = [(NSOrderedSet *)self count];
    if (v6 >> 60)
    {
      v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
      v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
      CFRelease(v25);
      objc_exception_throw(v26);
    }

    if (v6 <= 1)
    {
      v6 = 1;
    }

    v8 = MEMORY[0x1EEE9AC00](v6, v7);
    v10 = (&v27 - v9);
    v28 = 0;
    if (v11 >= 0x101)
    {
      v10 = _CFCreateArrayStorage(v8, 0, &v28);
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [(NSOrderedSet *)self countByEnumeratingWithState:&v30 objects:v29 count:16];
    v14 = v10;
    if (v13)
    {
      v15 = *v31;
      v14 = v10;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(self);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          if (![(NSOrderedSet *)other countForObject:v17])
          {
            *v14++ = v17;
          }
        }

        v13 = [(NSOrderedSet *)self countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v13);
    }

    while (v10 < v14)
    {
      [(NSMutableOrderedSet *)self removeObject:*v10++];
    }

    free(v12);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(NSSet *)other
{
  v34 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(other) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v23 = &v27 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "[NSMutableOrderedSet intersectSet:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet intersectSet:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v21];
    objc_exception_throw(v26);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  if (v6 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = (&v27 - v9);
  v28 = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v28);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [(NSOrderedSet *)self countByEnumeratingWithState:&v30 objects:v29 count:16];
  v14 = v10;
  if (v13)
  {
    v15 = *v31;
    v14 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(self);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if (![(NSSet *)other countForObject:v17])
        {
          *v14++ = v17;
        }
      }

      v13 = [(NSOrderedSet *)self countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v13);
  }

  while (v10 < v14)
  {
    [(NSMutableOrderedSet *)self removeObject:*v10++];
  }

  free(v12);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)moveObjectsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)idx
{
  v65[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
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
    *(v27 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]");
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v24];
    objc_exception_throw(v29);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
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
    *(v33 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v30];
    objc_exception_throw(v35);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = [0 count];
  v10 = [(NSIndexSet *)indexes lastIndex];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v36 = v10;
    v11 = v9 + v8;
    goto LABEL_21;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= v10)
    {
      v36 = v10;
LABEL_21:
      if (!v11)
      {
        v37 = _os_log_pack_size();
        v39 = v65 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = _os_log_pack_fill();
        *v40 = 136315394;
        *(v40 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
        *(v40 + 12) = 2048;
        *(v40 + 14) = v36;
        v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", v36);
        v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
        objc_exception_throw(v42);
      }

      v43 = _os_log_pack_size();
      v45 = v65 - ((MEMORY[0x1EEE9AC00](v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = _os_log_pack_fill();
      v47 = __os_log_helper_1_2_3_8_32_8_0_8_0(v46, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", v36, v11 - 1);
      v48 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v47, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", v36, v11 - 1);
      v49 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v48) osLogPack:0 size:v45, v43];
      objc_exception_throw(v49);
    }
  }

  v12 = [(NSOrderedSet *)self count];
  v13 = [(NSIndexSet *)indexes countOfIndexesInRange:0, idx];
  v14 = v12 - v13;
  if ((idx & 0x8000000000000000) != 0 || v14 < idx)
  {
    if (v12 == v13)
    {
      v50 = _os_log_pack_size();
      v52 = v65 - ((MEMORY[0x1EEE9AC00](v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = _os_log_pack_fill();
      *v53 = 136315394;
      *(v53 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
      *(v53 + 12) = 2048;
      *(v53 + 14) = idx;
      v54 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", idx);
      v55 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v54) osLogPack:0 size:v52, v50];
      objc_exception_throw(v55);
    }

    v58 = _os_log_pack_size();
    v60 = v65 - ((MEMORY[0x1EEE9AC00](v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = _os_log_pack_fill();
    v62 = __os_log_helper_1_2_3_8_32_8_0_8_0(v61, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", idx, v14 - 1);
    v63 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v62, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", idx, v14 - 1);
    v64 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v63) osLogPack:0 size:v60, v58];
    objc_exception_throw(v64);
  }

  v15 = [(NSOrderedSet *)self objectsAtIndexes:indexes];
  [(NSMutableOrderedSet *)self removeObjectsAtIndexes:indexes];
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
  [(NSMutableOrderedSet *)self insertObjects:v21 count:v18 atIndex:idx];
  free(v22);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)minusOrderedSet:(NSOrderedSet *)other
{
  v24 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableOrderedSet minusOrderedSet:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet minusOrderedSet:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v15];
    objc_exception_throw(v18);
  }

LABEL_4:
  if (self == other)
  {
    v14 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self removeAllObjects];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(NSOrderedSet *)other countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(other);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [(NSOrderedSet *)other countForObject:v10];
          if (v11)
          {
            v12 = v11;
            do
            {
              --v12;
              [(NSMutableOrderedSet *)self removeObject:v10];
            }

            while (v12);
          }
        }

        v7 = [(NSOrderedSet *)other countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)minusSet:(NSSet *)other
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(other) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableOrderedSet minusSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet minusSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(NSSet *)other countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(other);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSSet *)other countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableOrderedSet *)self removeObject:v10];
          }

          while (v12);
        }
      }

      v7 = [(NSSet *)other countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeAllObjects
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [(NSOrderedSet *)self count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v5--];
    }

    while (v5 != -1);
  }
}

- (void)removeFirstObject
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  if ([(NSOrderedSet *)self count])
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:0];
  }
}

- (void)removeLastObject
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [(NSOrderedSet *)self count];
  if (v4)
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:v4 - 1];
  }
}

- (void)removeObjectsInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v18[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v7 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v7 < location + length)
  {
    if (v7)
    {
      v14 = v7;
      v9 = _os_log_pack_size();
      v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v15, "[NSMutableOrderedSet removeObjectsInRange:]", location, length, --v14);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v16, "[NSMutableOrderedSet removeObjectsInRange:]", location, length, v14);
    }

    else
    {
      v9 = _os_log_pack_size();
      v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = _os_log_pack_fill();
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v11, "[NSMutableOrderedSet removeObjectsInRange:]", location, length);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v12, "[NSMutableOrderedSet removeObjectsInRange:]", location, length);
    }

    v17 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v10, v9];
    objc_exception_throw(v17);
  }

  for (; length; --length)
  {
    [(NSMutableOrderedSet *)self removeObjectAtIndex:location];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeObject:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v22[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
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
      v20 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v19, "[NSMutableOrderedSet removeObject:inRange:]", location, length, --v18);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, "[NSMutableOrderedSet removeObject:inRange:]", location, length, v18);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableOrderedSet removeObject:inRange:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[NSMutableOrderedSet removeObject:inRange:]", location, length);
    }

    v21 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v13];
    objc_exception_throw(v21);
  }

  v10 = [(NSOrderedSet *)self indexOfObject:a3 inRange:location, length];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
  }
}

- (void)removeObject:(id)object
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self indexOfObject:object];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:v6];
  }
}

- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes
{
  v28[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
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
    *(v17 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet removeObjectsAtIndexes:]");
    goto LABEL_14;
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
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
    *(v19 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet removeObjectsAtIndexes:]");
LABEL_14:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v20);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [0 count];
  v8 = [(NSIndexSet *)indexes lastIndex];
  if ((v8 & 0x8000000000000000) != 0)
  {
    v21 = v8;
    v9 = v7 + v6;
    goto LABEL_17;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7 + v6;
    if (v9 <= v8)
    {
      v21 = v8;
LABEL_17:
      v22 = _os_log_pack_size();
      v23 = _os_log_pack_fill();
      if (v9)
      {
        v25 = v9 - 1;
        v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet removeObjectsAtIndexes:]", v21, v25);
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v26, "[NSMutableOrderedSet removeObjectsAtIndexes:]", v21, v25);
      }

      else
      {
        *v23 = 136315394;
        *(v23 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:]";
        *(v23 + 12) = 2048;
        *(v23 + 14) = v21;
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet removeObjectsAtIndexes:]", v21);
      }

      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22];
      objc_exception_throw(v27);
    }
  }

  v10 = [(NSIndexSet *)indexes rangeCount];
  if (v10)
  {
    v11 = v10 - 1;
    do
    {
      v12 = [(NSIndexSet *)indexes rangeAtIndex:v11];
      [(NSMutableOrderedSet *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInRange:(_NSRange)a3 inArray:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3.length;
  v10 = a3.location;
  v39[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v12 = [(NSOrderedSet *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (v12)
    {
      v30 = v12;
      v16 = _os_log_pack_size();
      v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v31, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9, --v30);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v32, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9, v30);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill();
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v19, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9);
    }

    v33 = _CFAutoreleasePoolAddObject(0, v20);
    v34 = v17;
    v35 = v16;
LABEL_25:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v33 userInfo:0 osLogPack:v34 size:v35]);
  }

  if (a4 && (_NSIsNSArray(a4) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v27 = _os_log_pack_fill();
    *v27 = 136315138;
    *(v27 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]";
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]");
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v26];
    objc_exception_throw(v29);
  }

  v13 = [a4 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v13 < location + length)
  {
    if (v13)
    {
      v36 = v13;
      v21 = _os_log_pack_size();
      v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = _os_log_pack_fill();
      v38 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length, --v36);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v38, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length, v36);
    }

    else
    {
      v21 = _os_log_pack_size();
      v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length);
    }

    v33 = _CFAutoreleasePoolAddObject(0, v25);
    v34 = v22;
    v35 = v21;
    goto LABEL_25;
  }

  for (; length; --length)
  {
    v14 = -[NSOrderedSet indexOfObject:inRange:](self, "indexOfObject:inRange:", [a4 objectAtIndex:location], v10, v9);
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v14];
    }

    ++location;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInRange:(_NSRange)a3 inArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  v35 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = _os_log_pack_size();
      v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v26 = _os_log_pack_fill();
      v27 = v10 - 1;
      v28 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length, v27);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v28, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length, v27);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length);
    }

    v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v29);
  }

  if (a4 && (_NSIsNSArray(a4) & 1) == 0)
  {
    v22 = _os_log_pack_size();
    v23 = _os_log_pack_fill();
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInRange:inArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:&v30[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)], v22];
    objc_exception_throw(v25);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [a4 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(a4);
        }

        v15 = [(NSOrderedSet *)self indexOfObject:*(*(&v31 + 1) + 8 * i) inRange:location, length];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v15];
        }
      }

      v12 = [a4 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInArray:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a3) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableOrderedSet removeObjectsInArray:range:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInArray:range:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17];
    objc_exception_throw(v20);
  }

LABEL_4:
  v9 = [a3 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length, v21);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill();
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v15, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v24);
  }

  for (; length; --length)
  {
    v10 = -[NSOrderedSet indexOfObject:](self, "indexOfObject:", [a3 objectAtIndex:location]);
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
    }

    ++location;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInArray:(NSArray *)array
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
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
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSMutableOrderedSet removeObjectsInArray:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInArray:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v12];
    objc_exception_throw(v15);
  }

LABEL_4:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSArray *)array countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(array);
        }

        v10 = [(NSOrderedSet *)self indexOfObject:*(*(&v17 + 1) + 8 * i)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
        }
      }

      v7 = [(NSArray *)array countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInRange:(_NSRange)a3 inOrderedSet:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3.length;
  v10 = a3.location;
  v60[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v12 = [(NSOrderedSet *)self count];
  v13 = v12;
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (!v12)
    {
      v24 = _os_log_pack_size();
      v26 = v60 - ((MEMORY[0x1EEE9AC00](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill();
      v28 = __os_log_helper_1_2_3_8_32_8_0_8_0(v27, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v28, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9);
      v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v26, v24];
      objc_exception_throw(v30);
    }

    v46 = _os_log_pack_size();
    v48 = v60 - ((MEMORY[0x1EEE9AC00](v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = _os_log_pack_fill();
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v49, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9, v13 - 1);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9, v13 - 1);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v46];
    objc_exception_throw(v52);
  }

  if (a4 && (_NSIsNSOrderedSet(a4) & 1) == 0)
  {
    v40 = _os_log_pack_size();
    v42 = v60 - ((MEMORY[0x1EEE9AC00](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill();
    *v43 = 136315138;
    *(v43 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]";
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]");
    v45 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v40];
    objc_exception_throw(v45);
  }

  v14 = [a4 count];
  v16 = v14;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v14 < location + length)
  {
    if (!v14)
    {
      v31 = _os_log_pack_size();
      v33 = v60 - ((MEMORY[0x1EEE9AC00](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill();
      v35 = __os_log_helper_1_2_3_8_32_8_0_8_0(v34, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length);
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v35, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length);
      v37 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v33, v31];
      objc_exception_throw(v37);
    }

    v53 = _os_log_pack_size();
    v55 = v60 - ((MEMORY[0x1EEE9AC00](v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = _os_log_pack_fill();
    v57 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v56, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length, v16 - 1);
    v58 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v57, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length, v16 - 1);
    v59 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v58) osLogPack:0 size:v55, v53];
    objc_exception_throw(v59);
  }

  if (length >> 60)
  {
    v38 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v39 = [NSException exceptionWithName:@"NSGenericException" reason:v38 userInfo:0];
    CFRelease(v38);
    objc_exception_throw(v39);
  }

  if (length <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = length;
  }

  v18 = MEMORY[0x1EEE9AC00](v17, v15);
  v20 = (v60 - v19);
  v60[0] = 0;
  if (length >= 0x101)
  {
    v20 = _CFCreateArrayStorage(v18, 0, v60);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [a4 getObjects:v20 range:{location, length, v60[0]}];
  for (; length; --length)
  {
    v22 = [(NSOrderedSet *)self indexOfObject:*v20 inRange:v10, v9];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v22];
    }

    ++v20;
  }

  free(v21);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInRange:(_NSRange)a3 inOrderedSet:(id)a4
{
  length = a3.length;
  location = a3.location;
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v24 = v9;
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length, --v24);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length, v24);
    }

    else
    {
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v12];
    objc_exception_throw(v28);
  }

  if (a4 && (_NSIsNSOrderedSet(a4) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v29 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

  v10 = [a4 count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self removeObjectsInRange:location inOrderedSet:length range:a4, 0, v10];
}

- (void)removeObjectsInOrderedSet:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v29 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

LABEL_4:
  v9 = [a3 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v24 = v9;
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length, --v24);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length, v24);
    }

    else
    {
      v12 = _os_log_pack_size();
      v14 = v29 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v12];
    objc_exception_throw(v28);
  }

  v10 = [(NSOrderedSet *)self count];
  v11 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self removeObjectsInRange:0 inOrderedSet:v10 range:a3, location, length];
}

- (void)removeObjectsInOrderedSet:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet removeObjectsInOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = [a3 count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self removeObjectsInRange:0 inOrderedSet:v6 range:a3, 0, v7];
}

- (void)removeObjectsInRange:(_NSRange)a3 inSet:(id)a4
{
  length = a3.length;
  location = a3.location;
  v35 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = _os_log_pack_size();
      v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v26 = _os_log_pack_fill();
      v27 = v10 - 1;
      v28 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v26, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length, v27);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v28, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length, v27);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length);
    }

    v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v29);
  }

  if (a4 && (_NSIsNSSet(a4) & 1) == 0)
  {
    v22 = _os_log_pack_size();
    v23 = _os_log_pack_fill();
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inSet:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet removeObjectsInRange:inSet:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:&v30[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)], v22];
    objc_exception_throw(v25);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [a4 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(a4);
        }

        v15 = [(NSOrderedSet *)self indexOfObject:*(*(&v31 + 1) + 8 * i) inRange:location, length];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v15];
        }
      }

      v12 = [a4 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInSet:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(a3) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSMutableOrderedSet removeObjectsInSet:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet removeObjectsInSet:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v12];
    objc_exception_throw(v15);
  }

LABEL_4:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(NSOrderedSet *)self indexOfObject:*(*(&v17 + 1) + 8 * i)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v17 = _os_log_pack_size();
    v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  if (!a3)
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
    *(v21 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  if (!a5)
  {
    v17 = _os_log_pack_size();
    v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]");
LABEL_15:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v17];
    objc_exception_throw(v23);
  }

  if ((a4 & 2) != 0)
  {
    a4 &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, a5, a4 | 0x5000000000000000, a3);
  IndexesPassingTest = __NSOrderedSetGetIndexesPassingTest(self, a5, a4 | 0x5000000000000000, a3);
  v12 = [IndexesPassingTest rangeCount];
  if (v12)
  {
    v13 = v12 - 1;
    do
    {
      v14 = [IndexesPassingTest rangeAtIndex:v13];
      [(NSMutableOrderedSet *)self removeObjectsInRange:v14, v15];
      --v13;
    }

    while (v13 != -1);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableOrderedSet removeObjectsWithOptions:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableOrderedSet removeObjectsWithOptions:passingTest:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a3 & 2) != 0)
  {
    a3 &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, a4, a3 | 0x4000000000000000, 0);
  IndexesPassingTest = __NSOrderedSetGetIndexesPassingTest(self, a4, a3 | 0x4000000000000000, 0);
  v10 = [IndexesPassingTest rangeCount];
  if (v10)
  {
    v11 = v10 - 1;
    do
    {
      v12 = [IndexesPassingTest rangeAtIndex:v11];
      [(NSMutableOrderedSet *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsPassingTest:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableOrderedSet removeObjectsPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableOrderedSet removeObjectsPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self removeObjectsWithOptions:0 passingTest:a3];
}

- (void)replaceObject:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v26[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableOrderedSet replaceObject:inRange:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet replaceObject:inRange:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v22 = v9;
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v23, "[NSMutableOrderedSet replaceObject:inRange:]", location, length, --v22);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, "[NSMutableOrderedSet replaceObject:inRange:]", location, length, v22);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[NSMutableOrderedSet replaceObject:inRange:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, "[NSMutableOrderedSet replaceObject:inRange:]", location, length);
    }

    v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v25);
  }

  v10 = [(NSOrderedSet *)self indexOfObject:a3 inRange:location, length];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:v10 withObject:a3];
  }
}

- (void)replaceObject:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableOrderedSet replaceObject:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet replaceObject:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self indexOfObject:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:v6 withObject:a3];
  }
}

- (void)replaceObjectsInRange:(NSRange)range withObjects:(id *)objects count:(NSUInteger)count
{
  length = range.length;
  location = range.location;
  v37[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v11 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v33 = v11;
      v26 = _os_log_pack_size();
      v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill();
      v35 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v34, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length, --v33);
      v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v35, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length, v33);
    }

    else
    {
      v26 = _os_log_pack_size();
      v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill();
      v29 = __os_log_helper_1_2_3_8_32_8_0_8_0(v28, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length);
      v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v29, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length);
    }

    v36 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v27, v26];
    objc_exception_throw(v36);
  }

  if (!objects && count)
  {
    v22 = _os_log_pack_size();
    v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = count;
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", count);
    goto LABEL_26;
  }

  if (count >> 61)
  {
    v22 = _os_log_pack_size();
    v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315394;
    *(v31 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]";
    *(v31 + 12) = 2048;
    *(v31 + 14) = count;
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", count);
LABEL_26:
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v22];
    objc_exception_throw(v32);
  }

  if (count)
  {
    v12 = 0;
    do
    {
      if (!objects[v12])
      {
        v18 = _os_log_pack_size();
        v19 = _os_log_pack_fill();
        *v19 = 136315394;
        *(v19 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]";
        *(v19 + 12) = 2048;
        *(v19 + 14) = v12;
        v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", v12);
        v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v18];
        objc_exception_throw(v21);
      }

      ++v12;
    }

    while (count != v12);
    v13 = 0;
    do
    {
      v14 = objects[v13++];
    }

    while (count != v13);
    [(NSMutableOrderedSet *)self removeObjectsInRange:location, length];
    [(NSMutableOrderedSet *)self insertObjects:objects count:count atIndex:location];
    do
    {
      v15 = *objects++;

      --count;
    }

    while (count);
    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(NSMutableOrderedSet *)self removeObjectsInRange:location, length];
    v17 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self insertObjects:objects count:0 atIndex:location];
  }
}

- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects
{
  v64[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
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
    v58 = _os_log_pack_size();
    v60 = v64 - ((MEMORY[0x1EEE9AC00](v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = _os_log_pack_fill();
    *v61 = 136315138;
    *(v61 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
    v62 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]");
    v63 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v62) osLogPack:0 size:v60, v58];
    objc_exception_throw(v63);
  }

LABEL_4:
  if (!indexes)
  {
    v31 = _os_log_pack_size();
    v33 = v64 - ((MEMORY[0x1EEE9AC00](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = _os_log_pack_fill();
    *v34 = 136315138;
    *(v34 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
    v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]");
    v36 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v33, v31];
    objc_exception_throw(v36);
  }

  if ((_NSIsNSIndexSet() & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v39 = v64 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315138;
    *(v40 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
    objc_exception_throw(v42);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = [(NSArray *)objects count];
  v10 = [(NSIndexSet *)indexes lastIndex];
  v11 = v10;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v12 = v9 + v8;
    goto LABEL_28;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v9 + v8;
    if (v12 <= v10)
    {
LABEL_28:
      if (!v12)
      {
        v43 = _os_log_pack_size();
        v45 = v64 - ((MEMORY[0x1EEE9AC00](v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = _os_log_pack_fill();
        *v46 = 136315394;
        *(v46 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
        *(v46 + 12) = 2048;
        *(v46 + 14) = v11;
        v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v11);
        v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v45, v43];
        objc_exception_throw(v48);
      }

      v49 = _os_log_pack_size();
      v51 = v64 - ((MEMORY[0x1EEE9AC00](v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = _os_log_pack_fill();
      v53 = __os_log_helper_1_2_3_8_32_8_0_8_0(v52, "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v11, v12 - 1);
      v54 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v53, "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v11, v12 - 1);
      v55 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v54) osLogPack:0 size:v51, v49];
      objc_exception_throw(v55);
    }
  }

  v13 = [(NSArray *)objects count];
  v14 = [(NSIndexSet *)indexes count];
  if (v13 != v14)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v13, v14);
  }

  v15 = [(NSArray *)objects count];
  v17 = v15;
  if (v15 >> 60)
  {
    v56 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v15);
    v57 = [NSException exceptionWithName:@"NSGenericException" reason:v56 userInfo:0];
    CFRelease(v56);
    objc_exception_throw(v57);
  }

  if (v15 <= 1)
  {
    v15 = 1;
  }

  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = v64 - v19;
  v64[0] = 0;
  if (v17 >= 0x101)
  {
    v20 = _CFCreateArrayStorage(v18, 0, v64);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [(NSArray *)objects getObjects:v20 range:0, v17, v64[0]];
  for (i = [(NSIndexSet *)indexes rangeCount]- 1; i != -1; --i)
  {
    v23 = [(NSIndexSet *)indexes rangeAtIndex:i];
    [(NSMutableOrderedSet *)self removeObjectsInRange:v23, v24];
  }

  v25 = 0;
  for (j = 0; j < [(NSIndexSet *)indexes rangeCount]; ++j)
  {
    v27 = [(NSIndexSet *)indexes rangeAtIndex:j];
    v29 = v28;
    [(NSMutableOrderedSet *)self insertObjects:&v20[8 * v25] count:v28 atIndex:v27];
    v25 += v29;
  }

  free(v21);
  v30 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3.length;
  v10 = a3.location;
  v59[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a4) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v39 = v59 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315138;
    *(v40 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
    objc_exception_throw(v42);
  }

LABEL_4:
  v12 = [a4 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v23 = v59 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill();
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v25, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v21];
      objc_exception_throw(v27);
    }

    v43 = v12;
    v44 = _os_log_pack_size();
    v46 = v59 - ((MEMORY[0x1EEE9AC00](v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = _os_log_pack_fill();
    v48 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v47, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length, --v43);
    v49 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v48, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length, v43);
    v50 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v49) osLogPack:0 size:v46, v44];
    objc_exception_throw(v50);
  }

  v13 = [(NSOrderedSet *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v28 = _os_log_pack_size();
      v30 = v59 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v32, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v30, v28];
      objc_exception_throw(v34);
    }

    v51 = v13;
    v52 = _os_log_pack_size();
    v54 = v59 - ((MEMORY[0x1EEE9AC00](v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = _os_log_pack_fill();
    v56 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v55, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, --v51);
    v57 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v56, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, v51);
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

  [a4 getObjects:v18 range:{location, length, v59[0]}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:v10 withObjects:v9 count:v18, length];
  free(v19);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a4) & 1) == 0)
  {
    v28 = _os_log_pack_size();
    v30 = v42 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v21 = v42 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v23, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v19];
      objc_exception_throw(v25);
    }

    v34 = _os_log_pack_size();
    v36 = v42 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    v38 = v10 - 1;
    v39 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length, v38);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v39, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length, v38);
    v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v36, v34];
    objc_exception_throw(v41);
  }

  v11 = [a4 count];
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

  [a4 getObjects:v16 range:{0, v13, v42[0]}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:v16, v13];
  free(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromOrderedSet:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3.length;
  v10 = a3.location;
  v59[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a4) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v39 = v59 - ((MEMORY[0x1EEE9AC00](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    *v40 = 136315138;
    *(v40 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v37];
    objc_exception_throw(v42);
  }

LABEL_4:
  v12 = [a4 count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v23 = v59 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill();
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v25, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v21];
      objc_exception_throw(v27);
    }

    v43 = v12;
    v44 = _os_log_pack_size();
    v46 = v59 - ((MEMORY[0x1EEE9AC00](v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = _os_log_pack_fill();
    v48 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v47, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, --v43);
    v49 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v48, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, v43);
    v50 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v49) osLogPack:0 size:v46, v44];
    objc_exception_throw(v50);
  }

  v13 = [(NSOrderedSet *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v28 = _os_log_pack_size();
      v30 = v59 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v32, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v30, v28];
      objc_exception_throw(v34);
    }

    v51 = v13;
    v52 = _os_log_pack_size();
    v54 = v59 - ((MEMORY[0x1EEE9AC00](v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = _os_log_pack_fill();
    v56 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v55, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, --v51);
    v57 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v56, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, v51);
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

  [a4 getObjects:v18 range:{location, length, v59[0]}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:v10 withObjects:v9 count:v18, length];
  free(v19);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromOrderedSet:(id)a4
{
  length = a3.length;
  location = a3.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a4) & 1) == 0)
  {
    v28 = _os_log_pack_size();
    v30 = v42 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v21 = v42 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v23, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v19];
      objc_exception_throw(v25);
    }

    v34 = _os_log_pack_size();
    v36 = v42 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    v38 = v10 - 1;
    v39 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v38);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v39, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v38);
    v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v36, v34];
    objc_exception_throw(v41);
  }

  v11 = [a4 count];
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

  [a4 getObjects:v16 range:{0, v13, v42[0]}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:v16, v13];
  free(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromSet:(id)a4
{
  length = a3.length;
  location = a3.location;
  v42[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(a4) & 1) == 0)
  {
    v28 = _os_log_pack_size();
    v30 = v42 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v21 = v42 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v23, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v19];
      objc_exception_throw(v25);
    }

    v34 = _os_log_pack_size();
    v36 = v42 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    v38 = v10 - 1;
    v39 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v37, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length, v38);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v39, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length, v38);
    v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v36, v34];
    objc_exception_throw(v41);
  }

  v11 = [a4 count];
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

  [a4 getObjects:v16 count:{v13, v42[0]}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:v16, v13];
  free(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)setArray:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(a3) & 1) == 0)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableOrderedSet setArray:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet setArray:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

LABEL_4:
  [(NSMutableOrderedSet *)self removeAllObjects];
  v6 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromArray:a3 atIndex:0];
}

- (void)setObject:(id)obj atIndex:(NSUInteger)idx
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (obj)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet setObject:atIndex:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet setObject:atIndex:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (!obj)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [(NSOrderedSet *)self count];
  if ((idx & 0x8000000000000000) != 0 || v8 < idx)
  {
    if (v8)
    {
      v19 = v8;
      v15 = _os_log_pack_size();
      v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill();
      v21 = __os_log_helper_1_2_3_8_32_8_0_8_0(v20, "[NSMutableOrderedSet setObject:atIndex:]", idx, --v19);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v21, "[NSMutableOrderedSet setObject:atIndex:]", idx, v19);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill();
      *v17 = 136315394;
      *(v17 + 4) = "[NSMutableOrderedSet setObject:atIndex:]";
      *(v17 + 12) = 2048;
      *(v17 + 14) = idx;
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet setObject:atIndex:]", idx);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v22);
  }

  if ([(NSOrderedSet *)self count]== idx)
  {
    v9 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self insertObject:obj atIndex:idx];
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:idx withObject:obj];
  }
}

- (void)setObject:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableOrderedSet setObject:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet setObject:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self indexOfObject:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSOrderedSet *)self objectAtIndex:v6];
  }

  if (v7 == a3)
  {
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:v6 withObject:a3];
  }
}

- (void)setOrderedSet:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableOrderedSet setOrderedSet:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet setOrderedSet:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

LABEL_4:
  if (self == a3)
  {
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(NSMutableOrderedSet *)self removeAllObjects];
    v6 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self insertObjectsFromOrderedSet:a3 atIndex:0];
  }
}

- (void)setSet:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(a3) & 1) == 0)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableOrderedSet setSet:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet setSet:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

LABEL_4:
  [(NSMutableOrderedSet *)self removeAllObjects];
  v6 = *MEMORY[0x1E69E9840];

  [(NSMutableOrderedSet *)self insertObjectsFromSet:a3 atIndex:0];
}

- (id)sortedArrayFromRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSMutableOrderedSet;
  result = [-[NSOrderedSet sortedArrayFromRange:options:usingComparator:](&v7 sortedArrayFromRange:a3.location options:a3.length usingComparator:{a4, a5), "copy"}];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sortRange:(NSRange)range options:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v7 = opts;
  length = range.length;
  location = range.location;
  v54[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (cmptr)
    {
      goto LABEL_3;
    }

LABEL_27:
    v29 = _os_log_pack_size();
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill();
    *v32 = 136315138;
    *(v32 + 4) = "[NSMutableOrderedSet sortRange:options:usingComparator:]";
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableOrderedSet sortRange:options:usingComparator:]");
    v34 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v29];
    objc_exception_throw(v34);
  }

  if (!cmptr)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = [(NSOrderedSet *)self count];
  v13 = v11;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v35 = _os_log_pack_size();
      v37 = &v51 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = _os_log_pack_fill();
      v39 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v39, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length);
      v41 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v37, v35];
      objc_exception_throw(v41);
    }

    v42 = _os_log_pack_size();
    v44 = &v51 - ((MEMORY[0x1EEE9AC00](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill();
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length, v13 - 1);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length, v13 - 1);
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

    v18 = [(NSOrderedSet *)self getObjects:v17 range:location, length, v51];
    MEMORY[0x1EEE9AC00](v18, v19);
    v21 = &v51 - v20;
    v22 = &v51 - v20;
    if (length > 0x1000)
    {
      v22 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __57__NSMutableOrderedSet_sortRange_options_usingComparator___block_invoke;
    v53[3] = &unk_1E6D7D7A0;
    v53[4] = cmptr;
    v53[5] = v17;
    CFSortIndexes(v22, length, v7, v53);
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
    [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:?];
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
  [(NSMutableOrderedSet *)self _mutate];
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
    *(v14 + 4) = "[NSMutableOrderedSet sortWithOptions:usingComparator:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableOrderedSet sortWithOptions:usingComparator:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v16);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  if (!cmptr)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = [(NSOrderedSet *)self count];
  if (v8 >= 2)
  {
    v10 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self sortRange:0 options:v8 usingComparator:opts, cmptr];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)sortUsingComparator:(NSComparator)cmptr
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
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
    *(v12 + 4) = "[NSMutableOrderedSet sortUsingComparator:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableOrderedSet sortUsingComparator:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!cmptr)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self count];
  if (v6 >= 2)
  {
    v8 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)self sortRange:0 options:v6 usingComparator:0, cmptr];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

- (void)unionOrderedSet:(NSOrderedSet *)other
{
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v20 = v24 - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableOrderedSet unionOrderedSet:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet unionOrderedSet:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)other count];
  v8 = v6;
  if (v6 >> 60)
  {
    v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v17 = [NSException exceptionWithName:@"NSGenericException" reason:v16 userInfo:0];
    CFRelease(v16);
    objc_exception_throw(v17);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = v24 - v10;
  v24[0] = 0;
  if (v8 >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, v24);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(NSOrderedSet *)other getObjects:v11 range:0, v8, v24[0]];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v14 = [(NSOrderedSet *)other countForObject:*&v11[8 * i]]+ 1;
      while (--v14)
      {
        [(NSMutableOrderedSet *)self addObject:*&v11[8 * i]];
      }
    }
  }

  free(v12);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)unionSet:(NSSet *)other
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(other) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableOrderedSet unionSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet unionSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(NSSet *)other countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(other);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSSet *)other countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableOrderedSet *)self addObject:v10];
          }

          while (v12);
        }
      }

      v7 = [(NSSet *)other countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (NSMutableOrderedSet)orderedSetWithCapacity:(NSUInteger)numItems
{
  v3 = [[a1 alloc] initWithCapacity:numItems];

  return v3;
}

- (NSMutableOrderedSet)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[NSMutableOrderedSet initWithObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = a4;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet initWithObjects:count:]", a4);
    goto LABEL_12;
  }

  if (a4 >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableOrderedSet initWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = a4;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet initWithObjects:count:]", a4);
LABEL_12:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        v10 = _os_log_pack_size();
        v11 = _os_log_pack_fill();
        *v11 = 136315394;
        *(v11 + 4) = "[NSMutableOrderedSet initWithObjects:count:]";
        *(v11 + 12) = 2048;
        *(v11 + 14) = i;
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet initWithObjects:count:]", i);
        v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
        objc_exception_throw(v13);
      }
    }
  }

  v7 = [(NSMutableOrderedSet *)self initWithCapacity:a4];
  [(NSMutableOrderedSet *)v7 insertObjects:a3 count:a4 atIndex:0];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)insertObject:(id)object atIndex:(NSUInteger)idx
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (void)removeObjectAtIndex:(NSUInteger)idx
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (void)replaceObjectAtIndex:(NSUInteger)idx withObject:(id)object
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (NSMutableOrderedSet)initWithCapacity:(NSUInteger)numItems
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

@end