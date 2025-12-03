@interface GKLinearCongruentialRandomSource
- (GKLinearCongruentialRandomSource)init;
- (GKLinearCongruentialRandomSource)initWithCoder:(id)coder;
- (GKLinearCongruentialRandomSource)initWithSeed:(uint64_t)seed;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)nextBits:(int)bits;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  seed = self->_seed;

  return [v4 initWithSeed:seed];
}

- (GKLinearCongruentialRandomSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(GKLinearCongruentialRandomSource *)self init];
  if (v5)
  {
    v5->_seed = [coderCopy decodeInt64ForKey:@"seed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = GKLinearCongruentialRandomSource;
  [(GKRandomSource *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_seed forKey:@"seed"];
}

- (unint64_t)nextBits:(int)bits
{
  result = (0x5DEECE66DLL * self->_seed + 11) & 0xFFFFFFFFFFFFLL;
  self->_seed = result;
  if (bits < 1)
  {
    return 0;
  }

  if (bits <= 0x30)
  {
    result >>= 48 - bits;
  }

  return result;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  v5 = bound - 1;
  if ((bound & (bound - 1)) == 0)
  {
    return ([(GKLinearCongruentialRandomSource *)self nextBits:32]* bound) >> 32;
  }

  do
  {
    v7 = [(GKLinearCongruentialRandomSource *)self nextBits:32];
    result = v7 % bound;
  }

  while (v5 + v7 < v7 % bound);
  return result;
}

@end