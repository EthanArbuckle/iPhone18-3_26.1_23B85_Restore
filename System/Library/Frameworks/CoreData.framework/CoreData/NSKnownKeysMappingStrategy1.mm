@interface NSKnownKeysMappingStrategy1
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CFMutableArrayRef)_makeBranchTableForKeys:(const void *)keys count:(unint64_t)count;
- (NSKnownKeysMappingStrategy1)initWithCoder:(id)coder;
- (id)allKeys;
- (id)description;
- (id)initForKeys:(id *)keys count:(unint64_t)count;
- (id)initForKeys:(id)keys;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (unint64_t)length;
- (void)_coreCreationForKeys:(unint64_t)keys count:;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSKnownKeysMappingStrategy1

- (unint64_t)length
{
  result = self->_length;
  if (result > 0x8000)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal length\n", buf, 2u);
    }

    v5 = _PFLogGetLogStream(17);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Illegal length", v6, 2u);
    }

    if (byte_1ED4BEECE)
    {
      __break(1u);
    }

    else
    {
      return self->_length;
    }
  }

  return result;
}

- (void)dealloc
{
  if (self)
  {
    table = self->_table;
    if (table)
    {
      v4 = *table;
      if (*table)
      {
        v5 = table + 1;
        do
        {
          v6 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v6 = malloc_default_zone();
            v4 = *(v5 - 1);
          }

          malloc_zone_free(v6, v4);
          v7 = *v5++;
          v4 = v7;
        }

        while (v7);
      }

      v8 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v8 = malloc_default_zone();
      }

      malloc_zone_free(v8, self->_table);
    }

    self->_table = 0;
    keys = self->_keys;
    if (keys)
    {
      length = self->_length;
      if (length > 0x8000)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal length in dealloc\n", buf, 2u);
        }

        v12 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v14[0] = 0;
          _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal length in dealloc", v14, 2u);
        }

        if (byte_1ED4BEECE)
        {
          __break(1u);
          return;
        }

        length = self->_length;
        keys = self->_keys;
      }

      if (length)
      {
        do
        {
          v13 = *keys++;

          --length;
        }

        while (length);
        keys = self->_keys;
      }

      PF_FREE_OBJECT_ARRAY(keys);
    }

    self->_keys = 0;
    self->_length = 0xFFFFFFFFLL;
    _PFDeallocateObject(self);
  }
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    objc_opt_self();

    objc_opt_class();
  }
}

- (CFMutableArrayRef)_makeBranchTableForKeys:(const void *)keys count:(unint64_t)count
{
  v32 = *MEMORY[0x1E69E9840];
  memset(&valueCallBacks, 0, sizeof(valueCallBacks));
  valueCallBacks.release = *(MEMORY[0x1E695E9E8] + 16);
  if (count)
  {
    countCopy = count;
    if (count >= 0x201)
    {
      countCopy2 = 1;
    }

    else
    {
      countCopy2 = count;
    }

    v5 = (8 * countCopy2 + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = (&v28 - v5);
    v7 = 8 * count;
    if (countCopy > 0x200)
    {
      v6 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v28 - v5, v7);
    }

    v11 = 0;
    v12 = xmmword_18592E480;
    v13 = vdupq_n_s64(countCopy - 1);
    v14 = vdupq_n_s64(2uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, v12));
      if (v15.i8[0])
      {
        v6[v11] = v11;
      }

      if (v15.i8[4])
      {
        v6[v11 + 1] = (v11 + 1);
      }

      v11 += 2;
      v12 = vaddq_s64(v12, v14);
    }

    while (((countCopy + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
    v16 = *MEMORY[0x1E695E480];
    v17 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v6, countCopy, 0, 0);
    if (countCopy >= 0x201)
    {
      NSZoneFree(0, v6);
    }

    v18 = CFDictionaryCreateMutable(v16, 0, 0, &valueCallBacks);
    do
    {
      v19 = *keys;
      v20 = strlen(*keys);
      Value = CFDictionaryGetValue(v18, v20);
      if (!Value)
      {
        Value = CFArrayCreateMutable(v16, 0, 0);
        CFDictionarySetValue(v18, v20, Value);
      }

      CFArrayAppendValue(Value, v19);
      ++keys;
      --countCopy;
    }

    while (countCopy);
    Count = CFDictionaryGetCount(v18);
    v23 = Count;
    if (Count <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = Count;
    }

    if (Count >= 0x201)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v26 = (&v28 - ((8 * v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (Count > 0x200)
    {
      v26 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v28 - ((8 * v25 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v24);
    }

    CFDictionaryGetKeysAndValues(v18, 0, v26);
    v31 = xmmword_1EF3F0BB8;
    CFMergeSortArray();
    Mutable = CFArrayCreateMutable(v16, 0, 0);
    makeBranchRow(&Mutable, v26, v23, v17, 0, 0, 0, 0);
    CFRelease(v17);
    if (v23 >= 0x201)
    {
      NSZoneFree(0, v26);
    }

    CFRelease(v18);
    result = Mutable;
    v27 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    v9 = *MEMORY[0x1E695E480];

    return CFArrayCreateMutable(v9, 0, 0);
  }

  return result;
}

- (void)_coreCreationForKeys:(unint64_t)keys count:
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_18;
  }

  if (keys > 0x8000)
  {
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    keys = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ supports a maximum of 32, 768 elements.  parameter was %lu", objc_opt_class(), keys];
    v23 = v25;
    v24 = v26;
LABEL_20:
    objc_exception_throw([v23 exceptionWithName:v24 reason:keys userInfo:0]);
  }

  MEMORY[0x1EEE9AC00](self);
  v8 = (v27 - v7);
  if (keys >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v27 - v7, 8 * v6);
    if (!keys)
    {
      v9 = 1;
      goto LABEL_11;
    }
  }

  v10 = 0;
  do
  {
    v11 = *(a2 + 8 * v10);
    v12 = v11;
    uTF8String = [v11 UTF8String];
    if (!uTF8String)
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      keys = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be encoded as UTF-8", v11];
      v23 = v20;
      v24 = v21;
      goto LABEL_20;
    }

    v8[v10++] = uTF8String;
  }

  while (keys != v10);
  v9 = 0;
LABEL_11:
  self[4] = 0;
  v14 = [NSKnownKeysMappingStrategy1 _makeBranchTableForKeys:v8 count:keys];
  Count = CFArrayGetCount(v14);
  v16 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v16 = malloc_default_zone();
  }

  v17 = malloc_type_zone_calloc(v16, Count + 1, 8uLL, 0x80040B8603338uLL);
  self[2] = v17;
  v28.location = 0;
  v28.length = Count;
  CFArrayGetValues(v14, v28, v17);
  CFRelease(v14);
  *(self[2] + 8 * Count) = 0;
  self[3] = keys;
  self[5] = PF_ALLOCATE_OBJECT_ARRAY(keys);
  if ((v9 & 1) == 0)
  {
    v18 = 0;
    do
    {
      *(self[5] + 8 * v18) = *(a2 + 8 * v18);
      ++v18;
    }

    while (keys != v18);
  }

  if (keys >= 0x201)
  {
    NSZoneFree(0, v8);
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}

- (id)initForKeys:(id *)keys count:(unint64_t)count
{
  v9.receiver = self;
  v9.super_class = NSKnownKeysMappingStrategy1;
  v6 = [(NSKnownKeysMappingStrategy1 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(NSKnownKeysMappingStrategy1 *)v6 _coreCreationForKeys:keys count:count];
  }

  return v7;
}

- (id)initForKeys:(id)keys
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [keys count];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  if (v6 > 0x200)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v13 - v8, 8 * v7);
  }

  [keys getObjects:v9 range:{0, v5}];
  v10 = [(NSKnownKeysMappingStrategy1 *)self initForKeys:v9 count:v5];
  if (v5 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)allKeys
{
  v2 = MEMORY[0x1E695DEC8];
  keys = self->_keys;
  v4 = [(NSKnownKeysMappingStrategy1 *)self length];

  return [v2 arrayWithObjects:keys count:v4];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v9) = 1;
  }

  else if (equal && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = -[NSKnownKeysMappingStrategy1 length](self, "length"), v5 == [equal length]))
  {
    length = self->_length;
    if (length)
    {
      v7 = 0;
      while (1)
      {
        v8 = self->_keys[v7];
        if (v8 != *(*(equal + 5) + 8 * v7))
        {
          v9 = [v8 isEqual:?];
          if (!v9)
          {
            break;
          }
        }

        if (length == ++v7)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSKnownKeysMappingStrategy1 *)self length];
  if (v3)
  {
    return v3 & 0x7F | ([*self->_keys hash] << 7);
  }

  return v3;
}

- (NSKnownKeysMappingStrategy1)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  self->_length = 0xFFFFFFFFLL;
  v5 = [coder decodeInt64ForKey:@"length"];
  objc_getClass("NSKeyedUnarchiver");
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = 0;
  if (isKindOfClass)
  {
    coderCopy = coder;
  }

  else
  {
    coderCopy = 0;
  }

  if (isKindOfClass)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    if (!v9)
    {
      [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF434F40)}];

LABEL_31:
      selfCopy = 0;
      goto LABEL_32;
    }

    v7 = v9;
    [coder replaceObject:self withObject:v9];
  }

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"keys"}];
  v13 = v12;
  if (v12)
  {
    if (([v12 isNSArray] & 1) == 0)
    {
      [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF434F68)}];

      selfCopy = 0;
      goto LABEL_32;
    }
  }

  else
  {
    if ([coder error])
    {
      [coder failWithError:{objc_msgSend(coder, "error")}];

      selfCopy = 0;
      goto LABEL_32;
    }

    v13 = 0;
  }

  selfCopy = self;
  if (v7)
  {
    [coderCopy replaceObject:v7 withObject:self];
  }

  v15 = [v13 count];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  v17 = v16;
  if (v16)
  {
    v18 = *v26;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v13);
        }

        if (([*(*(&v25 + 1) + 8 * v19) isNSString] & 1) == 0)
        {
          [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434F90)}];

          goto LABEL_31;
        }

        ++v19;
      }

      while (v17 != v19);
      v16 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v17 = v16;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (v5 > 0x8000 || v5 != v15)
  {
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF434FB8)}];

    goto LABEL_31;
  }

  MEMORY[0x1EEE9AC00](v16);
  v22 = &v25 - v21;
  if (v5 > 0x200)
  {
    v22 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v25 - v21, 8 * v20);
  }

  [v13 getObjects:v22 range:{0, v5}];
  [(NSKnownKeysMappingStrategy1 *)selfCopy _coreCreationForKeys:v22 count:v5];
  if (v5 >= 0x201)
  {
    NSZoneFree(0, v22);
  }

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:1 forKey:@"version"];
  [coder encodeInt64:self->_length forKey:@"length"];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:self->_keys count:self->_length];
  [coder encodeObject:v5 forKey:@"keys"];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!state->var0)
  {
    state->var2 = &self->_length;
  }

  state->var1 = objects;
  v9 = [(NSKnownKeysMappingStrategy1 *)self length];
  result = 0;
  var0 = state->var0;
  if (count && var0 < v9)
  {
    result = 0;
    do
    {
      objects[result] = *(&self->_keys[var0] + result);
    }

    while (++result + var0 < v9 && result < count);
    var0 += result;
  }

  state->var0 = var0;
  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSKnownKeysMappingStrategy1 *)self length];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:self->_keys count:v4];
  table = self->_table;
  if (v4 < 0x401)
  {
    if (table)
    {
      if (*table)
      {
        v9 = 0;
          ;
        }

        v11 = [MEMORY[0x1E696AD60] stringWithFormat:@"mapping table %p has %d branch rows:", self->_table, v9];
        v12 = *table;
        if (*table)
        {
          v13 = 0;
          do
          {
            [(__CFString *)v11 appendFormat:@"\n\t %@", descriptionForBranchRow(v12, v13)];
            v12 = table[++v13];
          }

          while (v12);
        }
      }

      else
      {
        v11 = @"mapping table has 0 branch rows";
      }
    }

    else
    {
      v11 = @"mapping table pointer is NULL";
    }
  }

  else
  {
    if (table)
    {
      v7 = *table;
      if (*table)
      {
        v7 = 0;
          ;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mapping table %p has %d branch rows: (...)", self->_table, v7];
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = [v14 stringWithFormat:@"%@ (%p) table of length %d with known keys:%@ and %@", NSStringFromClass(v15), self, v4, v5, v11];

  objc_autoreleasePoolPop(v3);

  return v16;
}

@end