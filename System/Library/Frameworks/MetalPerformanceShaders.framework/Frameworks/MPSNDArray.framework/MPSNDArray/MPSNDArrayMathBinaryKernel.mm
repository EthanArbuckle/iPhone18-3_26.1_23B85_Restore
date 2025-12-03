@interface MPSNDArrayMathBinaryKernel
- (MPSNDArrayMathBinaryKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMathBinaryKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMathBinaryKernel

- (MPSNDArrayMathBinaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMathBinaryKernel;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeArrayMathBinary;
  result->super.super.super._encodeData = result;
  result->_opType = 0;
  return result;
}

- (MPSNDArrayMathBinaryKernel)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMathBinaryKernel;
  result = [(MPSNDArrayBinaryKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeArrayMathBinary;
    result->super.super.super._encodeData = result;
    v6 = result;
    v7 = [coder decodeInt32ForKey:@"MPSNDArrayMath.opType"];
    result = v6;
    v6->_opType = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMathBinaryKernel;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt32:self->_opType forKey:@"MPSNDArrayMath.opType"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMathBinaryKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super._encode = EncodeArrayMathBinary;
    self->super.super.super._encodeData = self;
    *(result + 36) = self->_opType;
  }

  return result;
}

@end