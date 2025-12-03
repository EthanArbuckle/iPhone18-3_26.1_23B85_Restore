@interface NSOrderedSet(NSOrderedSet)
- (uint64_t)encodeWithCoder:()NSOrderedSet;
- (uint64_t)initWithCoder:()NSOrderedSet;
@end

@implementation NSOrderedSet(NSOrderedSet)

- (uint64_t)encodeWithCoder:()NSOrderedSet
{
  v16 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v3, *MEMORY[0x1E695E0E0]);
  }

  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSOrderedSets cannot be encoded by non-keyed coders" userInfo:0]);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(self);
        }

        [a3 encodeObject:*(*(&v12 + 1) + 8 * v10++) forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"NS.object.%lu", v8++)}];
      }

      while (v7 != v10);
      result = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)initWithCoder:()NSOrderedSet
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSOrderedSets cannot be decoded by non-keyed coders" userInfo:0]);
  }

  v6 = 128;
  v7 = NSAllocateObjectArray(0x80uLL);
  for (i = 0; ; ++i)
  {
    if (v6 > i)
    {
      goto LABEL_6;
    }

    v6 *= 2;
    v9 = NSReallocateObjectArray(v7, v6);
    if (!v9)
    {
      break;
    }

    v7 = v9;
LABEL_6:
    v10 = [NSString stringWithFormat:@"NS.object.%lu", i];
    if (![a3 containsValueForKey:v10])
    {
      v12 = [self initWithObjects:v7 count:i];
      goto LABEL_12;
    }

    v11 = [a3 decodeObjectForKey:v10];
    *(v7 + i) = v11;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v15 = @"NSLocalizedDescription";
  v16[0] = [NSString stringWithFormat:@"%@: ordered set is too large to decode (%llu)", _NSMethodExceptionProem(self, a2), v6];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", *MEMORY[0x1E695E628], 4864, v13)}];
  v7 = 0;
LABEL_11:
  v12 = 0;
LABEL_12:
  free(v7);
  return v12;
}

@end