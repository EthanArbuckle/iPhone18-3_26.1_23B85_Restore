@interface NSAffineTransform(CAObjectCGAffineTransformAdditions)
- (double)CA_CGAffineTransformValue;
@end

@implementation NSAffineTransform(CAObjectCGAffineTransformAdditions)

- (double)CA_CGAffineTransformValue
{
  if (self)
  {
    [self transformStruct];
  }

  *a2 = 0u;
  a2[1] = 0u;
  result = 0.0;
  a2[2] = 0u;
  return result;
}

@end