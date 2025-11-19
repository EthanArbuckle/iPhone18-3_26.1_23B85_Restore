@interface MPSNDArrayNotEqualPrimaryGradient
- (MPSNDArrayNotEqualPrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayNotEqualPrimaryGradient

- (MPSNDArrayNotEqualPrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNotEqualPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end