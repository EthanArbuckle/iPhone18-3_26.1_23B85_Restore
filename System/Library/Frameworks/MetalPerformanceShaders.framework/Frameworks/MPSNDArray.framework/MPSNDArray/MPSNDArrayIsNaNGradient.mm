@interface MPSNDArrayIsNaNGradient
- (MPSNDArrayIsNaNGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayIsNaNGradient

- (MPSNDArrayIsNaNGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIsNaNGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 34;
  return result;
}

@end