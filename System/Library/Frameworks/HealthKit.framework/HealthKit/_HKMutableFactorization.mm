@interface _HKMutableFactorization
- (void)divideByFactorization:(id)factorization;
@end

@implementation _HKMutableFactorization

- (void)divideByFactorization:(id)factorization
{
  reciprocal = [factorization reciprocal];
  [(_HKFactorization *)self _multiplyByFactorization:reciprocal];
}

@end