@interface NSInvocation(FPCopy)
- (id)fp_copy;
@end

@implementation NSInvocation(FPCopy)

- (id)fp_copy
{
  v2 = MEMORY[0x1E695DF50];
  v3 = [a1 methodSignature];
  v4 = [v2 invocationWithMethodSignature:v3];

  v5 = [a1 methodSignature];
  v6 = [v5 numberOfArguments];

  v7 = [a1 methodSignature];
  v8 = malloc_type_calloc(1uLL, [v7 frameLength], 0xA4F5B9BAuLL);

  if (v8)
  {
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        [a1 getArgument:v8 atIndex:i];
        [v4 setArgument:v8 atIndex:i];
      }
    }

    free(v8);
    if ([a1 argumentsRetained])
    {
      [v4 retainArguments];
    }

    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end