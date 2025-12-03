@interface MPSNDArrayNegativeGradient
- (MPSNDArrayNegativeGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNegativeGradient

- (MPSNDArrayNegativeGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNegativeGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 12;
  return result;
}

@end