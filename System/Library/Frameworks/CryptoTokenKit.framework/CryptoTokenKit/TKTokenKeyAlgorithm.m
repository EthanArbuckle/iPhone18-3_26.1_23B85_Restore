@interface TKTokenKeyAlgorithm
- (BOOL)isAlgorithm:(SecKeyAlgorithm)algorithm;
- (TKTokenKeyAlgorithm)initWithAlgorithmsArray:(id)a3;
@end

@implementation TKTokenKeyAlgorithm

- (TKTokenKeyAlgorithm)initWithAlgorithmsArray:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TKTokenKeyAlgorithm;
  v6 = [(TKTokenKeyAlgorithm *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_algorithms, a3);
    algorithms = v7->_algorithms;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSArray *)v7->_algorithms count])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isAlgorithm:(SecKeyAlgorithm)algorithm
{
  v4 = [(NSArray *)self->_algorithms lastObject];
  LOBYTE(algorithm) = [v4 isEqual:algorithm];

  return algorithm;
}

@end