@interface NSMutableOrderedSet(NSPredicateSupport)
- (void)filterUsingPredicate:()NSPredicateSupport;
@end

@implementation NSMutableOrderedSet(NSPredicateSupport)

- (void)filterUsingPredicate:()NSPredicateSupport
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid predicate for filtering" userInfo:0]);
  }

  v5 = [self count];
  v16[0] = 0;
  if (v5 >> 60)
  {
    v13 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v13 userInfo:0];
    CFRelease(v13);
    objc_exception_throw(v14);
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v15[1] = 0;
  if (v9 >= 0x101)
  {
    v8 = _CFCreateArrayStorage();
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  _filterObjectsUsingPredicate([self array], a3, v8, v16);
  v11 = objc_alloc(MEMORY[0x1E695DFA0]);
  v12 = [v11 initWithObjects:v8 count:v16[0]];
  [self setOrderedSet:v12];

  free(v10);
}

@end