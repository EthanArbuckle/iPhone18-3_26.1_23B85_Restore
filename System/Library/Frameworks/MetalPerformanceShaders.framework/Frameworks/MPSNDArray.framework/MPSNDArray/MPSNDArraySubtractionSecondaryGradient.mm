@interface MPSNDArraySubtractionSecondaryGradient
- (MPSNDArraySubtractionSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySubtractionSecondaryGradient

- (MPSNDArraySubtractionSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySubtractionSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end