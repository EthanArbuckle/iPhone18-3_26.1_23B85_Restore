@interface NSNumber(AuthKit)
- (id)ak_BOOLeanAsInteger;
- (uint64_t)ak_bucketWithSize:()AuthKit;
@end

@implementation NSNumber(AuthKit)

- (id)ak_BOOLeanAsInteger
{
  if ([a1 ak_isBoolean])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "integerValue")}];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](a1);
  }

  return v3;
}

- (uint64_t)ak_bucketWithSize:()AuthKit
{
  if ([a1 integerValue] <= 0)
  {
    return 0;
  }

  if (a3 > 1)
  {
    return (([a1 integerValue] - 1) / a3 + 1) * a3;
  }

  return [a1 integerValue];
}

@end