@interface NSSet(NSSet)
- (uint64_t)initWithCoder:()NSSet;
- (void)encodeWithCoder:()NSSet;
@end

@implementation NSSet(NSSet)

- (void)encodeWithCoder:()NSSet
{
  v28 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v3, *MEMORY[0x1E695E0E8]);
  }

  if ([a3 allowsKeyedCoding])
  {
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
    {
      v6 = [self count];
      v7 = v6;
      if (v6 >> 60)
      {
        v20 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
        v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v20 userInfo:0];
        CFRelease(v20);
        objc_exception_throw(v21);
      }

      v22 = 0;
      v8 = _CFCreateArrayStorage();
      [self getObjects:v8];
      if (v8)
      {
        if (v7)
        {
          v9 = v8;
          v10 = v7;
          do
          {
            v11 = *v9++;
            --v10;
          }

          while (v10);
        }

        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v8 count:v7 size:v7];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v7];
      }

      v15 = v12;
      [a3 _encodeArrayOfObjects:v12 forKey:@"NS.objects"];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = [self countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (v16)
      {
        v17 = 0;
        v18 = *v25;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(self);
            }

            [a3 encodeObject:*(*(&v24 + 1) + 8 * i) forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.object.%ld", v17++)}];
          }

          v16 = [self countByEnumeratingWithState:&v24 objects:v23 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    LODWORD(v22) = [self count];
    [a3 encodeValueOfObjCType:"I" at:&v22];
    objectEnumerator = [self objectEnumerator];
    for (j = [objectEnumerator nextObject]; j; j = objc_msgSend(objectEnumerator, "nextObject"))
    {
      [a3 encodeBycopyObject:j];
    }
  }
}

- (uint64_t)initWithCoder:()NSSet
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v27 = 0;
    v8 = [a3 decodeValueOfObjCType:"I" at:&v27 size:4];
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
LABEL_30:
      free(v20);
      return v16;
    }

    v25 = [a3 decodeObjectForKey:v24];
    *&v20[8 * v21] = v25;
    if (!v25)
    {
      v16 = 0;
      goto LABEL_30;
    }

    ++v21;
  }

  free(v20);
  v28 = @"NSLocalizedDescription";
  v29[0] = [NSString stringWithFormat:@"%@: set is too large to unarchive (%qd)", _NSMethodExceptionProem(self, a2), v22];
  [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1))}];
  return 0;
}

@end