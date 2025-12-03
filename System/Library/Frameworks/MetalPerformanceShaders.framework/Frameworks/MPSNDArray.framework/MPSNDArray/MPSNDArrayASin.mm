@interface MPSNDArrayASin
- (MPSNDArrayASin)initWithDevice:(id)device;
@end

@implementation MPSNDArrayASin

- (MPSNDArrayASin)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayASin;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 25;
  return result;
}

@end