@interface NSInvocation(FPExtensions)
- (void)fp_sanitizeError;
- (void)fp_transformArgumentAtIndex:()FPExtensions withBlock:;
- (void)fp_zeroOutReplyBlockArgumentsWithError:()FPExtensions;
@end

@implementation NSInvocation(FPExtensions)

- (void)fp_sanitizeError
{
  methodSignature = [self methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments)
  {
    v3 = numberOfArguments;
    for (i = 0; i != v3; ++i)
    {
      if (!strncmp([methodSignature getArgumentTypeAtIndex:i], "@NSError", 0xAuLL))
      {
        [self fp_transformArgumentAtIndex:i withBlock:&__block_literal_global_37];
      }
    }
  }
}

- (void)fp_transformArgumentAtIndex:()FPExtensions withBlock:
{
  v6 = a4;
  v12 = 0;
  [self getArgument:&v12 atIndex:a3];
  if (v12)
  {
    v7 = v6[2](v6);
    if (v7 != v12)
    {
      selfCopy = self;
      v9 = v7;
      v10 = selfCopy;
      objc_sync_enter(v10);
      array = objc_getAssociatedObject(v10, &retainedArgumentsKey);
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        objc_setAssociatedObject(v10, &retainedArgumentsKey, array, 0x301);
      }

      v13 = v9;
      [v10 setArgument:&v13 atIndex:a3];
      [array addObject:v9];

      objc_sync_exit(v10);
    }
  }
}

- (void)fp_zeroOutReplyBlockArgumentsWithError:()FPExtensions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  methodSignature = [self methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  frameLength = [methodSignature frameLength];
  v7 = v11 - ((frameLength + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, frameLength);
  bzero(v7, [methodSignature frameLength]);
  if (numberOfArguments >= 2)
  {
    for (i = 1; i != numberOfArguments; ++i)
    {
      [self setArgument:v7 atIndex:i];
    }
  }

  v9 = [methodSignature fp_indexOfLastArgumentWithType:"@NSError"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self setArgument:v11 atIndex:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end