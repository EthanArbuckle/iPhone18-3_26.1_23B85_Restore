@interface MPSNDArrayMathTernaryKernel
- (MPSNDArrayMathTernaryKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMathTernaryKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMathTernaryKernel

- (MPSNDArrayMathTernaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMathTernaryKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:device sourceCount:3];
  result->super._encode = EncodeArrayMathTernary;
  result->super.super._encodeData = result;
  result->_opType = 0;
  return result;
}

- (MPSNDArrayMathTernaryKernel)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMathTernaryKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super._encode = EncodeArrayMathTernary;
    result->super.super._encodeData = result;
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
  v5.super_class = MPSNDArrayMathTernaryKernel;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt32:self->_opType forKey:@"MPSNDArrayMath.opType"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMathTernaryKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super._encode = EncodeArrayMathTernary;
    self->super.super._encodeData = self;
    *(result + 36) = self->_opType;
  }

  return result;
}

@end