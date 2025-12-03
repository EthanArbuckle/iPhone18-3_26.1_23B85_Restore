@interface MPSNDArrayDivisionSecondaryGradient
- (MPSNDArrayDivisionSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayDivisionSecondaryGradient

- (MPSNDArrayDivisionSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayDivisionSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end