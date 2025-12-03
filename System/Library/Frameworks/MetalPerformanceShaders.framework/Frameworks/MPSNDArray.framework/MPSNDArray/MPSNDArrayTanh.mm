@interface MPSNDArrayTanh
- (MPSNDArrayTanh)initWithDevice:(id)device;
@end

@implementation MPSNDArrayTanh

- (MPSNDArrayTanh)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTanh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 24;
  return result;
}

@end