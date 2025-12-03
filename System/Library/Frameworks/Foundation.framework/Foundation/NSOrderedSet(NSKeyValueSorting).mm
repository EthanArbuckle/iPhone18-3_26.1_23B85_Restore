@interface NSOrderedSet(NSKeyValueSorting)
- (id)sortedArrayUsingDescriptors:()NSKeyValueSorting;
@end

@implementation NSOrderedSet(NSKeyValueSorting)

- (id)sortedArrayUsingDescriptors:()NSKeyValueSorting
{
  v25[3] = *MEMORY[0x1E69E9840];
  v5 = [self count];
  v6 = v5;
  if (v5 >> 60)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v23 userInfo:0];
    CFRelease(v23);
    objc_exception_throw(v24);
  }

  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - v8;
  v25[2] = 0;
  if (v6 >= 0x101)
  {
    v9 = _CFCreateArrayStorage();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [self getObjects:v9 range:{0, v6, v7}];
  v11 = [a3 count];
  if (v6 >= 2 && v11)
  {
    v25[1] = 0;
    v12 = _CFCreateArrayStorage();
    _sortedObjectsUsingDescriptors(v9, v6, a3, v12);
    if (v12)
    {
      for (i = 0; i != v6; ++i)
      {
        v14 = *(v12 + 8 * i);
      }

      v15 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v12 count:v6 size:v6];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v6];
    }

    v20 = v15;
  }

  else
  {
    if (v10)
    {
      if (v6)
      {
        v16 = v10;
        v17 = v6;
        do
        {
          v18 = *v16++;
          --v17;
        }

        while (v17);
      }

      v19 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v10 count:v6 size:v6];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v9 count:v6];
    }

    v10 = 0;
    v20 = v19;
  }

  v21 = v20;
  free(v10);
  return v21;
}

@end