@interface NSSet
+ (NSSet)allocWithZone:(_NSZone *)a3;
+ (NSSet)set;
+ (NSSet)setWithArray:(NSArray *)array;
+ (NSSet)setWithArray:(id)a3 range:(_NSRange)a4;
+ (NSSet)setWithObject:(id)object;
+ (NSSet)setWithObjects:(id *)objects count:(NSUInteger)cnt;
+ (NSSet)setWithObjects:(id)firstObj;
+ (NSSet)setWithOrderedSet:(id)a3;
+ (NSSet)setWithOrderedSet:(id)a3 range:(_NSRange)a4;
+ (NSSet)setWithSet:(NSSet *)set;
+ (id)newSetWithObjects:(const void *)a3 count:(unint64_t)a4;
- (BOOL)__getValue:(id *)a3 forObj:(id)a4;
- (BOOL)containsObject:(id)anObject;
- (BOOL)intersectsOrderedSet:(id)a3;
- (BOOL)intersectsSet:(NSSet *)otherSet;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSet:(NSSet *)otherSet;
- (BOOL)isSubsetOfOrderedSet:(id)a3;
- (BOOL)isSubsetOfSet:(NSSet *)otherSet;
- (NSArray)allObjects;
- (NSEnumerator)objectEnumerator;
- (NSSet)initWithArray:(NSArray *)array;
- (NSSet)initWithArray:(id)a3 range:(_NSRange)a4 copyItems:(BOOL)a5;
- (NSSet)initWithObject:(id)a3;
- (NSSet)initWithObjects:(id *)objects count:(NSUInteger)cnt;
- (NSSet)initWithObjects:(id)firstObj;
- (NSSet)initWithOrderedSet:(id)a3;
- (NSSet)initWithOrderedSet:(id)a3 range:(_NSRange)a4 copyItems:(BOOL)a5;
- (NSSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag;
- (NSSet)objectsPassingTest:(void *)predicate;
- (NSSet)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSSet)setByAddingObject:(id)anObject;
- (NSSet)setByAddingObjectsFromArray:(NSArray *)other;
- (NSSet)setByAddingObjectsFromSet:(NSSet *)other;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSUInteger)count;
- (id)anyObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4;
- (id)member:(id)object;
- (id)members:(id)a3 notFoundMarker:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectPassingTest:(id)a3;
- (id)objectWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)sortedArrayUsingComparator:(id)a3;
- (id)sortedArrayWithOptions:(unint64_t)a3 usingComparator:(id)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)countForObject:(id)a3;
- (unint64_t)hash;
- (void)__applyValues:(void *)a3 context:(void *)a4;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getObjects:(id *)a3;
- (void)getObjects:(id *)a3 count:(unint64_t)a4;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)makeObjectsPerformSelector:(SEL)aSelector;
- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;
@end

@implementation NSSet

+ (NSSet)set
{
  v2 = [[a1 alloc] initWithObjects:0 count:0];

  return v2;
}

- (id)anyObject
{
  v8 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  memset(v7, 0, sizeof(v7));
  result = [(NSSet *)self countByEnumeratingWithState:v7 objects:&v6 count:16];
  if (result)
  {
    result = **(&v7[0] + 1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)allObjects
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = [(NSSet *)self count];
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
  [(NSSet *)self getObjects:v6 count:v5];
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

- (NSString)description
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self descriptionWithLocale:0 indent:0];
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self count];
}

- (BOOL)containsObject:(id)anObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
    if (anObject)
    {
      return [(NSSet *)self member:anObject]!= 0;
    }
  }

  else if (anObject)
  {
    return [(NSSet *)self member:anObject]!= 0;
  }

  return 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v20 = _os_log_pack_size();
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[NSSet countByEnumeratingWithState:objects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = a5;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSet countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_28;
  }

  if (a5 >> 61)
  {
    v20 = _os_log_pack_size();
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "[NSSet countByEnumeratingWithState:objects:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = a5;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSet countByEnumeratingWithState:objects:count:]", a5);
LABEL_28:
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v20];
    objc_exception_throw(v25);
  }

  var0 = a3->var0;
  if (a3->var0 == -1)
  {
    goto LABEL_22;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableSet);
    var0 = a3->var0;
    if (a3->var0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!var0)
  {
LABEL_9:
    a3->var2 = a3->var3;
    a3->var3[0] = [(NSSet *)self count];
    v12 = [(NSSet *)self objectEnumerator];
    a3->var3[1] = v12;
    if (v12)
    {
      v11 = v12;
      var0 = a3->var0;
      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_25;
  }

LABEL_7:
  v11 = a3->var3[1];
LABEL_11:
  a3->var1 = a4;
  v13 = a3->var3[0];
  if (v13 - var0 >= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13 - var0;
  }

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      v16 = [(NSEnumerator *)v11 nextObject];
      if (!v16)
      {
        break;
      }

      a4[v15++] = v16;
      if (v14 == v15)
      {
        var0 = a3->var0;
        goto LABEL_19;
      }
    }

    v17 = -1;
  }

  else
  {
LABEL_19:
    v17 = var0 + v14;
    if (v13 <= v17)
    {
      v17 = -1;
    }

    v15 = v14;
  }

  a3->var0 = v17;
LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unint64_t)countForObject:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self member:a3]!= 0;
}

- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4
{
  v35 = a3;
  v36[1] = *MEMORY[0x1E69E9840];
  if (a4 >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = a4;
  }

  v7 = [(NSSet *)self count];
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

  [(NSSet *)self getObjects:v12 count:v9];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v33 = &__kCFAllocatorSystemDefault;
  v34 = v13;
  v31 = objc_autoreleasePoolPush();
  v32 = a4;
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
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self descriptionWithLocale:locale indent:0];
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSSet enumerateObjectsWithOptions:usingBlock:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSSet enumerateObjectsWithOptions:usingBlock:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v14);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v8 = *MEMORY[0x1E69E9840];

  __NSSetEnumerate(self, v6 & 0xFD, block);
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSSet enumerateObjectsUsingBlock:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSSet enumerateObjectsUsingBlock:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  [(NSSet *)self enumerateObjectsWithOptions:0 usingBlock:block];
}

- (void)getObjects:(id *)a3 count:(unint64_t)a4
{
  v5 = a4;
  v6 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v13 = _os_log_pack_size();
    v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[NSSet getObjects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSet getObjects:count:]", v5);
    goto LABEL_17;
  }

  if (a4 >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[NSSet getObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSet getObjects:count:]", v5);
LABEL_17:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSSet *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(self);
      }

      if (v5 == v11)
      {
        break;
      }

      *v6++ = *(*(&v20 + 1) + 8 * v11);
      if (v9 == ++v11)
      {
        v9 = [(NSSet *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
        v5 -= v11;
        if (v9)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [(NSSet *)self count];
  if (!a3 && v6)
  {
    v9 = v6;
    v10 = _os_log_pack_size();
    v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315394;
    *(v12 + 4) = "[NSSet getObjects:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = v9;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSet getObjects:]", v9);
    goto LABEL_11;
  }

  if (v6 >> 61)
  {
    v14 = v6;
    v10 = _os_log_pack_size();
    v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[NSSet getObjects:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v14;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSet getObjects:]", v14);
LABEL_11:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v7 = [(NSSet *)self count];
  v8 = *MEMORY[0x1E69E9840];

  [(NSSet *)self getObjects:a3 count:v7];
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  CFLog(3, @"*** ERROR: this process has called an NSArray-taking method, such as initWithArray:, and passed in an NSSet object.  This is being worked-around for now, but will soon cause you grief.", a3, a4.location, a4.length, v4, v5, v6, v14);
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v7, __CFTSANTagMutableSet);
  }

  v11 = [(NSSet *)self count];
  if (v11)
  {
    v12 = v11;
    v13 = malloc_type_malloc(16 * v11, 0x80040B8603338uLL);
    [(NSSet *)self getObjects:v13 count:v12];

    memmove(a3, v13, 8 * length);
  }
}

- (BOOL)intersectsOrderedSet:(id)a3
{
  v4 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSSet intersectsOrderedSet:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSSet intersectsOrderedSet:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v15];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = [(NSSet *)self count];
  v7 = [(NSSet *)v4 count];
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
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
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

        if ([(NSSet *)v4 containsObject:*(*(&v21 + 1) + 8 * v13)])
        {
          LOBYTE(v10) = 1;
          goto LABEL_21;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
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

- (BOOL)intersectsSet:(NSSet *)otherSet
{
  v4 = otherSet;
  v45 = *MEMORY[0x1E69E9840];
  if (otherSet)
  {
    if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v7 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
    }

    v14 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [(NSSet *)v4 countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v4);
          }

          [v14 addObject:*(*(&v41 + 1) + 8 * i)];
        }

        v16 = [(NSSet *)v4 countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v16);
    }

    v4 = v14;
    if (v4)
    {
LABEL_15:
      if ((_NSIsNSSet(v4) & 1) == 0)
      {
        v28 = _os_log_pack_size();
        v30 = &v35[-((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v31 = _os_log_pack_fill();
        *v31 = 136315138;
        *(v31 + 4) = "[NSSet intersectsSet:]";
        v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet intersectsSet:]");
        v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
        objc_exception_throw(v33);
      }
    }
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v19 = [(NSSet *)self count];
  v20 = [(NSSet *)v4 count];
  v21 = v19 >= v20;
  v36 = 0u;
  v37 = 0u;
  if (v19 >= v20)
  {
    v22 = v4;
  }

  else
  {
    v22 = self;
  }

  if (!v21)
  {
    self = v4;
  }

  v38 = 0uLL;
  v39 = 0uLL;
  v23 = [(NSSet *)v22 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    while (2)
    {
      v26 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        if ([(NSSet *)self containsObject:*(*(&v36 + 1) + 8 * v26)])
        {
          LOBYTE(v23) = 1;
          goto LABEL_33;
        }

        ++v26;
      }

      while (v24 != v26);
      v23 = [(NSSet *)v22 countByEnumeratingWithState:&v36 objects:v35 count:16];
      v24 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:
  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)isEqualToSet:(NSSet *)otherSet
{
  v4 = otherSet;
  v46 = *MEMORY[0x1E69E9840];
  if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_15;
  }

  if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(NSSet *)v4 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v4);
        }

        [v14 addObject:*(*(&v42 + 1) + 8 * i)];
      }

      v16 = [(NSSet *)v4 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v16);
  }

  v4 = v14;
  if (v4)
  {
LABEL_15:
    if ((_NSIsNSSet(v4) & 1) == 0)
    {
      v30 = _os_log_pack_size();
      v32 = &v36[-((MEMORY[0x1EEE9AC00](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v33 = _os_log_pack_fill();
      *v33 = 136315138;
      *(v33 + 4) = "[NSSet isEqualToSet:]";
      v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet isEqualToSet:]");
      v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v30];
      objc_exception_throw(v35);
    }

    v19 = 0;
  }

  else
  {
LABEL_17:
    v19 = 1;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  result = v4 == self;
  if (v4 == self)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  if ((v21 & 1) == 0)
  {
    v22 = [(NSSet *)self count];
    if ([(NSSet *)v4 count]== v22)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = [(NSSet *)self countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (!v23)
      {
        result = 1;
        goto LABEL_35;
      }

      v24 = v23;
      v25 = *v38;
LABEL_27:
      v26 = 0;
      while (1)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(self);
        }

        v27 = *(*(&v37 + 1) + 8 * v26);
        v28 = [(NSSet *)v4 countForObject:v27];
        if (v28 != [(NSSet *)self countForObject:v27])
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [(NSSet *)self countByEnumeratingWithState:&v37 objects:v36 count:16];
          result = 1;
          if (v24)
          {
            goto LABEL_27;
          }

          goto LABEL_35;
        }
      }
    }

    result = 0;
  }

LABEL_35:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (a3)
  {
    v6 = _NSIsNSSet(a3);
    if (v6)
    {

      LOBYTE(v6) = [(NSSet *)self isEqualToSet:a3];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isSubsetOfOrderedSet:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSSet isSubsetOfOrderedSet:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSSet isSubsetOfOrderedSet:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v16];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = [(NSSet *)self count];
  if (v6 <= [a3 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(NSSet *)self countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(self);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [a3 countForObject:v12];
          if (v13 < [(NSSet *)self countForObject:v12])
          {
            v14 = 0;
            goto LABEL_17;
          }
        }

        v9 = [(NSSet *)self countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_17:
    if (a3)
    {
      result = v14;
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

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSubsetOfSet:(NSSet *)otherSet
{
  v4 = otherSet;
  v44 = *MEMORY[0x1E69E9840];
  if (otherSet)
  {
    if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v7 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
    }

    v14 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [(NSSet *)v4 countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v4);
          }

          [v14 addObject:*(*(&v40 + 1) + 8 * i)];
        }

        v16 = [(NSSet *)v4 countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v16);
    }

    v4 = v14;
    if (v4)
    {
LABEL_15:
      if ((_NSIsNSSet(v4) & 1) == 0)
      {
        v28 = _os_log_pack_size();
        v30 = &v34[-((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v31 = _os_log_pack_fill();
        *v31 = 136315138;
        *(v31 + 4) = "[NSSet isSubsetOfSet:]";
        v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet isSubsetOfSet:]");
        v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
        objc_exception_throw(v33);
      }
    }
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v19 = [(NSSet *)self count];
  if (v19 <= [(NSSet *)v4 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = [(NSSet *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (!v22)
    {
LABEL_29:
      result = v4 != 0;
      goto LABEL_20;
    }

    v23 = v22;
    v24 = *v36;
LABEL_23:
    v25 = 0;
    while (1)
    {
      if (*v36 != v24)
      {
        objc_enumerationMutation(self);
      }

      v26 = *(*(&v35 + 1) + 8 * v25);
      v27 = [(NSSet *)v4 countForObject:v26];
      if (v27 < [(NSSet *)self countForObject:v26])
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [(NSSet *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
        if (v23)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }
  }

  result = 0;
LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)makeObjectsPerformSelector:(SEL)aSelector
{
  v16 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSSet *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(self);
        }

        [*(*(&v12 + 1) + 8 * i) performSelector:aSelector];
      }

      v7 = [(NSSet *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument
{
  v18 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSSet *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(self);
        }

        [*(*(&v14 + 1) + 8 * i) performSelector:aSelector withObject:argument];
      }

      v9 = [(NSSet *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)members:(id)a3 notFoundMarker:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v27 = _os_log_pack_size();
    v29 = &v35 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill();
    *v30 = 136315138;
    *(v30 + 4) = "[NSSet members:notFoundMarker:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: marker cannot be nil", "[NSSet members:notFoundMarker:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
    objc_exception_throw(v32);
  }

  v8 = [a3 count];
  if (v8 >> 60)
  {
    v33 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v34 = [NSException exceptionWithName:@"NSGenericException" reason:v33 userInfo:0];
    CFRelease(v33);
    objc_exception_throw(v34);
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v35 - v11;
  v36 = 0;
  if (v13 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v36);
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [a3 countByEnumeratingWithState:&v38 objects:v37 count:16];
  v16 = v12;
  if (v15)
  {
    v17 = *v39;
    v16 = v12;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(a3);
        }

        v19 = [(NSSet *)self member:*(*(&v38 + 1) + 8 * i)];
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = a4;
        }

        *v16 = v20;
        v16 += 8;
      }

      v15 = [a3 countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v15);
  }

  if (v14)
  {
    if ((v16 - v12) >> 3 >= 1)
    {
      v21 = v14;
      v22 = (v16 - v12) >> 3;
      do
      {
        v23 = *v21++;
        --v22;
      }

      while (v22);
    }

    v24 = [[NSArray alloc] _initByAdoptingBuffer:v14 count:(v16 - v12) >> 3 size:(v16 - v12) >> 3];
  }

  else
  {
    v24 = [[NSArray alloc] initWithObjects:v12 count:(v16 - v12) >> 3];
  }

  result = v24;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v10 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSSet objectWithOptions:passingTest:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectWithOptions:passingTest:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v10];
    objc_exception_throw(v15);
  }

  v6 = a3;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v18[0] = 0;
  v17 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__NSSet_objectWithOptions_passingTest___block_invoke;
  v16[3] = &unk_1E6DCFFE8;
  v16[4] = a4;
  v16[5] = &v17;
  v16[6] = v18;
  __NSSetEnumerate(self, v6 & 0xFD, v16);
  result = v18[0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__NSSet_objectWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 40);
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    **(a1 + 48) = a2;
    *a3 = 1;
  }

  if (**(a1 + 40) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)objectPassingTest:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSSet objectPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSSet *)self objectWithOptions:0 passingTest:a3];
}

- (NSSet)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v23 = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSSet objectsWithOptions:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectsWithOptions:passingTest:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v16);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v8 = +[(NSSet *)NSMutableSet];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v18 = 850045857;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__NSSet_objectsWithOptions_passingTest___block_invoke;
  v17[3] = &unk_1E6A55E98;
  v17[5] = predicate;
  v17[6] = &v18;
  v17[4] = v8;
  __NSSetEnumerate(self, v6 & 0xFD, v17);
  result = [NSSet setWithSet:v8];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __40__NSSet_objectsWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
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

- (NSSet)objectsPassingTest:(void *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSSet objectsPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectsPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSSet *)self objectsWithOptions:0 passingTest:predicate];
}

- (id)sortedArrayWithOptions:(unint64_t)a3 usingComparator:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v28 = _os_log_pack_size();
    v30 = &v37[-1] - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSSet sortedArrayWithOptions:usingComparator:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSSet sortedArrayWithOptions:usingComparator:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

  v6 = a3;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v8 = [(NSSet *)self count];
  if (v8)
  {
    v10 = v8;
    if (v8 >> 60)
    {
      v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
      v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
      CFRelease(v34);
      objc_exception_throw(v35);
    }

    MEMORY[0x1EEE9AC00](v8, v9);
    v12 = &v37[-1] - v11;
    v39[0] = 0;
    if (v10 >= 0x101)
    {
      v12 = _CFCreateArrayStorage(v10, 0, v39);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v38 = 0;
    v16 = _CFCreateArrayStorage(v10, 0, &v38);
    v17 = [(NSSet *)self getObjects:v12 count:v10];
    MEMORY[0x1EEE9AC00](v17, v18);
    v20 = &v37[-1] - v19;
    v21 = &v37[-1] - v19;
    if (v10 > 0x1000)
    {
      v21 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __48__NSSet_sortedArrayWithOptions_usingComparator___block_invoke;
    v37[3] = &unk_1E6D7D7A0;
    v37[4] = a4;
    v37[5] = v12;
    CFSortIndexes(v21, v10, v6, v37);
    for (i = 0; i != v10; ++i)
    {
      v16[i] = *&v12[8 * *&v21[8 * i]];
    }

    if (v20 != v21)
    {
      free(v21);
    }

    v23 = 0;
    if (v10 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v10;
    }

    do
    {
      v25 = v16[v23++];
    }

    while (v24 != v23);
    v26 = [[NSArray alloc] _initByAdoptingBuffer:v16 count:v10 size:v10];
    free(v13);
    v27 = *MEMORY[0x1E69E9840];
    return v26;
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];

    return +[NSArray array];
  }
}

- (id)sortedArrayUsingComparator:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSSet sortedArrayUsingComparator:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSSet sortedArrayUsingComparator:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSSet *)self sortedArrayWithOptions:0 usingComparator:a3];
}

- (void)__applyValues:(void *)a3 context:(void *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = __CFExceptionProem(self, a2);
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v12);
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13), 0];
    objc_exception_throw(v14);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSSet *)self countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(self);
        }

        (a3)(*(*(&v16 + 1) + 8 * v10++), a4);
      }

      while (v8 != v10);
      v8 = [(NSSet *)self countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)__getValue:(id *)a3 forObj:(id)a4
{
  v5 = [(NSSet *)self member:a4];
  if (a3 && v5)
  {
    *a3 = v5;
  }

  return v5 != 0;
}

+ (NSSet)allocWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (NSSet == a1)
  {
    v5 = *MEMORY[0x1E69E9840];

    return __NSSetImmutablePlaceholder();
  }

  else if (NSMutableSet == a1)
  {
    v6 = *MEMORY[0x1E69E9840];

    return __NSSetMutablePlaceholder();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NSSet;
    result = objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (NSSet)initWithObject:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  result = [(NSSet *)self initWithObjects:v5 count:1];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)initWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = firstObj;
  Class = object_getClass(self);
  if (firstObj)
  {
    v7 = 0;
    va_copy(v21, va);
    do
    {
      v8 = v21;
      v21 += 8;
      ++v7;
    }

    while (*v8);
    if (Class == NSSet)
    {
      va_copy(v22, va);
      v18 = __NSSetI_new(&v23, va, v7, 0);
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
    if (Class == NSSet)
    {
      v18 = __NSSet0__;
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
  v18 = [(NSSet *)self initWithObjects:v21 count:v22, v23, v24];
  free(v15);
LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (NSSet)initWithArray:(id)a3 range:(_NSRange)a4 copyItems:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v47 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSArray(a3) & 1) == 0)
  {
    v32 = _os_log_pack_size();
    v34 = &v46 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    *v35 = 136315138;
    *(v35 + 4) = "[NSSet initWithArray:range:copyItems:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSSet initWithArray:range:copyItems:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
    objc_exception_throw(v37);
  }

  v10 = [a3 count];
  v12 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v25 = &v46 - ((MEMORY[0x1EEE9AC00](v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v26, "[NSSet initWithArray:range:copyItems:]", location, length);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v27, "[NSSet initWithArray:range:copyItems:]", location, length);
      v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v25, v23];
      objc_exception_throw(v29);
    }

    v38 = _os_log_pack_size();
    v40 = &v46 - ((MEMORY[0x1EEE9AC00](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    v42 = v12 - 1;
    v43 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v41, "[NSSet initWithArray:range:copyItems:]", location, length, v42);
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v43, "[NSSet initWithArray:range:copyItems:]", location, length, v42);
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

  [a3 getObjects:v16 range:{location, length, v46, v47}];
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

  v20 = [(NSSet *)self initWithObjects:v16 count:length];
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

- (NSSet)initWithArray:(NSArray *)array
{
  v5 = [(NSArray *)array count];

  return [(NSSet *)self initWithArray:array range:0 copyItems:v5, 0];
}

- (NSSet)initWithOrderedSet:(id)a3 range:(_NSRange)a4 copyItems:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v47 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSOrderedSet(a3) & 1) == 0)
  {
    v32 = _os_log_pack_size();
    v34 = &v46 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    *v35 = 136315138;
    *(v35 + 4) = "[NSSet initWithOrderedSet:range:copyItems:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSSet initWithOrderedSet:range:copyItems:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
    objc_exception_throw(v37);
  }

  v10 = [a3 count];
  v12 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v25 = &v46 - ((MEMORY[0x1EEE9AC00](v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill();
      v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v26, "[NSSet initWithOrderedSet:range:copyItems:]", location, length);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v27, "[NSSet initWithOrderedSet:range:copyItems:]", location, length);
      v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v25, v23];
      objc_exception_throw(v29);
    }

    v38 = _os_log_pack_size();
    v40 = &v46 - ((MEMORY[0x1EEE9AC00](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    v42 = v12 - 1;
    v43 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v41, "[NSSet initWithOrderedSet:range:copyItems:]", location, length, v42);
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v43, "[NSSet initWithOrderedSet:range:copyItems:]", location, length, v42);
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

  [a3 getObjects:v16 range:{location, length, v46, v47}];
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

  v20 = [(NSSet *)self initWithObjects:v16 count:length];
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

- (NSSet)initWithOrderedSet:(id)a3
{
  v5 = [a3 count];

  return [(NSSet *)self initWithOrderedSet:a3 range:0 copyItems:v5, 0];
}

- (NSSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag
{
  v4 = flag;
  v5 = set;
  v44 = *MEMORY[0x1E69E9840];
  if (set)
  {
    if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v8 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v9, v10, v11, v12, v13, v14, v8);
    }

    v15 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = [(NSSet *)v5 countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v16)
    {
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v5);
          }

          [v15 addObject:*(*(&v40 + 1) + 8 * i)];
        }

        v16 = [(NSSet *)v5 countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v16);
    }

    v5 = v15;
    if (v5)
    {
LABEL_15:
      if ((_NSIsNSSet(v5) & 1) == 0)
      {
        v33 = _os_log_pack_size();
        v35 = v39 - ((MEMORY[0x1EEE9AC00](v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = _os_log_pack_fill();
        *v36 = 136315138;
        *(v36 + 4) = "[NSSet initWithSet:copyItems:]";
        v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet initWithSet:copyItems:]");
        v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v33];
        objc_exception_throw(v38);
      }
    }
  }

  v19 = [(NSSet *)v5 count];
  v21 = v19;
  if (v19 >> 60)
  {
    v31 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v19);
    v32 = [NSException exceptionWithName:@"NSGenericException" reason:v31 userInfo:0];
    CFRelease(v31);
    objc_exception_throw(v32);
  }

  if (v19 <= 1)
  {
    v19 = 1;
  }

  v22 = MEMORY[0x1EEE9AC00](v19, v20);
  v24 = (v39 - v23);
  v39[0] = 0;
  if (v21 >= 0x101)
  {
    v24 = _CFCreateArrayStorage(v22, 0, v39);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  [(NSSet *)v5 getObjects:v24 count:v21, v39[0]];
  if (!v21)
  {
    v4 = 0;
  }

  if (v4)
  {
    v26 = v24;
    v27 = v21;
    do
    {
      *v26 = [*v26 copyWithZone:0];
      ++v26;
      --v27;
    }

    while (v27);
  }

  v28 = [(NSSet *)self initWithObjects:v24 count:v21];
  if (v4)
  {
    do
    {

      --v21;
    }

    while (v21);
  }

  free(v25);
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (NSSet)setWithObjects:(id *)objects count:(NSUInteger)cnt
{
  v4 = [[a1 alloc] initWithObjects:objects count:cnt];

  return v4;
}

+ (NSSet)setWithObject:(id)object
{
  Set = __createSet([a1 alloc], object);

  return Set;
}

+ (id)newSetWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v16 = _os_log_pack_size();
    v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "+[NSSet newSetWithObjects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = a4;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSSet newSetWithObjects:count:]", a4);
    goto LABEL_26;
  }

  if (a4 >> 61)
  {
    v16 = _os_log_pack_size();
    v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "+[NSSet newSetWithObjects:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = a4;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSSet newSetWithObjects:count:]", a4);
    goto LABEL_26;
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

    v15 = v6;
    v16 = _os_log_pack_size();
    v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "+[NSSet newSetWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = v15;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSSet newSetWithObjects:count:]", v15);
LABEL_26:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v20);
  }

LABEL_8:
  if (NSSet == a1)
  {
    if (a4 == 1)
    {
      v11 = *a3;
      v12 = *MEMORY[0x1E69E9840];

      return __NSSingleObjectSetI_new(v11, 1);
    }

    else if (a4)
    {
      v13 = *MEMORY[0x1E69E9840];

      return __NSSetI_new(a3, 0, a4, 1);
    }

    else
    {
      v9 = __NSSet0__;
      v10 = *MEMORY[0x1E69E9840];

      return v9;
    }
  }

  else
  {
    if (NSMutableSet != a1)
    {
      v14 = __CFLookUpClass("NSSet");
      __CFRequireConcreteImplementation(v14, a1, a2);
    }

    v7 = *MEMORY[0x1E69E9840];

    return __NSSetM_new(a3, a4, 0);
  }
}

+ (NSSet)setWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22[0] = firstObj;
  if (firstObj)
  {
    v5 = 0;
    va_copy(v20, va);
    do
    {
      v6 = v20;
      v20 += 8;
      ++v5;
    }

    while (*v6);
    if (NSSet == a1)
    {
      va_copy(v21, va);
      v17 = __NSSetI_new(v22, va, v5, 0);
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
    if (NSSet == a1)
    {
      result = __NSSet0__;
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
  v12 = (&v20 - v11);
  v20 = 0;
  if (v5 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v20);
    va_copy(v21, va);
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

    va_copy(v21, va);
    *v12 = firstObj;
    if (v5 == 1)
    {
      goto LABEL_19;
    }
  }

  for (i = 1; i != v5; ++i)
  {
    v15 = v21;
    v21 += 8;
    v12[i] = *v15;
  }

LABEL_19:
  v16 = [a1 alloc];
  v17 = [v16 initWithObjects:v12 count:{v5, v20}];
  free(v13);
LABEL_21:
  result = v17;
LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSSet)setWithArray:(id)a3 range:(_NSRange)a4
{
  v4 = [[a1 alloc] initWithArray:a3 range:a4.location copyItems:{a4.length, 0}];

  return v4;
}

+ (NSSet)setWithArray:(NSArray *)array
{
  v3 = [[a1 alloc] initWithArray:array range:0 copyItems:{-[NSArray count](array, "count"), 0}];

  return v3;
}

+ (NSSet)setWithOrderedSet:(id)a3 range:(_NSRange)a4
{
  v4 = [[a1 alloc] initWithOrderedSet:a3 range:a4.location copyItems:{a4.length, 0}];

  return v4;
}

+ (NSSet)setWithOrderedSet:(id)a3
{
  v3 = [[a1 alloc] initWithOrderedSet:a3 range:0 copyItems:{objc_msgSend(a3, "count"), 0}];

  return v3;
}

+ (NSSet)setWithSet:(NSSet *)set
{
  v3 = [[a1 alloc] initWithSet:set copyItems:0];

  return v3;
}

- (NSSet)setByAddingObject:(id)anObject
{
  v28 = *MEMORY[0x1E69E9840];
  if (!anObject)
  {
    v19 = _os_log_pack_size();
    v21 = &v27 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "[NSSet setByAddingObject:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSSet setByAddingObject:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v19];
    objc_exception_throw(v24);
  }

  if ([(NSSet *)self containsObject:?])
  {
    v5 = self;
    v6 = *MEMORY[0x1E69E9840];

    return v5;
  }

  else
  {
    v8 = [(NSSet *)self count];
    v10 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8 + 1);
      v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
      CFRelease(v25);
      objc_exception_throw(v26);
    }

    v11 = v8;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8 + 1;
    }

    v13 = MEMORY[0x1EEE9AC00](v12, v9);
    v15 = &v27 - v14;
    v27 = 0;
    if (v10 >= 0x101)
    {
      v15 = _CFCreateArrayStorage(v13, 0, &v27);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [(NSSet *)self getObjects:v15 count:v11, v27, v28];
    *&v15[8 * v11] = anObject;
    v17 = [NSSet setWithObjects:v15 count:v10];
    free(v16);
    v18 = *MEMORY[0x1E69E9840];
    return v17;
  }
}

- (NSSet)setByAddingObjectsFromArray:(NSArray *)other
{
  v30 = *MEMORY[0x1E69E9840];
  if (other && (_NSIsNSArray(other) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v23 = &v29 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "[NSSet setByAddingObjectsFromArray:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSSet setByAddingObjectsFromArray:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v21];
    objc_exception_throw(v26);
  }

  v5 = [(NSArray *)other count];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSSet *)self count];
    v9 = v7 + v6;
    if ((v7 + v6) >> 60)
    {
      v27 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7 + v6);
      v28 = [NSException exceptionWithName:@"NSGenericException" reason:v27 userInfo:0];
      CFRelease(v27);
      objc_exception_throw(v28);
    }

    v10 = v7;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7 + v6;
    }

    v12 = MEMORY[0x1EEE9AC00](v11, v8);
    v14 = &v29 - v13;
    v29 = 0;
    if (v9 >= 0x101)
    {
      v14 = _CFCreateArrayStorage(v12, 0, &v29);
      v15 = v14;
      if (!v10)
      {
LABEL_16:
        [(NSArray *)other getObjects:&v14[8 * v10] range:0, v6, v29];
        v19 = [NSSet setWithObjects:v14 count:v9];
        free(v15);
        v20 = *MEMORY[0x1E69E9840];
        return v19;
      }
    }

    else
    {
      v15 = 0;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    [(NSSet *)self getObjects:v14 count:v10, v29, v30];
    goto LABEL_16;
  }

  v16 = self;
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSSet)setByAddingObjectsFromSet:(NSSet *)other
{
  v3 = other;
  v43 = *MEMORY[0x1E69E9840];
  if (other)
  {
    if ((_NSIsNSSet(other) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v6 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v7, v8, v9, v10, v11, v12, v6);
    }

    v13 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = [(NSSet *)v3 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v14)
    {
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v3);
          }

          [v13 addObject:*(*(&v39 + 1) + 8 * i)];
        }

        v14 = [(NSSet *)v3 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v14);
    }

    v3 = v13;
    if (v3)
    {
LABEL_15:
      if ((_NSIsNSSet(v3) & 1) == 0)
      {
        v32 = _os_log_pack_size();
        v34 = v38 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = _os_log_pack_fill();
        *v35 = 136315138;
        *(v35 + 4) = "[NSSet setByAddingObjectsFromSet:]";
        v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet setByAddingObjectsFromSet:]");
        v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
        objc_exception_throw(v37);
      }
    }
  }

  v17 = [(NSSet *)v3 count];
  if (v17)
  {
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
LABEL_27:
        [(NSSet *)v3 getObjects:&v25[8 * v20] count:v17, v38[0]];
        v27 = [NSSet setWithObjects:v25 count:v21];
        free(v26);
        goto LABEL_28;
      }
    }

    else
    {
      v26 = 0;
      if (!v20)
      {
        goto LABEL_27;
      }
    }

    [(NSSet *)self getObjects:v25 count:v20, v38[0]];
    goto LABEL_27;
  }

  v27 = self;
LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  ShouldCopy = __NSCollectionsShouldCopy();
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v7 = [NSSet allocWithZone:a3];

  return [(NSSet *)v7 initWithSet:self copyItems:ShouldCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = [(NSSet *)NSMutableSet allocWithZone:a3];

  return [(NSSet *)v6 initWithSet:self copyItems:0];
}

- (NSUInteger)count
{
  OUTLINED_FUNCTION_0_16();
  v2 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v2);
}

- (id)member:(id)object
{
  OUTLINED_FUNCTION_0_16();
  v3 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v3);
}

- (NSEnumerator)objectEnumerator
{
  OUTLINED_FUNCTION_0_16();
  v2 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v2);
}

- (NSSet)initWithObjects:(id *)objects count:(NSUInteger)cnt
{
  OUTLINED_FUNCTION_0_16();
  v4 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v4);
}

@end