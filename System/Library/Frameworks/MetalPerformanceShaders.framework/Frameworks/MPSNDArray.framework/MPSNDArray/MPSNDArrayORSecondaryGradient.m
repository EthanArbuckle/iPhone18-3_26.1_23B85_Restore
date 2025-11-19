@interface MPSNDArrayORSecondaryGradient
- (MPSNDArrayORSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayORSecondaryGradient

- (MPSNDArrayORSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayORSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 16;
  return result;
}

@end