@interface _MLCGaussianRandomGenerator
+ (id)zeroMeanGaussianRandomGenerator;
+ (id)zeroMeanGaussianRandomGeneratorWithSeed:(unint64_t)seed;
- (_MLCGaussianRandomGenerator)initWithMean:(double)mean scale:(double)scale seeded:(BOOL)seeded seedValue:(unint64_t)value;
- (double)sample;
@end

@implementation _MLCGaussianRandomGenerator

- (_MLCGaussianRandomGenerator)initWithMean:(double)mean scale:(double)scale seeded:(BOOL)seeded seedValue:(unint64_t)value
{
  seededCopy = seeded;
  v11.receiver = self;
  v11.super_class = _MLCGaussianRandomGenerator;
  result = [(_MLCGaussianRandomGenerator *)&v11 init];
  if (result)
  {
    result->_mean = mean;
    result->_scale = scale;
    result->_seeded = seededCopy;
    if (seededCopy)
    {
      result->_seedValue = value;
    }
  }

  return result;
}

+ (id)zeroMeanGaussianRandomGenerator
{
  v2 = [[self alloc] initWithMean:0 scale:arc4random_uniform(0x40000000u) seeded:0.0 seedValue:1.0];

  return v2;
}

+ (id)zeroMeanGaussianRandomGeneratorWithSeed:(unint64_t)seed
{
  v3 = [[self alloc] initWithMean:0 scale:seed seeded:0.0 seedValue:1.0];

  return v3;
}

- (double)sample
{
  v3 = sample_generateNoise;
  sample_generateNoise ^= 1u;
  if (v3)
  {
    v4 = *&sample_z1;
  }

  else
  {
    do
    {
      v5 = rand_r(&self->_seedValue) * 4.65661288e-10;
      v6 = rand_r(&self->_seedValue);
    }

    while (v5 <= 2.22044605e-16);
    v7 = v6 * 4.65661288e-10;
    v8 = sqrt(log(v5) * -2.0);
    v9 = __sincos_stret(v7 * 6.28318531);
    v4 = v8 * v9.__cosval;
    *&sample_z1 = v8 * v9.__sinval;
  }

  [(_MLCGaussianRandomGenerator *)self scale];
  v11 = v10;
  [(_MLCGaussianRandomGenerator *)self mean];
  return v12 + v4 * v11;
}

@end