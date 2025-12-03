@interface MPSNDArrayScatterGradient
- (MPSNDArrayScatterGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayScatterGradient)initWithDevice:(id)device operation:(int)operation;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayScatterGradient

- (MPSNDArrayScatterGradient)initWithDevice:(id)device operation:(int)operation
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayScatterGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 initWithDevice:device sourceCount:3 sourceGradientIndex:1];
  result->super.super._encodeGradient = EncodeScatterGradient;
  result->super.super._encodeData = result;
  result->_operation = operation;
  result->_batchDimensions = 0;
  return result;
}

- (MPSNDArrayScatterGradient)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayScatterGradient;
  result = [MPSNDArrayMultiaryGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    result->super.super._encodeGradient = EncodeScatterGradient;
    result->super.super._encodeData = result;
    v7 = result;
    result->_operation = [coder decodeInt64ForKey:@"MPSNDArrayScatter.operation"];
    v7->_batchDimensions = [coder decodeInt64ForKey:@"MPSNDArrayScatter.batchDimensions"];
    v8 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    result = v7;
    v7->_identity = v8;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScatterGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_operation forKey:@"MPSNDArrayScatter.operation"];
  [coder encodeInt64:self->_batchDimensions forKey:@"MPSNDArrayScatter.batchDimensions"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayScatterGradient;
  result = [MPSNDArrayMultiaryGradientKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    self->super.super._encodeGradient = EncodeScatterGradient;
    self->super.super._encodeData = self;
    *(result + 36) = self->_operation;
    *(result + 19) = self->_batchDimensions;
    identity = self->_identity;
    v9 = result;
    v10 = [(MPSNDArrayIdentity *)identity copyWithZone:zone device:device];
    result = v9;
    v9[20] = v10;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayScatterGradient;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end