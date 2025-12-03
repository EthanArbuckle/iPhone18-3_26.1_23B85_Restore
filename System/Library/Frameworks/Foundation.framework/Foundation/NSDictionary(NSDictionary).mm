@interface NSDictionary(NSDictionary)
+ (id)dictionaryWithContentsOfFile:()NSDictionary;
+ (id)dictionaryWithContentsOfURL:()NSDictionary;
+ (id)dictionaryWithContentsOfURL:()NSDictionary error:;
+ (id)newWithContentsOf:()NSDictionary immutable:;
+ (id)newWithContentsOf:()NSDictionary immutable:error:;
- (id)descriptionInStringsFileFormat;
- (id)initWithContentsOfURL:()NSDictionary error:;
- (uint64_t)_stringToWrite;
- (uint64_t)initWithCoder:()NSDictionary;
- (uint64_t)initWithContentsOfFile:()NSDictionary;
- (uint64_t)initWithContentsOfURL:()NSDictionary;
- (uint64_t)writeToFile:()NSDictionary atomically:;
- (uint64_t)writeToURL:()NSDictionary atomically:;
- (uint64_t)writeToURL:()NSDictionary error:;
- (void)encodeWithCoder:()NSDictionary;
@end

@implementation NSDictionary(NSDictionary)

- (id)descriptionInStringsFileFormat
{
  v2 = [objc_allocWithZone(NSMutableString) init];
  keyEnumerator = [self keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v6 = [self objectForKey:nextObject2];
      if (_NSIsNSString())
      {
        quotedStringRepresentation = [v6 quotedStringRepresentation];
      }

      else
      {
        quotedStringRepresentation = [v6 description];
      }

      v8 = quotedStringRepresentation;
      [v2 replaceCharactersInRange:objc_msgSend(v2 withString:{"length"), 0, objc_msgSend(nextObject2, "quotedStringRepresentation")}];
      [v2 replaceCharactersInRange:objc_msgSend(v2 withString:{"length"), 0, @" = "}];
      [v2 appendString:v8];
      [v2 replaceCharactersInRange:objc_msgSend(v2 withString:{"length"), 0, @";\n"}];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }

  return v2;
}

- (void)encodeWithCoder:()NSDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v3, *MEMORY[0x1E695E0D8]);
  }

  if ([a3 allowsKeyedCoding])
  {
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
    {
      v6 = [self count];
      v7 = v6;
      if (v6 >> 60)
      {
        v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
        v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v28 userInfo:0];
        CFRelease(v28);
        objc_exception_throw(v29);
      }

      v30 = 0;
      v8 = _CFCreateArrayStorage();
      v9 = _CFCreateArrayStorage();
      [self getObjects:v9 andKeys:v8 count:v7];
      if (v8)
      {
        if (v7)
        {
          v10 = v8;
          v11 = v7;
          do
          {
            v12 = *v10++;
            --v11;
          }

          while (v11);
        }

        v13 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v8 count:v7 size:v7];
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v7];
      }

      v17 = v13;
      [a3 _encodeArrayOfObjects:v13 forKey:@"NS.keys"];

      if (v9)
      {
        if (v7)
        {
          v18 = v9;
          v19 = v7;
          do
          {
            v20 = *v18++;
            --v19;
          }

          while (v19);
        }

        v21 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v9 count:v7 size:v7];
      }

      else
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v7];
      }

      v22 = v21;
      [a3 _encodeArrayOfObjects:v21 forKey:@"NS.objects"];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v23 = [self countByEnumeratingWithState:&v32 objects:v31 count:16];
      if (v23)
      {
        v24 = 0;
        v25 = *v33;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(self);
            }

            v27 = *(*(&v32 + 1) + 8 * i);
            [a3 encodeObject:v27 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.key.%ld", v24)}];
            [a3 encodeObject:objc_msgSend(self forKey:{"objectForKey:", v27), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.object.%ld", v24++)}];
          }

          v23 = [self countByEnumeratingWithState:&v32 objects:v31 count:16];
        }

        while (v23);
      }
    }
  }

  else
  {
    LODWORD(v30) = [self count];
    [a3 encodeValueOfObjCType:"i" at:&v30];
    keyEnumerator = [self keyEnumerator];
    for (j = [keyEnumerator nextObject]; ; j = objc_msgSend(keyEnumerator, "nextObject"))
    {
      v16 = j;
      if (!j)
      {
        break;
      }

      [a3 encodeBycopyObject:j];
      [a3 encodeBycopyObject:{objc_msgSend(self, "objectForKey:", v16)}];
    }
  }
}

- (uint64_t)initWithCoder:()NSDictionary
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v46 = 0;
    v13 = [a3 decodeValueOfObjCType:"i" at:&v46 size:4];
    v14 = v46;
    if (v46 >> 29)
    {
      [a3 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: array is too large to decode", _NSMethodExceptionProem(self, a2)}];
      return 0;
    }

    MEMORY[0x1EEE9AC00](v13);
    v17 = (&v42 - v16);
    v45 = 0;
    if (v14 >= 0x101)
    {
      v17 = _CFCreateArrayStorage();
      v44 = 0;
      v20 = _CFCreateArrayStorage();
      v21 = v20;
      v22 = v17;
    }

    else
    {
      v18 = MEMORY[0x1EEE9AC00](v15);
      v20 = &v42 - ((v19 + 15) & 0xFFFFFFFF0);
      v21 = 0;
      v22 = 0;
      v44 = 0;
      if (!v14)
      {
LABEL_20:
        v25 = [(objc_class *)self initWithObjects:v20 forKeys:v17 count:v14, v18];
        v26 = 8 * v14;
        v27 = v20 - 8;
        v28 = v17 - 8;
        while (v26)
        {

          v29 = *&v27[v26];
          v26 -= 8;
        }

        free(v21);
        free(v22);
        return v25;
      }
    }

    selfCopy = v22;
    v23 = 0;
    v24 = v14;
    do
    {
      [a3 decodeValueOfObjCType:"@" at:v17 + v23 size:{8, v18}];
      [a3 decodeValueOfObjCType:"@" at:&v20[v23] size:8];
      v23 += 8;
      --v24;
    }

    while (v24);
    v22 = selfCopy;
    goto LABEL_20;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass()) && [a3 containsValueForKey:@"NS.objects"])
  {
    v6 = [a3 _decodeArrayOfObjectsForKey:@"NS.objects"];
    if (v6)
    {
      v7 = v6;
      v8 = [a3 _decodeArrayOfObjectsForKey:@"NS.keys"];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 count];
        v11 = [v9 count];
        if (v10 == v11)
        {

          return [(objc_class *)self initWithObjects:v7 forKeys:v9];
        }

        v49 = @"NSLocalizedDescription";
        v50[0] = [NSString stringWithFormat:@"counts dont match between objects (%lu) and keys (%lu)", v10, v11];
        [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v50, &v49, 1))}];
        return 0;
      }
    }

    self = 0;
  }

  v30 = NSAllocateObjectArray(0x40uLL);
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = NSAllocateObjectArray(0x40uLL);
  if (!v32)
  {
    free(v31);
    return 0;
  }

  v33 = v32;
  v42 = a2;
  selfCopy = self;
  v34 = 0;
  v35 = 64;
  while (1)
  {
    if (v35 > v34)
    {
      goto LABEL_32;
    }

    v35 *= 2;
    v36 = NSReallocateObjectArray(v31, v35);
    v37 = NSReallocateObjectArray(v33, v35);
    v38 = v37;
    if (!v36 || !v37)
    {
      break;
    }

    v31 = v36;
    v33 = v37;
LABEL_32:
    v39 = [NSString stringWithFormat:@"NS.key.%ld", v34];
    if (![a3 containsValueForKey:{v39, v42}])
    {
      v25 = [(objc_class *)selfCopy initWithObjects:v33 forKeys:v31 count:v34];
      goto LABEL_43;
    }

    v40 = [NSString stringWithFormat:@"NS.object.%ld", v34];
    if (![a3 containsValueForKey:v40])
    {
      goto LABEL_42;
    }

    *&v31[8 * v34] = [a3 decodeObjectForKey:v39];
    v41 = [a3 decodeObjectForKey:v40];
    *&v33[8 * v34] = v41;
    if (!*&v31[8 * v34] || !v41)
    {
      goto LABEL_42;
    }

    ++v34;
  }

  free(v36);
  free(v38);
  v47 = @"NSLocalizedDescription";
  v48 = [NSString stringWithFormat:@"%@: dictionary is too large to unarchive (%qd)", _NSMethodExceptionProem(selfCopy, v42), v35];
  [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v48, &v47, 1))}];
LABEL_42:
  v25 = 0;
LABEL_43:
  free(v31);
  free(v33);
  return v25;
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

- (uint64_t)writeToFile:()NSDictionary atomically:
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0D8]);
  }

  v8 = objc_autoreleasePoolPush();
  if (_NSIsPList(self, 1, [MEMORY[0x1E695DFA8] set]) == 4)
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

- (uint64_t)writeToURL:()NSDictionary atomically:
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0D8]);
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

- (uint64_t)writeToURL:()NSDictionary error:
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0D8]);
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

+ (id)dictionaryWithContentsOfFile:()NSDictionary
{
  v3 = [objc_allocWithZone(self) initWithContentsOfFile:a3];

  return v3;
}

+ (id)dictionaryWithContentsOfURL:()NSDictionary
{
  v3 = [objc_allocWithZone(self) initWithContentsOfURL:a3];

  return v3;
}

+ (id)dictionaryWithContentsOfURL:()NSDictionary error:
{
  v4 = [objc_allocWithZone(self) initWithContentsOfURL:a3 error:a4];

  return v4;
}

+ (id)newWithContentsOf:()NSDictionary immutable:
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

  if ((_NSIsNSDictionary() & 1) == 0)
  {

    v11 = [[NSString alloc] initWithFormat:@"%@ did not contain a top-level dictionary value", a3];
    v14 = @"NSDebugDescription";
    v15[0] = v11;
    v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 259, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1]);

    return 0;
  }

  return v10;
}

+ (id)newWithContentsOf:()NSDictionary immutable:error:
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

      if (_NSIsNSDictionary())
      {
        goto LABEL_9;
      }

      v13 = [[NSString alloc] initWithFormat:@"%@ did not contain a top-level dictionary value", a3];
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

- (uint64_t)initWithContentsOfFile:()NSDictionary
{
  v4 = [MEMORY[0x1E695DF20] newWithContentsOf:a3 immutable:1];

  return v4;
}

- (uint64_t)initWithContentsOfURL:()NSDictionary
{
  v4 = [MEMORY[0x1E695DF20] newWithContentsOf:a3 immutable:1];

  return v4;
}

- (id)initWithContentsOfURL:()NSDictionary error:
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

      if (_NSIsNSDictionary())
      {
        goto LABEL_9;
      }

      v12 = [[NSString alloc] initWithFormat:@"%@ did not contain a top-level dictionary value", a3];
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

@end