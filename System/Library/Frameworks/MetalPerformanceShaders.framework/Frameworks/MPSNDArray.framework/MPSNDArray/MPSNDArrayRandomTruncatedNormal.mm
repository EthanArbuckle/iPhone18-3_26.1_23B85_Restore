@interface MPSNDArrayRandomTruncatedNormal
- (MPSNDArrayRandomTruncatedNormal)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayRandomTruncatedNormal)initWithDevice:(id)device mean:(float)mean standardDeviation:(float)deviation;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayRandomTruncatedNormal

- (MPSNDArrayRandomTruncatedNormal)initWithDevice:(id)device mean:(float)mean standardDeviation:(float)deviation
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomTruncatedNormal;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:device];
  if (result)
  {
    result->_mean = mean;
    result->_standardDeviation = deviation;
    result->_minimum = mean - (deviation + deviation);
    result->_maximum = (result->_standardDeviation + result->_standardDeviation) + mean;
    result->_samplingMethod = 0;
    result->super.super.super._encode = EncodeRandomTruncatedNormal;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomTruncatedNormal;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 167) = LODWORD(self->_mean);
    *(result + 168) = LODWORD(self->_standardDeviation);
    *(result + 169) = LODWORD(self->_minimum);
    *(result + 170) = LODWORD(self->_maximum);
    *(result + 166) = self->_samplingMethod;
    *(result + 17) = EncodeRandomTruncatedNormal;
  }

  return result;
}

- (MPSNDArrayRandomTruncatedNormal)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayRandomTruncatedNormal;
  v5 = [(MPSNDArrayUnaryKernel *)&v11 initWithCoder:coder device:device];
  if (v5)
  {
    [coder decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalMean"];
    v5->_mean = v6;
    [coder decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalStandardDeviation"];
    v5->_standardDeviation = v7;
    [coder decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalMinimum"];
    v5->_minimum = v8;
    [coder decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalMaximum"];
    v5->_maximum = v9;
    v5->_samplingMethod = [coder decodeInt32ForKey:@"MPSNDArrayRandomTruncatedNormalSamplingMethod"];
    v5->super.super.super._encode = EncodeRandomTruncatedNormal;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayRandomTruncatedNormal;
  [(MPSNDArrayMultiaryBase *)&v9 encodeWithCoder:?];
  *&v5 = self->_mean;
  [coder encodeFloat:@"MPSNDArrayRandomTruncatedNormalMean" forKey:v5];
  *&v6 = self->_standardDeviation;
  [coder encodeFloat:@"MPSNDArrayRandomTruncatedNormalStandardDeviation" forKey:v6];
  *&v7 = self->_minimum;
  [coder encodeFloat:@"MPSNDArrayRandomTruncatedNormalMinimum" forKey:v7];
  *&v8 = self->_maximum;
  [coder encodeFloat:@"MPSNDArrayRandomTruncatedNormalMaximum" forKey:v8];
  [coder encodeInt32:self->_samplingMethod forKey:@"MPSNDArrayRandomTruncatedNormalSamplingMethod"];
}

@end