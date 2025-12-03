@interface MPSNDArrayRandomState
- (MPSNDArrayRandomState)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayRandomState)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayRandomState

- (MPSNDArrayRandomState)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRandomState;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_counterStride = 1;
    result->_skipElements = 0;
    result->_incrementKey = 0;
    result->super.super._encode = EncodeRandomStateUpdate;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayRandomState;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 83) = self->_counterStride;
    *(result + 84) = self->_skipElements;
    *(result + 680) = self->_incrementKey;
    *(result + 17) = EncodeRandomStateUpdate;
  }

  return result;
}

- (MPSNDArrayRandomState)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayRandomState;
  v5 = [(MPSNDArrayUnaryKernel *)&v7 initWithCoder:coder device:device];
  if (v5)
  {
    v5->_counterStride = [coder decodeInt64ForKey:@"MPSNDArrayRandomStateCounterStride"];
    v5->_skipElements = [coder decodeInt64ForKey:@"MPSNDArrayRandomStateSkipElements"];
    v5->_incrementKey = [coder decodeBoolForKey:@"MPSNDArrayRandomStateIncrementKey"];
    v5->super.super._encode = EncodeRandomStateUpdate;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayRandomState;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_counterStride forKey:@"MPSNDArrayRandomStateCounterStride"];
  [coder encodeInt64:self->_skipElements forKey:@"MPSNDArrayRandomStateSkipElements"];
  [coder encodeBool:self->_incrementKey forKey:@"MPSNDArrayRandomStateIncrementKey"];
}

@end