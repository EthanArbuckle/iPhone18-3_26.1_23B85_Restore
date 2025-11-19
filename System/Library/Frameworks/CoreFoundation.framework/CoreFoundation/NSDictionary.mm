@interface NSDictionary
+ (NSDictionary)allocWithZone:(_NSZone *)a3;
+ (NSDictionary)dictionary;
+ (NSDictionary)dictionaryWithDictionary:(NSDictionary *)dict;
+ (NSDictionary)dictionaryWithObject:(id)object forKey:(id)key;
+ (NSDictionary)dictionaryWithObjects:(NSArray *)objects forKeys:(NSArray *)keys;
+ (NSDictionary)dictionaryWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt;
+ (NSDictionary)dictionaryWithObjectsAndKeys:(id)firstObject;
+ (id)newDictionaryWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
+ (id)sharedKeySetForKeys:(NSArray *)keys;
- (BOOL)__getValue:(id *)a3 forKey:(id)a4;
- (BOOL)containsKey:(id)a3;
- (BOOL)containsObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDictionary:(NSDictionary *)otherDictionary;
- (NSArray)allKeys;
- (NSArray)allKeysForObject:(id)anObject;
- (NSArray)allValues;
- (NSArray)keysSortedByValueUsingComparator:(NSComparator)cmptr;
- (NSArray)keysSortedByValueUsingSelector:(SEL)comparator;
- (NSArray)keysSortedByValueWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (NSArray)objectsForKeys:(NSArray *)keys notFoundMarker:(id)marker;
- (NSDictionary)initWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag;
- (NSDictionary)initWithObject:(id)a3 forKey:(id)a4;
- (NSDictionary)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys;
- (NSDictionary)initWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt;
- (NSDictionary)initWithObjectsAndKeys:(id)firstObject;
- (NSEnumerator)keyEnumerator;
- (NSEnumerator)objectEnumerator;
- (NSSet)keysOfEntriesPassingTest:(void *)predicate;
- (NSSet)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
- (NSUInteger)count;
- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)buffer count:(NSUInteger)len;
- (id)_cfMutableCopy;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invertedDictionary;
- (id)keyOfEntryPassingTest:(id)a3;
- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)aKey;
- (id)objectForKeyedSubscript:(id)key;
- (unint64_t)countForKey:(id)a3;
- (unint64_t)countForObject:(id)a3;
- (unint64_t)hash;
- (void)__apply:(void *)a3 context:(void *)a4;
- (void)enumerateKeysAndObjectsUsingBlock:(void *)block;
- (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getKeys:(id *)a3;
- (void)getObjects:(id *)a3;
- (void)getObjects:(id *)objects andKeys:(id *)keys;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(NSUInteger)count;
@end

@implementation NSDictionary

- (NSArray)allValues
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
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
  [(NSDictionary *)self getObjects:v6 andKeys:0 count:v5];
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

+ (NSDictionary)dictionary
{
  v2 = [[a1 alloc] initWithObjects:0 forKeys:0 count:0];

  return v2;
}

- (NSArray)allKeys
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
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
  [(NSDictionary *)self getObjects:0 andKeys:v6 count:v5];
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
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self descriptionWithLocale:0 indent:0];
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self count];
}

- (NSEnumerator)objectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(__NSFastEnumerationEnumerator *)[__NSDictionaryObjectEnumerator alloc] initWithObject:self];

  return v4;
}

- (id)_cfMutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = objc_allocWithZone(NSMutableDictionary);

  return [v4 initWithDictionary:self copyItems:0];
}

- (NSArray)allKeysForObject:(id)anObject
{
  v35 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)self count];
  if (v6 >> 60)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
    CFRelease(v26);
    objc_exception_throw(v27);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v28 - v9;
  v29 = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v29);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [(NSDictionary *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
  v14 = v10;
  if (v13)
  {
    v15 = *v32;
    v14 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(self);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [(NSDictionary *)self objectForKey:v17];
        if (v18 == anObject || [anObject isEqual:v18])
        {
          *v14 = v17;
          v14 += 8;
        }
      }

      v13 = [(NSDictionary *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v13);
  }

  v19 = (v14 - v10) >> 3;
  if (v12)
  {
    if (v19 >= 1)
    {
      v20 = v12;
      v21 = (v14 - v10) >> 3;
      do
      {
        v22 = *v20++;
        --v21;
      }

      while (v21);
    }

    v23 = [[NSArray alloc] _initByAdoptingBuffer:v12 count:v19 size:v19];
  }

  else
  {
    v23 = [[NSArray alloc] initWithObjects:v10 count:(v14 - v10) >> 3];
  }

  result = v23;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)allObjects
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
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
  [(NSDictionary *)self getObjects:v6 andKeys:0 count:v5];
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

- (BOOL)containsKey:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
    if (a3)
    {
      return [(NSDictionary *)self objectForKey:a3]!= 0;
    }
  }

  else if (a3)
  {
    return [(NSDictionary *)self objectForKey:a3]!= 0;
  }

  return 0;
}

- (BOOL)containsObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSDictionary *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(self);
        }

        v10 = [(NSDictionary *)self objectForKey:*(*(&v14 + 1) + 8 * i)];
        if (v10 == a3 || ([a3 isEqual:v10] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSDictionary *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
      LOBYTE(v6) = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)buffer count:(NSUInteger)len
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!buffer && len)
  {
    v20 = _os_log_pack_size();
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[NSDictionary countByEnumeratingWithState:objects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = len;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSDictionary countByEnumeratingWithState:objects:count:]", len);
    goto LABEL_28;
  }

  if (len >> 61)
  {
    v20 = _os_log_pack_size();
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "[NSDictionary countByEnumeratingWithState:objects:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = len;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary countByEnumeratingWithState:objects:count:]", len);
LABEL_28:
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v20];
    objc_exception_throw(v25);
  }

  v10 = state->state;
  if (state->state == -1)
  {
    goto LABEL_22;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
    v10 = state->state;
    if (state->state)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v10)
  {
LABEL_9:
    state->mutationsPtr = state->extra;
    state->extra[0] = [(NSDictionary *)self count];
    v12 = [(NSDictionary *)self keyEnumerator];
    state->extra[1] = v12;
    if (v12)
    {
      v11 = v12;
      v10 = state->state;
      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_25;
  }

LABEL_7:
  v11 = state->extra[1];
LABEL_11:
  state->itemsPtr = buffer;
  v13 = state->extra[0];
  if (v13 - v10 >= len)
  {
    v14 = len;
  }

  else
  {
    v14 = v13 - v10;
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

      buffer[v15++] = v16;
      if (v14 == v15)
      {
        v10 = state->state;
        goto LABEL_19;
      }
    }

    v17 = -1;
  }

  else
  {
LABEL_19:
    v17 = v10 + v14;
    if (v13 <= v17)
    {
      v17 = -1;
    }

    v15 = v14;
  }

  state->state = v17;
LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unint64_t)countForKey:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self objectForKey:a3]!= 0;
}

- (unint64_t)countForObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSDictionary *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(self);
        }

        v11 = [(NSDictionary *)self objectForKey:*(*(&v15 + 1) + 8 * i)];
        if (v11 == a3 || [a3 isEqual:v11])
        {
          ++v8;
        }
      }

      v7 = [(NSDictionary *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
  v66 = locale;
  v74[1] = *MEMORY[0x1E69E9840];
  if (level >= 0x64)
  {
    v5 = 100;
  }

  else
  {
    v5 = level;
  }

  v67 = self;
  v6 = [(NSDictionary *)self count];
  v8 = v6;
  if (v6 >> 60)
  {
    v55 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v56 = [NSException exceptionWithName:@"NSGenericException" reason:v55 userInfo:0];
    CFRelease(v55);
    objc_exception_throw(v56);
  }

  v61 = level;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = MEMORY[0x1EEE9AC00](v6, v7);
  v13 = (&v58 - v12);
  v74[0] = 0;
  if (v8 > 0x100)
  {
    v13 = _CFCreateArrayStorage(v9, 0, v74);
    v73 = 0;
    v16 = _CFCreateArrayStorage(v9, 0, &v73);
    MEMORY[0x1EEE9AC00](v16, v21);
    v19 = &v57;
    v70[0] = 0;
    v20 = _CFCreateArrayStorage(v9, 0, v70);
    v62 = v16;
    v63 = v13;
  }

  else
  {
    v14 = MEMORY[0x1EEE9AC00](v10, v11);
    v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v73 = 0;
    MEMORY[0x1EEE9AC00](v14, v17);
    v19 = &v58 - v18;
    v62 = 0;
    v63 = 0;
    v20 = 0;
    v70[0] = 0;
  }

  if (v8 >= 0x101)
  {
    v19 = v20;
  }

  v22 = [(NSDictionary *)v67 getObjects:0 andKeys:v19 count:v8];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (_NSIsNSString(*&v19[8 * i]))
      {
        v25 = objc_opt_respondsToSelector();
        if (v25)
        {
          continue;
        }
      }

      memmove(v13, v19, 8 * v8);
      goto LABEL_28;
    }

    v65 = &v58;
    MEMORY[0x1EEE9AC00](v25, v26);
    v27 = v8;
    v29 = &v58 - v28;
    if (v8 <= 0x1000)
    {
      goto LABEL_22;
    }

    v30 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
  }

  else
  {
    v65 = &v58;
    MEMORY[0x1EEE9AC00](v22, v23);
    v27 = 0;
    v29 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_22:
    v30 = v29;
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __45__NSDictionary_descriptionWithLocale_indent___block_invoke;
  v72[3] = &__block_descriptor_40_e11_q24__0q8q16l;
  v72[4] = v19;
  CFSortIndexes(v30, v27, 0, v72);
  v8 = v27;
  if (v27)
  {
    v32 = v30;
    v33 = v13;
    v34 = v27;
    do
    {
      v35 = *v32++;
      *v33++ = *&v19[8 * v35];
      --v34;
    }

    while (v34);
  }

  if (v29 != v30)
  {
    free(v30);
  }

LABEL_28:
  free(v20);
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  v71 = -1;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v65 = v69;
  v69[0] = __45__NSDictionary_descriptionWithLocale_indent___block_invoke_2;
  v69[1] = &unk_1E6DCFD88;
  v69[2] = v70;
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v60 = &__kCFAllocatorSystemDefault;
  v59 = objc_autoreleasePoolPush();
  v64 = v8;
  if (v8)
  {
    v37 = v13;
    v38 = v16;
    v39 = v64;
    do
    {
      v40 = *v37;
      v41 = [(NSDictionary *)v67 objectForKey:*v37];
      if (_NSIsNSString(v40))
      {
        v42 = [(__CFString *)v40 _stringRepresentation];
      }

      else if ((_NSIsNSDictionary(v40) & 1) != 0 || _NSIsNSArray(v40))
      {
        v42 = [(__CFString *)v40 descriptionWithLocale:v66 indent:v5 + 1];
      }

      else if (_NSIsNSData(v40))
      {
        v42 = [(__CFString *)v40 description];
      }

      else
      {
        v47 = [(__CFString *)v40 description];
        v42 = (v69[0])(v68, v47);
      }

      v43 = v42;
      if (_NSIsNSString(v41))
      {
        v44 = [v41 _stringRepresentation];
      }

      else if ((_NSIsNSDictionary(v41) & 1) != 0 || _NSIsNSArray(v41))
      {
        v44 = [v41 descriptionWithLocale:v66 indent:v5 + 1];
      }

      else if (_NSIsNSData(v41))
      {
        v44 = [v41 description];
      }

      else
      {
        v48 = [v41 description];
        v44 = (v69[0])(v68, v48);
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = @"(null)";
      }

      *v37++ = v45;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = @"(null)";
      }

      *v38++ = v46;
      --v39;
    }

    while (v39);
  }

  v49 = CFStringCreateMutable(v60, 0);
  v50 = v64;
  v51 = v49;
  if (v61)
  {
    do
    {
      CFStringAppend(v51, @"    ");
      --v5;
    }

    while (v5);
  }

  CFStringAppend(Mutable, v51);
  CFStringAppend(Mutable, @"{\n");
  for (; v50; --v50)
  {
    CFStringAppend(Mutable, v51);
    CFStringAppend(Mutable, @"    ");
    CFStringAppend(Mutable, *v13);
    CFStringAppend(Mutable, @" = ");
    CFStringAppend(Mutable, *v16);
    CFStringAppend(Mutable, @";\n");
    ++v16;
    ++v13;
  }

  CFStringAppend(Mutable, v51);
  CFStringAppend(Mutable, @"}");
  CFRelease(v51);
  objc_autoreleasePoolPop(v59);
  v52 = Mutable;
  _Block_object_dispose(v70, 8);
  free(v62);
  free(v63);
  v53 = *MEMORY[0x1E69E9840];
  return v52;
}

uint64_t __45__NSDictionary_descriptionWithLocale_indent___block_invoke_2(uint64_t a1, void *a2)
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
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self descriptionWithLocale:locale indent:0];
}

- (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[NSDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  __NSDictionaryParameterCheckIterate(self, a2, block);
  v9 = *MEMORY[0x1E69E9840];

  __NSDictionaryEnumerate(self, v6 & 0xFD, block);
}

- (void)enumerateKeysAndObjectsUsingBlock:(void *)block
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSDictionary enumerateKeysAndObjectsUsingBlock:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSDictionary enumerateKeysAndObjectsUsingBlock:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = *MEMORY[0x1E69E9840];

  [(NSDictionary *)self enumerateKeysAndObjectsWithOptions:0 usingBlock:block];
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(NSUInteger)count
{
  v6 = count;
  v7 = keys;
  v8 = objects;
  v26 = *MEMORY[0x1E69E9840];
  v10 = count >> 61;
  if (objects && v10 || keys && v10)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[NSDictionary getObjects:andKeys:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = v6;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getObjects:andKeys:count:]", v6);
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:&v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v17];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(self);
      }

      if (v6 == v14)
      {
        break;
      }

      v15 = *(*(&v22 + 1) + 8 * v14);
      if (v7)
      {
        *v7++ = v15;
      }

      if (v8)
      {
        *v8++ = [(NSDictionary *)self objectForKey:v15];
      }

      if (v12 == ++v14)
      {
        v12 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
        v6 -= v14;
        if (v12)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)objects andKeys:(id *)keys
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v8 = [(NSDictionary *)self count];
  v9 = v8 >> 61;
  if (objects && v9 || keys && v9)
  {
    v11 = v8;
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[NSDictionary getObjects:andKeys:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v11;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getObjects:andKeys:]", v11);
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v15);
  }

  v10 = *MEMORY[0x1E69E9840];

  [(NSDictionary *)self getObjects:objects andKeys:keys count:v8];
}

- (void)getKeys:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)self count];
  if (a3 && v6 >> 61)
  {
    v8 = v6;
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315394;
    *(v10 + 4) = "[NSDictionary getKeys:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getKeys:]", v8);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSDictionary *)self getObjects:0 andKeys:a3 count:v6];
}

- (void)getObjects:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)self count];
  if (a3 && v6 >> 61)
  {
    v8 = v6;
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315394;
    *(v10 + 4) = "[NSDictionary getObjects:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getObjects:]", v8);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSDictionary *)self getObjects:a3 andKeys:0 count:v6];
}

- (id)invertedDictionary
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self allKeys];
  v5 = [(NSDictionary *)self allObjects];

  return [NSDictionary dictionaryWithObjects:v4 forKeys:v5];
}

- (BOOL)isEqualToDictionary:(NSDictionary *)otherDictionary
{
  v27 = *MEMORY[0x1E69E9840];
  if (otherDictionary && (_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v17 = _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSDictionary isEqualToDictionary:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSDictionary isEqualToDictionary:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:&v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v17];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  LOBYTE(v6) = otherDictionary == self;
  if (otherDictionary != self && otherDictionary)
  {
    v7 = [(NSDictionary *)self count];
    if ([(NSDictionary *)otherDictionary count]== v7)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [(NSDictionary *)self countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (!v8)
      {
        LOBYTE(v6) = 1;
        goto LABEL_25;
      }

      v9 = v8;
      v10 = *v24;
LABEL_10:
      v11 = 0;
      while (1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(self);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = [(NSDictionary *)otherDictionary objectForKey:v12];
        v14 = [(NSDictionary *)self objectForKey:v12];
        if (v13 && v14 == 0)
        {
          break;
        }

        if (v14)
        {
          if (!v13)
          {
            break;
          }

          v6 = [v14 isEqual:v13];
          if (!v6)
          {
            goto LABEL_25;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [(NSDictionary *)self countByEnumeratingWithState:&v23 objects:v22 count:16];
          LOBYTE(v6) = 1;
          if (v9)
          {
            goto LABEL_10;
          }

          goto LABEL_25;
        }
      }
    }

    LOBYTE(v6) = 0;
  }

LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (a3)
  {
    v6 = _NSIsNSDictionary(a3);
    if (v6)
    {

      LOBYTE(v6) = [(NSDictionary *)self isEqualToDictionary:a3];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSDictionary keyOfEntryWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keyOfEntryWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  v6 = a3;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  __NSDictionaryParameterCheckIterate(self, a2, a4);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__NSDictionary_keyOfEntryWithOptions_passingTest___block_invoke;
  v15[3] = &unk_1E6DCFE98;
  v15[4] = a4;
  v15[5] = v16;
  v16[0] = 0;
  __NSDictionaryEnumerate(self, v6 & 0xFD, v15);
  result = v16[0];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __50__NSDictionary_keyOfEntryWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    **(a1 + 40) = a2;
    *a4 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)keyOfEntryPassingTest:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSDictionary keyOfEntryPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keyOfEntryPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSDictionary *)self keyOfEntryWithOptions:0 passingTest:a3];
}

- (NSSet)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v22 = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSDictionary keysOfEntriesWithOptions:passingTest:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keysOfEntriesWithOptions:passingTest:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v15);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  __NSDictionaryParameterCheckIterate(self, a2, predicate);
  v9 = +[(NSSet *)NSMutableSet];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = 850045857;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__NSDictionary_keysOfEntriesWithOptions_passingTest___block_invoke;
  v16[3] = &unk_1E6D82458;
  v16[5] = predicate;
  v16[6] = &v17;
  v16[4] = v9;
  __NSDictionaryEnumerate(self, v6 & 0xFD, v16);
  result = [NSSet setWithSet:v9];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __53__NSDictionary_keysOfEntriesWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
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

- (NSSet)keysOfEntriesPassingTest:(void *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSDictionary keysOfEntriesPassingTest:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keysOfEntriesPassingTest:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSDictionary *)self keysOfEntriesWithOptions:0 passingTest:predicate];
}

- (NSArray)keysSortedByValueWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v34 = _os_log_pack_size();
    v36 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    *v37 = 136315138;
    *(v37 + 4) = "[NSDictionary keysSortedByValueWithOptions:usingComparator:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSDictionary keysSortedByValueWithOptions:usingComparator:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v34];
    objc_exception_throw(v39);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v8 = [(NSDictionary *)self count];
  if (v8)
  {
    v10 = v8;
    if (v8 >> 60)
    {
      v40 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
      v41 = [NSException exceptionWithName:@"NSGenericException" reason:v40 userInfo:0];
      CFRelease(v40);
      objc_exception_throw(v41);
    }

    v11 = MEMORY[0x1EEE9AC00](v8, v9);
    v14 = &v43 - v13;
    v48[0] = 0;
    if (v10 > 0x100)
    {
      v14 = _CFCreateArrayStorage(v10, 0, v48);
      MEMORY[0x1EEE9AC00](v14, v20);
      v16 = &v42;
      v47 = 0;
      v44 = v14;
      v17 = _CFCreateArrayStorage(v10, 0, &v47);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11, v12);
      v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = 0;
      v17 = 0;
      v47 = 0;
    }

    if (v10 >= 0x101)
    {
      v21 = v17;
    }

    else
    {
      v21 = v16;
    }

    v46 = 0;
    v22 = _CFCreateArrayStorage(v10, 0, &v46);
    v23 = [(NSDictionary *)self getObjects:v21 andKeys:v14 count:v10];
    MEMORY[0x1EEE9AC00](v23, v24);
    v26 = &v43 - v25;
    v27 = &v43 - v25;
    if (v10 > 0x1000)
    {
      v27 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __61__NSDictionary_keysSortedByValueWithOptions_usingComparator___block_invoke;
    v45[3] = &unk_1E6D7D7A0;
    v45[4] = cmptr;
    v45[5] = v21;
    CFSortIndexes(v27, v10, v6, v45);
    for (i = 0; i != v10; ++i)
    {
      v22[i] = *&v14[8 * *&v27[8 * i]];
    }

    if (v26 != v27)
    {
      free(v27);
    }

    v29 = 0;
    if (v10 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v10;
    }

    do
    {
      v31 = v22[v29++];
    }

    while (v30 != v29);
    v32 = [[NSArray alloc] _initByAdoptingBuffer:v22 count:v10 size:v10];
    free(v17);
    free(v44);
    v33 = *MEMORY[0x1E69E9840];
    return v32;
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];

    return +[NSArray array];
  }
}

- (NSArray)keysSortedByValueUsingComparator:(NSComparator)cmptr
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[NSDictionary keysSortedByValueUsingComparator:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSDictionary keysSortedByValueUsingComparator:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(NSDictionary *)self keysSortedByValueWithOptions:0 usingComparator:cmptr];
}

- (NSArray)keysSortedByValueUsingSelector:(SEL)comparator
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__NSDictionary_keysSortedByValueUsingSelector___block_invoke;
  v8[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v8[4] = comparator;
  result = [(NSDictionary *)self keysSortedByValueWithOptions:0 usingComparator:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectForKeyedSubscript:(id)key
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self objectForKey:key];
}

- (NSArray)objectsForKeys:(NSArray *)keys notFoundMarker:(id)marker
{
  v42 = *MEMORY[0x1E69E9840];
  if (!marker)
  {
    v27 = _os_log_pack_size();
    v29 = &v35 - ((MEMORY[0x1EEE9AC00](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill();
    *v30 = 136315138;
    *(v30 + 4) = "[NSDictionary objectsForKeys:notFoundMarker:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: marker cannot be nil", "[NSDictionary objectsForKeys:notFoundMarker:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v27];
    objc_exception_throw(v32);
  }

  v8 = [(NSArray *)keys count];
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
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [(NSArray *)keys countByEnumeratingWithState:&v38 objects:v37 count:16];
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
          objc_enumerationMutation(keys);
        }

        v19 = [(NSDictionary *)self objectForKey:*(*(&v38 + 1) + 8 * i)];
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = marker;
        }

        *v16 = v20;
        v16 += 8;
      }

      v15 = [(NSArray *)keys countByEnumeratingWithState:&v38 objects:v37 count:16];
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

- (void)__apply:(void *)a3 context:(void *)a4
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = __CFExceptionProem(self, a2);
    v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v5);
    v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6), 0];
    objc_exception_throw(v7);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__NSDictionary___apply_context___block_invoke;
  v8[3] = &__block_descriptor_48_e15_v32__0_8_16_B24l;
  v8[4] = a3;
  v8[5] = a4;
  [(NSDictionary *)self enumerateKeysAndObjectsWithOptions:0 usingBlock:v8];
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)__getValue:(id *)a3 forKey:(id)a4
{
  v5 = [(NSDictionary *)self objectForKey:a4];
  if (a3 && v5)
  {
    *a3 = v5;
  }

  return v5 != 0;
}

+ (NSDictionary)allocWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (NSDictionary == a1)
  {
    v5 = *MEMORY[0x1E69E9840];

    return __NSDictionaryImmutablePlaceholder();
  }

  else if (NSMutableDictionary == a1)
  {
    v6 = *MEMORY[0x1E69E9840];

    return __NSDictionaryMutablePlaceholder();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NSDictionary;
    result = objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (NSDictionary)initWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag
{
  v4 = flag;
  v37[1] = *MEMORY[0x1E69E9840];
  if (otherDictionary && (_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v28 = _os_log_pack_size();
    v30 = &v35 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[NSDictionary initWithDictionary:copyItems:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSDictionary initWithDictionary:copyItems:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

  v7 = [(NSDictionary *)otherDictionary count];
  v9 = v7;
  if (v7 >> 60)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
    CFRelease(v26);
    objc_exception_throw(v27);
  }

  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = MEMORY[0x1EEE9AC00](v7, v8);
  v14 = (&v35 - v13);
  v37[0] = 0;
  if (v9 > 0x100)
  {
    v17 = _CFCreateArrayStorage(v10, 0, v37);
    MEMORY[0x1EEE9AC00](v17, v19);
    v16 = &v34;
    v36 = 0;
    v18 = _CFCreateArrayStorage(v10, 0, &v36);
    v14 = v17;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11, v12);
    v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = 0;
    v18 = 0;
    v36 = 0;
  }

  if (v9 >= 0x101)
  {
    v16 = v18;
  }

  [(NSDictionary *)otherDictionary getObjects:v16 andKeys:v14 count:v9];
  if (!v9)
  {
    v4 = 0;
  }

  if (v4)
  {
    v20 = v14;
    v21 = v16;
    v22 = v9;
    do
    {
      *v20 = [*v20 copyWithZone:0];
      *v21 = [*v21 copyWithZone:0];
      ++v21;
      ++v20;
      --v22;
    }

    while (v22);
  }

  v23 = [(NSDictionary *)self initWithObjects:v16 forKeys:v14 count:v9];
  if (v4)
  {
    do
    {

      ++v14;
      --v9;
    }

    while (v9);
  }

  free(v18);
  free(v17);
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NSDictionary)initWithObject:(id)a3 forKey:(id)a4
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7[0] = a3;
  result = [(NSDictionary *)self initWithObjects:v7 forKeys:&v6 count:1];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)initWithObjectsAndKeys:(id)firstObject
{
  va_start(va1, firstObject);
  va_start(va, firstObject);
  v36 = va_arg(va1, void);
  v35[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35[0] = firstObject;
  v6 = objc_opt_class();
  if (firstObject)
  {
    v8 = 0;
    va_copy(v34, va);
    do
    {
      v9 = v34;
      v34 += 8;
      ++v8;
    }

    while (*v9);
    if (v8)
    {
      v28 = __CFExceptionProem(self, a2);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: second object of each pair must be non-nil.  Or, did you forget to nil-terminate your parameter list?", v28);
      v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29), 0];
      objc_exception_throw(v30);
    }

    v10 = v8 >> 1;
    if (v6 != NSDictionary)
    {
      if (v8 >= 0x1FFFFFFFFFFFFFFFLL)
      {
        v11 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8 >> 1);
        v12 = [NSException exceptionWithName:@"NSGenericException" reason:v11 userInfo:0];
        CFRelease(v11);
        objc_exception_throw(v12);
      }

LABEL_10:
      if (v10 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10;
      }

      v14 = MEMORY[0x1EEE9AC00](v6, v7);
      v33 = 0;
      if (v10 >= 0x101)
      {
        v19 = _CFCreateArrayStorage(v13, 0, &v33);
        v32 = 0;
        v20 = _CFCreateArrayStorage(v13, 0, &v32);
        va_copy(v34, va);
        *v20 = firstObject;
        v21 = v34;
        v34 += 8;
        *v19 = *v21;
        v16 = v19;
        v18 = v20;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v14, v15);
        v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
        v32 = 0;
        if (!v10)
        {
          v20 = 0;
          v19 = 0;
LABEL_24:
          v25 = [NSDictionary initWithObjects:"initWithObjects:forKeys:count:" forKeys:? count:?];
          free(v20);
          free(v19);
          goto LABEL_25;
        }

        v19 = 0;
        v20 = 0;
        *v18 = firstObject;
        va_copy(v34, va1);
        *v16 = v36;
        if (v10 == 1)
        {
          goto LABEL_24;
        }
      }

      for (i = 1; i != v10; ++i)
      {
        v23 = v34;
        v34 += 8;
        v18[i] = *v23;
        v24 = v34;
        v34 += 8;
        v16[i] = *v24;
      }

      goto LABEL_24;
    }

    va_copy(v34, va);
    v25 = __NSDictionaryI_new(v35, 0, va, v10, 1);
  }

  else
  {
    if (v6 != NSDictionary)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v25 = &__NSDictionary0__struct;
  }

LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (NSDictionary)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys
{
  v47[1] = *MEMORY[0x1E69E9840];
  if (objects && (_NSIsNSArray(objects) & 1) == 0)
  {
    v32 = _os_log_pack_size();
    v34 = &v45 - ((MEMORY[0x1EEE9AC00](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill();
    *v35 = 136315138;
    *(v35 + 4) = "[NSDictionary initWithObjects:forKeys:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSDictionary initWithObjects:forKeys:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v32];
    objc_exception_throw(v37);
  }

  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v38 = _os_log_pack_size();
    v40 = &v45 - ((MEMORY[0x1EEE9AC00](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    *v41 = 136315138;
    *(v41 + 4) = "[NSDictionary initWithObjects:forKeys:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSDictionary initWithObjects:forKeys:]");
    v43 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v42) osLogPack:0 size:v40, v38];
    objc_exception_throw(v43);
  }

  v8 = [(NSArray *)objects count];
  v9 = [(NSArray *)keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSDictionary initWithObjects:forKeys:]", v8, v9);
  }

  v10 = [(NSArray *)keys count];
  v11 = [(NSArray *)objects count];
  if (v10 != v11)
  {
    v26 = v11;
    v27 = __CFExceptionProem(self, a2);
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: number of objects (%lu) not equal to number of keys (%lu)", v27, v26, v10);
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28), 0];
    objc_exception_throw(v29);
  }

  if (v10 >> 60)
  {
    v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v31 = [NSException exceptionWithName:@"NSGenericException" reason:v30 userInfo:0];
    CFRelease(v30);
    objc_exception_throw(v31);
  }

  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v17 = &v45 - v16;
  v47[0] = 0;
  if (v10 > 0x100)
  {
    v20 = _CFCreateArrayStorage(v13, 0, v47);
    MEMORY[0x1EEE9AC00](v20, v22);
    v19 = &v44;
    v46 = 0;
    v21 = _CFCreateArrayStorage(v13, 0, &v46);
    v17 = v20;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14, v15);
    v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = 0;
    v21 = 0;
    v46 = 0;
  }

  if (v10 >= 0x101)
  {
    v19 = v21;
  }

  [(NSArray *)keys getObjects:v17 range:0, v10];
  [(NSArray *)objects getObjects:v19 range:0, v10];
  v23 = [(NSDictionary *)self initWithObjects:v19 forKeys:v17 count:v10];
  free(v21);
  free(v20);
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (NSDictionary)dictionaryWithObject:(id)object forKey:(id)key
{
  Dictionary = __createDictionary([a1 alloc], object, key);

  return Dictionary;
}

+ (NSDictionary)dictionaryWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt
{
  v5 = [[a1 alloc] initWithObjects:objects forKeys:keys count:cnt];

  return v5;
}

+ (NSDictionary)dictionaryWithObjectsAndKeys:(id)firstObject
{
  va_start(va1, firstObject);
  va_start(va, firstObject);
  v35 = va_arg(va1, void);
  v34[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34[0] = firstObject;
  if (firstObject)
  {
    v5 = 0;
    va_copy(v33, va);
    do
    {
      v6 = v33;
      v33 += 8;
      ++v5;
    }

    while (*v6);
    if (v5)
    {
      v27 = __CFExceptionProem(a1, a2);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: second object of each pair must be non-nil.  Or, did you forget to nil-terminate your parameter list?", v27);
      v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28), 0];
      objc_exception_throw(v29);
    }

    v7 = v5 >> 1;
    if (NSDictionary == a1)
    {
      va_copy(v33, va);
      v23 = __NSDictionaryI_new(v34, 0, va, v5 >> 1, 1);
LABEL_25:
      v24 = v23;
      goto LABEL_26;
    }

    if (v5 >= 0x1FFFFFFFFFFFFFFFLL)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5 >> 1);
      v9 = [NSException exceptionWithName:@"NSGenericException" reason:v8 userInfo:0];
      CFRelease(v8);
      objc_exception_throw(v9);
    }

LABEL_10:
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    v11 = MEMORY[0x1EEE9AC00](a1, a2);
    v14 = (&v30 - v13);
    v32 = 0;
    if (v7 >= 0x101)
    {
      v17 = _CFCreateArrayStorage(v10, 0, &v32);
      v31 = 0;
      v18 = _CFCreateArrayStorage(v10, 0, &v31);
      va_copy(v33, va);
      *v18 = firstObject;
      v19 = v33;
      v33 += 8;
      *v17 = *v19;
      v14 = v17;
      v16 = v18;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11, v12);
      v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = 0;
      if (!v7)
      {
        v18 = 0;
        v17 = 0;
LABEL_24:
        v23 = [[a1 alloc] initWithObjects:v16 forKeys:v14 count:v7];
        free(v18);
        free(v17);
        goto LABEL_25;
      }

      v17 = 0;
      v18 = 0;
      *v16 = firstObject;
      va_copy(v33, va1);
      *v14 = v35;
      if (v7 == 1)
      {
        goto LABEL_24;
      }
    }

    for (i = 1; i != v7; ++i)
    {
      v21 = v33;
      v33 += 8;
      v16[i] = *v21;
      v22 = v33;
      v33 += 8;
      v14[i] = *v22;
    }

    goto LABEL_24;
  }

  if (NSDictionary != a1)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v23 = &__NSDictionary0__struct;
LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (NSDictionary)dictionaryWithObjects:(NSArray *)objects forKeys:(NSArray *)keys
{
  v4 = [[a1 alloc] initWithObjects:objects forKeys:keys];

  return v4;
}

+ (id)newDictionaryWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a5)
  {
    goto LABEL_33;
  }

  if (a5 >> 61)
  {
    v17 = _os_log_pack_size();
    v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "+[NSDictionary newDictionaryWithObjects:forKeys:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = a5;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSDictionary newDictionaryWithObjects:forKeys:count:]", a5);
    goto LABEL_30;
  }

  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      if (!a3[i])
      {
        goto LABEL_29;
      }
    }

    if (a4)
    {
      i = 0;
      while (a4[i])
      {
        if (a5 == ++i)
        {
          goto LABEL_12;
        }
      }

LABEL_29:
      v16 = i;
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      *v19 = 136315394;
      *(v19 + 4) = "+[NSDictionary newDictionaryWithObjects:forKeys:count:]";
      *(v19 + 12) = 2048;
      *(v19 + 14) = v16;
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSDictionary newDictionaryWithObjects:forKeys:count:]", v16);
LABEL_30:
      v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v17];
      objc_exception_throw(v21);
    }

LABEL_33:
    v17 = _os_log_pack_size();
    v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = _os_log_pack_fill();
    *v25 = 136315394;
    *(v25 + 4) = "+[NSDictionary newDictionaryWithObjects:forKeys:count:]";
    *(v25 + 12) = 2048;
    *(v25 + 14) = a5;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSDictionary newDictionaryWithObjects:forKeys:count:]", a5);
    goto LABEL_30;
  }

LABEL_12:
  if (NSDictionary == a1)
  {
    if (a5 == 1)
    {
      v11 = *a4;
      v12 = *a3;
      v13 = *MEMORY[0x1E69E9840];

      return __NSSingleEntryDictionaryI_new(v11, v12, 4);
    }

    else if (a5)
    {
      v14 = *MEMORY[0x1E69E9840];

      return __NSDictionaryI_new(a4, a3, 0, a5, 5);
    }

    else
    {
      v10 = *MEMORY[0x1E69E9840];

      return &__NSDictionary0__struct;
    }
  }

  else
  {
    if (NSMutableDictionary != a1)
    {
      v15 = __CFLookUpClass("NSDictionary");
      __CFRequireConcreteImplementation(v15, a1, a2);
    }

    v8 = *MEMORY[0x1E69E9840];

    return __NSDictionaryM_new(a4, a3, a5, 3uLL);
  }
}

+ (NSDictionary)dictionaryWithDictionary:(NSDictionary *)dict
{
  v3 = [[a1 alloc] initWithDictionary:dict copyItems:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  ShouldCopy = __NSCollectionsShouldCopy();
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v7 = [NSDictionary allocWithZone:a3];

  return [(NSDictionary *)v7 initWithDictionary:self copyItems:ShouldCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)NSMutableDictionary allocWithZone:a3];

  return [(NSDictionary *)v6 initWithDictionary:self copyItems:0];
}

+ (id)sharedKeySetForKeys:(NSArray *)keys
{
  if (!keys)
  {
    v9 = __CFExceptionProem(a1, a2);
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys cannot be nil", v9);
    goto LABEL_8;
  }

  if ((_NSIsNSArray(keys) & 1) == 0)
  {
    v10 = __CFExceptionProem(a1, a2);
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys must be a kind of NSArray", v10);
LABEL_8:
    v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
    objc_exception_throw(v8);
  }

  return [NSSharedKeySet keySetWithKeys:keys];
}

- (NSUInteger)count
{
  OUTLINED_FUNCTION_0_12();
  v2 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v2);
}

- (id)objectForKey:(id)aKey
{
  OUTLINED_FUNCTION_0_12();
  v3 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v3);
}

- (NSEnumerator)keyEnumerator
{
  OUTLINED_FUNCTION_0_12();
  v2 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v2);
}

- (NSDictionary)initWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt
{
  OUTLINED_FUNCTION_0_12();
  v5 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v5);
}

@end