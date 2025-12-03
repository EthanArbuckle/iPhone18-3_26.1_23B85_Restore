@interface GKMersenneTwisterRandomSource
- (GKMersenneTwisterRandomSource)init;
- (GKMersenneTwisterRandomSource)initWithSeed:(uint64_t)seed;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)nextBits:(int)bits;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
- (void)encodeWithCoder:(id)coder;
- (void)setSeed:(uint64_t)seed;
@end

@implementation GKMersenneTwisterRandomSource

- (GKMersenneTwisterRandomSource)init
{
  bytes = 0;
  if (SecRandomCopyBytes(0, 8uLL, &bytes))
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"failed to generate secure random bytes" userInfo:MEMORY[0x277CBEC10]];
    objc_exception_throw(v4);
  }

  return [(GKMersenneTwisterRandomSource *)self initWithSeed:bytes];
}

- (GKMersenneTwisterRandomSource)initWithSeed:(uint64_t)seed
{
  v8.receiver = self;
  v8.super_class = GKMersenneTwisterRandomSource;
  result = [(GKRandomSource *)&v8 init];
  if (result)
  {
    result->_seed = seed;
    __src[0] = seed;
    for (i = 1; i != 312; ++i)
    {
      seed = i + 0x5851F42D4C957F2DLL * (seed ^ (seed >> 62));
      __src[i] = seed;
    }

    __src[312] = 0;
    v6 = result;
    memcpy(&result->_engine, __src, sizeof(result->_engine));
    return v6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithSeed:self->_seed];
  memcpy((v4 + 16), &self->_engine, 0x9C8uLL);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GKMersenneTwisterRandomSource;
  [(GKRandomSource *)&v3 encodeWithCoder:coder];
}

- (void)setSeed:(uint64_t)seed
{
  self->_seed = seed;
  self->_engine.__x_[0] = seed;
  for (i = 1; i != 312; ++i)
  {
    seed = i + 0x5851F42D4C957F2DLL * (seed ^ (seed >> 62));
    self->_engine.__x_[i] = seed;
  }

  self->_engine.__i_ = 0;
}

- (unint64_t)nextBits:(int)bits
{
  i = self->_engine.__i_;
  v4 = (i + 1) % 0x138;
  v5 = 0xB5026F5AA96619E9;
  if ((self->_engine.__x_[v4] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ self->_engine.__x_[(i + 156) % 0x138] ^ ((self->_engine.__x_[v4] & 0x7FFFFFFE | self->_engine.__x_[i] & 0xFFFFFFFF80000000) >> 1);
  self->_engine.__x_[i] = v6;
  self->_engine.__i_ = v4;
  v7 = (((v6 >> 29) & 0x5555555555555555 ^ v6) << 17) & 0x71D67FFFEDA60000 ^ (v6 >> 29) & 0x5555555555555555 ^ v6;
  return ((v7 << 37) & 0xFFF7EEE000000000 ^ v7 ^ (((v7 << 37) & 0xFFF7EEE000000000 ^ v7) >> 43)) >> -bits;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  v5 = bound - 1;
  if ((bound & (bound - 1)) == 0)
  {
    return ([(GKMersenneTwisterRandomSource *)self nextBits:32]* bound) >> 32;
  }

  do
  {
    v7 = [(GKMersenneTwisterRandomSource *)self nextBits:32];
    result = v7 % bound;
  }

  while (v5 + v7 < v7 % bound);
  return result;
}

- (id).cxx_construct
{
  v2 = 5489;
  *(self + 2) = 5489;
  for (i = 1; i != 312; ++i)
  {
    v2 = i + 0x5851F42D4C957F2DLL * (v2 ^ (v2 >> 62));
    *(self + i + 2) = v2;
  }

  *(self + 314) = 0;
  return self;
}

@end