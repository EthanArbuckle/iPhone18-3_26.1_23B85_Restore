@interface NSValue(MKCAExtrasAdditions)
+ (id)_mapkit_valueWithCGPoint:()MKCAExtrasAdditions;
- (uint64_t)_mapkit_CGAffineTransformValue;
@end

@implementation NSValue(MKCAExtrasAdditions)

- (uint64_t)_mapkit_CGAffineTransformValue
{
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [a1 getValue:x8_0 size:48];
}

+ (id)_mapkit_valueWithCGPoint:()MKCAExtrasAdditions
{
  *v4 = a1;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

@end