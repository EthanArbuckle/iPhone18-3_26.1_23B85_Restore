@interface _HKMutableFactorization
- (void)divideByFactorization:(id)a3;
@end

@implementation _HKMutableFactorization

- (void)divideByFactorization:(id)a3
{
  v4 = [a3 reciprocal];
  [(_HKFactorization *)self _multiplyByFactorization:v4];
}

@end