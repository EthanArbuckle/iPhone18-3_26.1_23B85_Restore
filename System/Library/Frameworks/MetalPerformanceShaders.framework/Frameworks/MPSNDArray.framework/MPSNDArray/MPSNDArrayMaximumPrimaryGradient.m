@interface MPSNDArrayMaximumPrimaryGradient
- (MPSNDArrayMaximumPrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayMaximumPrimaryGradient

- (MPSNDArrayMaximumPrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMaximumPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 8;
  return result;
}

@end