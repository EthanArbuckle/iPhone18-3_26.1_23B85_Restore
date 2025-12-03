@interface MPSNDArrayRandomNormal
- (MPSNDArrayRandomNormal)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayRandomNormal)initWithDevice:(id)device mean:(float)mean standardDeviation:(float)deviation;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayRandomNormal

- (MPSNDArrayRandomNormal)initWithDevice:(id)device mean:(float)mean standardDeviation:(float)deviation
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomNormal;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:device];
  if (result)
  {
    result->_mean = mean;
    result->_standardDeviation = deviation;
    result->_samplingMethod = 0;
    result->super.super.super._encode = EncodeRandomNormal;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomNormal;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 167) = LODWORD(self->_mean);
    *(result + 168) = LODWORD(self->_standardDeviation);
    *(result + 166) = self->_samplingMethod;
    *(result + 17) = EncodeRandomTruncatedNormal;
  }

  return result;
}

- (MPSNDArrayRandomNormal)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayRandomNormal;
  v5 = [(MPSNDArrayUnaryKernel *)&v9 initWithCoder:coder device:device];
  if (v5)
  {
    [coder decodeFloatForKey:@"MPSNDArrayRandomNormalMean"];
    v5->_mean = v6;
    [coder decodeFloatForKey:@"MPSNDArrayRandomNormalStandardDeviation"];
    v5->_standardDeviation = v7;
    v5->_samplingMethod = [coder decodeInt32ForKey:@"MPSNDArrayRandomNormalSamplingMethod"];
    v5->super.super.super._encode = EncodeRandomNormal;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomNormal;
  [(MPSNDArrayMultiaryBase *)&v8 encodeWithCoder:?];
  *&v5 = self->_mean;
  [coder encodeFloat:@"MPSNDArrayRandomNormalMean" forKey:v5];
  *&v6 = self->_standardDeviation;
  [coder encodeFloat:@"MPSNDArrayRandomNormalStandardDeviation" forKey:v6];
  *&v7 = self->_samplingMethod;
  [coder encodeFloat:@"MPSNDArrayRandomNormalSamplingMethod" forKey:v7];
}

@end