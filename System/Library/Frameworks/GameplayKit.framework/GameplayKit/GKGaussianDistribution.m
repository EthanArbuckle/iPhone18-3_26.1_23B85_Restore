@interface GKGaussianDistribution
- (GKGaussianDistribution)initWithRandomSource:(id)source lowestValue:(NSInteger)lowestInclusive highestValue:(NSInteger)highestInclusive;
- (GKGaussianDistribution)initWithRandomSource:(id)source mean:(float)mean deviation:(float)deviation;
- (int64_t)nextInt;
@end

@implementation GKGaussianDistribution

- (GKGaussianDistribution)initWithRandomSource:(id)source lowestValue:(NSInteger)lowestInclusive highestValue:(NSInteger)highestInclusive
{
  v10.receiver = self;
  v10.super_class = GKGaussianDistribution;
  result = [GKRandomDistribution initWithRandomSource:sel_initWithRandomSource_lowestValue_highestValue_ lowestValue:source highestValue:?];
  if (result)
  {
    v8 = vcvtd_n_f64_s64(highestInclusive + lowestInclusive, 1uLL);
    result->_mean = v8;
    v9 = (highestInclusive - v8) * 0.333333333;
    result->_deviation = v9;
  }

  return result;
}

- (GKGaussianDistribution)initWithRandomSource:(id)source mean:(float)mean deviation:(float)deviation
{
  v8.receiver = self;
  v8.super_class = GKGaussianDistribution;
  result = [(GKRandomDistribution *)&v8 initWithRandomSource:source lowestValue:(mean - (deviation * 3.0)) highestValue:((deviation * 3.0) + mean)];
  if (result)
  {
    result->_mean = mean;
    result->_deviation = deviation;
  }

  return result;
}

- (int64_t)nextInt
{
  [(GKRandom *)self->super._source nextUniform];
  v4 = v3;
  [(GKRandom *)self->super._source nextUniform];
  v6 = v5;
  v7 = v5 * 6.28318531;
  v8 = cosf(v7);
  v9 = llroundf(self->_mean + ((self->_deviation * v8) * sqrtf(logf(v4) * -2.0)));
  lowest = self->super._lowest;
  highest = self->super._highest;
  if (lowest > v9 || highest < v9)
  {
    return (lowest + (v6 * (highest - lowest)));
  }

  else
  {
    return v9;
  }
}

@end