@interface MPSNDArrayRandomState
- (MPSNDArrayRandomState)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayRandomState)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayRandomState

- (MPSNDArrayRandomState)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRandomState;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->_counterStride = 1;
    result->_skipElements = 0;
    result->_incrementKey = 0;
    result->super.super._encode = EncodeRandomStateUpdate;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomState;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 83) = self->_counterStride;
    *(result + 84) = self->_skipElements;
    *(result + 680) = self->_incrementKey;
    *(result + 17) = EncodeRandomStateUpdate;
  }

  return result;
}

- (MPSNDArrayRandomState)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayRandomState;
  v5 = [(MPSNDArrayUnaryKernel *)&v7 initWithCoder:a3 device:a4];
  if (v5)
  {
    v5->_counterStride = [a3 decodeInt64ForKey:@"MPSNDArrayRandomStateCounterStride"];
    v5->_skipElements = [a3 decodeInt64ForKey:@"MPSNDArrayRandomStateSkipElements"];
    v5->_incrementKey = [a3 decodeBoolForKey:@"MPSNDArrayRandomStateIncrementKey"];
    v5->super.super._encode = EncodeRandomStateUpdate;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayRandomState;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_counterStride forKey:@"MPSNDArrayRandomStateCounterStride"];
  [a3 encodeInt64:self->_skipElements forKey:@"MPSNDArrayRandomStateSkipElements"];
  [a3 encodeBool:self->_incrementKey forKey:@"MPSNDArrayRandomStateIncrementKey"];
}

@end