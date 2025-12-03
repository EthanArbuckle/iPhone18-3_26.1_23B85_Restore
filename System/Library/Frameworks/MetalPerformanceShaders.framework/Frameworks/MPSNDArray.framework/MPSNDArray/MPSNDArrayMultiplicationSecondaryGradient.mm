@interface MPSNDArrayMultiplicationSecondaryGradient
- (MPSNDArrayMultiplicationSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMultiplicationSecondaryGradient

- (MPSNDArrayMultiplicationSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMultiplicationSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 3;
  return result;
}

@end