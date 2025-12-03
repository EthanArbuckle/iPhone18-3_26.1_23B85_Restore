@interface MPSNDArrayMultiplicationPrimaryGradient
- (MPSNDArrayMultiplicationPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMultiplicationPrimaryGradient

- (MPSNDArrayMultiplicationPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMultiplicationPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 3;
  return result;
}

@end