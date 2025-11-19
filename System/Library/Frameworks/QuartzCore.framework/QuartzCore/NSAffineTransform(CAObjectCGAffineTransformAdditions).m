@interface NSAffineTransform(CAObjectCGAffineTransformAdditions)
- (double)CA_CGAffineTransformValue;
@end

@implementation NSAffineTransform(CAObjectCGAffineTransformAdditions)

- (double)CA_CGAffineTransformValue
{
  if (a1)
  {
    [a1 transformStruct];
  }

  *a2 = 0u;
  a2[1] = 0u;
  result = 0.0;
  a2[2] = 0u;
  return result;
}

@end