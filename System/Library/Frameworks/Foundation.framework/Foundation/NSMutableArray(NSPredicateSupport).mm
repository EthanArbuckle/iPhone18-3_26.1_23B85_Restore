@interface NSMutableArray(NSPredicateSupport)
- (void)filterUsingPredicate:()NSPredicateSupport;
@end

@implementation NSMutableArray(NSPredicateSupport)

- (void)filterUsingPredicate:()NSPredicateSupport
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid predicate for filtering" userInfo:0]);
  }

  v5 = [self count];
  v19[0] = 0;
  if (v5 >> 60)
  {
    v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v16 userInfo:0];
    CFRelease(v16);
    objc_exception_throw(v17);
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v18[1] = 0;
  if (v8 >= 0x101)
  {
    v7 = _CFCreateArrayStorage();
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  _filterObjectsUsingPredicate(self, a3, v7, v19);
  v10 = v19[0];
  if (v9)
  {
    if (v19[0] >= 1)
    {
      v11 = v9;
      v12 = v19[0];
      do
      {
        v13 = *v11++;
        --v12;
      }

      while (v12);
    }

    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v9 count:v10 size:v10];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v19[0]];
  }

  v15 = v14;
  [self setArray:v14];
}

@end