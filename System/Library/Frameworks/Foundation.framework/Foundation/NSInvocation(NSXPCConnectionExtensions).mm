@interface NSInvocation(NSXPCConnectionExtensions)
- (uint64_t)_hasBlockArgument;
@end

@implementation NSInvocation(NSXPCConnectionExtensions)

- (uint64_t)_hasBlockArgument
{
  v1 = [a1 methodSignature];
  result = [v1 numberOfArguments];
  if (result)
  {
    v3 = result;
    if (*([v1 _argInfo:0] + 34) < 0)
    {
      return 1;
    }

    else
    {
      v4 = 1;
      do
      {
        v5 = v4;
        if (v3 == v4)
        {
          break;
        }

        v6 = [v1 _argInfo:v4];
        v4 = v5 + 1;
      }

      while ((*(v6 + 34) & 0x80000000) == 0);
      return v5 < v3;
    }
  }

  return result;
}

@end