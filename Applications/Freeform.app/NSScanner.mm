@interface NSScanner
- (BOOL)crl_scanCGFloat:(double *)float;
@end

@implementation NSScanner

- (BOOL)crl_scanCGFloat:(double *)float
{
  v5 = 0;
  result = [(NSScanner *)self scanDouble:&v5];
  *float = v5;
  return result;
}

@end