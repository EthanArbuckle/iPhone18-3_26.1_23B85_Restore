@interface NSMutableOrderedSet(NSKeyValueSorting)
- (void)sortUsingDescriptors:()NSKeyValueSorting;
@end

@implementation NSMutableOrderedSet(NSKeyValueSorting)

- (void)sortUsingDescriptors:()NSKeyValueSorting
{
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = [a1 count];
  v6 = [a3 count];
  if (v6 && v5 >= 2)
  {
    if (v5 >> 60)
    {
      v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v16 userInfo:0];
      CFRelease(v16);
      objc_exception_throw(v17);
    }

    if (v5 >= 0x101)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = 8 * v7;
    v9 = MEMORY[0x1EEE9AC00](v6);
    v11 = v18 - v10;
    v18[2] = 0;
    if (v5 >= 0x101)
    {
      v11 = _CFCreateArrayStorage();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [a1 getObjects:v11 range:{0, v5, v9}];
    MEMORY[0x1EEE9AC00](v13);
    v14 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = 0;
    v18[1] = 0;
    if (v5 >= 0x101)
    {
      v15 = _CFCreateArrayStorage();
      v14 = v15;
    }

    _sortedObjectsUsingDescriptors(v11, v5, a3, v14);
    [a1 replaceObjectsInRange:0 withObjects:v5 count:{v14, v5}];
    free(v15);
    free(v12);
  }
}

@end