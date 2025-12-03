@interface NSInvocation(FPCopy)
- (id)fp_copy;
@end

@implementation NSInvocation(FPCopy)

- (id)fp_copy
{
  v2 = MEMORY[0x1E695DF50];
  methodSignature = [self methodSignature];
  v4 = [v2 invocationWithMethodSignature:methodSignature];

  methodSignature2 = [self methodSignature];
  numberOfArguments = [methodSignature2 numberOfArguments];

  methodSignature3 = [self methodSignature];
  v8 = malloc_type_calloc(1uLL, [methodSignature3 frameLength], 0xA4F5B9BAuLL);

  if (v8)
  {
    if (numberOfArguments >= 1)
    {
      for (i = 0; i != numberOfArguments; ++i)
      {
        [self getArgument:v8 atIndex:i];
        [v4 setArgument:v8 atIndex:i];
      }
    }

    free(v8);
    if ([self argumentsRetained])
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