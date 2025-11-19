@interface MPSNDArrayTanh
- (MPSNDArrayTanh)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayTanh

- (MPSNDArrayTanh)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTanh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 24;
  return result;
}

@end