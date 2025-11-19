@interface NSMethodSignature(NSMethodSignatureComparison)
- (uint64_t)_isCompatibleWithMethodSignature:()NSMethodSignatureComparison;
@end

@implementation NSMethodSignature(NSMethodSignatureComparison)

- (uint64_t)_isCompatibleWithMethodSignature:()NSMethodSignatureComparison
{
  if ([a1 isEqual:?])
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [a1 numberOfArguments];
  if (v6 != [a3 numberOfArguments])
  {
    return 0;
  }

  result = encodingsAreCompatible([a1 methodReturnType], objc_msgSend(a3, "methodReturnType"));
  if (!result)
  {
    return result;
  }

  v7 = [a1 _isBlock];
  if (v7 != [a3 _isBlock])
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    result = encodingsAreCompatible([a1 getArgumentTypeAtIndex:v8], objc_msgSend(a3, "getArgumentTypeAtIndex:", v8));
    if (!result)
    {
      break;
    }
  }

  while (v6 - 1 != v8++);
  return result;
}

@end