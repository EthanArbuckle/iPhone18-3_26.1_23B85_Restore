@interface NSInvocation(FPExtensions)
- (void)fp_sanitizeError;
- (void)fp_transformArgumentAtIndex:()FPExtensions withBlock:;
- (void)fp_zeroOutReplyBlockArgumentsWithError:()FPExtensions;
@end

@implementation NSInvocation(FPExtensions)

- (void)fp_sanitizeError
{
  v5 = [a1 methodSignature];
  v2 = [v5 numberOfArguments];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      if (!strncmp([v5 getArgumentTypeAtIndex:i], "@NSError", 0xAuLL))
      {
        [a1 fp_transformArgumentAtIndex:i withBlock:&__block_literal_global_37];
      }
    }
  }
}

- (void)fp_transformArgumentAtIndex:()FPExtensions withBlock:
{
  v6 = a4;
  v12 = 0;
  [a1 getArgument:&v12 atIndex:a3];
  if (v12)
  {
    v7 = v6[2](v6);
    if (v7 != v12)
    {
      v8 = a1;
      v9 = v7;
      v10 = v8;
      objc_sync_enter(v10);
      v11 = objc_getAssociatedObject(v10, &retainedArgumentsKey);
      if (!v11)
      {
        v11 = [MEMORY[0x1E695DF70] array];
        objc_setAssociatedObject(v10, &retainedArgumentsKey, v11, 0x301);
      }

      v13 = v9;
      [v10 setArgument:&v13 atIndex:a3];
      [v11 addObject:v9];

      objc_sync_exit(v10);
    }
  }
}

- (void)fp_zeroOutReplyBlockArgumentsWithError:()FPExtensions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v4 = [a1 methodSignature];
  v5 = [v4 numberOfArguments];
  v6 = [v4 frameLength];
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  bzero(v7, [v4 frameLength]);
  if (v5 >= 2)
  {
    for (i = 1; i != v5; ++i)
    {
      [a1 setArgument:v7 atIndex:i];
    }
  }

  v9 = [v4 fp_indexOfLastArgumentWithType:"@NSError"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 setArgument:v11 atIndex:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end