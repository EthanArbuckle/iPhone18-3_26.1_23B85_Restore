@interface MPSNDArrayScatterGradient
- (MPSNDArrayScatterGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayScatterGradient)initWithDevice:(id)a3 operation:(int)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayScatterGradient

- (MPSNDArrayScatterGradient)initWithDevice:(id)a3 operation:(int)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayScatterGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 initWithDevice:a3 sourceCount:3 sourceGradientIndex:1];
  result->super.super._encodeGradient = EncodeScatterGradient;
  result->super.super._encodeData = result;
  result->_operation = a4;
  result->_batchDimensions = 0;
  return result;
}

- (MPSNDArrayScatterGradient)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayScatterGradient;
  result = [MPSNDArrayMultiaryGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    result->super.super._encodeGradient = EncodeScatterGradient;
    result->super.super._encodeData = result;
    v7 = result;
    result->_operation = [a3 decodeInt64ForKey:@"MPSNDArrayScatter.operation"];
    v7->_batchDimensions = [a3 decodeInt64ForKey:@"MPSNDArrayScatter.batchDimensions"];
    v8 = [[MPSNDArrayIdentity alloc] initWithDevice:a4];
    result = v7;
    v7->_identity = v8;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScatterGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_operation forKey:@"MPSNDArrayScatter.operation"];
  [a3 encodeInt64:self->_batchDimensions forKey:@"MPSNDArrayScatter.batchDimensions"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
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
    v10 = [(MPSNDArrayIdentity *)identity copyWithZone:a3 device:a4];
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