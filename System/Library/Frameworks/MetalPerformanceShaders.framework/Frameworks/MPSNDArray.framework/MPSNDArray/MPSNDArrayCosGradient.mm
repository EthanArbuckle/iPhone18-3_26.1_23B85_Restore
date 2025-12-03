@interface MPSNDArrayCosGradient
- (MPSNDArrayCosGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayCosGradient

- (MPSNDArrayCosGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCosGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 20;
  return result;
}

@end