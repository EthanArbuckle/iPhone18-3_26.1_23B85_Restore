@interface NSValue(CAColorMatrixAdditions)
- (uint64_t)CAColorMatrixValue;
@end

@implementation NSValue(CAColorMatrixAdditions)

- (uint64_t)CAColorMatrixValue
{
  x8_0[3] = 0u;
  x8_0[4] = 0u;
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [self getValue:x8_0 size:80];
}

@end