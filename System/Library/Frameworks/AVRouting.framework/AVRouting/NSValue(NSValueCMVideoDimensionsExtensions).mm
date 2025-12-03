@interface NSValue(NSValueCMVideoDimensionsExtensions)
- (uint64_t)CMVideoDimensionsValue;
@end

@implementation NSValue(NSValueCMVideoDimensionsExtensions)

- (uint64_t)CMVideoDimensionsValue
{
  v2 = 0;
  [self getValue:&v2];
  return v2;
}

@end