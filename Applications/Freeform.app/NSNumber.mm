@interface NSNumber
- (BOOL)crl_isAlmostEqual:(id)equal;
@end

@implementation NSNumber

- (BOOL)crl_isAlmostEqual:(id)equal
{
  equalCopy = equal;
  [(NSNumber *)self doubleValue];
  v6 = v5;
  [equalCopy doubleValue];
  v8 = vabdd_f64(v6, v7) < 0.01 || v6 == v7;

  return v8;
}

@end