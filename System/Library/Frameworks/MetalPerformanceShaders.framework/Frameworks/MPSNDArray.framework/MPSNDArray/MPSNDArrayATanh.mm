@interface MPSNDArrayATanh
- (MPSNDArrayATanh)initWithDevice:(id)device;
@end

@implementation MPSNDArrayATanh

- (MPSNDArrayATanh)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayATanh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 30;
  return result;
}

@end