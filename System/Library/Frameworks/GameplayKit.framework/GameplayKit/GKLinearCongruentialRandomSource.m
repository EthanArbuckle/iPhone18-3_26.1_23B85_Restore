@interface GKLinearCongruentialRandomSource
- (GKLinearCongruentialRandomSource)init;
- (GKLinearCongruentialRandomSource)initWithCoder:(id)a3;
- (GKLinearCongruentialRandomSource)initWithSeed:(uint64_t)seed;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)nextBits:(int)a3;
- (unint64_t)nextIntWithUpperBound:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKLinearCongruentialRandomSource

- (GKLinearCongruentialRandomSource)init
{
  bytes = 0;
  if (SecRandomCopyBytes(0, 8uLL, &bytes))
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"failed to generate secure random bytes" userInfo:MEMORY[0x277CBEC10]];
    objc_exception_throw(v4);
  }

  return [(GKLinearCongruentialRandomSource *)self initWithSeed:bytes];
}

- (GKLinearCongruentialRandomSource)initWithSeed:(uint64_t)seed
{
  v5.receiver = self;
  v5.super_class = GKLinearCongruentialRandomSource;
  result = [(GKRandomSource *)&v5 init];
  if (result)
  {
    result->_seed = seed;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  seed = self->_seed;

  return [v4 initWithSeed:seed];
}

- (GKLinearCongruentialRandomSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GKLinearCongruentialRandomSource *)self init];
  if (v5)
  {
    v5->_seed = [v4 decodeInt64ForKey:@"seed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = GKLinearCongruentialRandomSource;
  [(GKRandomSource *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_seed forKey:@"seed"];
}

- (unint64_t)nextBits:(int)a3
{
  result = (0x5DEECE66DLL * self->_seed + 11) & 0xFFFFFFFFFFFFLL;
  self->_seed = result;
  if (a3 < 1)
  {
    return 0;
  }

  if (a3 <= 0x30)
  {
    result >>= 48 - a3;
  }

  return result;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)a3
{
  v5 = a3 - 1;
  if ((a3 & (a3 - 1)) == 0)
  {
    return ([(GKLinearCongruentialRandomSource *)self nextBits:32]* a3) >> 32;
  }

  do
  {
    v7 = [(GKLinearCongruentialRandomSource *)self nextBits:32];
    result = v7 % a3;
  }

  while (v5 + v7 < v7 % a3);
  return result;
}

@end