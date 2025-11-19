@interface MPSNDArraySubtractionPrimaryGradient
- (MPSNDArraySubtractionPrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArraySubtractionPrimaryGradient

- (MPSNDArraySubtractionPrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySubtractionPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end