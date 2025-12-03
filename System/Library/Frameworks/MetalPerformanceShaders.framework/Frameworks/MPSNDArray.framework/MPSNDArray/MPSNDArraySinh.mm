@interface MPSNDArraySinh
- (MPSNDArraySinh)initWithDevice:(id)device;
@end

@implementation MPSNDArraySinh

- (MPSNDArraySinh)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySinh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 22;
  return result;
}

@end