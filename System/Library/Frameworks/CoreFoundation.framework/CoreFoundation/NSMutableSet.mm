@interface NSMutableSet
+ (NSMutableSet)setWithCapacity:(NSUInteger)numItems;
- (NSMutableSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)setByAddingObjectsFromArray:(id)array;
- (id)setByAddingObjectsFromSet:(id)set;
- (void)addObject:(id)object;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(NSArray *)array;
- (void)addObjectsFromArray:(id)array range:(_NSRange)range;
- (void)addObjectsFromOrderedSet:(id)set;
- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range;
- (void)addObjectsFromSet:(id)set;
- (void)intersectOrderedSet:(id)set;
- (void)intersectSet:(NSSet *)otherSet;
- (void)minusOrderedSet:(id)set;
- (void)minusSet:(NSSet *)otherSet;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInArray:(id)array range:(_NSRange)range;
- (void)removeObjectsInOrderedSet:(id)set;
- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range;
- (void)removeObjectsInSet:(id)set;
- (void)removeObjectsPassingTest:(id)test;
- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (void)replaceObject:(id)object;
- (void)setArray:(id)array;
- (void)setObject:(id)object;
- (void)setOrderedSet:(id)set;
- (void)setSet:(NSSet *)otherSet;
- (void)unionOrderedSet:(id)set;
- (void)unionSet:(NSSet *)otherSet;
@end

@implementation NSMutableSet

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v21[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    *(v17 + 4) = "[NSMutableSet addObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableSet addObjects:count:]", count);
    goto LABEL_16;
  }

LABEL_4:
  if (count >> 61)
  {
    v15 = _os_log_pack_size();
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[NSMutableSet addObjects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableSet addObjects:count:]", count);
LABEL_16:
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
        *(v12 + 4) = "[NSMutableSet addObjects:count:]";
        *(v12 + 12) = 2048;
        *(v12 + 14) = v8;
        v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableSet addObjects:count:]", v8);
        v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
        objc_exception_throw(v14);
      }

      ++v8;
    }

    while (count != v8);
    do
    {
      v9 = *objects++;
      [(NSMutableSet *)self addObject:v9];
      --count;
    }

    while (count);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    *(v29 + 4) = "[NSMutableSet addObjectsFromArray:range:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet addObjectsFromArray:range:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v17 = _os_log_pack_size();
      v19 = v40 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill();
      v21 = __os_log_helper_1_2_3_8_32_8_0_8_0(v20, "[NSMutableSet addObjectsFromArray:range:]", location, length);
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v21, "[NSMutableSet addObjectsFromArray:range:]", location, length);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v19, v17];
      objc_exception_throw(v23);
    }

    v32 = v9;
    v33 = _os_log_pack_size();
    v35 = v40 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill();
    v37 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v36, "[NSMutableSet addObjectsFromArray:range:]", location, length, --v32);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v37, "[NSMutableSet addObjectsFromArray:range:]", location, length, v32);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v35, v33];
    objc_exception_throw(v39);
  }

  if (length >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (length <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = length;
  }

  v12 = MEMORY[0x1EEE9AC00](v11, v10);
  v14 = v40 - v13;
  v40[0] = 0;
  if (length >= 0x101)
  {
    v14 = _CFCreateArrayStorage(v12, 0, v40);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [array getObjects:v14 range:{location, length, v40[0]}];
  [(NSMutableSet *)self addObjects:v14 count:length];
  free(v15);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromArray:(NSArray *)array
{
  allObjects = array;
  v28 = *MEMORY[0x1E69E9840];
  if (array)
  {
    objc_lookUpClass("NSArray");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet addObjectsFromArray:]");
      v7 = _CFAutoreleasePoolAddObject(0, v6);
      CFLog(3, @"%@", v8, v9, v10, v11, v12, v13, v7);
      objc_lookUpClass("NSSet");
      if (objc_opt_isKindOfClass())
      {
        allObjects = [(NSArray *)allObjects allObjects];
      }
    }
  }

  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!allObjects)
    {
      goto LABEL_8;
    }
  }

  else if (!allObjects)
  {
    goto LABEL_8;
  }

  if ((_NSIsNSArray(allObjects) & 1) == 0)
  {
    v19 = _os_log_pack_size();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[NSMutableSet addObjectsFromArray:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet addObjectsFromArray:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:&v23[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], v19];
    objc_exception_throw(v22);
  }

LABEL_8:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(NSArray *)allObjects countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        [(NSMutableSet *)self addObject:*(*(&v24 + 1) + 8 * i)];
      }

      v15 = [(NSArray *)allObjects countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v40[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    *(v29 + 4) = "[NSMutableSet addObjectsFromOrderedSet:range:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet addObjectsFromOrderedSet:range:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v31);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v17 = _os_log_pack_size();
      v19 = v40 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill();
      v21 = __os_log_helper_1_2_3_8_32_8_0_8_0(v20, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length);
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v21, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length);
      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v19, v17];
      objc_exception_throw(v23);
    }

    v32 = v9;
    v33 = _os_log_pack_size();
    v35 = v40 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill();
    v37 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v36, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length, --v32);
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v37, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length, v32);
    v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v35, v33];
    objc_exception_throw(v39);
  }

  if (length >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (length <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = length;
  }

  v12 = MEMORY[0x1EEE9AC00](v11, v10);
  v14 = v40 - v13;
  v40[0] = 0;
  if (length >= 0x101)
  {
    v14 = _CFCreateArrayStorage(v12, 0, v40);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [set getObjects:v14 range:{location, length, v40[0]}];
  [(NSMutableSet *)self addObjects:v14 count:length];
  free(v15);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromOrderedSet:(id)set
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableSet addObjectsFromOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet addObjectsFromOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [set countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(set);
        }

        [(NSMutableSet *)self addObject:*(*(&v16 + 1) + 8 * i)];
      }

      v7 = [set countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromSet:(id)set
{
  v40 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!set)
    {
      goto LABEL_17;
    }
  }

  else if (!set)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(set);
        }

        [v14 addObject:*(*(&v36 + 1) + 8 * i)];
      }

      v16 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
  }

  set = v14;
  if (set)
  {
LABEL_16:
    if ((_NSIsNSSet(set) & 1) == 0)
    {
      v24 = _os_log_pack_size();
      v26 = &v30[-((MEMORY[0x1EEE9AC00](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v27 = _os_log_pack_fill();
      *v27 = 136315138;
      *(v27 + 4) = "[NSMutableSet addObjectsFromSet:]";
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet addObjectsFromSet:]");
      v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v24];
      objc_exception_throw(v29);
    }
  }

LABEL_17:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(set);
        }

        [(NSMutableSet *)self addObject:*(*(&v31 + 1) + 8 * j)];
      }

      v20 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)intersectOrderedSet:(id)set
{
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v25 = _os_log_pack_size();
    v27 = &v34 - ((MEMORY[0x1EEE9AC00](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill();
    *v28 = 136315138;
    *(v28 + 4) = "[NSMutableSet intersectOrderedSet:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet intersectOrderedSet:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v25];
    objc_exception_throw(v30);
  }

LABEL_4:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [(NSSet *)self countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(self);
        }

        v8 += [(NSSet *)self countForObject:*(*(&v42 + 1) + 8 * i)];
      }

      v7 = [(NSSet *)self countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v7);
    if (v8 >> 60)
    {
      v31 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
      v32 = [NSException exceptionWithName:@"NSGenericException" reason:v31 userInfo:0];
      CFRelease(v31);
      objc_exception_throw(v32);
    }

    if (v8 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = MEMORY[0x1EEE9AC00](v12, v11);
    v15 = (&v34 - v14);
    v35 = 0;
    if (v8 >= 0x101)
    {
      v15 = _CFCreateArrayStorage(v13, 0, &v35);
      v34 = v15;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v6);
    v15 = &v33;
    v34 = 0;
    v35 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [(NSSet *)self countByEnumeratingWithState:&v37 objects:v36 count:16, v34, v35];
  v17 = v15;
  if (v16)
  {
    v18 = *v38;
    v17 = v15;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(self);
        }

        v20 = *(*(&v37 + 1) + 8 * j);
        v21 = [set countForObject:v20];
        v22 = [(NSSet *)self countForObject:v20];
        v23 = v22 - v21;
        if (v22 > v21)
        {
          do
          {
            *v17++ = v20;
            --v23;
          }

          while (v23);
        }
      }

      v16 = [(NSSet *)self countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v16);
  }

  while (v15 < v17)
  {
    [(NSMutableSet *)self removeObject:*v15++];
  }

  free(v34);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(NSSet *)otherSet
{
  v61 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v57 objects:v56 count:16];
  if (v15)
  {
    v16 = *v58;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v58 != v16)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v57 + 1) + 8 * i)];
      }

      v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v57 objects:v56 count:16];
    }

    while (v15);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v36 = _os_log_pack_size();
      v38 = &v44 - ((MEMORY[0x1EEE9AC00](v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = _os_log_pack_fill();
      *v39 = 136315138;
      *(v39 + 4) = "[NSMutableSet intersectSet:]";
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet intersectSet:]");
      v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v38, v36];
      objc_exception_throw(v41);
    }
  }

LABEL_17:
  if (otherSet != self)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = 0;
    v20 = [(NSSet *)self countByEnumeratingWithState:&v52 objects:v51 count:16];
    if (v20)
    {
      v21 = *v53;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(self);
          }

          v18 += [(NSSet *)self countForObject:*(*(&v52 + 1) + 8 * j)];
        }

        v20 = [(NSSet *)self countByEnumeratingWithState:&v52 objects:v51 count:16];
      }

      while (v20);
      if (v18 >> 60)
      {
        v42 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18);
        v43 = [NSException exceptionWithName:@"NSGenericException" reason:v42 userInfo:0];
        CFRelease(v42);
        objc_exception_throw(v43);
      }
    }

    if (v18 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v18;
    }

    v24 = MEMORY[0x1EEE9AC00](v23, v19);
    v26 = (&v44 - v25);
    v56[0] = 0;
    if (v18 >= 0x101)
    {
      v26 = _CFCreateArrayStorage(v24, 0, v56);
      v45 = v26;
    }

    else
    {
      v45 = 0;
    }

    v44 = &v44;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = [(NSSet *)self countByEnumeratingWithState:&v47 objects:v46 count:16];
    v28 = v26;
    if (v27)
    {
      v29 = *v48;
      v28 = v26;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v48 != v29)
          {
            objc_enumerationMutation(self);
          }

          v31 = *(*(&v47 + 1) + 8 * k);
          v32 = [(NSSet *)otherSet countForObject:v31];
          v33 = [(NSSet *)self countForObject:v31];
          v34 = v33 - v32;
          if (v33 > v32)
          {
            do
            {
              *v28++ = v31;
              --v34;
            }

            while (v34);
          }
        }

        v27 = [(NSSet *)self countByEnumeratingWithState:&v47 objects:v46 count:16];
      }

      while (v27);
    }

    while (v26 < v28)
    {
      [(NSMutableSet *)self removeObject:*v26++];
    }

    free(v45);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)minusOrderedSet:(id)set
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableSet minusOrderedSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet minusOrderedSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [set countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(set);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [set countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableSet *)self removeObject:v10];
          }

          while (v12);
        }
      }

      v7 = [set countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)minusSet:(NSSet *)otherSet
{
  v43 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v39 + 1) + 8 * i)];
      }

      v16 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v27 = _os_log_pack_size();
      v29 = &v33[-((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v30 = _os_log_pack_fill();
      *v30 = 136315138;
      *(v30 + 4) = "[NSMutableSet minusSet:]";
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet minusSet:]");
      v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
      objc_exception_throw(v32);
    }
  }

LABEL_17:
  if (otherSet == self)
  {
    [(NSMutableSet *)self removeAllObjects];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(otherSet);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          v24 = [(NSSet *)otherSet countForObject:v23];
          if (v24)
          {
            v25 = v24;
            do
            {
              --v25;
              [(NSMutableSet *)self removeObject:v23];
            }

            while (v25);
          }
        }

        v20 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v20);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)removeAllObjects
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = [(NSSet *)self count];
  v6 = v4;
  if (v4 >> 60)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v15 = [NSException exceptionWithName:@"NSGenericException" reason:v14 userInfo:0];
    CFRelease(v14);
    objc_exception_throw(v15);
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  v7 = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = v16 - v8;
  v16[0] = 0;
  if (v6 >= 0x101)
  {
    v9 = _CFCreateArrayStorage(v7, 0, v16);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(NSSet *)self getObjects:v9 count:v6, v16[0]];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v12 = [(NSSet *)self countForObject:*&v9[8 * i]]+ 1;
      while (--v12)
      {
        [(NSMutableSet *)self removeObject:*&v9[8 * i]];
      }
    }
  }

  free(v10);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableSet removeObjectsInArray:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet removeObjectsInArray:range:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v11 = _os_log_pack_size();
      v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableSet removeObjectsInArray:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableSet removeObjectsInArray:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill();
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableSet removeObjectsInArray:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v14, "[NSMutableSet removeObjectsInArray:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  for (; length; --length)
  {
    -[NSMutableSet removeObject:](self, "removeObject:", [array objectAtIndex:location++]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableSet removeObjectsInArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet removeObjectsInArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [array countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(array);
        }

        [(NSMutableSet *)self removeObject:*(*(&v16 + 1) + 8 * i)];
      }

      v7 = [array countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableSet removeObjectsInOrderedSet:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet removeObjectsInOrderedSet:range:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v11 = _os_log_pack_size();
      v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill();
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill();
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v14, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  for (; length; --length)
  {
    -[NSMutableSet removeObject:](self, "removeObject:", [set objectAtIndex:location++]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInOrderedSet:(id)set
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableSet removeObjectsInOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet removeObjectsInOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [set countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(set);
        }

        [(NSMutableSet *)self removeObject:*(*(&v16 + 1) + 8 * i)];
      }

      v7 = [set countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInSet:(id)set
{
  v40 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!set)
    {
      goto LABEL_17;
    }
  }

  else if (!set)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(set);
        }

        [v14 addObject:*(*(&v36 + 1) + 8 * i)];
      }

      v16 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
  }

  set = v14;
  if (set)
  {
LABEL_16:
    if ((_NSIsNSSet(set) & 1) == 0)
    {
      v24 = _os_log_pack_size();
      v26 = &v30[-((MEMORY[0x1EEE9AC00](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v27 = _os_log_pack_fill();
      *v27 = 136315138;
      *(v27 + 4) = "[NSMutableSet removeObjectsInSet:]";
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet removeObjectsInSet:]");
      v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v24];
      objc_exception_throw(v29);
    }
  }

LABEL_17:
  if (set == self)
  {
    [(NSMutableSet *)self removeAllObjects];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(set);
          }

          [(NSMutableSet *)self removeObject:*(*(&v31 + 1) + 8 * j)];
        }

        v20 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = _os_log_pack_size();
    v16 = &v21[-1] - ((MEMORY[0x1EEE9AC00](v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableSet removeObjectsWithOptions:passingTest:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableSet removeObjectsWithOptions:passingTest:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v14];
    objc_exception_throw(v19);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
  if (!test)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = +[(NSSet *)NSMutableSet];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v31 = 0;
  v27 = 850045857;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__NSMutableSet_removeObjectsWithOptions_passingTest___block_invoke;
  v21[3] = &unk_1E6A55E98;
  v21[5] = test;
  v21[6] = &v27;
  v21[4] = v8;
  __NSSetEnumerate(self, optionsCopy & 0xFD, v21);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMutableSet *)self removeObject:*(*(&v23 + 1) + 8 * i)];
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __53__NSMutableSet_removeObjectsWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    pthread_mutex_lock(*(a1 + 48));
    [*(a1 + 32) addObject:a2];
    v5 = *(a1 + 48);

    return pthread_mutex_unlock(v5);
  }

  return result;
}

- (void)removeObjectsPassingTest:(id)test
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v4 = _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315138;
    *(v5 + 4) = "[NSMutableSet removeObjectsPassingTest:]";
    v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableSet removeObjectsPassingTest:]");
    v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6) osLogPack:0 size:v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4];
    objc_exception_throw(v7);
  }

  v3 = *MEMORY[0x1E69E9840];

  [(NSMutableSet *)self removeObjectsWithOptions:0 passingTest:test];
}

- (void)replaceObject:(id)object
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableSet replaceObject:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableSet replaceObject:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = [(NSSet *)self member:object];
  if (v6 == object || !v6)
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(NSMutableSet *)self removeObject:v6];
    v7 = *MEMORY[0x1E69E9840];

    [(NSMutableSet *)self addObject:object];
  }
}

- (void)setObject:(id)object
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableSet setObject:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableSet setObject:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  if (!object)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = [(NSSet *)self member:object];
  if (v6 == object)
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (v6)
    {
      [(NSMutableSet *)self removeObject:v6];
    }

    v7 = *MEMORY[0x1E69E9840];

    [(NSMutableSet *)self addObject:object];
  }
}

- (void)setArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableSet setArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet setArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  [(NSMutableSet *)self removeAllObjects];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [array countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(array);
        }

        [(NSMutableSet *)self addObject:*(*(&v16 + 1) + 8 * i)];
      }

      v7 = [array countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setOrderedSet:(id)set
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableSet setOrderedSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet setOrderedSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

LABEL_4:
  [(NSMutableSet *)self removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [set countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(set);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [set countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableSet *)self addObject:v10];
          }

          while (v12);
        }
      }

      v7 = [set countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setSet:(NSSet *)otherSet
{
  v43 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v39 + 1) + 8 * i)];
      }

      v16 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v27 = _os_log_pack_size();
      v29 = &v33[-((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v30 = _os_log_pack_fill();
      *v30 = 136315138;
      *(v30 + 4) = "[NSMutableSet setSet:]";
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet setSet:]");
      v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
      objc_exception_throw(v32);
    }
  }

LABEL_17:
  if (otherSet != self)
  {
    [(NSMutableSet *)self removeAllObjects];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(otherSet);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          v24 = [(NSSet *)otherSet countForObject:v23];
          if (v24)
          {
            v25 = v24;
            do
            {
              --v25;
              [(NSMutableSet *)self addObject:v23];
            }

            while (v25);
          }
        }

        v20 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v20);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)unionOrderedSet:(id)set
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableSet unionOrderedSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet unionOrderedSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v14];
    objc_exception_throw(v17);
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [set countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(set);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [set countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableSet *)self addObject:v10];
          }

          while (v12);
        }
      }

      v7 = [set countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unionSet:(NSSet *)otherSet
{
  v41 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v15)
  {
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v37 + 1) + 8 * i)];
      }

      v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v15);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v30 = _os_log_pack_size();
      v32 = v36 - ((MEMORY[0x1EEE9AC00](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill();
      *v33 = 136315138;
      *(v33 + 4) = "[NSMutableSet unionSet:]";
      v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet unionSet:]");
      v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v30];
      objc_exception_throw(v35);
    }
  }

LABEL_17:
  v18 = [(NSSet *)otherSet count];
  v20 = v18;
  if (v18 >> 60)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18);
    v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
    CFRelease(v28);
    objc_exception_throw(v29);
  }

  if (v18 <= 1)
  {
    v18 = 1;
  }

  v21 = MEMORY[0x1EEE9AC00](v18, v19);
  v23 = v36 - v22;
  v36[0] = 0;
  if (v20 >= 0x101)
  {
    v23 = _CFCreateArrayStorage(v21, 0, v36);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  [(NSSet *)otherSet getObjects:v23 count:v20, v36[0]];
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      v26 = [(NSSet *)otherSet countForObject:*&v23[8 * j]]+ 1;
      while (--v26)
      {
        [(NSMutableSet *)self addObject:*&v23[8 * j]];
      }
    }
  }

  free(v24);
  v27 = *MEMORY[0x1E69E9840];
}

- (NSMutableSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  countCopy = count;
  objectsCopy = objects;
  v22[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v16 = _os_log_pack_size();
    v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableSet initWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = countCopy;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableSet initWithObjects:count:]", countCopy);
    goto LABEL_17;
  }

  if (count >> 61)
  {
    v16 = _os_log_pack_size();
    v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[NSMutableSet initWithObjects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = countCopy;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableSet initWithObjects:count:]", countCopy);
LABEL_17:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v21);
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!objects[i])
      {
        v12 = _os_log_pack_size();
        v13 = _os_log_pack_fill();
        *v13 = 136315394;
        *(v13 + 4) = "[NSMutableSet initWithObjects:count:]";
        *(v13 + 12) = 2048;
        *(v13 + 14) = i;
        v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableSet initWithObjects:count:]", i);
        v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
        objc_exception_throw(v15);
      }
    }

    v7 = [(NSMutableSet *)self initWithCapacity:count];
    do
    {
      v8 = *objectsCopy++;
      [(NSMutableSet *)v7 addObject:v8];
      --countCopy;
    }

    while (countCopy);
    v9 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return [(NSMutableSet *)self initWithCapacity:0];
  }
}

- (id)setByAddingObjectsFromArray:(id)array
{
  v27 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v20 = _os_log_pack_size();
    v22 = &v26 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableSet setByAddingObjectsFromArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet setByAddingObjectsFromArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v20];
    objc_exception_throw(v25);
  }

  v5 = [array count];
  v6 = [(NSSet *)self count];
  v8 = v6 + v5;
  if ((v6 + v5) >> 60)
  {
    v18 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6 + v5);
    v19 = [NSException exceptionWithName:@"NSGenericException" reason:v18 userInfo:0];
    CFRelease(v18);
    objc_exception_throw(v19);
  }

  v9 = v6;
  if (v8 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 + v5;
  }

  v11 = MEMORY[0x1EEE9AC00](v10, v7);
  v13 = &v26 - v12;
  v26 = 0;
  if (v8 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, &v26);
    v14 = v13;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  if (v9)
  {
LABEL_11:
    [(NSSet *)self getObjects:v13 count:v9, v26, v27];
  }

LABEL_12:
  if (v5)
  {
    [array getObjects:&v13[8 * v9] range:{0, v5}];
  }

  v15 = [NSSet setWithObjects:v13 count:v8, v26];
  free(v14);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)setByAddingObjectsFromSet:(id)set
{
  setCopy = set;
  v43 = *MEMORY[0x1E69E9840];
  if (set)
  {
    if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt <= 0x64)
    {
      v6 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v7, v8, v9, v10, v11, v12, v6);
    }

    v13 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = [setCopy countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v14)
    {
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(setCopy);
          }

          [v13 addObject:*(*(&v39 + 1) + 8 * i)];
        }

        v14 = [setCopy countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v14);
    }

    setCopy = v13;
    if (setCopy)
    {
LABEL_15:
      if ((_NSIsNSSet(setCopy) & 1) == 0)
      {
        v32 = _os_log_pack_size();
        v34 = v38 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = _os_log_pack_fill();
        *v35 = 136315138;
        *(v35 + 4) = "[NSMutableSet setByAddingObjectsFromSet:]";
        v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet setByAddingObjectsFromSet:]");
        v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
        objc_exception_throw(v37);
      }
    }
  }

  v17 = [setCopy count];
  v18 = [(NSSet *)self count];
  v20 = v18;
  v21 = v18 + v17;
  if ((v18 + v17) >> 60)
  {
    v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18 + v17);
    v31 = [NSException exceptionWithName:@"NSGenericException" reason:v30 userInfo:0];
    CFRelease(v30);
    objc_exception_throw(v31);
  }

  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v18 + v17;
  }

  v23 = MEMORY[0x1EEE9AC00](v22, v19);
  v25 = v38 - v24;
  v38[0] = 0;
  if (v21 >= 0x101)
  {
    v25 = _CFCreateArrayStorage(v23, 0, v38);
    v26 = v25;
    if (!v20)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v26 = 0;
  if (v20)
  {
LABEL_24:
    [(NSSet *)self getObjects:v25 count:v20, v38[0]];
  }

LABEL_25:
  if (v17)
  {
    [setCopy getObjects:&v25[8 * v20] count:v17];
  }

  v27 = [NSSet setWithObjects:v25 count:v21, v38[0]];
  free(v26);
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (NSMutableSet)setWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

- (void)addObject:(id)object
{
  v5 = __CFLookUpClass("NSMutableSet");

  __CFRequireConcreteImplementation(v5, self, a2);
}

- (void)removeObject:(id)object
{
  v5 = __CFLookUpClass("NSMutableSet");

  __CFRequireConcreteImplementation(v5, self, a2);
}

@end