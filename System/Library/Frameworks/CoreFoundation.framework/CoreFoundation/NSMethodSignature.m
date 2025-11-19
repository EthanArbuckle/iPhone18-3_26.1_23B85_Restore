@interface NSMethodSignature
+ (NSMethodSignature)signatureWithObjCTypes:(const char *)types;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (Class)_classForObjectAtArgumentIndex:(int64_t)a3;
- (NSMethodFrameArgInfo)_argInfo:(int64_t)a3;
- (NSUInteger)methodReturnLength;
- (const)_cTypeString;
- (const)getArgumentTypeAtIndex:(NSUInteger)idx;
- (const)methodReturnType;
- (id)_initWithROMEntry:(const CFMethodSignatureROMEntry *)a3;
- (id)_protocolsForObjectAtArgumentIndex:(int64_t)a3;
- (id)_signatureForBlockAtArgumentIndex:(int64_t)a3;
- (id)_typeString;
- (id)debugDescription;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation NSMethodSignature

- (const)_cTypeString
{
  if ((self & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ self;
  v5 = v4 & 7;
  do
  {
    if (v5 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  if ((~v2 & 7) == 0 && ((v2 | v4) & 0x7F80000000000000) == 0x600000000000000)
  {
    v6 = v5 == 7;
    v7 = 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFLL;
    }

    p_typeString = (__CFGetSignatureROMEntryAtIndex(v7 & (v4 >> 3)) + 1);
  }

  else
  {
LABEL_12:
    p_typeString = &self->_typeString;
  }

  return *p_typeString;
}

- (const)methodReturnType
{
  v2 = [(NSMethodSignature *)self _argInfo:-1];
  if ((*(v2 + 17) & 0x80) != 0)
  {
    v2 = v2->var0;
  }

  return v2->var25;
}

- (NSUInteger)methodReturnLength
{
  v2 = [(NSMethodSignature *)self _argInfo:-1];
  if ((*(v2 + 17) & 0x80) != 0)
  {
    v2 = v2->var0;
  }

  return v2->var2;
}

- (id)_typeString
{
  v14[1] = *MEMORY[0x1E69E9840];
  FrameDescriptor = _getFrameDescriptor(self);
  v3 = *FrameDescriptor;
  if ((*(*FrameDescriptor + 34) & 0x80) != 0)
  {
    v3 = *v3;
  }

  v4 = strlen(v3 + 37);
  for (i = *(FrameDescriptor + 8); i; i = *(i + 1))
  {
    v6 = i;
    if ((*(i + 17) & 0x80) != 0)
    {
      v6 = *i;
    }

    v4 += strlen(v6 + 37);
  }

  v7 = v4 + 1;
  if (v7 < 0x401)
  {
    if (v7)
    {
      v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v8, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  }

  strlcpy(v8, v3 + 37, v7);
  while (1)
  {
    FrameDescriptor = *(FrameDescriptor + 8);
    if (!FrameDescriptor)
    {
      break;
    }

    v9 = FrameDescriptor;
    if ((*(FrameDescriptor + 34) & 0x80) != 0)
    {
      v9 = *FrameDescriptor;
    }

    strlcat(v8, (v9 + 37), v7);
  }

  v10 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v8, 0x8000100u);
  v11 = _CFAutoreleasePoolAddObject(0, v10);
  if (v7 >= 0x401)
  {
    free(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)initialize
{
  if (NSMethodSignature == a1 && *MEMORY[0x1E69E5908] != 0)
  {
    _objc_registerTaggedPointerClass();
  }
}

+ (NSMethodSignature)signatureWithObjCTypes:(const char *)types
{
  v55 = *MEMORY[0x1E69E9840];
  if (!types || (v5 = strlen(types)) == 0)
  {
    Value = 0;
    goto LABEL_7;
  }

  v6 = __CFSearchSignatureROM(types, v5);
  if (v6 != -1)
  {
    Value = (8 * (v6 & 0xFFFFFFFFFFFFFLL)) | 0x8600000000000007;
    v8 = *MEMORY[0x1E69E5910] ^ Value;
    if ((~v8 & 0xC000000000000007) != 0)
    {
      Value = v8 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v8 & 7));
    }

    goto LABEL_7;
  }

  if (!signatureWithObjCTypes__cache)
  {
    *keyCallBacks = xmmword_1EF067840;
    *&keyCallBacks[16] = *&off_1EF067850;
    *&keyCallBacks[32] = xmmword_1EF067860;
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, keyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = 0;
    atomic_compare_exchange_strong(&signatureWithObjCTypes__cache, &v12, Mutable);
    if (v12)
    {
      CFRelease(Mutable);
    }
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(signatureWithObjCTypes__cache, types);
  os_unfair_lock_unlock(&signatureWithObjCTypes__lock);
  if (!Value)
  {
    if (_os_feature_enabled_impl())
    {
      v13 = _CFMethodSignatureROMLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *keyCallBacks = 136315138;
        *&keyCallBacks[4] = types;
        _os_log_impl(&dword_1830E6000, v13, OS_LOG_TYPE_DEFAULT, "MISS: %s", keyCallBacks, 0xCu);
      }
    }

    v37 = types;
    v54 = 0;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    memset(&keyCallBacks[24], 0, 32);
    v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
    v15 = parseFrameArgumentInfo(&v37, 0, 0, 0);
    v16 = v15;
    *v14 = v15;
    if (!v15)
    {
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%s'", types);
      v36 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35), 0];
      objc_exception_throw(v36);
    }

    *keyCallBacks = xmmword_1834466E0;
    *&keyCallBacks[16] = 224;
    v17 = *(v15 + 36);
    if (v17 <= 0x62)
    {
      v18 = v17 - 35;
      if (v18 > 0x3B)
      {
LABEL_25:
        if (*v37)
        {
          v21 = 0;
          do
          {
            v40 = parseFrameArgumentInfo(&v37, 0, 0, 0);
            if (!v40)
            {
              break;
            }

            ++v14[4];
            v14[5] = computeReturnFrameExtent(&v40, keyCallBacks);
            v22 = v40;
            if (!*(v14 + 1))
            {
              *(v14 + 1) = v40;
            }

            if (v21)
            {
              v21[1] = v22;
            }

            v21 = v22;
          }

          while (*v37);
        }

        v23 = [a1 alloc];
        v23[1] = v14;
        is_memory_immutable = _dyld_is_memory_immutable();
        v25 = types;
        if ((is_memory_immutable & 1) == 0)
        {
          v25 = strdup(types);
        }

        v23[2] = v25;
        v26 = v14[4];
        if (v26)
        {
          v27 = *(*(v14 + 1) + 8);
          if (v26 == 1 || *(v27 + 36) != 58)
          {
            v28 = 1;
          }

          else
          {
            v27 = *(v27 + 8);
            v28 = 2;
          }

          v29 = v26 >= v28;
          v30 = v26 - v28;
          if (v30 != 0 && v29)
          {
            while ((*(v27 + 34) & 0x2000) != 0)
            {
              v27 = *(v27 + 8);
              if (!--v30)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            v23[3] |= 2uLL;
          }
        }

        os_unfair_lock_lock_with_options();
        Value = CFDictionaryGetValue(signatureWithObjCTypes__cache, types);
        if (!Value)
        {
          CFDictionarySetValue(signatureWithObjCTypes__cache, types, v23);
          Value = v23;
        }

        os_unfair_lock_unlock(&signatureWithObjCTypes__lock);

        goto LABEL_7;
      }

      if (((1 << v18) & 0x8034241A0800081) == 0)
      {
        if (v18 != 33)
        {
          if (v18 == 56)
          {
            v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported return type encoding spec '%s'", v15 + 37);
            v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19), 0];
            objc_exception_throw(v20);
          }

          goto LABEL_25;
        }

        goto LABEL_55;
      }

LABEL_24:
      v15[3] = 8;
      *(v15 + 32) = 0;
      *(v15 + 33) = *(v15 + 16) - 8;
      goto LABEL_25;
    }

    if (v17 - 102 <= 0x15)
    {
      if (((1 << (v17 - 102)) & 0x6848) != 0)
      {
        goto LABEL_24;
      }

      if (v17 == 102)
      {
        v15[3] = 0x5000000010;
        v31 = -3072;
        goto LABEL_57;
      }

      if (v17 == 123)
      {
        v40 = 0;
        v39 = 0;
        if (__NSMFAIsHFA_arm64(v15, &v39, &v40))
        {
          v38 = 0;
          __NSMFASetRegisterOffsetsForHFA_arm64(v16, 80, &v38);
        }

        else if (*(v16 + 16) < 0x11u)
        {
          copyMemStateToFrameState(v16);
        }

        else
        {
          v32 = strlen((v16 + 37));
          v33 = malloc_type_calloc(1uLL, v32 + 42, 0x1020040C2EE21EDuLL);
          *v33 = v16;
          v33[1] = xmmword_1834466F0;
          *(v33 + 17) |= 0x1082u;
          *(v33 + 18) = 24158;
          v34 = strlen((v16 + 37));
          memmove(v33 + 38, (v16 + 37), v34 + 1);
          copyMemStateToFrameState(*v16);
          *v14 = v33;
        }

        goto LABEL_25;
      }
    }

    if (v17 == 100)
    {
LABEL_55:
      v15[3] = 0x5000000010;
      v31 = -2048;
LABEL_57:
      *(v15 + 16) = v31;
      goto LABEL_25;
    }

    if (v17 != 99)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
  return Value;
}

- (id)_initWithROMEntry:(const CFMethodSignatureROMEntry *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSMethodSignature;
  result = [(NSMethodSignature *)&v7 init];
  if (result)
  {
    *(result + 1) = a3->var0;
    var2 = a3->var2;
    *(result + 2) = a3->var1;
    *(result + 3) = var2;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if ((self->_flags & 4) == 0)
  {
    frameDescriptor = self->_frameDescriptor;
    if (frameDescriptor)
    {
      __NSMethodFrameArgInfoDestroy(&frameDescriptor->var0->var0);
      __NSMethodFrameArgInfoDestroy(&self->_frameDescriptor->var1->var0);
      free(self->_frameDescriptor);
    }

    if (self->_typeString)
    {
      v4 = strlen(self->_typeString);
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        free(self->_typeString);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = NSMethodSignature;
  [(NSMethodSignature *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSMethodFrameArgInfo)_argInfo:(int64_t)a3
{
  result = _getFrameDescriptor(self);
  if (a3 == -1)
  {
    return result->var0;
  }

  v5 = a3 + 1;
  do
  {
    result = result->var1;
    --v5;
  }

  while (v5 > 0);
  return result;
}

- (id)_signatureForBlockAtArgumentIndex:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  result = [(NSMethodSignature *)self _argInfo:a3];
  if (result)
  {
    if ((~*(result + 17) & 0xA000) != 0 || !*result)
    {
      result = 0;
    }

    else
    {
      v4 = strnlen(result + 37, 0x400uLL);
      result = 0;
      if (v4 >= 7 && v4 != 1024)
      {
        v5 = v4 - 4;
        __strncpy_chk();
        v7[v5] = 0;
        result = [NSMethodSignature signatureWithObjCTypes:v7];
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (Class)_classForObjectAtArgumentIndex:(int64_t)a3
{
  if (a3 < -1 || (a3 & 0x8000000000000000) == 0 && [(NSMethodSignature *)self numberOfArguments]<= a3)
  {
    return 0;
  }

  v5 = [(NSMethodSignature *)self _argInfo:a3];
  if (!v5)
  {
    return 0;
  }

  if ((*(v5 + 17) & 0x2000) == 0)
  {
    return 0;
  }

  var0 = v5->var0;
  if (!v5->var0 || (*(var0 + 17) & 0x2000) == 0)
  {
    return 0;
  }

  return objc_getClass(var0->var25);
}

- (id)_protocolsForObjectAtArgumentIndex:(int64_t)a3
{
  if (a3 < -1)
  {
    return 0;
  }

  v13 = v4;
  v14 = v3;
  if ((a3 & 0x8000000000000000) == 0 && [(NSMethodSignature *)self numberOfArguments]<= a3)
  {
    return 0;
  }

  result = [(NSMethodSignature *)self _argInfo:a3, v13, v14, v5, v6];
  if (!result)
  {
    return result;
  }

  if ((*(result + 17) & 0x2000) == 0)
  {
    return 0;
  }

  v10 = *result;
  if (!*result)
  {
    return 0;
  }

  if ((*(v10 + 34) & 0x2000) != 0)
  {
    v10 = *(v10 + 8);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = +[(NSArray *)NSMutableArray];
  do
  {
    Protocol = objc_getProtocol((v10 + 37));
    if (Protocol)
    {
      [(NSArray *)v11 addObject:Protocol];
    }

    v10 = *(v10 + 8);
  }

  while (v10);
  if ([(NSArray *)v11 count])
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (const)getArgumentTypeAtIndex:(NSUInteger)idx
{
  FrameDescriptor = _getFrameDescriptor(self);
  if (*(FrameDescriptor + 16) <= idx)
  {
    v9 = FrameDescriptor;
    v10 = __CFExceptionProem(self, a2);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index (%lu) out of bounds [0, %ld]", v10, idx, *(v9 + 16) - 1);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
    objc_exception_throw(v12);
  }

  v7 = [(NSMethodSignature *)self _argInfo:idx];
  if ((*(v7 + 17) & 0x80) != 0)
  {
    v7 = v7->var0;
  }

  return v7->var25;
}

- (unint64_t)hash
{
  FrameDescriptor = _getFrameDescriptor(self);
  v3 = __NSMS5(*FrameDescriptor);
  return &v3[__NSMS5(FrameDescriptor[1])];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v7) = 1;
  }

  else if (a3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    FrameDescriptor = _getFrameDescriptor(self);
    v6 = _getFrameDescriptor(a3);
    v7 = __NSMS6(*FrameDescriptor, *v6);
    if (v7)
    {
      v8 = FrameDescriptor[1];
      v9 = v6[1];

      LOBYTE(v7) = __NSMS6(v8, v9);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v13 = *MEMORY[0x1E69E9840];
  FrameDescriptor = _getFrameDescriptor(self);
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v12.receiver = self;
  v12.super_class = NSMethodSignature;
  v5 = [&v12 description];
  if ((*(*FrameDescriptor + 34) & 0x40) != 0)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [(__CFString *)Mutable appendFormat:@"%@\n    number of arguments = %d\n    frame size = %d\n    is special struct return? %s\n", v5, *(FrameDescriptor + 16), *(FrameDescriptor + 20), v6];
  [(__CFString *)Mutable appendFormat:@"    return value: -------- -------- -------- --------\n"];
  v7 = *FrameDescriptor;
  if ((*(*FrameDescriptor + 34) & 0x80) != 0)
  {
    v7 = *v7;
  }

  __NSMS7(Mutable, v7, 2);
  v8 = *(FrameDescriptor + 8);
  if (v8)
  {
    v9 = 0;
    do
    {
      [(__CFString *)Mutable appendFormat:@"    argument %ld: -------- -------- -------- --------\n", v9];
      __NSMS7(Mutable, v8, 2);
      ++v9;
      v8 = v8[1];
    }

    while (v8);
  }

  result = Mutable;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end