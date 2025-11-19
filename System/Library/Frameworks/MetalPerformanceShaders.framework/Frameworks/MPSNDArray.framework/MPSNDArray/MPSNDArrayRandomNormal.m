@interface MPSNDArrayRandomNormal
- (MPSNDArrayRandomNormal)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayRandomNormal)initWithDevice:(id)a3 mean:(float)a4 standardDeviation:(float)a5;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayRandomNormal

- (MPSNDArrayRandomNormal)initWithDevice:(id)a3 mean:(float)a4 standardDeviation:(float)a5
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomNormal;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:a3];
  if (result)
  {
    result->_mean = a4;
    result->_standardDeviation = a5;
    result->_samplingMethod = 0;
    result->super.super.super._encode = EncodeRandomNormal;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomNormal;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 167) = LODWORD(self->_mean);
    *(result + 168) = LODWORD(self->_standardDeviation);
    *(result + 166) = self->_samplingMethod;
    *(result + 17) = EncodeRandomTruncatedNormal;
  }

  return result;
}

- (MPSNDArrayRandomNormal)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayRandomNormal;
  v5 = [(MPSNDArrayUnaryKernel *)&v9 initWithCoder:a3 device:a4];
  if (v5)
  {
    [a3 decodeFloatForKey:@"MPSNDArrayRandomNormalMean"];
    v5->_mean = v6;
    [a3 decodeFloatForKey:@"MPSNDArrayRandomNormalStandardDeviation"];
    v5->_standardDeviation = v7;
    v5->_samplingMethod = [a3 decodeInt32ForKey:@"MPSNDArrayRandomNormalSamplingMethod"];
    v5->super.super.super._encode = EncodeRandomNormal;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomNormal;
  [(MPSNDArrayMultiaryBase *)&v8 encodeWithCoder:?];
  *&v5 = self->_mean;
  [a3 encodeFloat:@"MPSNDArrayRandomNormalMean" forKey:v5];
  *&v6 = self->_standardDeviation;
  [a3 encodeFloat:@"MPSNDArrayRandomNormalStandardDeviation" forKey:v6];
  *&v7 = self->_samplingMethod;
  [a3 encodeFloat:@"MPSNDArrayRandomNormalSamplingMethod" forKey:v7];
}

@end