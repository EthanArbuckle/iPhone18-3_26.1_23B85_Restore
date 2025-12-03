@interface MPSNDArrayNotEqualPrimaryGradient
- (MPSNDArrayNotEqualPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNotEqualPrimaryGradient

- (MPSNDArrayNotEqualPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNotEqualPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end