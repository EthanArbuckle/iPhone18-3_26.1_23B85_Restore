@interface MPSNDArrayRandomTruncatedNormal
- (MPSNDArrayRandomTruncatedNormal)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayRandomTruncatedNormal)initWithDevice:(id)a3 mean:(float)a4 standardDeviation:(float)a5;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayRandomTruncatedNormal

- (MPSNDArrayRandomTruncatedNormal)initWithDevice:(id)a3 mean:(float)a4 standardDeviation:(float)a5
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayRandomTruncatedNormal;
  result = [(MPSNDArrayRandom *)&v8 initWithDevice:a3];
  if (result)
  {
    result->_mean = a4;
    result->_standardDeviation = a5;
    result->_minimum = a4 - (a5 + a5);
    result->_maximum = (result->_standardDeviation + result->_standardDeviation) + a4;
    result->_samplingMethod = 0;
    result->super.super.super._encode = EncodeRandomTruncatedNormal;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomTruncatedNormal;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
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

- (MPSNDArrayRandomTruncatedNormal)initWithCoder:(id)a3 device:(id)a4
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayRandomTruncatedNormal;
  v5 = [(MPSNDArrayUnaryKernel *)&v11 initWithCoder:a3 device:a4];
  if (v5)
  {
    [a3 decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalMean"];
    v5->_mean = v6;
    [a3 decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalStandardDeviation"];
    v5->_standardDeviation = v7;
    [a3 decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalMinimum"];
    v5->_minimum = v8;
    [a3 decodeFloatForKey:@"MPSNDArrayRandomTruncatedNormalMaximum"];
    v5->_maximum = v9;
    v5->_samplingMethod = [a3 decodeInt32ForKey:@"MPSNDArrayRandomTruncatedNormalSamplingMethod"];
    v5->super.super.super._encode = EncodeRandomTruncatedNormal;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayRandomTruncatedNormal;
  [(MPSNDArrayMultiaryBase *)&v9 encodeWithCoder:?];
  *&v5 = self->_mean;
  [a3 encodeFloat:@"MPSNDArrayRandomTruncatedNormalMean" forKey:v5];
  *&v6 = self->_standardDeviation;
  [a3 encodeFloat:@"MPSNDArrayRandomTruncatedNormalStandardDeviation" forKey:v6];
  *&v7 = self->_minimum;
  [a3 encodeFloat:@"MPSNDArrayRandomTruncatedNormalMinimum" forKey:v7];
  *&v8 = self->_maximum;
  [a3 encodeFloat:@"MPSNDArrayRandomTruncatedNormalMaximum" forKey:v8];
  [a3 encodeInt32:self->_samplingMethod forKey:@"MPSNDArrayRandomTruncatedNormalSamplingMethod"];
}

@end