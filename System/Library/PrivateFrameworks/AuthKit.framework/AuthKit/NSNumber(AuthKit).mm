@interface NSNumber(AuthKit)
- (id)ak_BOOLeanAsInteger;
- (uint64_t)ak_bucketWithSize:()AuthKit;
@end

@implementation NSNumber(AuthKit)

- (id)ak_BOOLeanAsInteger
{
  if ([self ak_isBoolean])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "integerValue")}];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self);
  }

  return v3;
}

- (uint64_t)ak_bucketWithSize:()AuthKit
{
  if ([self integerValue] <= 0)
  {
    return 0;
  }

  if (a3 > 1)
  {
    return (([self integerValue] - 1) / a3 + 1) * a3;
  }

  return [self integerValue];
}

@end