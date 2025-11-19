@interface NSMethodSignature(FP)
- (uint64_t)fp_indexOfLastArgumentWithType:()FP;
@end

@implementation NSMethodSignature(FP)

- (uint64_t)fp_indexOfLastArgumentWithType:()FP
{
  v5 = [a1 numberOfArguments] - 1;
  while (v5)
  {
    v6 = [a1 getArgumentTypeAtIndex:v5];
    v7 = strlen(a3);
    --v5;
    if (!strncmp(v6, a3, v7))
    {
      return v5 + 1;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

@end