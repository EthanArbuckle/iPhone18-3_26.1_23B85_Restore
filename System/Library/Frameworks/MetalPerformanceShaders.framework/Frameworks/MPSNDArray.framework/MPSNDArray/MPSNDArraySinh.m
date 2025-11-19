@interface MPSNDArraySinh
- (MPSNDArraySinh)initWithDevice:(id)a3;
@end

@implementation MPSNDArraySinh

- (MPSNDArraySinh)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySinh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 22;
  return result;
}

@end