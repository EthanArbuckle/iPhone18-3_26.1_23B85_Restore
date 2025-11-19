@interface MPSNDArrayMultiplicationSecondaryGradient
- (MPSNDArrayMultiplicationSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayMultiplicationSecondaryGradient

- (MPSNDArrayMultiplicationSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMultiplicationSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 3;
  return result;
}

@end