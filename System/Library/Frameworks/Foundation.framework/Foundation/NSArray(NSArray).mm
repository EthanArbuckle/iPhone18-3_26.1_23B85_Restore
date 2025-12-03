@interface NSArray(NSArray)
+ (id)arrayWithContentsOfFile:()NSArray;
+ (id)arrayWithContentsOfURL:()NSArray;
+ (id)arrayWithContentsOfURL:()NSArray error:;
+ (id)newWithContentsOf:()NSArray immutable:;
+ (id)newWithContentsOf:()NSArray immutable:error:;
- (id)debugDescription;
- (id)initWithContentsOfURL:()NSArray error:;
- (uint64_t)_stringToWrite;
- (uint64_t)encodeWithCoder:()NSArray;
- (uint64_t)initWithCoder:()NSArray;
- (uint64_t)initWithContentsOfFile:()NSArray;
- (uint64_t)initWithContentsOfURL:()NSArray;
- (uint64_t)sortedArrayHint;
- (uint64_t)sortedArrayUsingFunction:()NSArray context:hint:;
- (uint64_t)sortedArrayUsingSelector:()NSArray hint:;
- (uint64_t)writeToFile:()NSArray atomically:;
- (uint64_t)writeToURL:()NSArray atomically:;
- (uint64_t)writeToURL:()NSArray error:;
@end

@implementation NSArray(NSArray)

- (id)debugDescription
{
  v16 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v1, *MEMORY[0x1E695E0C8]);
  }

  v3 = [objc_allocWithZone(NSMutableString) init];
  objc_msgSend(v3, "appendFormat:", @"<%@ %p>(\n"), objc_opt_class(), self;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(self);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (v6)
        {
          [v3 appendString:{@", \n"}];
        }

        [v3 appendString:{objc_msgSend(v9, "debugDescription")}];
        ++v8;
        v6 = 1;
      }

      while (v5 != v8);
      v5 = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  [v3 appendString:@"\n\n"]);
  return v3;
}

- (uint64_t)encodeWithCoder:()NSArray
{
  v31 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v3, *MEMORY[0x1E695E0C8]);
  }

  if ([a3 allowsKeyedCoding])
  {
    Class = object_getClass(a3);
    if (Class == NSKeyedArchiver)
    {
      return [a3 _encodeArrayOfObjects:self forKey:@"NS.objects"];
    }

    v8 = Class;
    if (Class == NSXPCEncoder)
    {
      return [a3 _encodeArrayOfObjects:self forKey:@"NS.objects"];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__NSArray_NSArray__encodeWithCoder___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = sel_encodeObject_forKey_;
    if (qword_1ED43F550 != -1)
    {
      dispatch_once(&qword_1ED43F550, block);
    }

    MethodImplementation = class_getMethodImplementation(v8, sel_encodeObject_forKey_);
    if (MethodImplementation == _MergedGlobals_91 || MethodImplementation == qword_1ED43F548)
    {
      return [a3 _encodeArrayOfObjects:self forKey:@"NS.objects"];
    }

    else
    {
LABEL_12:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      result = [self countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (result)
      {
        v11 = result;
        v12 = 0;
        v13 = *v23;
        do
        {
          v14 = 0;
          do
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(self);
            }

            [a3 encodeObject:*(*(&v22 + 1) + 8 * v14++) forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.object.%ld", v12++)}];
          }

          while (v11 != v14);
          result = [self countByEnumeratingWithState:&v22 objects:v21 count:16];
          v11 = result;
        }

        while (result);
      }
    }
  }

  else
  {
    v15 = [self count];
    if (v15 >> 29)
    {
      return [a3 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: array count (%lu) makes array too large to fit in non-keyed archive", _NSMethodExceptionProem(self, a2), v15}];
    }

    else
    {
      v20 = v15;
      [a3 encodeValueOfObjCType:"i" at:&v20];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      result = [self countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (result)
      {
        v16 = result;
        v17 = *v28;
        do
        {
          v18 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(self);
            }

            [a3 encodeBycopyObject:*(*(&v27 + 1) + 8 * v18++)];
          }

          while (v16 != v18);
          result = [self countByEnumeratingWithState:&v27 objects:v26 count:16];
          v16 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (uint64_t)initWithCoder:()NSArray
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v27 = 0;
    v8 = [a3 decodeValueOfObjCType:"i" at:&v27 size:4];
    v9 = v27;
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v26 - v11;
    v26[1] = 0;
    if (v9 >= 0x101)
    {
      v13 = _CFCreateArrayStorage();
      v12 = v13;
    }

    else
    {
      v13 = 0;
      if (!v9)
      {
LABEL_15:
        v16 = [self initWithObjects:v12 count:{v9, v10}];
        for (i = 8 * v9; i; i -= 8)
        {
          v18 = *&v12[i - 8];
        }

        free(v13);
        return v16;
      }
    }

    v14 = v12;
    v15 = v9;
    do
    {
      [a3 decodeValueOfObjCType:"@" at:v14 size:{8, v10}];
      v14 += 8;
      --v15;
    }

    while (v15);
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass()) && [a3 containsValueForKey:@"NS.objects"])
  {
    v6 = [a3 _decodeArrayOfObjectsForKey:@"NS.objects"];
    if (v6)
    {

      return [self initWithArray:v6];
    }

    self = 0;
  }

  v19 = NSAllocateObjectArray(0x80uLL);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = 0;
  v22 = 128;
  while (1)
  {
    if (v22 > v21)
    {
      goto LABEL_25;
    }

    v22 *= 2;
    v23 = NSReallocateObjectArray(v20, v22);
    if (!v23)
    {
      break;
    }

    v20 = v23;
LABEL_25:
    v24 = [NSString stringWithFormat:@"NS.object.%ld", v21];
    if (![a3 containsValueForKey:v24])
    {
      v16 = [self initWithObjects:v20 count:v21];
      goto LABEL_32;
    }

    v25 = [a3 decodeObjectForKey:v24];
    *&v20[8 * v21] = v25;
    if (!v25)
    {
      goto LABEL_31;
    }

    ++v21;
  }

  v28 = @"NSLocalizedDescription";
  v29[0] = [NSString stringWithFormat:@"%@: array is too large to unarchive (%qd)", _NSMethodExceptionProem(self, a2), v22];
  [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1))}];
LABEL_31:
  v16 = 0;
LABEL_32:
  free(v20);
  return v16;
}

- (uint64_t)sortedArrayHint
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 4 * [self count];
  v3 = malloc_type_malloc(v2, 0x100004077774924uLL);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [self countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = v3;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(self);
        }

        *v7++ = [*(*(&v11 + 1) + 8 * v8++) hash];
      }

      while (v5 != v8);
      v5 = [self countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v3 length:v2 freeWhenDone:1];
}

- (uint64_t)sortedArrayUsingFunction:()NSArray context:hint:
{
  if (!a3)
  {
    v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: compare function pointer is NULL", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v37);
  }

  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v5, *MEMORY[0x1E695E0C8]);
  }

  v8 = [a5 length];
  v9 = v8 >> 2;
  v10 = [(objc_class *)self count];
  v11 = NSAllocateObjectArray(2 * v10 + (v8 >> 2));
  bzero(v11, v8 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = &v11[8 * (v8 >> 2)];
  [(objc_class *)self getObjects:v12 range:0, v10];
  v13 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v14 = malloc_type_calloc(v13, 0x10uLL, 0x100004000313F17uLL);
  bytes = [a5 bytes];
  if (v8 >= 4)
  {
    v16 = 0;
    do
    {
      v18 = *bytes++;
      v17 = v18;
      v19 = -8;
      v20 = v18;
      while (1)
      {
        v21 = v20 % v13;
        if (!v14[2 * v21])
        {
          break;
        }

        v20 = v21 + 5;
        v22 = __CFADD__(v19++, 1);
        if (v22)
        {
          ++v16;
          goto LABEL_12;
        }
      }

      v23 = &v14[2 * v21];
      *v23 = ++v16;
      v23[1] = v17;
LABEL_12:
      ;
    }

    while (v16 != v9);
  }

  if (v10)
  {
    v24 = 0;
    v25 = v11 - 8;
    do
    {
      v26 = *&v12[8 * v24];
      v27 = [v26 hash];
      v28 = -8;
      v29 = v27;
      while (1)
      {
        v30 = v29 % v13;
        v31 = v14[2 * (v29 % v13)];
        if (v31)
        {
          if (v14[2 * v30 + 1] == v27)
          {
            break;
          }
        }

        v29 = v30 + 5;
        v22 = __CFADD__(v28++, 1);
        if (v22)
        {
          goto LABEL_23;
        }
      }

      if (!*&v25[8 * v31])
      {
        *&v25[8 * v31] = v26;
        *&v12[8 * v24] = 0;
      }

LABEL_23:
      ++v24;
    }

    while (v24 != v10);
  }

  free(v14);
  v32 = v9 + v10;
  if (v9 + v10)
  {
    v33 = 0;
    v34 = v11;
    do
    {
      if (*v34)
      {
        *&v11[8 * v33++] = *v34;
      }

      v34 += 8;
      --v32;
    }

    while (v32);
  }

  CFMergeSortArray();
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:v10];
  free(v11);
  return v35;
}

- (uint64_t)sortedArrayUsingSelector:()NSArray hint:
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: compare selector is 0", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0C8]);
  }

  return [(objc_class *)self sortedArrayUsingFunction:_NSUseParamAsSortSelector context:a3 hint:a4];
}

+ (id)arrayWithContentsOfFile:()NSArray
{
  v3 = [objc_allocWithZone(self) initWithContentsOfFile:a3];

  return v3;
}

+ (id)arrayWithContentsOfURL:()NSArray
{
  v3 = [objc_allocWithZone(self) initWithContentsOfURL:a3];

  return v3;
}

+ (id)arrayWithContentsOfURL:()NSArray error:
{
  v4 = [objc_allocWithZone(self) initWithContentsOfURL:a3 error:a4];

  return v4;
}

+ (id)newWithContentsOf:()NSArray immutable:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = _NSIsNSString();
  v7 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v8 = v6 ? [v7 initWithContentsOfFile:a3 options:0 error:&v13] : objc_msgSend(v7, "initWithContentsOfURL:options:error:", a3, 0, &v13);
  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = [NSPropertyListSerialization propertyListWithData:v8 options:a4 ^ 1u format:0 error:&v13];

  if ((_NSIsNSArray() & 1) == 0)
  {

    v11 = [[NSString alloc] initWithFormat:@"%@ did not contain a top-level array value", a3];
    v14 = @"NSDebugDescription";
    v15[0] = v11;
    v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 259, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1]);

    return 0;
  }

  return v10;
}

+ (id)newWithContentsOf:()NSArray immutable:error:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (a3)
  {
    v8 = _NSIsNSString();
    v9 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    v10 = v8 ? [v9 initWithContentsOfFile:a3 options:0 error:&v15] : objc_msgSend(v9, "initWithContentsOfURL:options:error:", a3, 0, &v15);
    v11 = v10;
    if (v10)
    {
      v12 = [NSPropertyListSerialization propertyListWithData:v10 options:a4 ^ 1u format:0 error:&v15];

      if (_NSIsNSArray())
      {
        goto LABEL_9;
      }

      v13 = [[NSString alloc] initWithFormat:@"%@ did not contain a top-level array value", a3];
      v16 = @"NSDebugDescription";
      v17[0] = v13;
      v15 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 259, [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1]);
    }
  }

  v12 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v15;
  }

  return v12;
}

- (uint64_t)initWithContentsOfFile:()NSArray
{
  v4 = [MEMORY[0x1E695DEC8] newWithContentsOf:a3 immutable:1];

  return v4;
}

- (uint64_t)initWithContentsOfURL:()NSArray
{
  v4 = [MEMORY[0x1E695DEC8] newWithContentsOf:a3 immutable:1];

  return v4;
}

- (id)initWithContentsOfURL:()NSArray error:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (a3)
  {
    v7 = _NSIsNSString();
    v8 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    v9 = v7 ? [v8 initWithContentsOfFile:a3 options:0 error:&v14] : objc_msgSend(v8, "initWithContentsOfURL:options:error:", a3, 0, &v14);
    v10 = v9;
    if (v9)
    {
      v11 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:&v14];

      if (_NSIsNSArray())
      {
        goto LABEL_9;
      }

      v12 = [[NSString alloc] initWithFormat:@"%@ did not contain a top-level array value", a3];
      v15 = @"NSDebugDescription";
      v16[0] = v12;
      v14 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 259, [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1]);
    }
  }

  v11 = 0;
LABEL_9:
  if (a4)
  {
    *a4 = v14;
  }

  return v11;
}

- (uint64_t)_stringToWrite
{
  v1 = [self descriptionWithLocale:0 indent:0];
  if ([v1 hasSuffix:@"\n"])
  {
    return v1;
  }

  return [v1 stringByAppendingString:@"\n"];
}

- (uint64_t)writeToFile:()NSArray atomically:
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0C8]);
  }

  v8 = objc_autoreleasePoolPush();
  if (_NSIsPList(self, 1, [MEMORY[0x1E695DFA8] set]) == 3)
  {
    if ((dyld_program_sdk_at_least() & 1) != 0 || ![objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      v9 = [(NSData *)[NSPropertyListSerialization dataWithPropertyList:0 format:0 options:? error:?], "writeToFile:atomically:", a3, a4];
    }

    else
    {
      v9 = [objc_msgSend(self "_stringToWrite")];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}

- (uint64_t)writeToURL:()NSArray atomically:
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0C8]);
    if (!a3)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  v13[0] = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [NSPropertyListSerialization dataWithPropertyList:self format:100 options:0 error:v13];
  if (v9 && [(NSData *)v9 writeToURL:a3 options:a4 error:v13])
  {
    objc_autoreleasePoolPop(v8);
    return 1;
  }

  v11 = v13[0];
  objc_autoreleasePoolPop(v8);
  v12 = v13[0];
  return 0;
}

- (uint64_t)writeToURL:()NSArray error:
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0C8]);
  }

  v14[0] = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [NSPropertyListSerialization dataWithPropertyList:self format:100 options:0 error:v14];
  if (v9 && [(NSData *)v9 writeToURL:a3 options:1 error:v14])
  {
    objc_autoreleasePoolPop(v8);
    return 1;
  }

  else
  {
    v11 = v14[0];
    objc_autoreleasePoolPop(v8);
    v12 = v14[0];
    if (a4)
    {
      *a4 = v14[0];
    }

    v13 = v12;
    return 0;
  }
}

@end