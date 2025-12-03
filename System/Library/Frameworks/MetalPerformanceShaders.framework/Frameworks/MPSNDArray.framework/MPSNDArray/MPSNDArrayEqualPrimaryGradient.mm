@interface MPSNDArrayEqualPrimaryGradient
- (MPSNDArrayEqualPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayEqualPrimaryGradient

- (MPSNDArrayEqualPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayEqualPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 9;
  return result;
}

@end