@interface NSMethodSignature(NSMethodSignatureComparison)
- (uint64_t)_isCompatibleWithMethodSignature:()NSMethodSignatureComparison;
@end

@implementation NSMethodSignature(NSMethodSignatureComparison)

- (uint64_t)_isCompatibleWithMethodSignature:()NSMethodSignatureComparison
{
  if ([self isEqual:?])
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

  numberOfArguments = [self numberOfArguments];
  if (numberOfArguments != [a3 numberOfArguments])
  {
    return 0;
  }

  result = encodingsAreCompatible([self methodReturnType], objc_msgSend(a3, "methodReturnType"));
  if (!result)
  {
    return result;
  }

  _isBlock = [self _isBlock];
  if (_isBlock != [a3 _isBlock])
  {
    return 0;
  }

  if (!numberOfArguments)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    result = encodingsAreCompatible([self getArgumentTypeAtIndex:v8], objc_msgSend(a3, "getArgumentTypeAtIndex:", v8));
    if (!result)
    {
      break;
    }
  }

  while (numberOfArguments - 1 != v8++);
  return result;
}

@end