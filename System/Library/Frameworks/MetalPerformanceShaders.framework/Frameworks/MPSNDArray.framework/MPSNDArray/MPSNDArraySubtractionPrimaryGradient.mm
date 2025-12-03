@interface MPSNDArraySubtractionPrimaryGradient
- (MPSNDArraySubtractionPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySubtractionPrimaryGradient

- (MPSNDArraySubtractionPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySubtractionPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end