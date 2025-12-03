@interface MPSNDArrayASinh
- (MPSNDArrayASinh)initWithDevice:(id)device;
@end

@implementation MPSNDArrayASinh

- (MPSNDArrayASinh)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayASinh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 28;
  return result;
}

@end