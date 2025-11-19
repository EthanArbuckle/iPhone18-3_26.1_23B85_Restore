@interface NSNumber
- (BOOL)crl_isAlmostEqual:(id)a3;
@end

@implementation NSNumber

- (BOOL)crl_isAlmostEqual:(id)a3
{
  v4 = a3;
  [(NSNumber *)self doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = vabdd_f64(v6, v7) < 0.01 || v6 == v7;

  return v8;
}

@end